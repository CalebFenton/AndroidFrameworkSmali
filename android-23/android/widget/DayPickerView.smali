.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;,
        Landroid/widget/DayPickerView$1;,
        Landroid/widget/DayPickerView$2;
    }
.end annotation


# static fields
.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LAYOUT:I = 0x109004c

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mNextButton:Landroid/widget/ImageButton;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mPrevButton:Landroid/widget/ImageButton;

.field private final mSelectedDay:Ljava/util/Calendar;

.field private mTempCalendar:Ljava/util/Calendar;

.field private final mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static synthetic -get0(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/DayPickerView;I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 44
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const v1, 0x1010098

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 68
    const v0, 0x101035d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 77
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@6
    move-result-object v4

    #@7
    move-object/from16 v0, p0

    #@9
    iput-object v4, v0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    #@b
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@e
    move-result-object v4

    #@f
    move-object/from16 v0, p0

    #@11
    iput-object v4, v0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    #@13
    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@16
    move-result-object v4

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v4, v0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    #@1b
    .line 390
    new-instance v4, Landroid/widget/DayPickerView$1;

    #@1d
    move-object/from16 v0, p0

    #@1f
    invoke-direct {v4, v0}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    #@22
    move-object/from16 v0, p0

    #@24
    iput-object v4, v0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@26
    .line 407
    new-instance v4, Landroid/widget/DayPickerView$2;

    #@28
    move-object/from16 v0, p0

    #@2a
    invoke-direct {v4, v0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput-object v4, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@31
    .line 80
    const-string/jumbo v4, "accessibility"

    #@34
    .line 79
    move-object/from16 v0, p1

    #@36
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    #@3c
    move-object/from16 v0, p0

    #@3e
    iput-object v4, v0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@40
    .line 83
    sget-object v4, Lcom/android/internal/R$styleable;->CalendarView:[I

    #@42
    .line 82
    move-object/from16 v0, p1

    #@44
    move-object/from16 v1, p2

    #@46
    move/from16 v2, p3

    #@48
    move/from16 v3, p4

    #@4a
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@4d
    move-result-object v10

    #@4e
    .line 86
    .local v10, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@51
    move-result-object v4

    #@52
    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@55
    move-result-object v4

    #@56
    iget-object v4, v4, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    #@58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@5b
    move-result v4

    #@5c
    .line 85
    const/4 v5, 0x0

    #@5d
    invoke-virtual {v10, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@60
    move-result v16

    #@61
    .line 88
    .local v16, "firstDayOfWeek":I
    const/4 v4, 0x2

    #@62
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@65
    move-result-object v19

    #@66
    .line 89
    .local v19, "minDate":Ljava/lang/String;
    const/4 v4, 0x3

    #@67
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@6a
    move-result-object v18

    #@6b
    .line 92
    .local v18, "maxDate":Ljava/lang/String;
    const/16 v4, 0xd

    #@6d
    .line 93
    const v5, 0x1030417

    #@70
    .line 91
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@73
    move-result v21

    #@74
    .line 95
    .local v21, "monthTextAppearanceResId":I
    const/16 v4, 0xb

    #@76
    .line 96
    const v5, 0x1030416

    #@79
    .line 94
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7c
    move-result v13

    #@7d
    .line 98
    .local v13, "dayOfWeekTextAppearanceResId":I
    const/16 v4, 0xc

    #@7f
    .line 99
    const v5, 0x1030415

    #@82
    .line 97
    invoke-virtual {v10, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@85
    move-result v15

    #@86
    .line 102
    .local v15, "dayTextAppearanceResId":I
    const/16 v4, 0xe

    #@88
    .line 101
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@8b
    move-result-object v14

    #@8c
    .line 104
    .local v14, "daySelectorColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    #@8f
    .line 107
    new-instance v4, Landroid/widget/DayPickerPagerAdapter;

    #@91
    .line 108
    const v5, 0x109004a

    #@94
    const v26, 0x1020321

    #@97
    .line 107
    move-object/from16 v0, p1

    #@99
    move/from16 v1, v26

    #@9b
    invoke-direct {v4, v0, v5, v1}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    #@9e
    move-object/from16 v0, p0

    #@a0
    iput-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@a2
    .line 109
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@a6
    move/from16 v0, v21

    #@a8
    invoke-virtual {v4, v0}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    #@ab
    .line 110
    move-object/from16 v0, p0

    #@ad
    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@af
    invoke-virtual {v4, v13}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    #@b2
    .line 111
    move-object/from16 v0, p0

    #@b4
    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@b6
    invoke-virtual {v4, v15}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    #@b9
    .line 112
    move-object/from16 v0, p0

    #@bb
    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@bd
    invoke-virtual {v4, v14}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    #@c0
    .line 114
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@c3
    move-result-object v17

    #@c4
    .line 115
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109004c

    #@c7
    const/4 v5, 0x0

    #@c8
    move-object/from16 v0, v17

    #@ca
    move-object/from16 v1, p0

    #@cc
    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@cf
    move-result-object v12

    #@d0
    check-cast v12, Landroid/view/ViewGroup;

    #@d2
    .line 118
    .local v12, "content":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    #@d5
    move-result v4

    #@d6
    if-lez v4, :cond_0

    #@d8
    .line 119
    const/4 v4, 0x0

    #@d9
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@dc
    move-result-object v11

    #@dd
    .line 120
    .local v11, "child":Landroid/view/View;
    const/4 v4, 0x0

    #@de
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@e1
    .line 121
    move-object/from16 v0, p0

    #@e3
    invoke-virtual {v0, v11}, Landroid/widget/DayPickerView;->addView(Landroid/view/View;)V

    #@e6
    goto :goto_0

    #@e7
    .line 124
    .end local v11    # "child":Landroid/view/View;
    :cond_0
    const v4, 0x1020326

    #@ea
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    #@ef
    move-result-object v4

    #@f0
    check-cast v4, Landroid/widget/ImageButton;

    #@f2
    move-object/from16 v0, p0

    #@f4
    iput-object v4, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@f6
    .line 125
    move-object/from16 v0, p0

    #@f8
    iget-object v4, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v5, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@fe
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@101
    .line 127
    const v4, 0x1020327

    #@104
    move-object/from16 v0, p0

    #@106
    invoke-virtual {v0, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    #@109
    move-result-object v4

    #@10a
    check-cast v4, Landroid/widget/ImageButton;

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-object v4, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@110
    .line 128
    move-object/from16 v0, p0

    #@112
    iget-object v4, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v5, v0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    #@118
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@11b
    .line 130
    const v4, 0x1020325

    #@11e
    move-object/from16 v0, p0

    #@120
    invoke-virtual {v0, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    #@123
    move-result-object v4

    #@124
    check-cast v4, Lcom/android/internal/widget/ViewPager;

    #@126
    move-object/from16 v0, p0

    #@128
    iput-object v4, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@12a
    .line 131
    move-object/from16 v0, p0

    #@12c
    iget-object v4, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@12e
    move-object/from16 v0, p0

    #@130
    iget-object v5, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@132
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    #@135
    .line 132
    move-object/from16 v0, p0

    #@137
    iget-object v4, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-object v5, v0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@13d
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    #@140
    .line 135
    if-eqz v21, :cond_2

    #@142
    .line 136
    move-object/from16 v0, p0

    #@144
    iget-object v4, v0, Landroid/widget/DayPickerView;->mContext:Landroid/content/Context;

    #@146
    .line 137
    sget-object v5, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    #@148
    .line 136
    const/16 v26, 0x0

    #@14a
    .line 137
    const/16 v27, 0x0

    #@14c
    .line 136
    move-object/from16 v0, v26

    #@14e
    move/from16 v1, v27

    #@150
    move/from16 v2, v21

    #@152
    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@155
    move-result-object v24

    #@156
    .line 138
    .local v24, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    #@157
    move-object/from16 v0, v24

    #@159
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@15c
    move-result-object v20

    #@15d
    .line 139
    .local v20, "monthColor":Landroid/content/res/ColorStateList;
    if-eqz v20, :cond_1

    #@15f
    .line 140
    move-object/from16 v0, p0

    #@161
    iget-object v4, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@163
    move-object/from16 v0, v20

    #@165
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    #@168
    .line 141
    move-object/from16 v0, p0

    #@16a
    iget-object v4, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@16c
    move-object/from16 v0, v20

    #@16e
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    #@171
    .line 143
    :cond_1
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    #@174
    .line 147
    .end local v20    # "monthColor":Landroid/content/res/ColorStateList;
    .end local v24    # "ta":Landroid/content/res/TypedArray;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@177
    move-result-object v25

    #@178
    .line 148
    .local v25, "tempDate":Ljava/util/Calendar;
    move-object/from16 v0, v19

    #@17a
    move-object/from16 v1, v25

    #@17c
    invoke-static {v0, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@17f
    move-result v4

    #@180
    if-nez v4, :cond_3

    #@182
    .line 149
    const/16 v4, 0x76c

    #@184
    const/4 v5, 0x0

    #@185
    const/16 v26, 0x1

    #@187
    move-object/from16 v0, v25

    #@189
    move/from16 v1, v26

    #@18b
    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    #@18e
    .line 151
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    #@191
    move-result-wide v6

    #@192
    .line 153
    .local v6, "minDateMillis":J
    move-object/from16 v0, v18

    #@194
    move-object/from16 v1, v25

    #@196
    invoke-static {v0, v1}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@199
    move-result v4

    #@19a
    if-nez v4, :cond_4

    #@19c
    .line 154
    const/16 v4, 0x834

    #@19e
    const/16 v5, 0xb

    #@1a0
    const/16 v26, 0x1f

    #@1a2
    move-object/from16 v0, v25

    #@1a4
    move/from16 v1, v26

    #@1a6
    invoke-virtual {v0, v4, v5, v1}, Ljava/util/Calendar;->set(III)V

    #@1a9
    .line 156
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1ac
    move-result-wide v8

    #@1ad
    .line 158
    .local v8, "maxDateMillis":J
    cmp-long v4, v8, v6

    #@1af
    if-gez v4, :cond_5

    #@1b1
    .line 159
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b3
    const-string/jumbo v5, "maxDate must be >= minDate"

    #@1b6
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b9
    throw v4

    #@1ba
    .line 163
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1bd
    move-result-wide v4

    #@1be
    .line 162
    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    #@1c1
    move-result-wide v22

    #@1c2
    .line 165
    .local v22, "setDateMillis":J
    move-object/from16 v0, p0

    #@1c4
    move/from16 v1, v16

    #@1c6
    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    #@1c9
    .line 166
    move-object/from16 v0, p0

    #@1cb
    invoke-virtual {v0, v6, v7}, Landroid/widget/DayPickerView;->setMinDate(J)V

    #@1ce
    .line 167
    move-object/from16 v0, p0

    #@1d0
    invoke-virtual {v0, v8, v9}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    #@1d3
    .line 168
    const/4 v4, 0x0

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    move-wide/from16 v1, v22

    #@1d8
    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/DayPickerView;->setDate(JZ)V

    #@1db
    .line 171
    move-object/from16 v0, p0

    #@1dd
    iget-object v4, v0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@1df
    new-instance v5, Landroid/widget/DayPickerView$3;

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    invoke-direct {v5, v0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    #@1e6
    invoke-virtual {v4, v5}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    #@1e9
    .line 76
    return-void
.end method

.method private getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 4
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v2, 0x1

    #@2
    .line 361
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    #@9
    move-result v2

    #@a
    sub-int v0, v1, v2

    #@c
    .line 362
    .local v0, "diffYears":I
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    #@13
    move-result v2

    #@14
    sub-int/2addr v1, v2

    #@15
    mul-int/lit8 v2, v0, 0xc

    #@17
    add-int/2addr v1, v2

    #@18
    return v1
.end method

.method private getPositionFromDay(J)I
    .locals 5
    .param p1, "timeInMillis"    # J

    #@0
    .prologue
    .line 366
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    #@2
    iget-object v3, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    #@4
    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    #@7
    move-result v1

    #@8
    .line 367
    .local v1, "diffMonthMax":I
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    #@a
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Ljava/util/Calendar;

    #@d
    move-result-object v3

    #@e
    invoke-direct {p0, v2, v3}, Landroid/widget/DayPickerView;->getDiffMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I

    #@11
    move-result v0

    #@12
    .line 368
    .local v0, "diffMonth":I
    const/4 v2, 0x0

    #@13
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@16
    move-result v2

    #@17
    return v2
.end method

.method private getTempCalendarForTime(J)Ljava/util/Calendar;
    .locals 1
    .param p1, "timeInMillis"    # J

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    #@a
    .line 375
    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@f
    .line 376
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    #@11
    return-object v0
.end method

.method private setDate(JZZ)V
    .locals 3
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z
    .param p4, "setSelected"    # Z

    #@0
    .prologue
    .line 295
    if-eqz p4, :cond_0

    #@2
    .line 296
    iget-object v1, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    #@4
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 299
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    #@a
    move-result v0

    #@b
    .line 300
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    #@10
    move-result v1

    #@11
    if-eq v0, v1, :cond_1

    #@13
    .line 301
    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@15
    invoke-virtual {v1, v0, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    #@18
    .line 304
    :cond_1
    iget-object v1, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    #@1a
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1d
    .line 305
    iget-object v1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@1f
    iget-object v2, p0, Landroid/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    #@21
    invoke-virtual {v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    #@24
    .line 294
    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 6
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x0

    #@2
    .line 182
    if-lez p1, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 183
    .local v1, "hasPrev":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@7
    invoke-virtual {v2}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v2, v2, -0x1

    #@d
    if-ge p1, v2, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    .line 184
    .local v0, "hasNext":Z
    :goto_1
    iget-object v5, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@12
    if-eqz v1, :cond_2

    #@14
    move v2, v3

    #@15
    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@18
    .line 185
    iget-object v2, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@1a
    if-eqz v0, :cond_3

    #@1c
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    #@1f
    .line 181
    return-void

    #@20
    .line 182
    .end local v0    # "hasNext":Z
    .end local v1    # "hasPrev":Z
    :cond_0
    const/4 v1, 0x0

    #@21
    .restart local v1    # "hasPrev":Z
    goto :goto_0

    #@22
    .line 183
    :cond_1
    const/4 v0, 0x0

    #@23
    .restart local v0    # "hasNext":Z
    goto :goto_1

    #@24
    :cond_2
    move v2, v4

    #@25
    .line 184
    goto :goto_2

    #@26
    :cond_3
    move v3, v4

    #@27
    .line 185
    goto :goto_3
.end method


# virtual methods
.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDayOfWeekTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDayTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-virtual {v0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxDate()J
    .locals 2

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMostVisiblePosition()I
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DayPickerView;->isLayoutRtl()Z

    #@3
    move-result v19

    #@4
    if-eqz v19, :cond_0

    #@6
    .line 217
    move-object/from16 v0, p0

    #@8
    iget-object v6, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@a
    .line 218
    .local v6, "leftButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    #@c
    iget-object v13, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@e
    .line 224
    .local v13, "rightButton":Landroid/widget/ImageButton;
    :goto_0
    sub-int v18, p4, p2

    #@10
    .line 225
    .local v18, "width":I
    sub-int v5, p5, p3

    #@12
    .line 226
    .local v5, "height":I
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@16
    move-object/from16 v19, v0

    #@18
    const/16 v20, 0x0

    #@1a
    const/16 v21, 0x0

    #@1c
    move-object/from16 v0, v19

    #@1e
    move/from16 v1, v20

    #@20
    move/from16 v2, v21

    #@22
    move/from16 v3, v18

    #@24
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    #@27
    .line 228
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@2b
    move-object/from16 v19, v0

    #@2d
    const/16 v20, 0x0

    #@2f
    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    #@32
    move-result-object v12

    #@33
    check-cast v12, Landroid/widget/SimpleMonthView;

    #@35
    .line 229
    .local v12, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    #@38
    move-result v11

    #@39
    .line 230
    .local v11, "monthHeight":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    #@3c
    move-result v4

    #@3d
    .line 234
    .local v4, "cellWidth":I
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@40
    move-result v8

    #@41
    .line 235
    .local v8, "leftDW":I
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@44
    move-result v7

    #@45
    .line 236
    .local v7, "leftDH":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@48
    move-result v19

    #@49
    sub-int v20, v11, v7

    #@4b
    div-int/lit8 v20, v20, 0x2

    #@4d
    add-int v10, v19, v20

    #@4f
    .line 237
    .local v10, "leftIconTop":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    #@52
    move-result v19

    #@53
    sub-int v20, v4, v8

    #@55
    div-int/lit8 v20, v20, 0x2

    #@57
    add-int v9, v19, v20

    #@59
    .line 238
    .local v9, "leftIconLeft":I
    add-int v19, v9, v8

    #@5b
    add-int v20, v10, v7

    #@5d
    move/from16 v0, v19

    #@5f
    move/from16 v1, v20

    #@61
    invoke-virtual {v6, v9, v10, v0, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    #@64
    .line 240
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    #@67
    move-result v15

    #@68
    .line 241
    .local v15, "rightDW":I
    invoke-virtual {v13}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    #@6b
    move-result v14

    #@6c
    .line 242
    .local v14, "rightDH":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    #@6f
    move-result v19

    #@70
    sub-int v20, v11, v14

    #@72
    div-int/lit8 v20, v20, 0x2

    #@74
    add-int v17, v19, v20

    #@76
    .line 243
    .local v17, "rightIconTop":I
    invoke-virtual {v12}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    #@79
    move-result v19

    #@7a
    sub-int v19, v18, v19

    #@7c
    sub-int v20, v4, v15

    #@7e
    div-int/lit8 v20, v20, 0x2

    #@80
    sub-int v16, v19, v20

    #@82
    .line 244
    .local v16, "rightIconRight":I
    sub-int v19, v16, v15

    #@84
    .line 245
    add-int v20, v17, v14

    #@86
    .line 244
    move/from16 v0, v19

    #@88
    move/from16 v1, v17

    #@8a
    move/from16 v2, v16

    #@8c
    move/from16 v3, v20

    #@8e
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    #@91
    .line 213
    return-void

    #@92
    .line 220
    .end local v4    # "cellWidth":I
    .end local v5    # "height":I
    .end local v6    # "leftButton":Landroid/widget/ImageButton;
    .end local v7    # "leftDH":I
    .end local v8    # "leftDW":I
    .end local v9    # "leftIconLeft":I
    .end local v10    # "leftIconTop":I
    .end local v11    # "monthHeight":I
    .end local v12    # "monthView":Landroid/widget/SimpleMonthView;
    .end local v13    # "rightButton":Landroid/widget/ImageButton;
    .end local v14    # "rightDH":I
    .end local v15    # "rightDW":I
    .end local v16    # "rightIconRight":I
    .end local v17    # "rightIconTop":I
    .end local v18    # "width":I
    :cond_0
    move-object/from16 v0, p0

    #@94
    iget-object v6, v0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@96
    .line 221
    .restart local v6    # "leftButton":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    #@98
    iget-object v13, v0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@9a
    .restart local v13    # "rightButton":Landroid/widget/ImageButton;
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v7, -0x80000000

    #@2
    .line 190
    iget-object v6, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@4
    .line 191
    .local v6, "viewPager":Lcom/android/internal/widget/ViewPager;
    invoke-virtual {p0, v6, p1, p2}, Landroid/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    #@7
    .line 193
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    #@a
    move-result v3

    #@b
    .line 194
    .local v3, "measuredWidthAndState":I
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    #@e
    move-result v2

    #@f
    .line 195
    .local v2, "measuredHeightAndState":I
    invoke-virtual {p0, v3, v2}, Landroid/widget/DayPickerView;->setMeasuredDimension(II)V

    #@12
    .line 197
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    #@15
    move-result v5

    #@16
    .line 198
    .local v5, "pagerWidth":I
    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    #@19
    move-result v4

    #@1a
    .line 199
    .local v4, "pagerHeight":I
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1d
    move-result v1

    #@1e
    .line 200
    .local v1, "buttonWidthSpec":I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@21
    move-result v0

    #@22
    .line 201
    .local v0, "buttonHeightSpec":I
    iget-object v7, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    #@24
    invoke-virtual {v7, v1, v0}, Landroid/widget/ImageButton;->measure(II)V

    #@27
    .line 202
    iget-object v7, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    #@29
    invoke-virtual {v7, v1, v0}, Landroid/widget/ImageButton;->measure(II)V

    #@2c
    .line 189
    return-void
.end method

.method public onRangeChanged()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 342
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@3
    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    #@5
    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    #@7
    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    #@a
    .line 346
    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    #@c
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@f
    move-result-wide v0

    #@10
    invoke-direct {p0, v0, v1, v3, v3}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    #@13
    .line 348
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@15
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    #@18
    move-result v0

    #@19
    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    #@1c
    .line 341
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@3
    .line 209
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->requestLayout()V

    #@6
    .line 206
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    #@0
    .prologue
    .line 272
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    #@4
    .line 271
    return-void
.end method

.method public setDate(JZ)V
    .locals 1
    .param p1, "timeInMillis"    # J
    .param p3, "animate"    # Z

    #@0
    .prologue
    .line 283
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    #@4
    .line 282
    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    #@5
    .line 248
    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    #@5
    .line 256
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    #@5
    .line 312
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@5
    .line 331
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    #@8
    .line 329
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@5
    .line 322
    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    #@8
    .line 320
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@0
    .prologue
    .line 357
    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@2
    .line 356
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    #@6
    .line 386
    return-void
.end method
