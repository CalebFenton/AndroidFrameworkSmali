.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePickerCalendarDelegate$SavedState;,
        Landroid/widget/DatePickerCalendarDelegate$1;,
        Landroid/widget/DatePickerCalendarDelegate$2;,
        Landroid/widget/DatePickerCalendarDelegate$3;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mCurrentDate:Ljava/util/Calendar;

.field private mCurrentView:I

.field private mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthDayFormat:Ljava/text/SimpleDateFormat;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Ljava/util/Calendar;

.field private mYearFormat:Ljava/text/SimpleDateFormat;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method static synthetic -get0(Landroid/widget/DatePickerCalendarDelegate;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V
    .locals 0
    .param p1, "viewIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 61
    new-array v0, v3, [I

    #@4
    .line 62
    const v1, 0x1010098

    #@7
    aput v1, v0, v2

    #@9
    .line 61
    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    #@b
    .line 63
    new-array v0, v3, [I

    #@d
    .line 64
    const v1, 0x1010033

    #@10
    aput v1, v0, v2

    #@12
    .line 63
    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    #@14
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 98
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    #@3
    .line 87
    const/4 v14, -0x1

    #@4
    move-object/from16 v0, p0

    #@6
    iput v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@8
    .line 94
    const/4 v14, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    #@d
    .line 239
    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$1;

    #@f
    move-object/from16 v0, p0

    #@11
    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    #@14
    move-object/from16 v0, p0

    #@16
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@18
    .line 250
    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$2;

    #@1a
    move-object/from16 v0, p0

    #@1c
    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    #@1f
    move-object/from16 v0, p0

    #@21
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@23
    .line 276
    new-instance v14, Landroid/widget/DatePickerCalendarDelegate$3;

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-direct {v14, v0}, Landroid/widget/DatePickerCalendarDelegate$3;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    #@2e
    .line 100
    move-object/from16 v0, p0

    #@30
    iget-object v10, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@32
    .line 101
    .local v10, "locale":Ljava/util/Locale;
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@35
    move-result-object v14

    #@36
    move-object/from16 v0, p0

    #@38
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3a
    .line 102
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@3d
    move-result-object v14

    #@3e
    move-object/from16 v0, p0

    #@40
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@42
    .line 103
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@45
    move-result-object v14

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@4a
    .line 104
    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@4d
    move-result-object v14

    #@4e
    move-object/from16 v0, p0

    #@50
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@52
    .line 106
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@56
    const/16 v15, 0x76c

    #@58
    const/16 v16, 0x0

    #@5a
    const/16 v17, 0x1

    #@5c
    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    #@5f
    .line 107
    move-object/from16 v0, p0

    #@61
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@63
    const/16 v15, 0x834

    #@65
    const/16 v16, 0xb

    #@67
    const/16 v17, 0x1f

    #@69
    invoke-virtual/range {v14 .. v17}, Ljava/util/Calendar;->set(III)V

    #@6c
    .line 109
    move-object/from16 v0, p0

    #@6e
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@70
    invoke-virtual {v14}, Landroid/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    #@73
    move-result-object v12

    #@74
    .line 110
    .local v12, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    #@76
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    #@78
    .line 111
    sget-object v15, Lcom/android/internal/R$styleable;->DatePicker:[I

    #@7a
    .line 110
    move-object/from16 v0, p3

    #@7c
    move/from16 v1, p4

    #@7e
    move/from16 v2, p5

    #@80
    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@83
    move-result-object v4

    #@84
    .line 112
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@86
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    #@88
    .line 113
    const-string/jumbo v15, "layout_inflater"

    #@8b
    .line 112
    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8e
    move-result-object v7

    #@8f
    check-cast v7, Landroid/view/LayoutInflater;

    #@91
    .line 115
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/16 v14, 0x11

    #@93
    const v15, 0x1090049

    #@96
    .line 114
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@99
    move-result v8

    #@9a
    .line 118
    .local v8, "layoutResourceId":I
    move-object/from16 v0, p0

    #@9c
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@9e
    const/4 v15, 0x0

    #@9f
    invoke-virtual {v7, v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a2
    move-result-object v14

    #@a3
    check-cast v14, Landroid/view/ViewGroup;

    #@a5
    move-object/from16 v0, p0

    #@a7
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    #@a9
    .line 119
    move-object/from16 v0, p0

    #@ab
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    #@b1
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->addView(Landroid/view/View;)V

    #@b4
    .line 122
    move-object/from16 v0, p0

    #@b6
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    #@b8
    const v15, 0x1020319

    #@bb
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@be
    move-result-object v5

    #@bf
    check-cast v5, Landroid/view/ViewGroup;

    #@c1
    .line 123
    .local v5, "header":Landroid/view/ViewGroup;
    const v14, 0x102031a

    #@c4
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@c7
    move-result-object v14

    #@c8
    check-cast v14, Landroid/widget/TextView;

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@ce
    .line 124
    move-object/from16 v0, p0

    #@d0
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    #@d6
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@d9
    .line 125
    const v14, 0x102031b

    #@dc
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@df
    move-result-object v14

    #@e0
    check-cast v14, Landroid/widget/TextView;

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@e6
    .line 126
    move-object/from16 v0, p0

    #@e8
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    #@ee
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@f1
    .line 131
    const/4 v6, 0x0

    #@f2
    .line 135
    .local v6, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v14, 0xa

    #@f4
    const/4 v15, 0x0

    #@f5
    .line 134
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f8
    move-result v11

    #@f9
    .line 136
    .local v11, "monthHeaderTextAppearance":I
    if-eqz v11, :cond_0

    #@fb
    .line 137
    move-object/from16 v0, p0

    #@fd
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    #@ff
    .line 138
    sget-object v15, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    #@101
    .line 137
    const/16 v16, 0x0

    #@103
    .line 138
    const/16 v17, 0x0

    #@105
    .line 137
    move-object/from16 v0, v16

    #@107
    move/from16 v1, v17

    #@109
    invoke-virtual {v14, v0, v15, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@10c
    move-result-object v13

    #@10d
    .line 139
    .local v13, "textAppearance":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@10e
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@111
    move-result-object v9

    #@112
    .line 140
    .local v9, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    #@114
    invoke-direct {v0, v9}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@117
    move-result-object v6

    #@118
    .line 141
    .local v6, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    #@11b
    .line 144
    .end local v6    # "headerTextColor":Landroid/content/res/ColorStateList;
    .end local v9    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v13    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_0
    if-nez v6, :cond_1

    #@11d
    .line 145
    const/16 v14, 0x12

    #@11f
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@122
    move-result-object v6

    #@123
    .line 148
    :cond_1
    if-eqz v6, :cond_2

    #@125
    .line 149
    move-object/from16 v0, p0

    #@127
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@129
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@12c
    .line 150
    move-object/from16 v0, p0

    #@12e
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@130
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@133
    .line 154
    :cond_2
    const/4 v14, 0x0

    #@134
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@137
    move-result v14

    #@138
    if-eqz v14, :cond_3

    #@13a
    .line 155
    const/4 v14, 0x0

    #@13b
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@13e
    move-result-object v14

    #@13f
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@142
    .line 158
    :cond_3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@145
    .line 161
    move-object/from16 v0, p0

    #@147
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    #@149
    const v15, 0x1020322

    #@14c
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@14f
    move-result-object v14

    #@150
    check-cast v14, Landroid/widget/ViewAnimator;

    #@152
    move-object/from16 v0, p0

    #@154
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@156
    .line 164
    move-object/from16 v0, p0

    #@158
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@15a
    const v15, 0x1020323

    #@15d
    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    #@160
    move-result-object v14

    #@161
    check-cast v14, Landroid/widget/DayPickerView;

    #@163
    move-object/from16 v0, p0

    #@165
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@167
    .line 165
    move-object/from16 v0, p0

    #@169
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    #@16f
    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    #@172
    .line 166
    move-object/from16 v0, p0

    #@174
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@176
    move-object/from16 v0, p0

    #@178
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@17a
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    #@17d
    move-result-wide v16

    #@17e
    move-wide/from16 v0, v16

    #@180
    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMinDate(J)V

    #@183
    .line 167
    move-object/from16 v0, p0

    #@185
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@187
    move-object/from16 v0, p0

    #@189
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@18b
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    #@18e
    move-result-wide v16

    #@18f
    move-wide/from16 v0, v16

    #@191
    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    #@194
    .line 168
    move-object/from16 v0, p0

    #@196
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@19c
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    #@19f
    move-result-wide v16

    #@1a0
    move-wide/from16 v0, v16

    #@1a2
    invoke-virtual {v14, v0, v1}, Landroid/widget/DayPickerView;->setDate(J)V

    #@1a5
    .line 169
    move-object/from16 v0, p0

    #@1a7
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    #@1ad
    invoke-virtual {v14, v15}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    #@1b0
    .line 172
    move-object/from16 v0, p0

    #@1b2
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@1b4
    const v15, 0x1020324

    #@1b7
    invoke-virtual {v14, v15}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    #@1ba
    move-result-object v14

    #@1bb
    check-cast v14, Landroid/widget/YearPickerView;

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@1c1
    .line 173
    move-object/from16 v0, p0

    #@1c3
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@1cd
    move-object/from16 v16, v0

    #@1cf
    invoke-virtual/range {v14 .. v16}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    #@1d2
    .line 174
    move-object/from16 v0, p0

    #@1d4
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1da
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1dd
    move-result-wide v16

    #@1de
    move-wide/from16 v0, v16

    #@1e0
    invoke-virtual {v14, v0, v1}, Landroid/widget/YearPickerView;->setDate(J)V

    #@1e3
    .line 175
    move-object/from16 v0, p0

    #@1e5
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iget-object v15, v0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@1eb
    invoke-virtual {v14, v15}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    #@1ee
    .line 178
    const v14, 0x104055b

    #@1f1
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1f4
    move-result-object v14

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    #@1f9
    .line 179
    const v14, 0x104055c

    #@1fc
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1ff
    move-result-object v14

    #@200
    move-object/from16 v0, p0

    #@202
    iput-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    #@204
    .line 183
    move-object/from16 v0, p0

    #@206
    iget-object v14, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@208
    move-object/from16 v0, p0

    #@20a
    invoke-virtual {v0, v14}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    #@20d
    .line 185
    const/4 v14, 0x0

    #@20e
    move-object/from16 v0, p0

    #@210
    invoke-direct {v0, v14}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    #@213
    .line 97
    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 13
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const v11, 0x10102fe

    #@4
    const/4 v10, 0x2

    #@5
    const/4 v9, 0x1

    #@6
    const/4 v8, 0x0

    #@7
    .line 199
    if-eqz p1, :cond_0

    #@9
    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 200
    :cond_0
    return-object p1

    #@10
    .line 205
    :cond_1
    const v6, 0x10100a1

    #@13
    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_3

    #@19
    .line 207
    const/16 v6, 0xa

    #@1b
    .line 206
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@22
    move-result v0

    #@23
    .line 209
    .local v0, "activatedColor":I
    const/16 v6, 0x8

    #@25
    .line 208
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    #@28
    move-result-object v6

    #@29
    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@2c
    move-result v2

    #@2d
    .line 219
    .local v2, "defaultColor":I
    :goto_0
    if-eqz v0, :cond_2

    #@2f
    if-nez v2, :cond_4

    #@31
    .line 221
    :cond_2
    return-object v12

    #@32
    .line 211
    .end local v0    # "activatedColor":I
    .end local v2    # "defaultColor":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@35
    move-result v0

    #@36
    .line 214
    .restart local v0    # "activatedColor":I
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    #@38
    sget-object v7, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    #@3a
    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@3d
    move-result-object v5

    #@3e
    .line 215
    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    #@41
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@44
    move-result v3

    #@45
    .line 216
    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    #@48
    move-result v2

    #@49
    .restart local v2    # "defaultColor":I
    goto :goto_0

    #@4a
    .line 224
    .end local v3    # "disabledAlpha":F
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_4
    new-array v4, v10, [[I

    #@4c
    new-array v6, v9, [I

    #@4e
    aput v11, v6, v8

    #@50
    aput-object v6, v4, v8

    #@52
    new-array v6, v8, [I

    #@54
    aput-object v6, v4, v9

    #@56
    .line 225
    .local v4, "stateSet":[[I
    new-array v1, v10, [I

    #@58
    aput v0, v1, v8

    #@5a
    aput v2, v1, v9

    #@5c
    .line 226
    .local v1, "colors":[I
    new-instance v6, Landroid/content/res/ColorStateList;

    #@5e
    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@61
    return-object v6
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    #@0
    .prologue
    .line 578
    packed-switch p0, :pswitch_data_0

    #@3
    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Invalid Month"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 586
    :pswitch_0
    const/16 v0, 0x1f

    #@e
    return v0

    #@f
    .line 591
    :pswitch_1
    const/16 v0, 0x1e

    #@11
    return v0

    #@12
    .line 593
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    #@14
    if-nez v0, :cond_0

    #@16
    const/16 v0, 0x1d

    #@18
    :goto_0
    return v0

    #@19
    :cond_0
    const/16 v0, 0x1c

    #@1b
    goto :goto_0

    #@1c
    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 230
    const v3, 0xffffff

    #@3
    and-int v2, p1, v3

    #@5
    .line 231
    .local v2, "srcRgb":I
    shr-int/lit8 v3, p1, 0x18

    #@7
    and-int/lit16 v1, v3, 0xff

    #@9
    .line 232
    .local v1, "srcAlpha":I
    int-to-float v3, v1

    #@a
    mul-float/2addr v3, p2

    #@b
    const/high16 v4, 0x3f000000    # 0.5f

    #@d
    add-float/2addr v3, v4

    #@e
    float-to-int v0, v3

    #@f
    .line 233
    .local v0, "dstAlpha":I
    shl-int/lit8 v3, v0, 0x18

    #@11
    or-int/2addr v3, v2

    #@12
    return v3
.end method

.method private onCurrentDateChanged(Z)V
    .locals 8
    .param p1, "announce"    # Z

    #@0
    .prologue
    .line 311
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@2
    if-nez v6, :cond_0

    #@4
    .line 314
    return-void

    #@5
    .line 317
    :cond_0
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    #@7
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@c
    move-result-object v7

    #@d
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 318
    .local v5, "year":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@13
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@16
    .line 320
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    #@18
    iget-object v7, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1a
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 321
    .local v4, "monthDay":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@24
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@27
    .line 324
    if-eqz p1, :cond_1

    #@29
    .line 325
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2b
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2e
    move-result-wide v2

    #@2f
    .line 326
    .local v2, "millis":J
    const/16 v0, 0x14

    #@31
    .line 327
    .local v0, "flags":I
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mContext:Landroid/content/Context;

    #@33
    const/16 v7, 0x14

    #@35
    invoke-static {v6, v2, v3, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 328
    .local v1, "fullDateText":Ljava/lang/String;
    iget-object v6, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@3b
    invoke-virtual {v6, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@3e
    .line 310
    .end local v0    # "flags":I
    .end local v1    # "fullDateText":Ljava/lang/String;
    .end local v2    # "millis":J
    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 6
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    #@0
    .prologue
    .line 383
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v2

    #@7
    .line 385
    .local v2, "year":I
    if-eqz p2, :cond_0

    #@9
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 386
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@f
    const/4 v4, 0x2

    #@10
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@13
    move-result v1

    #@14
    .line 387
    .local v1, "monthOfYear":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@16
    const/4 v4, 0x5

    #@17
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    .line 388
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@1d
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@1f
    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    #@22
    .line 391
    .end local v0    # "dayOfMonth":I
    .end local v1    # "monthOfYear":I
    :cond_0
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@24
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@26
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    #@29
    move-result-wide v4

    #@2a
    invoke-virtual {v3, v4, v5}, Landroid/widget/DayPickerView;->setDate(J)V

    #@2d
    .line 392
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@2f
    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    #@32
    .line 394
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    #@35
    .line 396
    if-eqz p1, :cond_1

    #@37
    .line 397
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    #@3a
    .line 382
    :cond_1
    return-void
.end method

.method private setCurrentView(I)V
    .locals 6
    .param p1, "viewIndex"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 333
    packed-switch p1, :pswitch_data_0

    #@5
    .line 332
    :goto_0
    return-void

    #@6
    .line 335
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@8
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@d
    move-result-wide v2

    #@e
    invoke-virtual {v0, v2, v3}, Landroid/widget/DayPickerView;->setDate(J)V

    #@11
    .line 337
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@13
    if-eq v0, p1, :cond_0

    #@15
    .line 338
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@17
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    #@1a
    .line 339
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    #@1f
    .line 340
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@21
    invoke-virtual {v0, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@24
    .line 341
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@26
    .line 344
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@28
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@2d
    goto :goto_0

    #@2e
    .line 347
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@30
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@32
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@35
    move-result-wide v2

    #@36
    invoke-virtual {v0, v2, v3}, Landroid/widget/YearPickerView;->setDate(J)V

    #@39
    .line 349
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@3b
    if-eq v0, p1, :cond_1

    #@3d
    .line 350
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@3f
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    #@42
    .line 351
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@44
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    #@47
    .line 352
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@49
    invoke-virtual {v0, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    #@4c
    .line 353
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@4e
    .line 356
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    #@50
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    #@52
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@55
    goto :goto_0

    #@56
    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private tryVibrate()V
    .locals 2

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->performHapticFeedback(I)Z

    #@6
    .line 599
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 564
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 565
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 574
    const-class v0, Landroid/widget/DatePicker;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    #@0
    .prologue
    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Not supported by calendar-mode DatePicker"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    #@0
    .prologue
    .line 499
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 467
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 468
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    #@6
    return v0

    #@7
    .line 470
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method public getMonth()I
    .locals 2

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    #@0
    .prologue
    .line 509
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getYear()I
    .locals 2

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "callBack"    # Landroid/widget/DatePicker$OnDateChangedListener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 364
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3
    const/4 v1, 0x1

    #@4
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    #@7
    .line 365
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    #@d
    .line 366
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    #@13
    .line 368
    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@15
    .line 370
    invoke-direct {p0, v2, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    #@18
    .line 363
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 514
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@5
    .line 513
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 294
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@2
    .line 295
    .local v1, "headerYear":Landroid/widget/TextView;
    if-nez v1, :cond_0

    #@4
    .line 298
    return-void

    #@5
    .line 302
    :cond_0
    const-string/jumbo v2, "EMMMd"

    #@8
    invoke-static {p1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 303
    .local v0, "datePattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@e
    invoke-direct {v2, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@11
    iput-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Ljava/text/SimpleDateFormat;

    #@13
    .line 304
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@15
    const-string/jumbo v3, "y"

    #@18
    invoke-direct {v2, v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@1b
    iput-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Ljava/text/SimpleDateFormat;

    #@1d
    .line 307
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    #@21
    .line 293
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@6
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 569
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    move-object v3, p1

    #@2
    .line 539
    check-cast v3, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    #@4
    .line 542
    .local v3, "ss":Landroid/widget/DatePickerCalendarDelegate$SavedState;
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@6
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedYear()I

    #@9
    move-result v5

    #@a
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedMonth()I

    #@d
    move-result v6

    #@e
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getSelectedDay()I

    #@11
    move-result v7

    #@12
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    #@15
    .line 543
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@17
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMinDate()J

    #@1a
    move-result-wide v6

    #@1b
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1e
    .line 544
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@20
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getMaxDate()J

    #@23
    move-result-wide v6

    #@24
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@27
    .line 546
    invoke-direct {p0, v8}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    #@2a
    .line 548
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getCurrentView()I

    #@2d
    move-result v0

    #@2e
    .line 549
    .local v0, "currentView":I
    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    #@31
    .line 551
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPosition()I

    #@34
    move-result v1

    #@35
    .line 552
    .local v1, "listPosition":I
    const/4 v4, -0x1

    #@36
    if-eq v1, v4, :cond_0

    #@38
    .line 553
    if-nez v0, :cond_1

    #@3a
    .line 554
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@3c
    invoke-virtual {v4, v1}, Landroid/widget/DayPickerView;->setPosition(I)V

    #@3f
    .line 538
    :cond_0
    :goto_0
    return-void

    #@40
    .line 555
    :cond_1
    const/4 v4, 0x1

    #@41
    if-ne v0, v4, :cond_0

    #@43
    .line 556
    invoke-virtual {v3}, Landroid/widget/DatePickerCalendarDelegate$SavedState;->getListPositionOffset()I

    #@46
    move-result v2

    #@47
    .line 557
    .local v2, "listPositionOffset":I
    iget-object v4, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@49
    invoke-virtual {v4, v1, v2}, Landroid/widget/YearPickerView;->setSelectionFromTop(II)V

    #@4c
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 14
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 519
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v3

    #@7
    .line 520
    .local v3, "year":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@9
    const/4 v1, 0x2

    #@a
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@d
    move-result v4

    #@e
    .line 521
    .local v4, "month":I
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@10
    const/4 v1, 0x5

    #@11
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    #@14
    move-result v5

    #@15
    .line 523
    .local v5, "day":I
    const/4 v11, -0x1

    #@16
    .line 524
    .local v11, "listPosition":I
    const/4 v12, -0x1

    #@17
    .line 526
    .local v12, "listPositionOffset":I
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 527
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@1d
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    #@20
    move-result v11

    #@21
    .line 533
    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/DatePickerCalendarDelegate$SavedState;

    #@23
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@25
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@28
    move-result-wide v6

    #@29
    .line 534
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@2b
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2e
    move-result-wide v8

    #@2f
    iget v10, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@31
    .line 533
    const/4 v13, 0x0

    #@32
    move-object v2, p1

    #@33
    invoke-direct/range {v1 .. v13}, Landroid/widget/DatePickerCalendarDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIIILandroid/widget/DatePickerCalendarDelegate$SavedState;)V

    #@36
    return-object v1

    #@37
    .line 528
    :cond_1
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    #@39
    if-ne v0, v2, :cond_0

    #@3b
    .line 529
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@3d
    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstVisiblePosition()I

    #@40
    move-result v11

    #@41
    .line 530
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@43
    invoke-virtual {v0}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    #@46
    move-result v12

    #@47
    goto :goto_0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 493
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    #@5
    .line 476
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setEnabled(Z)V

    #@a
    .line 477
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@c
    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView;->setEnabled(Z)V

    #@f
    .line 478
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@14
    .line 479
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    #@16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@19
    .line 474
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 460
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    #@2
    .line 462
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    #@7
    .line 459
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v2, 0x1

    #@2
    .line 439
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 440
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 441
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@17
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    if-eq v0, v1, :cond_0

    #@23
    .line 442
    return-void

    #@24
    .line 444
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@26
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@28
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 445
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@30
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@33
    .line 446
    const/4 v0, 0x0

    #@34
    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    #@37
    .line 448
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@3c
    .line 449
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    #@41
    .line 450
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@43
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@45
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    #@4a
    .line 438
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v2, 0x1

    #@2
    .line 418
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 419
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 420
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@17
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    if-eq v0, v1, :cond_0

    #@23
    .line 421
    return-void

    #@24
    .line 423
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@26
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Ljava/util/Calendar;

    #@28
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 424
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@30
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@33
    .line 425
    const/4 v0, 0x0

    #@34
    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    #@37
    .line 427
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@3c
    .line 428
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    #@41
    .line 429
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    #@43
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Ljava/util/Calendar;

    #@45
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Ljava/util/Calendar;

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/widget/YearPickerView;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    #@4a
    .line 417
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 503
    return-void
.end method

.method public updateDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 375
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    #@6
    .line 376
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@8
    const/4 v1, 0x2

    #@9
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    #@c
    .line 377
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@e
    const/4 v1, 0x5

    #@f
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    #@12
    .line 379
    const/4 v0, 0x0

    #@13
    invoke-direct {p0, v0, v2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    #@16
    .line 374
    return-void
.end method
