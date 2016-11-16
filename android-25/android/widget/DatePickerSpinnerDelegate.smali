.class Landroid/widget/DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerSpinnerDelegate.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Landroid/icu/util/Calendar;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Landroid/icu/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/DatePickerSpinnerDelegate;III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateInputState()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 96
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    #@3
    .line 80
    new-instance v14, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v15, "MM/dd/yyyy"

    #@8
    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@b
    move-object/from16 v0, p0

    #@d
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    #@f
    .line 92
    const/4 v14, 0x1

    #@10
    move-object/from16 v0, p0

    #@12
    iput-boolean v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    #@14
    .line 98
    move-object/from16 v0, p1

    #@16
    move-object/from16 v1, p0

    #@18
    iput-object v0, v1, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@1a
    .line 99
    move-object/from16 v0, p2

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    #@20
    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@23
    move-result-object v14

    #@24
    move-object/from16 v0, p0

    #@26
    invoke-virtual {v0, v14}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@29
    .line 105
    sget-object v14, Lcom/android/internal/R$styleable;->DatePicker:[I

    #@2b
    .line 104
    move-object/from16 v0, p2

    #@2d
    move-object/from16 v1, p3

    #@2f
    move/from16 v2, p4

    #@31
    move/from16 v3, p5

    #@33
    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@36
    move-result-object v4

    #@37
    .line 106
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x6

    #@38
    .line 107
    const/4 v15, 0x1

    #@39
    .line 106
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3c
    move-result v12

    #@3d
    .line 109
    .local v12, "spinnersShown":Z
    const/4 v14, 0x7

    #@3e
    const/4 v15, 0x1

    #@3f
    .line 108
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@42
    move-result v5

    #@43
    .line 110
    .local v5, "calendarViewShown":Z
    const/4 v14, 0x1

    #@44
    .line 111
    const/16 v15, 0x76c

    #@46
    .line 110
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@49
    move-result v13

    #@4a
    .line 112
    .local v13, "startYear":I
    const/4 v14, 0x2

    #@4b
    const/16 v15, 0x834

    #@4d
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@50
    move-result v6

    #@51
    .line 113
    .local v6, "endYear":I
    const/4 v14, 0x4

    #@52
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    .line 114
    .local v10, "minDate":Ljava/lang/String;
    const/4 v14, 0x5

    #@57
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    .line 116
    .local v9, "maxDate":Ljava/lang/String;
    const/16 v14, 0x15

    #@5d
    const v15, 0x1090049

    #@60
    .line 115
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@63
    move-result v8

    #@64
    .line 117
    .local v8, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@67
    .line 120
    const-string/jumbo v14, "layout_inflater"

    #@6a
    .line 119
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Landroid/view/LayoutInflater;

    #@72
    .line 121
    .local v7, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    #@74
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@76
    const/4 v15, 0x1

    #@77
    invoke-virtual {v7, v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7a
    .line 123
    new-instance v11, Landroid/widget/DatePickerSpinnerDelegate$1;

    #@7c
    move-object/from16 v0, p0

    #@7e
    invoke-direct {v11, v0}, Landroid/widget/DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    #@81
    .line 159
    .local v11, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v0, p0

    #@83
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@85
    const v15, 0x1020358

    #@88
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@8b
    move-result-object v14

    #@8c
    check-cast v14, Landroid/widget/LinearLayout;

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@92
    .line 162
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@96
    const v15, 0x102035c

    #@99
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9c
    move-result-object v14

    #@9d
    check-cast v14, Landroid/widget/CalendarView;

    #@9f
    move-object/from16 v0, p0

    #@a1
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@a3
    .line 163
    move-object/from16 v0, p0

    #@a5
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@a7
    new-instance v15, Landroid/widget/DatePickerSpinnerDelegate$2;

    #@a9
    move-object/from16 v0, p0

    #@ab
    invoke-direct {v15, v0}, Landroid/widget/DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    #@ae
    invoke-virtual {v14, v15}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    #@b1
    .line 172
    move-object/from16 v0, p0

    #@b3
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@b5
    const v15, 0x102035a

    #@b8
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@bb
    move-result-object v14

    #@bc
    check-cast v14, Landroid/widget/NumberPicker;

    #@be
    move-object/from16 v0, p0

    #@c0
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@c2
    .line 173
    move-object/from16 v0, p0

    #@c4
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@c6
    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    #@c9
    move-result-object v15

    #@ca
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    #@cd
    .line 174
    move-object/from16 v0, p0

    #@cf
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@d1
    const-wide/16 v16, 0x64

    #@d3
    move-wide/from16 v0, v16

    #@d5
    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@d8
    .line 175
    move-object/from16 v0, p0

    #@da
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@dc
    invoke-virtual {v14, v11}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@df
    .line 176
    move-object/from16 v0, p0

    #@e1
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@e3
    const v15, 0x10203c9

    #@e6
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e9
    move-result-object v14

    #@ea
    check-cast v14, Landroid/widget/EditText;

    #@ec
    move-object/from16 v0, p0

    #@ee
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    #@f0
    .line 179
    move-object/from16 v0, p0

    #@f2
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@f4
    const v15, 0x1020359

    #@f7
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@fa
    move-result-object v14

    #@fb
    check-cast v14, Landroid/widget/NumberPicker;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@101
    .line 180
    move-object/from16 v0, p0

    #@103
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@105
    const/4 v15, 0x0

    #@106
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@109
    .line 181
    move-object/from16 v0, p0

    #@10b
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget v15, v0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@111
    add-int/lit8 v15, v15, -0x1

    #@113
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@116
    .line 182
    move-object/from16 v0, p0

    #@118
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v15, v0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@11e
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@121
    .line 183
    move-object/from16 v0, p0

    #@123
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@125
    const-wide/16 v16, 0xc8

    #@127
    move-wide/from16 v0, v16

    #@129
    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@12c
    .line 184
    move-object/from16 v0, p0

    #@12e
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@130
    invoke-virtual {v14, v11}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@133
    .line 185
    move-object/from16 v0, p0

    #@135
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@137
    const v15, 0x10203c9

    #@13a
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@13d
    move-result-object v14

    #@13e
    check-cast v14, Landroid/widget/EditText;

    #@140
    move-object/from16 v0, p0

    #@142
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@144
    .line 188
    move-object/from16 v0, p0

    #@146
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@148
    const v15, 0x102035b

    #@14b
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@14e
    move-result-object v14

    #@14f
    check-cast v14, Landroid/widget/NumberPicker;

    #@151
    move-object/from16 v0, p0

    #@153
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@155
    .line 189
    move-object/from16 v0, p0

    #@157
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@159
    const-wide/16 v16, 0x64

    #@15b
    move-wide/from16 v0, v16

    #@15d
    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@160
    .line 190
    move-object/from16 v0, p0

    #@162
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@164
    invoke-virtual {v14, v11}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@167
    .line 191
    move-object/from16 v0, p0

    #@169
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@16b
    const v15, 0x10203c9

    #@16e
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@171
    move-result-object v14

    #@172
    check-cast v14, Landroid/widget/EditText;

    #@174
    move-object/from16 v0, p0

    #@176
    iput-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    #@178
    .line 195
    if-nez v12, :cond_0

    #@17a
    if-eqz v5, :cond_4

    #@17c
    .line 198
    :cond_0
    move-object/from16 v0, p0

    #@17e
    invoke-virtual {v0, v12}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    #@181
    .line 199
    move-object/from16 v0, p0

    #@183
    invoke-virtual {v0, v5}, Landroid/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    #@186
    .line 203
    :goto_0
    move-object/from16 v0, p0

    #@188
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@18a
    invoke-virtual {v14}, Landroid/icu/util/Calendar;->clear()V

    #@18d
    .line 204
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@190
    move-result v14

    #@191
    if-nez v14, :cond_5

    #@193
    .line 205
    move-object/from16 v0, p0

    #@195
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@197
    move-object/from16 v0, p0

    #@199
    invoke-direct {v0, v10, v14}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    #@19c
    move-result v14

    #@19d
    if-nez v14, :cond_1

    #@19f
    .line 206
    move-object/from16 v0, p0

    #@1a1
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@1a3
    const/4 v15, 0x0

    #@1a4
    const/16 v16, 0x1

    #@1a6
    move/from16 v0, v16

    #@1a8
    invoke-virtual {v14, v13, v15, v0}, Landroid/icu/util/Calendar;->set(III)V

    #@1ab
    .line 211
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@1ad
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@1af
    invoke-virtual {v14}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@1b2
    move-result-wide v14

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    invoke-virtual {v0, v14, v15}, Landroid/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    #@1b8
    .line 214
    move-object/from16 v0, p0

    #@1ba
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@1bc
    invoke-virtual {v14}, Landroid/icu/util/Calendar;->clear()V

    #@1bf
    .line 215
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c2
    move-result v14

    #@1c3
    if-nez v14, :cond_6

    #@1c5
    .line 216
    move-object/from16 v0, p0

    #@1c7
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    invoke-direct {v0, v9, v14}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    #@1ce
    move-result v14

    #@1cf
    if-nez v14, :cond_2

    #@1d1
    .line 217
    move-object/from16 v0, p0

    #@1d3
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@1d5
    const/16 v15, 0xb

    #@1d7
    const/16 v16, 0x1f

    #@1d9
    move/from16 v0, v16

    #@1db
    invoke-virtual {v14, v6, v15, v0}, Landroid/icu/util/Calendar;->set(III)V

    #@1de
    .line 222
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@1e0
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@1e2
    invoke-virtual {v14}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@1e5
    move-result-wide v14

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v14, v15}, Landroid/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    #@1eb
    .line 225
    move-object/from16 v0, p0

    #@1ed
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@1ef
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f2
    move-result-wide v16

    #@1f3
    move-wide/from16 v0, v16

    #@1f5
    invoke-virtual {v14, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@1f8
    .line 226
    move-object/from16 v0, p0

    #@1fa
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@1fc
    const/4 v15, 0x1

    #@1fd
    invoke-virtual {v14, v15}, Landroid/icu/util/Calendar;->get(I)I

    #@200
    move-result v14

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v15, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@205
    const/16 v16, 0x2

    #@207
    invoke-virtual/range {v15 .. v16}, Landroid/icu/util/Calendar;->get(I)I

    #@20a
    move-result v15

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@20f
    move-object/from16 v16, v0

    #@211
    .line 227
    const/16 v17, 0x5

    #@213
    .line 226
    invoke-virtual/range {v16 .. v17}, Landroid/icu/util/Calendar;->get(I)I

    #@216
    move-result v16

    #@217
    .line 227
    const/16 v17, 0x0

    #@219
    .line 226
    move-object/from16 v0, p0

    #@21b
    move/from16 v1, v16

    #@21d
    move-object/from16 v2, v17

    #@21f
    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/widget/DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@222
    .line 230
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    #@225
    .line 233
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePickerSpinnerDelegate;->setContentDescriptions()V

    #@228
    .line 236
    move-object/from16 v0, p0

    #@22a
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@22c
    invoke-virtual {v14}, Landroid/view/View;->getImportantForAccessibility()I

    #@22f
    move-result v14

    #@230
    if-nez v14, :cond_3

    #@232
    .line 237
    move-object/from16 v0, p0

    #@234
    iget-object v14, v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@236
    const/4 v15, 0x1

    #@237
    invoke-virtual {v14, v15}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@23a
    .line 95
    :cond_3
    return-void

    #@23b
    .line 196
    :cond_4
    const/4 v14, 0x1

    #@23c
    move-object/from16 v0, p0

    #@23e
    invoke-virtual {v0, v14}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    #@241
    goto/16 :goto_0

    #@243
    .line 209
    :cond_5
    move-object/from16 v0, p0

    #@245
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@247
    const/4 v15, 0x0

    #@248
    const/16 v16, 0x1

    #@24a
    move/from16 v0, v16

    #@24c
    invoke-virtual {v14, v13, v15, v0}, Landroid/icu/util/Calendar;->set(III)V

    #@24f
    goto/16 :goto_1

    #@251
    .line 220
    :cond_6
    move-object/from16 v0, p0

    #@253
    iget-object v14, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@255
    const/16 v15, 0xb

    #@257
    const/16 v16, 0x1f

    #@259
    move/from16 v0, v16

    #@25b
    invoke-virtual {v14, v6, v15, v0}, Landroid/icu/util/Calendar;->set(III)V

    #@25e
    goto :goto_2
.end method

.method private getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 451
    if-nez p1, :cond_0

    #@2
    .line 452
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@5
    move-result-object v3

    #@6
    return-object v3

    #@7
    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@a
    move-result-wide v0

    #@b
    .line 455
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@e
    move-result-object v2

    #@f
    .line 456
    .local v2, "newCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@12
    .line 457
    return-object v2
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 510
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@3
    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 511
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@b
    const/4 v2, 0x2

    #@c
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@f
    move-result v1

    #@10
    if-eq v1, p2, :cond_1

    #@12
    .line 510
    :cond_0
    :goto_0
    return v0

    #@13
    .line 512
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@15
    const/4 v2, 0x5

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@19
    move-result v1

    #@1a
    if-ne v1, p3, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 5

    #@0
    .prologue
    .line 585
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@6
    .line 586
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 587
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@c
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@e
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    #@15
    move-result v3

    #@16
    .line 588
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    #@19
    move-result v4

    #@1a
    .line 587
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    #@1d
    .line 584
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    #@2
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 502
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 503
    :catch_0
    move-exception v0

    #@c
    .line 504
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    #@f
    .line 505
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method private reorderSpinners()V
    .locals 6

    #@0
    .prologue
    .line 467
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    #@5
    .line 470
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "yyyyMMMdd"

    #@c
    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 471
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    #@13
    move-result-object v1

    #@14
    .line 472
    .local v1, "order":[C
    array-length v3, v1

    #@15
    .line 473
    .local v3, "spinnerCount":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@18
    .line 474
    aget-char v4, v1, v0

    #@1a
    sparse-switch v4, :sswitch_data_0

    #@1d
    .line 488
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1f
    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v4

    #@27
    .line 476
    :sswitch_0
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@29
    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@2b
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@2e
    .line 477
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@30
    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    #@33
    .line 473
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 480
    :sswitch_1
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@38
    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@3a
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@3d
    .line 481
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@3f
    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    #@42
    goto :goto_1

    #@43
    .line 484
    :sswitch_2
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@45
    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@47
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@4a
    .line 485
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@4c
    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    #@4f
    goto :goto_1

    #@50
    .line 466
    :cond_0
    return-void

    #@51
    .line 474
    nop

    #@52
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    #@0
    .prologue
    const v3, 0x10203ca

    #@3
    const v2, 0x10203c8

    #@6
    .line 612
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@8
    .line 613
    const v1, 0x10404af

    #@b
    .line 612
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@e
    .line 614
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@10
    .line 615
    const v1, 0x10404b0

    #@13
    .line 614
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@16
    .line 617
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@18
    .line 618
    const v1, 0x10404ad

    #@1b
    .line 617
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@1e
    .line 619
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@20
    .line 620
    const v1, 0x10404ae

    #@23
    .line 619
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@26
    .line 622
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@28
    .line 623
    const v1, 0x10404b1

    #@2b
    .line 622
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@2e
    .line 624
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@30
    .line 625
    const v1, 0x10404b2

    #@33
    .line 624
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@36
    .line 610
    return-void
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 516
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    #@5
    .line 517
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@7
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@9
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 518
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@11
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@13
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@16
    move-result-wide v2

    #@17
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@1a
    .line 515
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 519
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@1d
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@1f
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 520
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@27
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@29
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@30
    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    #@0
    .prologue
    .line 601
    add-int/lit8 v2, p2, -0x1

    #@2
    if-ge p3, v2, :cond_0

    #@4
    .line 602
    const/4 v0, 0x5

    #@5
    .line 606
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x10203c9

    #@8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/widget/TextView;

    #@e
    .line 607
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    #@11
    .line 599
    return-void

    #@12
    .line 604
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    #@13
    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    #@0
    .prologue
    .line 629
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 630
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 631
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@f
    .line 628
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 577
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@3
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@5
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@8
    move-result-wide v2

    #@9
    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    #@c
    .line 576
    return-void
.end method

.method private updateInputState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 641
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 642
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@7
    .line 643
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 644
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@14
    .line 645
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@16
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    .line 635
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 646
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 647
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@28
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@2b
    .line 648
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@2d
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@34
    goto :goto_0

    #@35
    .line 649
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    #@37
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 650
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    #@3f
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@42
    .line 651
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@44
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@4b
    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v7, 0x5

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 526
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@7
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@9
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 527
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@11
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@13
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@1a
    .line 528
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@1c
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@1e
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@21
    move-result v2

    #@22
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@25
    .line 529
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@27
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@2a
    .line 530
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@2c
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@2f
    .line 531
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@31
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@33
    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@36
    move-result v2

    #@37
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@3a
    .line 532
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@3c
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@3e
    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@41
    move-result v2

    #@42
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@45
    .line 533
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@47
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@4a
    .line 554
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@4c
    .line 555
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@4e
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    #@51
    move-result v2

    #@52
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@54
    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@57
    move-result v3

    #@58
    add-int/lit8 v3, v3, 0x1

    #@5a
    .line 554
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, [Ljava/lang/String;

    #@60
    .line 556
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@62
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@65
    .line 559
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@67
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@69
    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@6c
    move-result v2

    #@6d
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@70
    .line 560
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@72
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@74
    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@77
    move-result v2

    #@78
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@7b
    .line 561
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@7d
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@80
    .line 564
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@82
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@84
    invoke-virtual {v2, v5}, Landroid/icu/util/Calendar;->get(I)I

    #@87
    move-result v2

    #@88
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@8b
    .line 565
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@8d
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@8f
    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@92
    move-result v2

    #@93
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@96
    .line 566
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@98
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@9a
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@9d
    move-result v2

    #@9e
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@a1
    .line 568
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_0

    #@a7
    .line 569
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@a9
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setRawInputType(I)V

    #@ac
    .line 524
    :cond_0
    return-void

    #@ad
    .line 534
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@af
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@b1
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v1

    #@b5
    if-eqz v1, :cond_2

    #@b7
    .line 535
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@b9
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@bb
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    #@be
    move-result v2

    #@bf
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@c2
    .line 536
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@c4
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@c6
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->get(I)I

    #@c9
    move-result v2

    #@ca
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@cd
    .line 537
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@cf
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@d2
    .line 538
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@d4
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@d7
    .line 539
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@d9
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@db
    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    #@de
    move-result v2

    #@df
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@e2
    .line 540
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@e4
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@e6
    invoke-virtual {v2, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@e9
    move-result v2

    #@ea
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@ed
    .line 541
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@ef
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@f2
    goto/16 :goto_0

    #@f4
    .line 543
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@f6
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@f9
    .line 544
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@fb
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@fd
    invoke-virtual {v2, v7}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@100
    move-result v2

    #@101
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@104
    .line 545
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@106
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@109
    .line 546
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@10b
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@10e
    .line 547
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@110
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@113
    .line 548
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@115
    const/16 v2, 0xb

    #@117
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@11a
    .line 549
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@11c
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@11f
    goto/16 :goto_0
.end method

.method private usingNumericMonths()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 441
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@3
    aget-object v0, v0, v1

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@c
    move-result v0

    #@d
    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 398
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 361
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 330
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 331
    .local v0, "maxDate":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@6
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@d
    .line 332
    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 306
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 307
    .local v0, "minDate":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@6
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@d
    .line 308
    return-object v0
.end method

.method public getMonth()I
    .locals 2

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getYear()I
    .locals 2

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    #@0
    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    #@3
    .line 245
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    #@6
    .line 246
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    #@9
    .line 248
    iput-object p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@b
    .line 243
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 376
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@5
    .line 375
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 403
    const/16 v0, 0x14

    #@2
    .line 404
    .local v0, "flags":I
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    #@4
    .line 405
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@6
    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v4

    #@a
    const/16 v3, 0x14

    #@c
    .line 404
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 406
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 402
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 387
    instance-of v1, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 388
    nop

    #@6
    nop

    #@7
    .line 389
    .local v0, "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    #@12
    move-result v3

    #@13
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    #@16
    .line 390
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    #@19
    .line 391
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    #@1c
    .line 386
    .end local v0    # "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 381
    new-instance v1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    #@2
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    #@5
    move-result v3

    #@6
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    #@9
    move-result v4

    #@a
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    #@d
    move-result v5

    #@e
    .line 382
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@15
    move-result-wide v6

    #@16
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@1d
    move-result-wide v8

    #@1e
    move-object v2, p1

    #@1f
    .line 381
    invoke-direct/range {v1 .. v9}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    #@22
    return-object v1
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 356
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@8
    .line 355
    return-void

    #@9
    .line 356
    :cond_0
    const/16 v0, 0x8

    #@b
    goto :goto_0
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@3
    .line 418
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@5
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@b
    .line 419
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@d
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@13
    .line 420
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@15
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@1b
    .line 421
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@1d
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@23
    .line 423
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@25
    const/4 v2, 0x2

    #@26
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@29
    move-result v1

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    iput v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@2e
    .line 424
    new-instance v1, Ljava/text/DateFormatSymbols;

    #@30
    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    #@33
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@39
    .line 426
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 429
    iget v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@41
    new-array v1, v1, [Ljava/lang/String;

    #@43
    iput-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@45
    .line 430
    const/4 v0, 0x0

    #@46
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@48
    if-ge v0, v1, :cond_0

    #@4a
    .line 431
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@4c
    const-string/jumbo v2, "%d"

    #@4f
    const/4 v3, 0x1

    #@50
    new-array v3, v3, [Ljava/lang/Object;

    #@52
    add-int/lit8 v4, v0, 0x1

    #@54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v4

    #@58
    const/4 v5, 0x0

    #@59
    aput-object v4, v3, v5

    #@5b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    aput-object v2, v1, v0

    #@61
    .line 430
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 415
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@5
    .line 338
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@a
    .line 339
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@c
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@f
    .line 340
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@14
    .line 341
    iput-boolean p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    #@16
    .line 336
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    #@5
    .line 278
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
    .line 313
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 314
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@9
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@f
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 315
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@17
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@1d
    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    if-ne v0, v1, :cond_0

    #@23
    .line 317
    return-void

    #@24
    .line 319
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@26
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@29
    .line 320
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2b
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    #@2e
    .line 321
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@30
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@32
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 322
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@3a
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    #@3c
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@3f
    move-result-wide v2

    #@40
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@43
    .line 323
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    #@46
    .line 325
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    #@49
    .line 312
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
    .line 289
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 290
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@9
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@f
    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 291
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    #@17
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@1d
    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    if-ne v0, v1, :cond_0

    #@23
    .line 293
    return-void

    #@24
    .line 295
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@26
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@29
    .line 296
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2b
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    #@2e
    .line 297
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@30
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@32
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 298
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    #@3a
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    #@3c
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@3f
    move-result-wide v2

    #@40
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@43
    .line 299
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    #@46
    .line 301
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    #@49
    .line 288
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 366
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    #@8
    .line 365
    return-void

    #@9
    .line 366
    :cond_0
    const/16 v0, 0x8

    #@b
    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 254
    return-void

    #@7
    .line 256
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    #@a
    .line 257
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    #@d
    .line 258
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    #@10
    .line 259
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    #@13
    .line 252
    return-void
.end method
