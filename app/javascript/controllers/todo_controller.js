import { Controller } from "stimulus"
import axios from "axios"
import $ from "jquery"

export default class extends Controller {
    static get targets() {
        return ["title", "content"]
    }

    create() {
        axios.defaults.headers['X-CSRF-TOKEN'] = $('meta[name=csrf-token]').attr('content');
        axios.defaults.headers['content-type'] = 'application/json'

        axios.post('/todos', {title: this.titleTarget.value, content: this.contentTarget.value}).then((response) => {
            alert('Successfully Add New Task')
        }, (error) => {
            console.log(error);
        })
    }
}
