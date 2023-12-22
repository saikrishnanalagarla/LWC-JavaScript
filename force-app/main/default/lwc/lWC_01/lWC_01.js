import { LightningElement } from 'lwc';

export default class LWC_01 extends LightningElement {
    name="saikrishna";

    handleSubmit(event){
        alert("you clciked on submit button");
        this.name="rey mawa";
    }
    handleChange(event){
        this.name=event.target.value;//getting the input enterd by user
    }
}