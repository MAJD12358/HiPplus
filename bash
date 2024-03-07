 # خطوة 1: نقل HiPplus.hip+ إلى مستودعك المحلي
cp HiPplus.hip+ /path/to/your/repository

# خطوة 2: إضافة وتعهد الملف
cd /path/to/your/repository
git add HiPplus.hip+
git commit -m "Initial commit for HiPplus"

# خطوة 3: رفع الملفات إلى GitHub
git push origin main
# خطوة 4: تثبيت المترجم (فرضًا أن المترجم يسمى hipplus-compiler)
npm install -g hipplus-compiler

# خطوة 5: ترجمة الكود
hipplus-compiler HiPplus.hip+
