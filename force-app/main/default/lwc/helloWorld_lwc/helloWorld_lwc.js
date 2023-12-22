import { LightningElement } from 'lwc';

export default class HelloWorld_lwc extends LightningElement {
    greeting;
    ready=false;
    changeHandler(event){
        this.greeting=event.target.value;
    }
    connectedCallback(){
       setTimeout(()=>{
        this.ready=true;
    },3000);
    }
}