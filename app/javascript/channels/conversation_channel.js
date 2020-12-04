import consumer from "./consumer";

const initConversationCable = () => {
  const messagesContainer = document.getElementById("message-auto");
  if (messagesContainer) {
    const id = messagesContainer.dataset.conversationId;

    consumer.subscriptions.create({ channel: "ConversationChannel", id: id }, {
      received(data) {
      messagesContainer.insertAdjacentHTML('beforeend', data);
      const messageScrollDown = document.getElementById("message-auto");
      messageScrollDown.scrollTo(0, messageScrollDown.scrollHeight);
      },
    });
  }
}

export { initConversationCable };
