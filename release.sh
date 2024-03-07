# في ملف release.sh

#!/bin/bash

# نسخة الإصدار
version="v1.0.0"

# إنشاء مستند للإصدار
echo "# HiPplus Release $version" > RELEASE_NOTES.md

# إضافة التغييرات والتحسينات إلى المستند
# يمكنك استخدام أي أداة لإدارة التغييرات مثل conventional commits
# يتم تعبئة RELEASE_NOTES.md تلقائيًا من تاريخ الاصدارات والتعليقات في الـ Pull Requests

# إنشاء الإصدار في GitHub
gh release create $version -F RELEASE_NOTES.md
