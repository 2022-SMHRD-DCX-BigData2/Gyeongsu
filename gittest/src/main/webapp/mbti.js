function getMBTI(event)  {
    const radioId = event.target.id;
    const query = 'label[for="'+ radioId + '"]'
    const text = 
          document.querySelector(query).innerText;
    
    document.getElementById('result').innerText = text;
}  
    function getMBTI2(event)  {
        const radioId = event.target.id;
        const query = 'label[for="'+ radioId + '"]'
        const text = 
              document.querySelector(query).innerText;
        
    document.getElementById('result2').innerText = text;
}
function getMBTI3(event)  {
    const radioId = event.target.id;
    const query = 'label[for="'+ radioId + '"]'
    const text = 
          document.querySelector(query).innerText;
    
document.getElementById('result3').innerText = text;
}
function getMBTI4(event)  {
    const radioId = event.target.id;
    const query = 'label[for="'+ radioId + '"]'
    const text = 
          document.querySelector(query).innerText;
    
document.getElementById('result4').innerText = text;
}