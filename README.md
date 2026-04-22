التنقل بين المنتجات :

تطبيق Flutter بسيط يوضح فكرة عرض المنتجات والتنقل بينها بإستخدام Navigation مع تمرير البيانات بين الشاشات وعرض التفاصيل بطريقة منظمة ( تكليف لمقرر تطبيقات موبايل )

📸 لقطات الشاشة :
<p align="center">
  <img src="screenshots/nav 1.png" width="400"/>
</p>

<p align="center">
  <img src="screenshots/nav 2.png" width="400"/>
</p>

<p align="center">
  <img src="screenshots/nav 3.png" width="400"/>
</p>

⭐ الوظائف الأساسية:

- عرض قائمة منتجات (Product List ).
- عرض تفاصيل المنتج (Product Details).
- التنقل بين الشاشات .
- تمرير البيانات بين الصفحات .
- إرجاع بيانات عند الرجوع (Pop).


🔄 آلية التنقل وتمرير البيانات (Navigation & Data Passing)

تم استخدام: Dart and Navigator.push() للانتقال من قائمة المنتجات إلى صفحة التفاصيل.
تم تمرير البيانات:
-اسم المنتج.
-السعر.
-الصورة.
عن طريق الـ Constructor بين الشاشات.


🔙 إدارة المكدس (Stack & Pop)

تم استخدام: Dart and Navigator.pop() للرجوع إلى الصفحة السابقة.
عند الرجوع يتم إرسال قيمة (Result) وعرضها باستخدام: Dart and SnackBar


تفاصيل تقنية (Technical Insights)

تم استخدام ListView لعرض المنتجات بشكل ديناميكي
تصميم كرت لكل منتج باستخدام Container و BoxDecoration
استخدام Image.asset لعرض الصور
تحسين الواجهة باستخدام:
BorderRadius
Shadow
Dark Theme


🛠️ التقنيات المستخدمة
Flutter: إطار العمل
Dart : لغة البرمجة
Material Design : تصميم الواجهة
