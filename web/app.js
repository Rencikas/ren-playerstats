function main(){
    return {
        show: false,
        id: 0,
        steam: 'not found',
        job : 'not found',
        grade: 'not found',
        cash: 0,
        bank: 0,
        licenses: [],     

        listen() {
            window.addEventListener('message', (event) => {
                let data = event.data
                this.show = data.show,
                this.id = data.id,
                this.steam = data.steam,
                this.job = data.job,
                this.grade = data.grade,
                this.cash = data.cash,
                this.bank = data.bank,
                this.licenses = data.licenses
            })
        },

        closeUI() {
            postData(`https://${GetParentResourceName()}/close`, {})
            this.show = false
        }
    }
}

async function postData(url = '', data = {}) {
    const response = await fetch(url, {
        method: 'POST',
        mode: 'cors',
        cache: 'no-cache',
        credentials: 'same-origin',
        headers: { 'Content-Type': 'application/json' },
        redirect: 'follow',
        referrerPolicy: 'no-referrer',
        body: JSON.stringify(data)
    });
    return response.json();
}