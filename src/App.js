import "./App.css";
import QRCode from "react-qr-code";
import { useState } from "react";
import QRCodeLink from "qrcode";
function App() {
  const [link, setLink] = useState("");
  const [qrLink, setQrLink] = useState("");

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
      <a className="link" href={qrLink} download={`qrcode.png`}>
        Baixar QRCode
      </a>
    </div>
  );
}

export default App;
