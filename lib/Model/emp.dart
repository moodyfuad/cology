// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserPosts {
  String post;
  String name;
  String postion;
  String degre;
  String postTime;
  Set<Map<String, String>> comments;
  String cours;

  UserPosts(this.post, this.name, this.postion, this.degre, this.postTime,
      this.comments, this.cours);

  static List<UserPosts> users = [
    UserPosts(
      "السلام عليكم ورحمة الله وبركاته. نود أن نذكركم بأن هذا الترم سيكون طويلاً ويتطلب منكم الاجتهاد والمثابرة. تذكروا دائماً أن من جد وجد ومن زرع حصد. نتمنى لكم جميعاً التوفيق والنجاح.",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "8:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، سنبذل قصارى جهدنا.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون جداً لهذا الترم، إن شاء الله نحقق نتائج رائعة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "دعواتكم لي بالتوفيق، أحتاجها هذه المرة.",
          "CommentTime": "11:00 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "إلى جميع الطلاب الذين لديهم متأخرات في الدفع، نرجو منكم مراجعة مكتبي صباح يوم الخميس من الساعة 8 إلى 11. يُرجى الالتزام بالمواعيد لتجنب أي مشاكل في تسجيل المواد.",
      'وفاء محمد الديني',
      "نيابة شوون الطلاب",
      "دكتور",
      "9:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "تم استلام الرسالة، سأكون هناك في الوقت المحدد.",
          "CommentTime": "8:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "شكراً على التنبيه، سأحرص على الحضور.",
          "CommentTime": "9:50 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "أحبائي الطلاب، نود أن نذكركم بأن آخر موعد لتسديد القيد سيكون في 12/1. وفي حال عدم الالتزام بهذا الموعد، قد تتعرضون لعقوبات من رئاسة الجامعة، لذا يُرجى الالتزام.",
      'حنان محمد بارعيده',
      "القبول والتسجيل",
      "استاذة",
      "10:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "بعد ما أرفع الصور في الموقع، ماذا ينبغي علي فعله؟",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالسداد قبل الخميس.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكن الدفع عبر الإنترنت؟ أرجو التوضيح.",
          "CommentTime": "11:10 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "إلى جميع الطلاب المقيدين في تخصص تقنية المعلومات، نرجو منكم تحديد مواعيد الاختبارات مع المدرسين في أقرب وقت. هذا الأمر ضروري لتنظيم الجدول الزمني بشكل مناسب.",
      'عبدالله محمد بكير',
      "رئيس القسم",
      "دكتور",
      "11:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالتواصل مع المدرسين.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "تكلمنا مع الكل وسيتم رفع ورقة المقترحات قريباً.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أحتاج لتحديد موعد اختبار مبكر، هل يمكن؟",
          "CommentTime": "11:20 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "السلام عليكم. نود إعلامكم بأن اختبارات قسم علوم الحاسوب ستبدأ بتاريخ 12/5. يُرجى الاستعداد والتحضير الجيد.",
      'عبير محمد محسن',
      "رئيس القسم",
      "دكتور",
      "1:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، سأبذل قصارى جهدي في المراجعة.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون جداً، إن شاء الله نحقق نتائج جيدة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل هناك مواد محددة ينبغي التركيز عليها؟",
          "CommentTime": "11:30 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "بإذن الله، سأقوم بإلقاء كلمة ترحيبية للمستجدين طلاب المستوى الأول في قاعة 104 خلال الحفل الترحيبي. أتمنى أن تكون هذه الكلمة دافعًا لهم لبداية جيدة.",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "2:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، أتمنى أن تكون تجربة جميلة للجميع.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسين للحفل، إن شاء الله تكون بداية موفقة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل سيكون هناك توزيع هدايا للمستجدين؟",
          "CommentTime": "11:40 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "ستقام انتخابات جديدة للمجلس الطلابي والإعلامي والتقني في الكلية. على من يود المشاركة أن يضع اسمه في صندوق الانتخابات المتواجد في مكتب شؤون الطلاب.",
      'وفاء محمد الديني',
      "نيابة شوون الطلاب",
      "دكتور",
      "3:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "تم، سأشارك بالتأكيد.",
          "CommentTime": "8:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أريد أن أكون ضمن المجلس الطلابي، هل هناك شروط؟",
          "CommentTime": "9:00 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "تذكير لجميع الطلبة بضرورة تسديد القيد في أسرع وقت ممكن. كما يُطلب من الطلاب الخريجين مراجعة مكتب القبول والتسجيل خلال أيام الدوام.",
      'حنان محمد بارعيده',
      "القبول والتسجيل",
      "استاذة",
      "10:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "متى هي أيام الدوام بالتحديد؟",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالسداد قبل الخميس.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكنني الدفع في أي وقت؟",
          "CommentTime": "11:50 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "سنبدأ قريبًا الاختبارات الشهرية الثانية بناءً على قرارات رئاسة الجامعة. يُمنع منعًا باتًا تدبيل الدرجة، لذا يُرجى الالتزام.",
      'عبدالله محمد بكير',
      "رئيس القسم",
      "دكتور",
      "11:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "إن شاء الله، سأكون مستعدًا.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "والله ضغط، لكن سننجح.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أحتاج لمراجعة المواد بشكل جيد.",
          "CommentTime": "11:00 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "يرجى من جميع الطلاب تجهيز اقتراحات الاختبارات الفصلية الأولى. نحتاج لمقترحاتكم لتحسين مستوى التعليم.",
      'عبير محمد محسن',
      "رئيس القسم",
      "دكتور",
      "1:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "سأقوم بإعداد الاقتراحات.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون لتقديم الأفكار الجديدة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكننا مناقشتها مع الأساتذة؟",
          "CommentTime": "11:10 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "الرجاء من جميع الطلاب مراجعة المنهج الدراسي للتأكد من عدم وجود أي نقص. هذا مهم لضمان نجاحكم.",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "8:00 am",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "سأقوم بمراجعة ذلك اليوم.",
          "CommentTime": "9:00 am"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "شكراً على التنبيه، سأحرص على ذلك.",
          "CommentTime": "10:00 am"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل هناك احتمالية لتغيير بعض المناهج؟",
          "CommentTime": "11:00 am"
        },
      },
      "none",
    ),
  ];
  static List<UserPosts> selectedPost = [
    UserPosts(
      "السلام عليكم ورحمة الله وبركاته. نود أن نذكركم بأن هذا الترم سيكون طويلاً ويتطلب منكم الاجتهاد والمثابرة. تذكروا دائماً أن من جد وجد ومن زرع حصد. نتمنى لكم جميعاً التوفيق والنجاح.",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "8:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، سنبذل قصارى جهدنا.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون جداً لهذا الترم، إن شاء الله نحقق نتائج رائعة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "دعواتكم لي بالتوفيق، أحتاجها هذه المرة.",
          "CommentTime": "11:00 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "إلى جميع الطلاب الذين لديهم متأخرات في الدفع، نرجو منكم مراجعة مكتبي صباح يوم الخميس من الساعة 8 إلى 11. يُرجى الالتزام بالمواعيد لتجنب أي مشاكل في تسجيل المواد.",
      'وفاء محمد الديني',
      "نيابة شوون الطلاب",
      "دكتور",
      "9:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "تم استلام الرسالة، سأكون هناك في الوقت المحدد.",
          "CommentTime": "8:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "شكراً على التنبيه، سأحرص على الحضور.",
          "CommentTime": "9:50 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "أحبائي الطلاب، نود أن نذكركم بأن آخر موعد لتسديد القيد سيكون في 12/1. وفي حال عدم الالتزام بهذا الموعد، قد تتعرضون لعقوبات من رئاسة الجامعة، لذا يُرجى الالتزام.",
      'حنان محمد بارعيده',
      "القبول والتسجيل",
      "استاذة",
      "10:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "بعد ما أرفع الصور في الموقع، ماذا ينبغي علي فعله؟",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالسداد قبل الخميس.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكن الدفع عبر الإنترنت؟ أرجو التوضيح.",
          "CommentTime": "11:10 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "إلى جميع الطلاب المقيدين في تخصص تقنية المعلومات، نرجو منكم تحديد مواعيد الاختبارات مع المدرسين في أقرب وقت. هذا الأمر ضروري لتنظيم الجدول الزمني بشكل مناسب.",
      'عبدالله محمد بكير',
      "رئيس القسم",
      "دكتور",
      "11:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالتواصل مع المدرسين.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "تكلمنا مع الكل وسيتم رفع ورقة المقترحات قريباً.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أحتاج لتحديد موعد اختبار مبكر، هل يمكن؟",
          "CommentTime": "11:20 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "السلام عليكم. نود إعلامكم بأن اختبارات قسم علوم الحاسوب ستبدأ بتاريخ 12/5. يُرجى الاستعداد والتحضير الجيد.",
      'عبير محمد محسن',
      "رئيس القسم",
      "دكتور",
      "1:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، سأبذل قصارى جهدي في المراجعة.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون جداً، إن شاء الله نحقق نتائج جيدة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل هناك مواد محددة ينبغي التركيز عليها؟",
          "CommentTime": "11:30 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "بإذن الله، سأقوم بإلقاء كلمة ترحيبية للمستجدين طلاب المستوى الأول في قاعة 104 خلال الحفل الترحيبي. أتمنى أن تكون هذه الكلمة دافعًا لهم لبداية جيدة.",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "2:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، أتمنى أن تكون تجربة جميلة للجميع.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسين للحفل، إن شاء الله تكون بداية موفقة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل سيكون هناك توزيع هدايا للمستجدين؟",
          "CommentTime": "11:40 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "ستقام انتخابات جديدة للمجلس الطلابي والإعلامي والتقني في الكلية. على من يود المشاركة أن يضع اسمه في صندوق الانتخابات المتواجد في مكتب شؤون الطلاب.",
      'وفاء محمد الديني',
      "نيابة شوون الطلاب",
      "دكتور",
      "3:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "تم، سأشارك بالتأكيد.",
          "CommentTime": "8:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أريد أن أكون ضمن المجلس الطلابي، هل هناك شروط؟",
          "CommentTime": "9:00 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "تذكير لجميع الطلبة بضرورة تسديد القيد في أسرع وقت ممكن. كما يُطلب من الطلاب الخريجين مراجعة مكتب القبول والتسجيل خلال أيام الدوام.",
      'حنان محمد بارعيده',
      "القبول والتسجيل",
      "استاذة",
      "10:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "متى هي أيام الدوام بالتحديد؟",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالسداد قبل الخميس.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكنني الدفع في أي وقت؟",
          "CommentTime": "11:50 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "سنبدأ قريبًا الاختبارات الشهرية الثانية بناءً على قرارات رئاسة الجامعة. يُمنع منعًا باتًا تدبيل الدرجة، لذا يُرجى الالتزام.",
      'عبدالله محمد بكير',
      "رئيس القسم",
      "دكتور",
      "11:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "إن شاء الله، سأكون مستعدًا.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "والله ضغط، لكن سننجح.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أحتاج لمراجعة المواد بشكل جيد.",
          "CommentTime": "11:00 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "يرجى من جميع الطلاب تجهيز اقتراحات الاختبارات الفصلية الأولى. نحتاج لمقترحاتكم لتحسين مستوى التعليم.",
      'عبير محمد محسن',
      "رئيس القسم",
      "دكتور",
      "1:14 pm",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "سأقوم بإعداد الاقتراحات.",
          "CommentTime": "9:48 pm"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون لتقديم الأفكار الجديدة.",
          "CommentTime": "10:40 pm"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكننا مناقشتها مع الأساتذة؟",
          "CommentTime": "11:10 pm"
        },
      },
      "none",
    ),
    UserPosts(
      "الرجاء من جميع الطلاب مراجعة المنهج الدراسي للتأكد من عدم وجود أي نقص. هذا مهم لضمان نجاحكم.",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "8:00 am",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "سأقوم بمراجعة ذلك اليوم.",
          "CommentTime": "9:00 am"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "شكراً على التنبيه، سأحرص على ذلك.",
          "CommentTime": "10:00 am"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل هناك احتمالية لتغيير بعض المناهج؟",
          "CommentTime": "11:00 am"
        },
      },
      "none",
    ),
  ];

  static PostSelect(String postionName) {
    selectedPost.clear();
    for (var user in users) {
      if (user.postion == postionName) {
        selectedPost.add(user);
      }
    }
    if (selectedPost.isEmpty) {
      selectedPost.addAll(users);
    }
  }

  static List<UserPosts> batchPost = [
    UserPosts(
      "المحاضرات غدا ستكون في القاعة 104 الى المحاضرة الاخيره ستكون في الملحق رقم 2 شاكرين حسن تعاونكم",
      'عبدالله محمد بكير',
      "قسم تقنية المعلومات",
      "دكتور",
      "8:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، سنبذل قصارى جهدنا.",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "يوجد فيها تبريد طيب.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "يالله صبرك",
          "CommentTime": "11:00 م"
        },
      },
      "none",
    ),
    UserPosts(
      "الي عنده مشاكل في استلام النتائج يجي لمكتب بكره ساكون متواجدة من الساعة 10 الى الساعه 4 عصرا ",
      'وفاء محمد الديني',
      "نيابة شوون الطلاب",
      "دكتور",
      "9:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "تم استلام الرسالة، سأكون هناك في الوقت المحدد.",
          "CommentTime": "8:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "شكراً على التنبيه، سأحرص على الحضور.",
          "CommentTime": "9:50 م"
        },
      },
      "none",
    ),
    UserPosts(
      "أحبائي الطلاب، نود أن نذكركم بأن آخر موعد لتحديد شبكات او برجمة سيكون في 12/1. وفي حال عدم الالتزام بهذا الموعد، قد تتعرضون لعقوبات من رئاسة الجامعة، لذا يُرجى الالتزام.",
      'حنان محمد بارعيده',
      "القبول والتسجيل",
      "استاذة",
      "10:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "بعد ما أرفع الصور في الموقع، ماذا ينبغي علي فعله؟",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالسداد قبل الخميس.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكن الدفع عبر الإنترنت؟ أرجو التوضيح.",
          "CommentTime": "11:10 م"
        },
      },
      "none",
    ),
    UserPosts(
      " نرجو منكم تحديد مواعيد الاختبارات مع المدرسين في أقرب وقت. هذا الأمر ضروري لتنظيم الجدول الزمني بشكل مناسب.",
      'عبدالله محمد بكير',
      "رئيس القسم",
      "دكتور",
      "11:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالتواصل مع المدرسين.",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "تكلمنا مع الكل وسيتم رفع ورقة المقترحات قريباً.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أحتاج لتحديد موعد اختبار مبكر، هل يمكن؟",
          "CommentTime": "11:20 م"
        },
      },
      "none",
    ),
    UserPosts(
      "ساقوم بندوة لطلاب مستوى رابع لصحاب الشبكات صباح يوم الاحد فمن يرغب بالحضور يكون متواجد في رئاسة الجامعة نفس الوقت ",
      'محمد صالح باطحان',
      "العميد",
      "دكتور",
      "2:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، أتمنى أن تكون تجربة جميلة للجميع.",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسين للحفل، إن شاء الله تكون بداية موفقة.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل سيكون هناك توزيع هدايا للمستجدين؟",
          "CommentTime": "11:40 م"
        },
      },
      "none",
    ),
  ];

  static List<UserPosts> interestsPost = [
    UserPosts(
      "السلام عليكم ورحمة الله وبركاته. نود أن نذكركم بأن الاختبار سيكون الاسبوع الجاي ويتطلب منكم الاجتهاد والمثابرة. تذكروا دائماً أن من جد وجد ومن زرع حصد. نتمنى لكم جميعاً التوفيق والنجاح.",
      'ابراهيم فاضل اسكندر',
      "هئية تدريسية",
      "دكتور",
      "8:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "الله الموفق، سنبذل قصارى جهدنا.",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "متحمسون جداً لهذا الترم، إن شاء الله نحقق نتائج رائعة.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "دعواتكم لي بالتوفيق، أحتاجها هذه المرة.",
          "CommentTime": "11:00 م"
        },
      },
      "مادة قواعد البيانات",
    ),
    UserPosts(
      "إلى جميع الطلاب الذين لم يختبرو اختبار شهري اول، نرجو منكم مراجعة مكتبي صباح يوم الخميس من الساعة 8 إلى 11. يُرجى الالتزام بالمواعيد لتجنب أي مشاكل في تسجيل الدرجات.",
      'قمر محمد الرشيدي',
      "هيئة تدريسية",
      "استاذة",
      "9:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "تم استلام الرسالة، سأكون هناك في الوقت المحدد.",
          "CommentTime": "8:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "شكراً على التنبيه، سأحرص على الحضور.",
          "CommentTime": "9:50 م"
        },
      },
      "مادة البرمجة الشيئية",
    ),
    UserPosts(
      "أحبائي الطلاب، نود أن نذكركم بأن آخر موعد لتسليم الواجب سيكون في 12/1. وفي حال عدم الالتزام بهذا الموعد، قد تتعرضون لنقص من الدرجات، لذا يُرجى الالتزام.",
      'مرام محمد باطوق',
      "هيئة تدريسية",
      "استاذة",
      "10:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "هل يمكنني في الموقع، ماذا ينبغي علي فعله؟",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالتسليم قبل الخميس.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "هل يمكن التسليم عبر الإنترنت؟ أرجو التوضيح.",
          "CommentTime": "11:10 م"
        },
      },
      "مادة هياكل البيانات",
    ),
    UserPosts(
      "إلى جميع الطلاب ، نرجو منكم تحديد مموعد الاختبارات معبعضكم البعض في أقرب وقت. هذا الأمر ضروري لتنظيم الجدول الزمني بشكل مناسب.",
      'عبدالله محمد بكير',
      "هيئة تدريسية",
      "دكتور",
      "11:14 م",
      {
        {
          "Name": "محمد",
          "Postion": "طالب",
          "Comment": "إن شاء الله سأقوم بالتواصل مع الطلاب.",
          "CommentTime": "9:48 م"
        },
        {
          "Name": "خالد",
          "Postion": "طالب",
          "Comment": "تكلمنا مع الكل وسيتم رفع ورقة المقترحات قريباً.",
          "CommentTime": "10:40 م"
        },
        {
          "Name": "علي",
          "Postion": "طالب",
          "Comment": "أحتاج لتحديد موعد اختبار مبكر، هل يمكن؟",
          "CommentTime": "11:20 م"
        },
      },
      "مادة برمجة الويب",
    ),
  ];

  static postPageSelect(String selectedPage) {
    if (selectedPage == "صفحة الكلية") {
      selectedPost.clear();
      selectedPost.addAll(users);
    } else if (selectedPage == "صفحة الدفعة") {
      selectedPost.clear();
      selectedPost.addAll(batchPost);
    } else if (selectedPage == "الاهتمامات") {
      selectedPost.clear();
      selectedPost.addAll(interestsPost);
    }
  }

  static postCours(String name) {
    selectedPost.clear();
    for (var item in interestsPost) {
      if (item.name == name) {
        selectedPost.add(item);
      }
    }
  }
}

class showallMessages {
  String name;
  String position;
  Map<int, String> chats;

  showallMessages({
    required this.name,
    required this.position,
    required this.chats,
  });

  static List<showallMessages> show = [
    showallMessages(
      name: "ابراهيم فاضل اسكندر",
      position: "دكتور",
      chats: {
        1: "عليك مراجعت مكتبي لتاكد من درجة الامتحان العملي لمادة قواعد البيانات",
      },
    ),
    showallMessages(
      name: "وفاء محمد الديني",
      position: "دكتورة",
      chats: {
        1: "عليك مراجعت مكتبي لتحديد موعد حفل القدوم لطلاب مستوى اول ساكون في المكتب الساعة 9 غدا",
      },
    )
  ];
}
