### **📌 ความแตกต่างระหว่าง `StatelessWidget` และ `StatefulWidget` ใน Flutter**
ใน Flutter มี **2 ประเภทหลัก** ของ Widget คือ  
1. **`StatelessWidget`** → ไม่เปลี่ยนแปลงตลอดอายุการทำงาน  
2. **`StatefulWidget`** → สามารถเปลี่ยนแปลงค่า **State** ได้  

---

## **1️⃣ StatelessWidget (ไม่มี State เปลี่ยนแปลง)**
**🔹 ใช้เมื่อข้อมูลไม่เปลี่ยนแปลง**  
- ไม่มี **State** ที่ต้องอัปเดต  
- ค่าต่าง ๆ ถูกกำหนดตั้งแต่ต้น และไม่เปลี่ยนแปลง  
- เหมาะกับ **UI ที่แสดงผลแบบคงที่** เช่น `Text`, `Icon`, `Image`  

✅ **ตัวอย่าง** `StatelessWidget`
```dart
import 'package:flutter/material.dart';

class MyStateless extends StatelessWidget {
  const MyStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless Widget')),
      body: const Center(
        child: Text("Hello, Flutter!"),
      ),
    );
  }
}
```
> 📌 **ไม่มี `setState()` เพราะค่าทั้งหมดคงที่**

---

## **2️⃣ StatefulWidget (มี State เปลี่ยนแปลงได้)**
**🔹 ใช้เมื่อข้อมูลเปลี่ยนแปลงได้**  
- มี **State** ที่สามารถเปลี่ยนแปลงได้ในขณะใช้งาน  
- ต้องมี **`setState()`** เพื่อให้ UI อัปเดตค่าใหม่  
- เหมาะกับ **ปุ่มกด, ตัวนับ, ฟอร์มที่รับข้อมูลจากผู้ใช้**  

✅ **ตัวอย่าง** `StatefulWidget`
```dart
import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({super.key});

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++; // อัปเดตค่า State
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("กดปุ่มเพิ่มค่า: $_counter", style: const TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: _increment,
              child: const Text("เพิ่มค่า"),
            ),
          ],
        ),
      ),
    );
  }
}
```
> 📌 **มี `setState()` เพื่อให้ UI อัปเดตเมื่อกดปุ่ม**

---

## **🔍 เปรียบเทียบความแตกต่าง**
| **คุณสมบัติ**         | **StatelessWidget** ✅ | **StatefulWidget** 🔄 |
|-----------------|-------------------|-----------------|
| **เปลี่ยนค่าได้หรือไม่?** | ❌ เปลี่ยนค่าไม่ได้ | ✅ เปลี่ยนค่าได้ |
| **มี `setState()` ไหม?** | ❌ ไม่มี | ✅ มี |
| **เหมาะกับอะไร?** | UI คงที่ เช่น `Text`, `Image` | UI ที่เปลี่ยนแปลงได้ เช่น `Button`, `Form` |
| **ประสิทธิภาพ** | เร็วกว่า, ใช้ทรัพยากรน้อยกว่า | ช้ากว่า เพราะต้องอัปเดต UI |

---

## **💡 เมื่อไหร่ควรใช้ `StatelessWidget` หรือ `StatefulWidget`?**
- **ใช้ `StatelessWidget`** → ถ้า Widget **ไม่ต้องเปลี่ยนค่า**  
- **ใช้ `StatefulWidget`** → ถ้า Widget **ต้องเปลี่ยนแปลงค่า หรือรับอินพุตจากผู้ใช้**  

🎯 **ตัวอย่างการตัดสินใจ**
- **ป้ายข้อความ (Label)** → `StatelessWidget` ✅  
- **ปุ่มกดเปลี่ยนค่า (Button Counter)** → `StatefulWidget` 🔄  
- **รายการแสดงผลจาก API** → `StatefulWidget` (เพราะต้องโหลดข้อมูลใหม่)  

---

### **🚀 สรุปสั้น ๆ**
- **`StatelessWidget`** → ไม่มีการเปลี่ยนแปลง **(เหมาะกับ UI คงที่)**  
- **`StatefulWidget`** → เปลี่ยนแปลงค่าได้ ใช้ **`setState()`** **(เหมาะกับ UI ที่เปลี่ยนแปลง)**  

📢 **แนะนำ:** ใช้ **StatelessWidget ให้มากที่สุด** เพราะ **ประหยัดทรัพยากร และทำงานเร็วกว่า** 🎯