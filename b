<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>สุขสันต์วันเกิด</title>
    <link href="https://fonts.googleapis.com/css2?family=Karma&family=Spectral+SC:wght@700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Karma', sans-serif;
            background-color: #ffcccb; /* สีชมพูอ่อน */
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
            text-align: center;
            position: relative;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            margin-top: 20px;
            font-size: 3.5em;
            color: #f15a29; /* สีตัวหนังสือ */
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }
        .hidden {
            display: none;
        }
        .background-text {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 10em; /* ข้อความจางๆ ขนาดใหญ่ */
            color: rgba(255, 255, 255, 0.1); /* ข้อความจางๆ */
            pointer-events: none;
            text-align: center;
            z-index: 0;
        }
        .input-container {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            z-index: 1;
        }
        input {
            width: 60px;
            height: 60px;
            font-size: 30px;
            text-align: center;
            margin: 5px;
            border: 2px solid #f15a29; /* สีกรอบ */
            border-radius: 10px;
            outline: none;
            transition: border-color 0.3s, box-shadow 0.3s;
            z-index: 1;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        input:focus {
            border-color: #ff7f50; /* สีกรอบเมื่อโฟกัส */
            box-shadow: 0 0 5px rgba(255, 127, 80, 0.5);
        }
        .submit-button {
            background-color: #ff7f50; /* สีปุ่ม */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 10px;
            font-size: 20px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s, box-shadow 0.3s;
            z-index: 1;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        .submit-button:hover {
            background-color: #f15a29; /* สีปุ่มเมื่อhover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .message-box {
            background-color: white;
            padding: 20px;
            margin-top: 20px;
            display: flex;
            flex-direction: column; /* จัดเรียงในแนวตั้ง */
            align-items: center; /* จัดกลาง */
            position: relative;
            z-index: 1;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        .images-container {
            display: flex; /* เปลี่ยนเป็นแนวนอน */
            flex-wrap: wrap; /* ทำให้สามารถไหลไปบรรทัดถัดไปได้ */
            justify-content: center; /* จัดกลาง */
            margin-bottom: 10px; /* เพิ่มระยะห่างจากข้อความ */
        }
        .images-container img {
            width: 130px; /* ขนาดรูปภาพ 130x130 */
            height: 130px;
            margin: 10px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        .back-button {
            margin-top: auto; /* จัดตำแหน่งปุ่มไปด้านล่าง */
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #f15a29; /* สีปุ่มกลับ */
            color: white;
            border: none;
            border-radius: 10px;
            transition: background-color 0.3s;
            z-index: 1;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        .back-button:hover {
            background-color: #ff7f50; /* สีปุ่มกลับเมื่อhover */
        }
        @media (max-width: 768px) {
            h1 {
                font-size: 2.5em; /* ขนาดฟอนต์เล็กลงบนมือถือ */
            }
            .background-text {
                font-size: 5em; /* ข้อความจางๆ ขนาดเล็กลงบนมือถือ */
            }
            input {
                width: 40px;
                height: 40px;
                font-size: 20px;
            }
            .submit-button {
                font-size: 16px;
            }
            .message-box {
                padding: 15px;
            }
            .images-container img {
                width: 100px; /* ลดขนาดรูปภาพสำหรับมือถือ */
                height: 100px;
            }
        }
    </style>
</head>
<body>

    <!-- หน้าแรก -->
    <div id="page1">
        <div class="background-text">HAPPY BIRTH DAY</div>
        <h1>สุขสันต์วันเกิดนะ</h1>
        <div class="input-container">
            <input type="text" id="input1" maxlength="1" oninput="moveToNext(this, 'input2')">
            <input type="text" id="input2" maxlength="1" oninput="moveToNext(this, 'input3')">
            <input type="text" id="input3" maxlength="1" oninput="moveToNext(this, 'input4')">
            <input type="text" id="input4" maxlength="1" oninput="checkCode()">
        </div>
        <button class="submit-button" onclick="checkCode()">ยืนยัน</button>
    </div>

    <!-- หน้าที่ 2 -->
    <div id="page2" class="hidden">
        <div class="background-text">HAPPY BIRTH DAY</div>
        <h1>สุขสันต์วันเกิด</h1>
        <div class="message-box">
            <div class="images">
        <img src="1.jpg" alt="รูปที่ 1" width="130" heigth="130">
        <img src="2.jpg" alt="รูปที่ 2" width="130" heigth="130">
        <img src="3.jpg" alt="รูปที่ 3" width="130" heigth="130">
            </div>
            <p>วันเกิดปีนี้ขอให้เธอมีสุขภาพแข็งแรงไม่เจ็บไม่ป่วย ร่ำรวยเงินทองและสุขภาพ คิดอะไรก็ขอให้ได้อย่างที่คิด</p>
            <div style="text-align: right;">รักเสมอจากคนขายปลา</div>
            <button class="back-button" onclick="goBack()">กลับไปหน้าแรก</button>
        </div>
    </div>

    <script>
        function moveToNext(current, nextId) {
            if (current.value.length >= current.maxLength) {
                document.getElementById(nextId).focus();
            }
        }

        function checkCode() {
            const code = [2, 5, 1, 2];
            const userInput = [
                document.getElementById('input1').value,
                document.getElementById('input2').value,
                document.getElementById('input3').value,
                document.getElementById('input4').value
            ].map(Number);
            
            if (JSON.stringify(userInput) === JSON.stringify(code)) {
                document.getElementById('page1').classList.add('hidden');
                document.getElementById('page2').classList.remove('hidden');
            } else {
                alert('รหัสไม่ถูกต้อง');
            }
        }

        function goBack() {
            document.getElementById('page1').classList.remove('hidden');
            document.getElementById('page2').classList.add('hidden');
            // Clear input fields
            document.getElementById('input1').value = '';
            document.getElementById('input2').value = '';
            document.getElementById('input3').value = '';
            document.getElementById('input4').value = '';
            document.getElementById('input1').focus();
        }
    </script>

</body>
</html>
