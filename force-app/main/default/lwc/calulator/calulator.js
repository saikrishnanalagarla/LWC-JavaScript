import { LightningElement } from 'lwc';

export default class Calulator extends LightningElement {
   num1;
   num2;
   num3;
   handlemethod(event){
    const emp=event.target.value;
    if(emp=='f1'){
        this.num1=event.target.value;
    }
    else if(emp=='s1'){
        this.num2=event.target.value;
    }
    else{
        this.num3=event.target.value;
    }
   }

    handleFirstnum(event){
        this.num1= +event.target.value;
    }
    handleSecondnum(event){
        this.num2= +event.target.value;
    }
    handleThirdnum(event){
        this.num3= +event.target.value;
    }
    handleCalculate(event){
        if(this.num1>this.num2&&this.num1>this.num3){
            alert(`${this.num1}is the greatest number`);
        }
        else if(this.num2>this.num1&&this.num1>this.num3){
            alert("second num is greater");
        }
        else{
            alert("3rd num is greater");
        }
    }
    handleClear(){
        this.num1='';
        this.num2='';
        this.num3='';
    }

}