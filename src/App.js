import "./App.css";
import { useState } from "react";

import QRCode from "react-qr-code";
import QRCodeLink from "qrcode";

function App() {
  
  const [link, setLink] = useState("");
  const [qrLink, setQrLink] = useState("");

  const [title, setTitle] = useState("");

  const handleChange = (event) => {
    setTitle(event.target.value);
  };

  function handleQrcode(e) {
    setLink(e.target.value);
    handleGenerate(e.target.value);
  }

  function handleGenerate(link_url) {
    QRCodeLink.toDataURL(
      link_url,
      {
        width: 600,
        margin: 3,
      },
      function (err, url) {
        setQrLink(url);
      }
    );
  }

  return (
    <div className="container">
      <QRCode value={link} className="code" />

      <input
        className="input"
        placeholder="Digite sua URL..."
        value={link}
        onChange={(e) => handleQrcode(e)}
      />

      <input
        className="input"
        placeholder="Título para Download..."
        type="text"
        value={title}
        onChange={handleChange}
      />

      <a className="link" href={qrLink} download={title}>
        Baixar QRCode
      </a>
    </div>
  );
}

export default App;
