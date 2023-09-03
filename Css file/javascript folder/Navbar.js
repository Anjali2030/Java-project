let availableKeywords = [
   "Apple", "Almond","Banana","Nuts","Date","Galia","Guava","Peach","Pomegranate","Pear","Oranges","Mango","Watermelon","Lemon","Strawberry",
   "Combine Harvester","Planting","SeedDrill","RigidTiller","BoomSpray","Miniround","Rotavator","RiceCombine","DeereTractor","KubotaTractor",
   "Mahindra","JivoTractor","Cashew"
];

const resultBox = document.querySelector(".result-box");
const inputBox = document.getElementById("input-box");

inputBox.onkeyup = function () {
    let result = [];
    let input = inputBox.value;

    if (input.length) {
        result = availableKeywords.filter((keyword) => {
            return keyword.toLowerCase().includes(input.toLowerCase());
        });

        console.log(result);
    }
    display(result);

    if (result.length) {
        resultBox.style.display = 'block';
    } else {
        resultBox.style.display = 'none';
    }
};

function display(result) {
    const content = result.map((list) => {
        return "<li onclick='selectInput(this)'>" + list + "</li>";
    });
    resultBox.innerHTML = "<ul>" + content.join('') + "</ul>";
}

function selectInput(list) {
    inputBox.value = list.innerHTML;
    resultBox.style.display = 'none';
}
/*************Drop-down menu********** */
var fruits;
var tools;

function get_id(){
	 fruits=document.getElementById('fruits-tools');
	 tools=document.getElementById('rental-tools');
	 
}



















