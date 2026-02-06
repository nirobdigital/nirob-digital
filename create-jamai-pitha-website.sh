#!/bin/bash

# Define the base directory for Jamai Pitha project
BASE_DIR="jamay-pitha"

# Create the base directory
mkdir -p "$BASE_DIR"

# Create subdirectories
mkdir -p "$BASE_DIR/orders"
mkdir -p "$BASE_DIR/making-pitha"
mkdir -p "$BASE_DIR/business-guide"
mkdir -p "$BASE_DIR/sales"
mkdir -p "$BASE_DIR/blog"
mkdir -p "$BASE_DIR/reviews"

# Create HTML files in the base directory
touch "$BASE_DIR/index.html"
touch "$BASE_DIR/about.html"
touch "$BASE_DIR/contact.html"

# Create HTML files in the orders subdirectory
touch "$BASE_DIR/orders/order-form.html"
touch "$BASE_DIR/orders/pricing.html"
touch "$BASE_DIR/orders/delivery-info.html"

# Create HTML files in the making-pitha subdirectory
touch "$BASE_DIR/making-pitha/ingredients-guide.html"
touch "$BASE_DIR/making-pitha/dough-recipe.html"
touch "$BASE_DIR/making-pitha/filling-guide.html"
touch "$BASE_DIR/making-pitha/making-guide.html"
touch "$BASE_DIR/making-pitha/frying-guide.html"

# Create HTML files in the business-guide subdirectory
touch "$BASE_DIR/business-guide/business-starting-guide.html"
touch "$BASE_DIR/business-guide/cost-calculation.html"
touch "$BASE_DIR/business-guide/marketing-strategy.html"
touch "$BASE_DIR/business-guide/scaling-business.html"
touch "$BASE_DIR/business-guide/supplier-guide.html"

# Create HTML files in the sales subdirectory
touch "$BASE_DIR/sales/product-catalog.html"
touch "$BASE_DIR/sales/order-online.html"
touch "$BASE_DIR/sales/pricing-info.html"

# Create HTML files in the blog subdirectory
touch "$BASE_DIR/blog/latest-posts.html"
touch "$BASE_DIR/blog/tips-tricks.html"

# Create HTML files in the reviews subdirectory
touch "$BASE_DIR/reviews/customer-reviews.html"
touch "$BASE_DIR/reviews/testimonial.html"

# Add content to index.html
cat <<EOL > "$BASE_DIR/index.html"
<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="আপনার বিশেষ ইভেন্টের জন্য জামাই পিঠা অর্ডার করুন। তাজা, সুস্বাদু এবং ঐতিহ্যবাহী। বিয়ে, পার্টি ও উৎসবের জন্য ডেলিভারি সুবিধা।">
    <meta name="keywords" content="জামাই পিঠা, হোমমেড পিঠা, ট্রেডিশনাল পিঠা, ইভেন্ট পিঠা, বিয়ের মিষ্টি, বাংলাদেশি মিষ্টি">
    <meta name="robots" content="index, follow">
    <title>জামাই পিঠা - আপনার ইভেন্টের জন্য হোমমেড ট্রেডিশনাল মিষ্টি</title>
</head>
<body>
    <h1>জামাই পিঠা - আপনার ইভেন্টের জন্য হোমমেড ট্রেডিশনাল মিষ্টি</h1>
    <p>আপনার ইভেন্টের জন্য আমাদের জামাই পিঠা অর্ডার করুন।</p>
</body>
</html>
EOL

# Add content to about.html
cat <<EOL > "$BASE_DIR/about.html"
<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="জামাই পিঠার ঐতিহ্য ও সুস্বাদু স্বাদ সম্পর্কে জানুন। আমরা হোমমেড মিষ্টি সরবরাহ করি, যা আপনার ইভেন্ট এবং উদযাপনের জন্য আদর্শ।">
    <meta name="keywords" content="জামাই পিঠা সম্পর্কে, হোমমেড মিষ্টি, ঐতিহ্যবাহী মিষ্টি, পিঠার ইতিহাস">
    <meta name="robots" content="index, follow">
    <title>আমাদের সম্পর্কে - জামাই পিঠা ব্যবসা</title>
</head>
<body>
    <h1>আমাদের সম্পর্কে</h1>
    <p>জামাই পিঠা একটি ঐতিহ্যবাহী বাংলাদেশি মিষ্টি, যা আমাদের পরিবারের দীর্ঘদিনের রেসিপি অনুসরণ করে তৈরি হয়।</p>
</body>
</html>
EOL

# Add content to contact.html
cat <<EOL > "$BASE_DIR/contact.html"
<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="আপনার জামাই পিঠার অর্ডার দিতে যোগাযোগ করুন। কাস্টম অর্ডার, দাম এবং ডেলিভারি তথ্য জানতে আমাদের সাথে যোগাযোগ করুন।">
    <meta name="keywords" content="জামাই পিঠা যোগাযোগ, পিঠা অর্ডার, ইভেন্ট ক্যাটারিং, জামাই পিঠা ডেলিভারি">
    <meta name="robots" content="index, follow">
    <title>যোগাযোগ করুন - আপনার ইভেন্টের জন্য জামাই পিঠা অর্ডার করুন</title>
</head>
<body>
    <h1>যোগাযোগ করুন</h1>
    <p>আমাদের সাথে যোগাযোগ করুন এবং জামাই পিঠা অর্ডার দিন।</p>
</body>
</html>
EOL

# Repeat similar process for other HTML files as required...

# Print completion message
echo "All directories and HTML files have been created successfully!"
