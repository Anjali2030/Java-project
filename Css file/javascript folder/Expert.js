const chatBody = document.querySelector(".chat-body");
const txtInput = document.querySelector("#txtInput");
const send = document.querySelector(".send");

send.addEventListener("click", () => renderUserMessage());

txtInput.addEventListener("keyup", (event) => {
  if (event.keyCode === 13) {
    renderUserMessage();
  }
});

const renderUserMessage = () => {
  const userInput = txtInput.value.trim();

  if (userInput !== "") {
    renderMessageEle(userInput, "user");
    txtInput.value = "";
    setTimeout(() => {
      renderChatbotResponse(userInput);
      setScrollPosition();
    }, 600);
  }
};

const renderChatbotResponse = (userInput) => {
  const res = getChatbotResponse(userInput);
  renderMessageEle(res);
};

const renderMessageEle = (txt, type) => {
  let className = "user-message";
  if (type !== "user") {
    className = "chatbot-message";
  }
  const messageEle = document.createElement("div");
  const txtNode = document.createTextNode(txt);
  messageEle.classList.add(className);
  messageEle.append(txtNode);
  chatBody.append(messageEle);
};

const getChatbotResponse = (userInput) => {
  return responseObj[userInput] == undefined
    ? "Please try something else"
    : responseObj[userInput];
};

const setScrollPosition = () => {
  if (chatBody.scrollHeight > 0) {
    chatBody.scrollTop = chatBody.scrollHeight;
  }
};

const responseObj = {
  hello: "Hello! It's great to hear from you. How can we help you? ",
  hey: "Hey! What's up?",
  hi:"Hey! How can I help you ",
  ok: "Thanks for connecting! Do You have any more query?",
  yes: "Drop your query, We will resolve it as soon as possible.",
  no : "That's great! Have a nice day!",
 8221073983 : "Thanks! we will connect you soon.",
 
 "want to connect with customer care executive" : " sure! drop your contact no.,We will connect you",
  "good evening":                 "good evening",
  "good evening":                 "good evening",
  "good morning":                 "Good morning! How can I help you?",
  "i want to ask you something": "Sure, go ahead!",
  "i want to buy the product":   "Go to the Buy Product section and buy the products",
  "i want to sell the product":   "Go to the sell Product section and sell the products",
  "i want to take the tools on rent":"Go to the Rental tool section and rent the tool",
  "i have the Some issues related to my Crops":"We have our expert number. I can provide the contact no",
  "yes offcourse":"9657453283,contact to this number",
  "connect with expert": "Sure! Drop your contact no. Our expert will connect to you.",
  
  
  
  today: new Date().toDateString(),
  time: new Date().toLocaleTimeString(),
};
