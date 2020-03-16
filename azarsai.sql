-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 01:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azarsai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_products`
--

CREATE TABLE `admin_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `number` text COLLATE utf8mb4_unicode_ci,
  `customerprice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchprice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` text COLLATE utf8mb4_unicode_ci,
  `battery` text COLLATE utf8mb4_unicode_ci,
  `display` text COLLATE utf8mb4_unicode_ci,
  `weight` text COLLATE utf8mb4_unicode_ci,
  `ram` text COLLATE utf8mb4_unicode_ci,
  `camera` text COLLATE utf8mb4_unicode_ci,
  `processor` text COLLATE utf8mb4_unicode_ci,
  `sim` text COLLATE utf8mb4_unicode_ci,
  `image1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci,
  `image3` text COLLATE utf8mb4_unicode_ci,
  `image4` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_products`
--

INSERT INTO `admin_products` (`id`, `name`, `storage`, `color_id`, `number`, `customerprice`, `branchprice`, `os`, `battery`, `display`, `weight`, `ram`, `camera`, `processor`, `sim`, `image1`, `image2`, `image3`, `image4`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Huawei P30 Lite', '128', 1, '5', '3240000', '3100000', 'android', 'Non-removable Li-Po 3340 mAh battery', '6.15', '159', '4', '24', NULL, '2', 'p30lite.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'مجهز به حسگر اثر انگشت\r\nمناسب برای عکاسی سلفی', '2020-03-16 05:06:27', '2020-03-16 05:06:27'),
(2, 'Samsung A20', '32', 1, '6', '2470000', '2430000', 'android', 'Non-removable Li-Po 4000 mAh battery', '6.5', '183', '3', '13', NULL, '2', 'A20.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'مجهز به حسگر اثر انگشت\r\nشارژ باتری سریع', '2020-03-16 05:11:14', '2020-03-16 05:11:14'),
(3, 'Samsung A50', '128', 1, '6', '3750000', '3600000', 'android', 'Non-removable Li-Po 4000 mAh battery', '6.4', '166', '4', '25', NULL, '2', 'A50.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'مجهز به حسگر اثر انگشت', '2020-03-16 05:15:31', '2020-03-16 05:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_product_color`
--

CREATE TABLE `admin_product_color` (
  `id` int(10) UNSIGNED NOT NULL,
  `adminproduct_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `BlogCategory_id` text COLLATE utf8mb4_unicode_ci,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `BlogCategory_id`, `title`, `body`, `category`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, 'چرا باتری گوشی ها به‌سرعت خالی می‌شود', 'کاهش مدت‌زمان شارژدهی باتری از جمله گلایه‌های رایج کاربران است. با پیروی از نکات و راهکارهای ارائه‌شده در این مطلب، می‌توانید به بهبود مدت‌زمان شارژدهی باتری دستگاه خود کمک کنید. همراه‌با افزایش ظرفیت باتری‌ها، دستگاه‌های مورد استفاده‌ی ما نیز از نظر مصرف انرژی بهینه‌تر می‌شوند؛ با این وجود، هنوز هم میزان شارژدهی باتری از جمله دغدغه‌های کاربران است. هرچند خالی شدن سریع باتری به یکی از موارد عادی در ابزارهای امروزی بدل شده است؛ اما این بدین معنی نیست که باید روزانه چند بار دستگاه خود را شارژ کنیم. اگر باتری گوشی موبایل شما زودتر از حالت عادی خالی می‌شود، بهتر است دلیل این مسئله را یافته و برای آن چاره‌ای پیدا کنید. در ادامه با رایج‌ترین دلائل افزایش مصرف نیرو در گوشی‌های هوشمند آشنا می‌شویم و برای هرکدام راه‌حل‌هایی را پیشنهاد می‌کنیم. پس بهتر است وقت را تلف نکنید و پیش از خالی شدن باتری دستگاه‌تان، این موارد را بررسی کنید. ۱. نمایشگر از زمان تولد گوشی‌های هوشمند مدرن، نمایشگر یکی از پرمصرف‌ترین اجزاء گوشی بوده است. پنل‌های نمایشگر گوشی‌های مدرن روزبه‌روز روشن‌تر و رنگارنگ‌تر می‌شوند و وضوح آن‌ها افزایش پیدا می‌کند. هرچند این بهبودها تجربه‌ی بهتری را برای کاربران به ارمغان می‌آورند، همین موارد موجب افزایش مصرف نیرو نیز می‌شوند. نمایشگر گوشی شما می‌تواند یکی از دلائل اصلی خالی شدن سریع باتری باشد. برای بررسی میزان مصرف باتری توسط نمایشگر، مراحل زیر را طی کنید: ۱. وارد بخش تنظیمات دستگاه (Settings) شوید. ۲. گزینه‌ی باتری (Battery) را انتخاب کنید. ۳. روی منوی سه‌نقطه‌ای در گوشه‌ی بالا، سمت راست ضربه بزنید. ۴. گزینه‌ی میزان مصرف باتری (Battery usage) را لمس کنید. ۵. روی منوی سه‌نقطه‌ای در گوشه‌ی بالا، سمت راست ضربه بزنید. ۶. گزینه‌ی نمایش مصرف تمام بخش‌های دستگاه (Show full device usage) را انتخاب کنید. مشکل این است که فناوری نمایشگرها بسیار سریع‌تر از فناوری باتری‌ها پیشرفت می‌کند و احتمالا در سال‌های آتی، مصرف بیشتر انرژی توسط نمایشگر به دغدغه‌ی بزرگتری تبدیل می‌شود. تا زمانی‌که بهبودی دراین‌زمینه حاصل نشود، تنها راهکار صرفه‌جویی در مصرف انرژی است. راهکارها کاهش روشنایی نمایشگر: کاهش روشنایی کمک می‌کند تا به‌طور قابل توجهی در مصرف انرژی صرفه‌جویی کنید. استفاده از ویژگی روشنایی تطبیقی: ویژگی روشنایی تطبیقی به شما اجازه می‌دهد تا در زمان لازم، روشنایی نمایشگر خود را در حدی بالا قرار دهید؛ اما در زمانی‌که به روشنایی بالا نیازی نیست هم با کاهش روشنایی نمایشگر، موجب کاهش مصرف انرژی می‌شود. کاهش نرخ نوسازی نمایشگر: برخی گوشی‌ها از نرخ نوسازی (Refresh Rate) بالاتر از میزان رایج پشتیبانی می‌کنند. در اغلب این دستگاه‌ها، می‌توانید در بخش تنظیمات نرخ نوسازی را کاهش دهید. کاهش زمان قفل خودکار: با کاهش زمان قفل خودکار، مطمئن خواهید شد که نمایشگر شما برای مدتی طولانی بیهوده روشن نمی‌ماند. از تصاویر پس‌زمینه‌ی زنده استفاده نکنید: تصاویر پس‌زمینه‌ی زنده یا همان Live Wallpaper-ها عملا یک ویدئو را به‌طور دائم روی گوشی شما پخش می‌کنند و موجب مصرف انرژی می‌شوند. از تصاویر پس‌زمینه‌ی مشکی استفاده کنید: اگر دستگاه شما به پنلی از نوع AMOLED مجهز است، می‌توانید با استفاده از تصاویر پس‌زمینه‌ی تیره، میزان مصرف باتری را کاهش دهید. چرا که دستگاه شما پیکسل‌های مربوط به نقاط سیاه‌رنگ را فعال نمی‌کند. دکل مخابراتی / Cellphone Tower ۲. آنتن‌دهی نامناسب مناطقی که در آن آنتن‌دهی گوشی در حد مناسبی نیست، به‌منزله‌ی قاتلی خاموش برای باتری دستگاه عمل می‌کنند. در چنین مناطقی، تلفن همراه به‌طور دائم تلاش می‌کند به دکل‌های مخابراتی مختلف متصل شود تا ارتباط دچار مشکل نشود. در زمانی‌که دستگاه موفق به برقراری ارتباط نشود هم نیروی بیشتری مصرف می‌کند تا شما را به شبکه متصل کند. اگر در مناطق روستایی ساکن هستید، در ساختمان‌های بسیار بزرگ زندگی می‌کنید یا اغلب به مکان‌هایی با پوشش نامناسب شبکه‌ی همراه می‌روید، احتمالا باتری گوشی شما زودتر از حالت عادی خالی می‌شود. در این حالت، باید مشکل را به‌صورت اساسی حل کنید. راهکارها تغییر اپراتور: پوشش ارائه‌شده توسط اپراتورها در نواحی، شهرها و محلات مختلف متفاوت است. تحقیق کنید تا بفهمید کدام اپراتور بهترین پوشش را در منطقه‌ی مدنظر شما ارائه می‌دهد. حالت پرواز: استفاده از حالت پرواز (Airplane Mode) موجب خاموش‌شدن آنتن گوشی می‌شود. با فعال کردن این حالت، گوشی تلاش نمی‌کند تا به دکل‌های مخابراتی متفاوت متصل شوید. می‌توانید به‌طور هوشمندانه از این ویژگی در مناطقی استفاده کنید که پوشش شبکه‌ی مناسبی در آن‌ها ارائه نمی‌شود. استفاده از ابزارهای خودکارسازی مانند IFTTT برای فعال‌سازی خودکار حالت پرواز براساس منطقه نیز می‌تواند کار را ساده‌تر کند. ابزارهای تقویت سیگنال: گاهی اوقات اپراتورها ابزارهایی تحت عنوان گسترش‌دهنده‌ی شبکه (Network Extender) یا تقویت‌کننده‌ی سیگنال (Signal Booster) ارائه می‌کنند. اگر برای مدت زیادی در محلی با پوشش نامناسب حضور دارید، بد نیست یک نمونه از این ابزارها را تهیه کنید. با قرار دادن یکی از این ابزارها در خانه یا محل کار، مطمئن خواهید بود که همواره سیگنالی قوی را دریافت می‌کنید. ۳. اپلیکیشن‌ها و سرویس‌های پس‌زمینه اگر باتری گوشی به‌سرعت خالی می‌شود،‌ بهتر است اپلیکیشن‌ها را هم بررسی کنید. برخی اپلیکیشن‌ها در مقایسه با دیگر برنامه‌ها، نیروی بیشتری مصرف می‌کنند. واضح‌ترین موارد، اپلیکیشن‌هایی مانند یوتیوب، نتفلیکس و دیگر سرویس‌های استریم محتوا هستند. اگر می‌خواهید باتری گوشی شما دیرتر خالی شود، بهتر است از بازی‌ها نیز دوری کنید، چرا که بازی‌ها خالی شدن باتری را تسریع می‌کنند. این مسئله به‌ویژه در رابطه با بازی‌هایی با گرافیک بالا بیشتر صدق می‌کند. راهکارها تعداد اپلیکیشن‌های نصب‌شده را به حداقل برسانید: برای مثال، نویسنده‌ی مطلب حاضر تنها ۲۰ درصد از اپلیکیشن‌های نصب‌شده روی گوشی خود را مورد استفاده قرار می‌دهد. این در حالی است که بسیاری از این اپلیکیشن‌های بلااستفاده همچنان در پس‌زمینه فعال هستند و نیرو را هدر می‌دهند. پس بهتر است با حذف چنین برنامه‌هایی، به‌طور دائم از شر آن‌ها خلاص شویم. از فعالیت اپلیکیشن‌ها در پس‌زمینه جلوگیری کنید: اگر متوجه شدید که برخی اپلیکیشن‌ها بیش از اندازه به باتری دستگاه فشار وارد می‌کنند، بهتر است فعالیت پس‌زمینه‌ی آن‌ها را محدود کنید. کافی است در لیست اپلیکیشن‌ها در بخش تنظیمات گوشی، گزینه‌ی مربوط به مدیریت باتری را انتخاب کنید و ویژگی فعالیت در پس‌زمینه (Background Activity) را در وضعیت محدودسازی (Restrict)‌ قرار دهید (در نظر داشته باشید که مسیر بخش تنظیمات اپلیکیشن‌ها برای گوشی‌های مختلف اندرویدی متفاوت است). البته نباید فراموش کرد که با انجام این کار ممکن است برخی ویژگی‌های اپلیکیشن به‌درستی کار نکنند. بستن اپلیکیشن‌ها: می‌دانیم که دستگاه‌های اندرویدی با تمرکز بر چندوظیفگی طراحی‌شده‌اند و بستن اپلیکیشن‌ها در برخی مواقع می‌تواند حتی اثری منفی روی شارژدهی باتری داشته باشد؛ ولی در مواردی بستن اپلیکیشن‌ها می‌تواند شانس شما برای کاهش مصرف باتری را افزایش دهد. برخی اپلیکیشن‌ها ممکن است بیش از حد عادی به باتری فشار وارد کنند، به‌درستی کار نکنند یا حتی در هنگام کار با خطا مواجه شوند. در چنین مواردی، اپلیکیشن‌ها بی‌دلیل نیروی ذخیره‌شده در باتری را مصرف می‌کنند. در این شرایط، بستن اپلیکیشن‌ها و اجرای مجدد آن‌ها می‌تواند راهکار مفیدی باشد. برای انجام این کار در لیست اپلیکیشن‌ها در بخش تنظیمات، اپلیکیشن مورد نظر را انتخاب کنید و روی گزینه‌ی Force Stop (توقف اجباری) ضربه بزنید. مراقب استفاده‌ی خود از دستگاه باشید: گاهی ادعا می‌کنیم که می‌خواهیم باتری دستگاه‌مان بیشتر دوام بیاورد؛ اما در عمل وقت زیادی را صرف بازی، تماشای ویدئو و گشت‌وگذار در شبکه‌های اجتماعی می‌کنیم. تعجبی نیست که در این شرایط باتری گوشی به‌سرعت خالی می‌شود. پس بهتر است به اپلیکیشن‌های مورد استفاده‌مان و مدت زمان استفاده از آن‌ها بیشتر توجه کنیم. دیگر مشکلات و توصیه‌های مرتبط با باتری جی‌پی‌اس، وای‌فای و بلوتوث: چقدر از این روش‌های ارتباطی استفاده می‌کنید؟ برخی از ما دائما سه گزینه‌ی جی‌پی‌اس، وای‌فای و بلوتوث را روشن نگه می‌داریم؛ اما به‌ندرت از آن‌ها استفاده می‌کنیم. حتی در حالتی که حداقل استفاده از این سه ویژگی را داریم، آن‌ها همچنان مقداری از انرژی ذخیره‌شده در باتری را به خود اختصاص می‌دهند. کافی است آن‌ها را خاموش کنیم تا متوجه افزایش شارژدهی باتری شویم. دوربین: ثبت تصاویر و ویدئو هم از جمله کارکردهای پرمصرف دستگاه‌های ما هستند. با پرهیز از به‌کارگیری دوربین، می‌توان موجب افزایش مدت‌زمان شارژدهی شد. سرما: دمای پایین می‌تواند به‌طور شایان‌توجهی روی شارژدهی باتری اثر بگذارد. به‌گفته‌ی راجر گارنی از شرکت Arctic Tech Solutions، باتری‌های لیتیوم-یونی در دمای پایین نمی‌توانند به‌درستی انرژی را تخلیه کنند. علاوه‌براین، قرارگیری مداوم باتری در دمای کم می‌تواند خسارت‌های دائمی به آن وارد کند. یک راهکار مناسب در چنین شرایطی، نزدیک نگه‌داشتن گوشی به بدن است. در این حالت، گرمای بدن موجب گرم ماندن گوشی می‌شود. به‌روز بودن نرم‌افزارها: برخی از به‌روزرسانی‌های نرم‌افزاری بهینه‌سازی‌هایی در مصرف انرژی را با خود به‌همراه دارند. پس بهتر است دستگاه خود را به‌روز نگه‌داریم و از آخرین نسخه‌ی اپلیکیشن‌ها استفاده کنیم. استفاده از پاوربانک‌ها: یک پاوربانک خوب به شما کمک می‌کند تا بدون اتصال به پریز برق، مدت طولانی‌تری از گوشی استفاده کنید.', 'فناوری', '32491532-abbf-4d3b-9a43-7707d59b178d.jpg', '2020-03-16 08:12:52', '2020-03-16 08:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'فناوری', '2020-03-16 08:12:04', '2020-03-16 08:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationalcode` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `tell` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `country_id`, `state_id`, `branchname`, `nationalcode`, `email`, `tell`, `mobile`, `name`, `province`, `city`, `address`, `code`, `created_at`, `updated_at`) VALUES
(2, '1', '1', 'شیری', NULL, 'shiri@gmail.com', '07132309490', '09175301212', 'سعید شیری', '1', '1', 'خیابان زند خیابان داریوش(توحید) مجتمع تجاری شهر طبقه ۱', '71359-67817', '2020-03-16 05:20:38', '2020-03-16 05:20:38'),
(3, '2', '2', 'فرهان', NULL, 'akbari@gmail.com', '03832272312', '09131842794', 'فرزاد اکبری جونقانی', '2', '2', 'ملت کوچه 52(شهید بیژن شاهین فرد) کوچه بازار موبایل شهر مجتمع بازار موبایل شهرکرد طبقه زیرزمین واحد 109', '88168-77147', '2020-03-16 05:25:58', '2020-03-16 05:25:58'),
(4, '3', '3', 'سامسونگ', NULL, 'keshavarz@gmail.com', '074332222325', '09171412335', 'سید امیر فرشاد کشاورز', '3', '3', 'خیابان مطهری پاساژ جوکار', '75917-85918', '2020-03-16 07:50:54', '2020-03-16 07:50:54'),
(5, '4', '4', 'اهورا', NULL, 'sharifat@gmail.com', '06152630773', '09163531890', 'امین شریفات', '4', '4', 'بازارچه انقلاب', '63731-83363', '2020-03-16 07:52:24', '2020-03-16 07:52:24'),
(6, '5', '5', 'پارسیان', NULL, 'ahrari@gmail.com', '07737323518', '09370883254', 'محمد احراری', '5', '5', 'خیابان جمهوری روبروی بانک سپه', '75391-89876', '2020-03-16 07:54:05', '2020-03-16 07:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citties`
--

CREATE TABLE `citties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'سفید', '2020-03-16 05:00:55', '2020-03-16 05:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-03-16 05:06:27', '2020-03-16 05:06:27'),
(2, 2, 1, '2020-03-16 05:11:14', '2020-03-16 05:11:14'),
(3, 3, 1, '2020-03-16 05:15:31', '2020-03-16 05:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'فارس', '2020-03-16 03:45:36', '2020-03-16 03:45:36'),
(2, 'چهار محال و بختیاری', '2020-03-16 03:46:21', '2020-03-16 03:46:21'),
(3, 'کهگیلویه و بویر احمد', '2020-03-16 03:46:45', '2020-03-16 03:46:45'),
(4, 'خوزستان', '2020-03-16 03:47:07', '2020-03-16 03:47:07'),
(5, 'بوشهر', '2020-03-16 03:50:28', '2020-03-16 03:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `countrystates`
--

CREATE TABLE `countrystates` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `garanties`
--

CREATE TABLE `garanties` (
  `id` int(10) UNSIGNED NOT NULL,
  `serial_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `garanty_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `garanty_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(282, '2020_01_06_063737_create_country_table', 1),
(283, '2020_01_06_071046_create_state_table', 1),
(573, '2020_01_28_114655_create_admin_product_colors_table', 2),
(633, '2020_03_03_070110_add_pivot_color_product_table', 3),
(636, '2020_03_03_125400_create_color_product_table', 4),
(637, '2020_03_05_122748_add_pivot_branch_color_table', 5),
(638, '2020_03_05_125507_add_pivot_color_product_table', 6),
(639, '2020_03_05_130412_create_color_product_table', 7),
(727, '2014_10_12_000000_create_users_table', 8),
(728, '2014_10_12_100000_create_password_resets_table', 8),
(729, '2019_12_24_110118_create_provinces_table', 8),
(730, '2019_12_24_120236_create_cities_table', 8),
(731, '2019_12_25_060941_create_branches_table', 8),
(732, '2019_12_26_070950_create_complaints_table', 8),
(733, '2019_12_28_065730_create_news_table', 8),
(734, '2020_01_01_070626_create_products_table', 8),
(735, '2020_01_01_073544_create_admin_products_table', 8),
(736, '2020_01_04_063516_create_blogs_table', 8),
(737, '2020_01_04_063934_create_blog_categories_table', 8),
(738, '2020_01_04_091552_create_orders_table', 8),
(739, '2020_01_06_083122_create_countrystate_table', 8),
(740, '2020_01_22_051913_create_colors_table', 8),
(741, '2020_01_22_081340_create_comments_table', 8),
(742, '2020_01_25_081446_create_payments_table', 8),
(743, '2020_01_28_071655_create_blog_comments_table', 8),
(744, '2020_01_31_075033_create_news_comments_table', 8),
(745, '2020_01_31_123724_create_provincee_table', 8),
(746, '2020_01_31_130114_create_citty_table', 8),
(747, '2020_01_31_132246_create_country_table', 8),
(748, '2020_01_31_132316_create_state_table', 8),
(749, '2020_03_03_061657_add_pivote_admin_product_color_table', 8),
(750, '2020_03_03_073340_create_roles_table', 8),
(751, '2020_03_03_073552_add_pivot_role_user_table', 8),
(752, '2020_03_05_134244_create_color_product_table', 8),
(753, '2020_03_08_112813_create_garanties_table', 8),
(754, '2020_03_09_065344_create_repairs_table', 8),
(755, '2020_03_14_153456_create_opinions_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 'بررسی رشد و جایگاه کنونی هواوی در دنیای فناوری', 'امروز محصولات و خدمات هواوی در بیش از ۱۷۰ کشور جهان استفاده می‌‌شوند و به بیش از یک‌سوم جمعیت جهانی خدمت‌رسانی می‌کنند. این برند چینی به‌عنوان بزرگ‌ترین تولیدکننده‌ تجهیزات مخابراتی در جهان شناخته می‌شود و در سال‌های اخیر بزرگانی همچون نوکیا، اریکسون، سیسکو و ZTE را پشت سر گذاشته است. رقابت آن‌ها در دنیای گوشی‌های هوشمند هم که برای بسیاری از مردم کاملا واضح به‌نظر می‌رسد. آن‌ها از برندی که هیچ جایی در سال‌های ابتدایی تولد گوشی‌های هوشمند نداشت به نامی شناخته‌شده برای تمامی مصرف‌کننده‌ها تبدیل شده‌اند. هواوی امروز به‌عنوان دومین تولیدکننده‌ی بزرگ گوشی‌های هوشمند، پس از هواوی و بالاتر از اپل قرار دارد.\r\nبسیاری از مردم وقتی نگاهی به پیشرفت هواوی در سال‌های اخیر می‌کنند، بر این تصور هستند که برند چینی از ناکجاآباد پدیدار شد و به قله‌های پیشرفت رسید. درحالیکه این‌چنین نیست. هواوی کسب‌وکار خود را ابتدا در حوزه‌ی B2B شروع کرد و کسب‌وکارهای دیگر، مشتریان اصلی اولیه‌ی آن‌ها بودند. درواقع موفقیت‌های اولیه و موتور محرک پیشرفت در سال‌های بعد، به‌خاطر همین مدل کسب‌وکار ایجاد شد. از بزرگ‌ترین مشتریان سازمانی هواوی می‌توان به اپراتورهای اینترنت و تلفن اشاره کرد که با استفاده از تجهیزات شرکت چینی، خدمات را با برند خود به مشتریان ارائه می‌کنند. ازطرفی پیشرفت‌های اولیه‌ی هواوی در بازار داخل چین صورت گرفت که یک‌پنجم از جمعیت جهان را شکل می‌داد و باوجود عدم شهرت در صحنه‌ی بین‌المللی، اعتبار خوبی را شکل داد.', 'e1884213-05ac-4aaf-af78-743855201148.jpg', '2020-03-16 08:17:34', '2020-03-16 08:17:34'),
(2, 'رقابت آیفون 12 با گلکسی نوت 20 از طریق نسل جدید دوربین های سه بعدی', 'اپل در رقابت خود با سامسونگ در تلاش است تا نسل جدید دوربین را وارد آیفون 12 کند.اپل قصد دارد در ماه سپتامبر از خانواده آیفون های 12 رونمایی کند و هنوز جزئیات ناشناخته زیادی درباره این گوشی جدید اپل وجود دارد.\r\nاما تا آنجا که میدانیم اپل در رقابت خود با سامسونگ در تلاش است تا مدل 5G آیفون 12 را نیز تولید کند. ظاهرا آیفون جدید اپل به جدیدترین نسل تراشه مجهز بوده و بزرگترین آیفونی است که اپل تا به امروز تولید کرده است.\r\nالبته دوربین آیفون 11 پرو نیز در سال جاری ارتقا یافته است. از آنجا ک گلکسی نوت 20 به پیشرفته ترین سیستم دوربین سری نوت مجهز است آیفون 12 نیز از سیستم دوربین چهارگانه برخوردار خواهد شد.\r\nالبته برخی دیگر از گزارشات نیز حاکی از آن هستند که اپل برای آماده کردن سیستم دوربین سه بعدی، حداقل به دو سال زمان نیاز دارد و احتمالا نتواند پاسخ محکمی به گلکسی نوت 20 دهد.\r\nویژگی Time of Flight نیز نمیتواند کیفیت تصویر را ارتقا دهد و حالت کدر ایجاد شده در برخی از عکس ها را از بین میبرد.\r\nسامسونگ در گلکسی نوت 10 پلاس، اس 20 پلاس و اس 20 اولترا از سنسورهای عمق TOF استفاده کرده و حداقل یکی از مدل های نوت 20 نیز از این ویژگی برخوردار خواهد بود.\r\nاپل تلاش میکند تا ار تکنولوژی تشخیص عمق در واقعیت افزوده نیز استفاده کند تا به این طریق بتواند با سیستم کاملا مدرن و پیشرفته ای که سامسونگ در دوربین گوشی های خود به کار برده رقابت کند.\r\nاین درحالیست که سامسونگ از ابتدای سال 2019 تا کنون حتی در گوشی های میانرده خود نیز از سیستم پیشرفته دوربین استفاده کرده است', 'samsung-1-phone-12.jpg', '2020-03-16 08:22:23', '2020-03-16 08:22:23'),
(3, 'گلکسی نوت 20 سامسونگ با طراحی متفاوت', 'به نظر میرسد که گلکسی نوت 20 به بهترین گوشی 2020 سامسونگ تبدیل خواهد شد. Jermain smit به همراه LetsGoDigital تلاش کرده تا بهترین رندرهای ممکن را از نوت 20 دد اختیار ما قرار دهد.\r\nجدیدتریت خبرهای منتشر شده درباره نوت 20 حاکی از آن است که عضو جدید سری نوت گوشی های سامسونگ از مقاومت بسیار بالایی برخوردار است.جدیدترین ویدیوی منتشر شده توسز Square Trade نیز حاکی از آن است که حتی در تست سقوط از ارتفاع نیز نوت 20، مقاوم ترین گوشی سامسونگ تا به امروز خواهد بود.\r\nواقعیت این است که گسترش کروناویروس، بسیاری از فعالیت های سامسونگ در این زمینه را تحت تاثیر قرار داده است.\r\nدر حالیکه قسمت جلوی نوت 20 به اس 20 شباهت دارد کناره های آن نازک تر بوده و از سخت افزار کاملا جدیدی برای دوربیت برخوردار شده است.\r\nیکی از ویژگی های بسیار جذاب نوت 20، طراحی تاثیرگذار آن است.گلکسی نوت 20 از قلم S Pen فوق العاده پیشرفته ای برخوردار است و میزان ارتقای حافظه آن حتی در مقایسه با سری اس 20 نیز بیشتر است\r\nاز طرفی microSD و سنسور پیشرفته 3D Sonic Max کوالکوم که از سری اس 20 حذف شده اند نیز به نوت 20 باز میگردند.\r\nالبته هنوز مدت زمان زیادی تا رونمایی از عضو جدید سری نوت کهکشانی ها باقی مانده است و سامسونگ نیز هنوز هیچ جزئیات تازه ای را درباره آن به صورت رسمی مورد تایید قرار نداده است.\r\nدر حال حاضر گلکسی اس 20 و خانواده این پرچمدار بسیار مدرن سامسونگ به شدت مورد توجه کاربران و علاقه مندان گوشی های سامسونگ قرار گرفته اند هر چند شیوع کرونا ویروس، فروش این پرچمدار را در کره جنوبی به شدت تاثیر قرار داد اما سامسونگ باز هم امیدوار است که با استقبال چشمگیر مشتریان از اس 20 در سراسر دنیا روبرو شود.', 'samsung-1-galaxy-note-20.jpg', '2020-03-16 08:25:12', '2020-03-16 08:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `news_comments`
--

CREATE TABLE `news_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruser` text COLLATE utf8mb4_unicode_ci,
  `rbody` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opinions`
--

CREATE TABLE `opinions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$uMTwSX5wEovBtmYDDYNcsejXkFcugwPtcizLkOocidUopa16LIaEu', '2020-03-16 07:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `authority` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `customerprice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchprice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` text COLLATE utf8mb4_unicode_ci,
  `battery` text COLLATE utf8mb4_unicode_ci,
  `display` text COLLATE utf8mb4_unicode_ci,
  `weight` text COLLATE utf8mb4_unicode_ci,
  `ram` text COLLATE utf8mb4_unicode_ci,
  `camera` text COLLATE utf8mb4_unicode_ci,
  `processor` text COLLATE utf8mb4_unicode_ci,
  `sim` text COLLATE utf8mb4_unicode_ci,
  `image1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci,
  `image3` text COLLATE utf8mb4_unicode_ci,
  `image4` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `storage`, `color_id`, `customerprice`, `branchprice`, `os`, `battery`, `display`, `weight`, `ram`, `camera`, `processor`, `sim`, `image1`, `image2`, `image3`, `image4`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Huawei P30 Lite', '128', 1, '3240000', '3100000', 'android', 'Non-removable Li-Po 3340 mAh battery', '6.15', '159', '4', '24', NULL, '2', 'p30lite.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'مجهز به حسگر اثر انگشت\r\nمناسب برای عکاسی سلفی', '2020-03-16 05:06:27', '2020-03-16 05:06:27'),
(2, 'Samsung A20', '32', 1, '2470000', '2430000', 'android', 'Non-removable Li-Po 4000 mAh battery', '6.5', '183', '3', '13', NULL, '2', 'A20.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'مجهز به حسگر اثر انگشت\r\nشارژ باتری سریع', '2020-03-16 05:11:14', '2020-03-16 05:11:14'),
(3, 'Samsung A50', '128', 1, '3750000', '3600000', 'android', 'Non-removable Li-Po 4000 mAh battery', '6.4', '166', '4', '25', NULL, '2', 'A50.jpg', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 'مجهز به حسگر اثر انگشت', '2020-03-16 05:15:31', '2020-03-16 05:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `provincees`
--

CREATE TABLE `provincees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `garanty_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` text COLLATE utf8mb4_unicode_ci,
  `branch_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'شیراز', '1', '2020-03-16 03:45:46', '2020-03-16 03:45:46'),
(2, 'شهرکرد', '2', '2020-03-16 03:46:31', '2020-03-16 03:46:31'),
(3, 'یاسوج', '3', '2020-03-16 03:46:57', '2020-03-16 03:46:57'),
(4, 'امیدیه', '4', '2020-03-16 03:47:19', '2020-03-16 03:47:19'),
(5, 'نخل تقی', '5', '2020-03-16 03:50:39', '2020-03-16 03:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` text COLLATE utf8mb4_unicode_ci,
  `branch` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `branch`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$hOCuvLQKfybtYD54ciK0POR.Cd9uOqPKqQFAi6V08ePOuko.P4/iy', '1', NULL, 'beAZ0XooyfqsN1Fu89gzpvTsb8TXc9hVKjIG3f4uZGq4Cp4JRspghxGqLCzg', '2020-03-16 02:53:33', '2020-03-16 02:53:33'),
(2, 'سعید شیری', 'shiri@gmail.com', '$2y$10$NboTu7weF1aHrWkWUWN/aOnf9zbvAfdZO0yXm5Nr7heiSNuW7u49i', NULL, '1', 'y5O80CTaqYR6rwoT6qXxwS5GQzcTjpjApa3pD7RS10s5lXFXOV25u8PcTgPQ', '2020-03-16 05:20:38', '2020-03-16 05:20:38'),
(3, 'فرزاد اکبری جونقانی', 'akbari@gmail.com', '$2y$10$WNk0BkVZqicr9xcuiVmor.QwTXwSaVKlChusg0juD9xJJaM3GxA5.', NULL, '1', NULL, '2020-03-16 05:25:58', '2020-03-16 05:25:58'),
(4, 'سید امیر فرشاد کشاورز', 'keshavarz@gmail.com', '$2y$10$rvg8Ezr2rjWrPNPHk9wp1uzbmEuH9RqyQjUQxgKeBgaQ5qMWz68C6', NULL, '1', NULL, '2020-03-16 07:50:55', '2020-03-16 07:50:55'),
(5, 'امین شریفات', 'sharifat@gmail.com', '$2y$10$DWQeZyPDbQmdtTpt7gwrDenTCk7aSJqKdoHNV8/rg7DfVYU8mDh7u', NULL, '1', NULL, '2020-03-16 07:52:24', '2020-03-16 07:52:24'),
(6, 'محمد احراری', 'ahrari@gmail.com', '$2y$10$dlmuE/.b/z3WBj/jFa6WUOi44t.fqpUdPa1yrcmIPMwvmS5KQoeba', NULL, '1', NULL, '2020-03-16 07:54:05', '2020-03-16 07:54:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_products`
--
ALTER TABLE `admin_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_product_color`
--
ALTER TABLE `admin_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citties`
--
ALTER TABLE `citties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countrystates`
--
ALTER TABLE `countrystates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garanties`
--
ALTER TABLE `garanties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_comments`
--
ALTER TABLE `news_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincees`
--
ALTER TABLE `provincees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_products`
--
ALTER TABLE `admin_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_product_color`
--
ALTER TABLE `admin_product_color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citties`
--
ALTER TABLE `citties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countrystates`
--
ALTER TABLE `countrystates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garanties`
--
ALTER TABLE `garanties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=756;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news_comments`
--
ALTER TABLE `news_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `provincees`
--
ALTER TABLE `provincees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
