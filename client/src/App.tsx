import { useEffect, useState } from "react";

function App() {
  const [message, setMessage] = useState("");

  useEffect(() => {
    fetch("http://localhost:3000/api/v1/hello")
      .then((res) => res.json())
      .then((data) => setMessage(data.message))
      .catch((err) => console.error("Error fetching:", err));
  }, []);

  return (
    <div className="p-6">
      <h1 className="text-2xl font-bold mb-4">React + Rails</h1>
      <p className="text-lg">Message from backend:</p>
      <div className="text-green-600 font-mono mt-2">{message}</div>
    </div>
  );
}

export default App;
