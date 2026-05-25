 # طريقة تعريف الحزمه على المشروع الخاص بك 

افتحي ملف pubspec.yaml  أي مشروع آخر تريدين معالجة مشاكل إصدارات الأندرويد فيه،
وأضيف الحزمة كـ Dependency خارجي يشير إلى حسابكِ مباشرة:

`dependencies:
flutter:
sdk: flutter

# استدعاء حزمتكِ الخاصة والمشاركة من حسابكِ على GitHub
my_kotlin_resolver:
git:
url: https://github.com/afrahbizan/my_kotlin_resolver.git
ref: main`

بمجرد تشغيل flutter pub get في المشروع الجديد، 
سيقوم فلاتر بسحب الحل الذي برمجتِهِ أنتِ من حسابكِ على GitHub وحقنه في المشروع تلقائياً!

