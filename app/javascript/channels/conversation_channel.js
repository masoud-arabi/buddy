import consumer from "./consumer";

const initConversationCable = () => {
  const messagesContainer = document.getElementById("message-auto");
  if (messagesContainer) {
    const id = messagesContainer.dataset.conversationId;

    consumer.subscriptions.create({ channel: "ConversationChannel", id: id }, {
      received(data) {
            messagesContainer.insertAdjacentHTML('beforeend', data);
 // called when data is broadcast in the cable
 console.log(data);
      },
    });
  }
}

export { initConversationCable };
