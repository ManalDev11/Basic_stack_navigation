#  Product Navigation App (تكليف لمقرر تطبيقات موبايل)

تطبيق Flutter بسيط يوضح فكرة عرض المنتجات والتنقل بينها باستخدام Navigation، مع تمرير البيانات بين الشاشات وعرض التفاصيل بطريقة منظمة.

---

## 📸 لقطات الشاشة (Project Showcase)

<p align="center">
  <img src="screenshots/nav 1.png" width="400"/>
</p>

<p align="center">
  <img src="screenshots/nav 2.png" width="400"/>
</p>

<p align="center">
  <img src="screenshots/nav 3.png" width="400"/>
</p>

---

## ⭐ الوظائف الأساسية

- عرض قائمة منتجات (Product List)
- عرض تفاصيل المنتج (Product Details)
- التنقل بين الشاشات
- تمرير البيانات بين الصفحات
- إرجاع بيانات عند الرجوع (Pop)

---

## 🔄 آلية التنقل وتمرير البيانات (Navigation & Data Passing)

- تم استخدام:

```dart
Navigator.push()
## للانتقال من قائمة المنتجات إلى صفحة التفاصيل.
تم تمرير البيانات:
-اسم المنتج
-السعر
-الصورة
عن طريق الـ Constructor بين الشاشات.

🔙 إدارة المكدس (Stack & Pop)
تم استخدام:
Dart
Navigator.pop()
للرجوع إلى الصفحة السابقة.
عند الرجوع يتم إرسال قيمة (Result) وعرضها باستخدام:
Dart
SnackBar

```dart
Navigator.push()
