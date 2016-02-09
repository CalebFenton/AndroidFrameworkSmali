.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatePickerSpinnerDelegate"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

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
    .line 593
    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    #@3
    .line 577
    new-instance v14, Ljava/text/SimpleDateFormat;

    #@5
    const-string/jumbo v15, "MM/dd/yyyy"

    #@8
    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@b
    move-object/from16 v0, p0

    #@d
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    #@f
    .line 589
    const/4 v14, 0x1

    #@10
    move-object/from16 v0, p0

    #@12
    iput-boolean v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    #@14
    .line 595
    move-object/from16 v0, p1

    #@16
    move-object/from16 v1, p0

    #@18
    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@1a
    .line 596
    move-object/from16 v0, p2

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@20
    .line 599
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@23
    move-result-object v14

    #@24
    move-object/from16 v0, p0

    #@26
    invoke-virtual {v0, v14}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@29
    .line 602
    sget-object v14, Lcom/android/internal/R$styleable;->DatePicker:[I

    #@2b
    .line 601
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
    .line 603
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x6

    #@38
    .line 604
    const/4 v15, 0x1

    #@39
    .line 603
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3c
    move-result v12

    #@3d
    .line 606
    .local v12, "spinnersShown":Z
    const/4 v14, 0x7

    #@3e
    const/4 v15, 0x1

    #@3f
    .line 605
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@42
    move-result v5

    #@43
    .line 607
    .local v5, "calendarViewShown":Z
    const/4 v14, 0x1

    #@44
    .line 608
    const/16 v15, 0x76c

    #@46
    .line 607
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@49
    move-result v13

    #@4a
    .line 609
    .local v13, "startYear":I
    const/4 v14, 0x2

    #@4b
    const/16 v15, 0x834

    #@4d
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@50
    move-result v6

    #@51
    .line 610
    .local v6, "endYear":I
    const/4 v14, 0x4

    #@52
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    .line 611
    .local v10, "minDate":Ljava/lang/String;
    const/4 v14, 0x5

    #@57
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    .line 613
    .local v9, "maxDate":Ljava/lang/String;
    const/16 v14, 0x14

    #@5d
    const v15, 0x1090047

    #@60
    .line 612
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@63
    move-result v8

    #@64
    .line 614
    .local v8, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@67
    .line 617
    const-string/jumbo v14, "layout_inflater"

    #@6a
    .line 616
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Landroid/view/LayoutInflater;

    #@72
    .line 618
    .local v7, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    #@74
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@76
    const/4 v15, 0x1

    #@77
    invoke-virtual {v7, v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@7a
    .line 620
    new-instance v11, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;

    #@7c
    move-object/from16 v0, p0

    #@7e
    invoke-direct {v11, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    #@81
    .line 656
    .local v11, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v0, p0

    #@83
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@85
    const v15, 0x102031c

    #@88
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    #@8b
    move-result-object v14

    #@8c
    check-cast v14, Landroid/widget/LinearLayout;

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@92
    .line 659
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@96
    const v15, 0x1020320

    #@99
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    #@9c
    move-result-object v14

    #@9d
    check-cast v14, Landroid/widget/CalendarView;

    #@9f
    move-object/from16 v0, p0

    #@a1
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@a3
    .line 660
    move-object/from16 v0, p0

    #@a5
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@a7
    new-instance v15, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;

    #@a9
    move-object/from16 v0, p0

    #@ab
    invoke-direct {v15, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    #@ae
    invoke-virtual {v14, v15}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    #@b1
    .line 669
    move-object/from16 v0, p0

    #@b3
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@b5
    const v15, 0x102031e

    #@b8
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    #@bb
    move-result-object v14

    #@bc
    check-cast v14, Landroid/widget/NumberPicker;

    #@be
    move-object/from16 v0, p0

    #@c0
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@c2
    .line 670
    move-object/from16 v0, p0

    #@c4
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@c6
    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    #@c9
    move-result-object v15

    #@ca
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    #@cd
    .line 671
    move-object/from16 v0, p0

    #@cf
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@d1
    const-wide/16 v16, 0x64

    #@d3
    move-wide/from16 v0, v16

    #@d5
    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@d8
    .line 672
    move-object/from16 v0, p0

    #@da
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@dc
    invoke-virtual {v14, v11}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@df
    .line 673
    move-object/from16 v0, p0

    #@e1
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@e3
    const v15, 0x1020382

    #@e6
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@e9
    move-result-object v14

    #@ea
    check-cast v14, Landroid/widget/EditText;

    #@ec
    move-object/from16 v0, p0

    #@ee
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    #@f0
    .line 676
    move-object/from16 v0, p0

    #@f2
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@f4
    const v15, 0x102031d

    #@f7
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    #@fa
    move-result-object v14

    #@fb
    check-cast v14, Landroid/widget/NumberPicker;

    #@fd
    move-object/from16 v0, p0

    #@ff
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@101
    .line 677
    move-object/from16 v0, p0

    #@103
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@105
    const/4 v15, 0x0

    #@106
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@109
    .line 678
    move-object/from16 v0, p0

    #@10b
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget v15, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@111
    add-int/lit8 v15, v15, -0x1

    #@113
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@116
    .line 679
    move-object/from16 v0, p0

    #@118
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v15, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@11e
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@121
    .line 680
    move-object/from16 v0, p0

    #@123
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@125
    const-wide/16 v16, 0xc8

    #@127
    move-wide/from16 v0, v16

    #@129
    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@12c
    .line 681
    move-object/from16 v0, p0

    #@12e
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@130
    invoke-virtual {v14, v11}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@133
    .line 682
    move-object/from16 v0, p0

    #@135
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@137
    const v15, 0x1020382

    #@13a
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@13d
    move-result-object v14

    #@13e
    check-cast v14, Landroid/widget/EditText;

    #@140
    move-object/from16 v0, p0

    #@142
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@144
    .line 685
    move-object/from16 v0, p0

    #@146
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@148
    const v15, 0x102031f

    #@14b
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    #@14e
    move-result-object v14

    #@14f
    check-cast v14, Landroid/widget/NumberPicker;

    #@151
    move-object/from16 v0, p0

    #@153
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@155
    .line 686
    move-object/from16 v0, p0

    #@157
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@159
    const-wide/16 v16, 0x64

    #@15b
    move-wide/from16 v0, v16

    #@15d
    invoke-virtual {v14, v0, v1}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@160
    .line 687
    move-object/from16 v0, p0

    #@162
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@164
    invoke-virtual {v14, v11}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@167
    .line 688
    move-object/from16 v0, p0

    #@169
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@16b
    const v15, 0x1020382

    #@16e
    invoke-virtual {v14, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@171
    move-result-object v14

    #@172
    check-cast v14, Landroid/widget/EditText;

    #@174
    move-object/from16 v0, p0

    #@176
    iput-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    #@178
    .line 692
    if-nez v12, :cond_0

    #@17a
    if-eqz v5, :cond_4

    #@17c
    .line 695
    :cond_0
    move-object/from16 v0, p0

    #@17e
    invoke-virtual {v0, v12}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    #@181
    .line 696
    move-object/from16 v0, p0

    #@183
    invoke-virtual {v0, v5}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    #@186
    .line 700
    :goto_0
    move-object/from16 v0, p0

    #@188
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@18a
    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    #@18d
    .line 701
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@190
    move-result v14

    #@191
    if-nez v14, :cond_5

    #@193
    .line 702
    move-object/from16 v0, p0

    #@195
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@197
    move-object/from16 v0, p0

    #@199
    invoke-direct {v0, v10, v14}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@19c
    move-result v14

    #@19d
    if-nez v14, :cond_1

    #@19f
    .line 703
    move-object/from16 v0, p0

    #@1a1
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@1a3
    const/4 v15, 0x0

    #@1a4
    const/16 v16, 0x1

    #@1a6
    move/from16 v0, v16

    #@1a8
    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    #@1ab
    .line 708
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@1ad
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@1af
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1b2
    move-result-wide v14

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    invoke-virtual {v0, v14, v15}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setMinDate(J)V

    #@1b8
    .line 711
    move-object/from16 v0, p0

    #@1ba
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@1bc
    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    #@1bf
    .line 712
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1c2
    move-result v14

    #@1c3
    if-nez v14, :cond_6

    #@1c5
    .line 713
    move-object/from16 v0, p0

    #@1c7
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    invoke-direct {v0, v9, v14}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    #@1ce
    move-result v14

    #@1cf
    if-nez v14, :cond_2

    #@1d1
    .line 714
    move-object/from16 v0, p0

    #@1d3
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@1d5
    const/16 v15, 0xb

    #@1d7
    const/16 v16, 0x1f

    #@1d9
    move/from16 v0, v16

    #@1db
    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    #@1de
    .line 719
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@1e0
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@1e2
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1e5
    move-result-wide v14

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v14, v15}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setMaxDate(J)V

    #@1eb
    .line 722
    move-object/from16 v0, p0

    #@1ed
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1ef
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f2
    move-result-wide v16

    #@1f3
    move-wide/from16 v0, v16

    #@1f5
    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1f8
    .line 723
    move-object/from16 v0, p0

    #@1fa
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1fc
    const/4 v15, 0x1

    #@1fd
    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    #@200
    move-result v14

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v15, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@205
    const/16 v16, 0x2

    #@207
    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    #@20a
    move-result v15

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@20f
    move-object/from16 v16, v0

    #@211
    .line 724
    const/16 v17, 0x5

    #@213
    .line 723
    invoke-virtual/range {v16 .. v17}, Ljava/util/Calendar;->get(I)I

    #@216
    move-result v16

    #@217
    .line 724
    const/16 v17, 0x0

    #@219
    .line 723
    move-object/from16 v0, p0

    #@21b
    move/from16 v1, v16

    #@21d
    move-object/from16 v2, v17

    #@21f
    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    #@222
    .line 727
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->reorderSpinners()V

    #@225
    .line 730
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setContentDescriptions()V

    #@228
    .line 733
    move-object/from16 v0, p0

    #@22a
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@22c
    invoke-virtual {v14}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    #@22f
    move-result v14

    #@230
    if-nez v14, :cond_3

    #@232
    .line 734
    move-object/from16 v0, p0

    #@234
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@236
    const/4 v15, 0x1

    #@237
    invoke-virtual {v14, v15}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    #@23a
    .line 592
    :cond_3
    return-void

    #@23b
    .line 693
    :cond_4
    const/4 v14, 0x1

    #@23c
    move-object/from16 v0, p0

    #@23e
    invoke-virtual {v0, v14}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    #@241
    goto/16 :goto_0

    #@243
    .line 706
    :cond_5
    move-object/from16 v0, p0

    #@245
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@247
    const/4 v15, 0x0

    #@248
    const/16 v16, 0x1

    #@24a
    move/from16 v0, v16

    #@24c
    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    #@24f
    goto/16 :goto_1

    #@251
    .line 717
    :cond_6
    move-object/from16 v0, p0

    #@253
    iget-object v14, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@255
    const/16 v15, 0xb

    #@257
    const/16 v16, 0x1f

    #@259
    move/from16 v0, v16

    #@25b
    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    #@25e
    goto :goto_2
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 942
    if-nez p1, :cond_0

    #@2
    .line 943
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@5
    move-result-object v3

    #@6
    return-object v3

    #@7
    .line 945
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@a
    move-result-wide v0

    #@b
    .line 946
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@e
    move-result-object v2

    #@f
    .line 947
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@12
    .line 948
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
    .line 1001
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    if-ne v1, p1, :cond_0

    #@9
    .line 1002
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@b
    const/4 v2, 0x2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@f
    move-result v1

    #@10
    if-eq v1, p3, :cond_1

    #@12
    .line 1001
    :cond_0
    :goto_0
    return v0

    #@13
    .line 1003
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@15
    const/4 v2, 0x5

    #@16
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@19
    move-result v1

    #@1a
    if-ne v1, p2, :cond_0

    #@1c
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 5

    #@0
    .prologue
    .line 1076
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    #@6
    .line 1077
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1078
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@c
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@e
    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getYear()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getMonth()I

    #@15
    move-result v3

    #@16
    .line 1079
    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getDayOfMonth()I

    #@19
    move-result v4

    #@1a
    .line 1078
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    #@1d
    .line 1075
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 992
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    #@2
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 993
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 994
    :catch_0
    move-exception v0

    #@c
    .line 995
    .local v0, "e":Ljava/text/ParseException;
    invoke-static {}, Landroid/widget/DatePicker;->-get0()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Date: "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, " not in format: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, "MM/dd/yyyy"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 996
    const/4 v1, 0x0

    #@36
    return v1
.end method

.method private reorderSpinners()V
    .locals 6

    #@0
    .prologue
    .line 958
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@5
    .line 961
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
    .line 962
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    #@13
    move-result-object v1

    #@14
    .line 963
    .local v1, "order":[C
    array-length v3, v1

    #@15
    .line 964
    .local v3, "spinnerCount":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@18
    .line 965
    aget-char v4, v1, v0

    #@1a
    sparse-switch v4, :sswitch_data_0

    #@1d
    .line 979
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
    .line 967
    :sswitch_0
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@29
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@2b
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@2e
    .line 968
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@30
    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    #@33
    .line 964
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 971
    :sswitch_1
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@38
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@3a
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@3d
    .line 972
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@3f
    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    #@42
    goto :goto_1

    #@43
    .line 975
    :sswitch_2
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@45
    iget-object v5, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@47
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@4a
    .line 976
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@4c
    invoke-direct {p0, v4, v3, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    #@4f
    goto :goto_1

    #@50
    .line 957
    :cond_0
    return-void

    #@51
    .line 965
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
    const v3, 0x1020383

    #@3
    const v2, 0x1020381

    #@6
    .line 1103
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@8
    .line 1104
    const v1, 0x1040466

    #@b
    .line 1103
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@e
    .line 1105
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@10
    .line 1106
    const v1, 0x1040467

    #@13
    .line 1105
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@16
    .line 1108
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@18
    .line 1109
    const v1, 0x1040464

    #@1b
    .line 1108
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@1e
    .line 1110
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@20
    .line 1111
    const v1, 0x1040465

    #@23
    .line 1110
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@26
    .line 1113
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@28
    .line 1114
    const v1, 0x1040468

    #@2b
    .line 1113
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@2e
    .line 1115
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@30
    .line 1116
    const v1, 0x1040469

    #@33
    .line 1115
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@36
    .line 1101
    return-void
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 1007
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    #@5
    .line 1008
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@7
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1009
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@11
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@13
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@16
    move-result-wide v2

    #@17
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1a
    .line 1006
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 1010
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1d
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 1011
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@27
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@29
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@2c
    move-result-wide v2

    #@2d
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

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
    .line 1092
    add-int/lit8 v2, p2, -0x1

    #@2
    if-ge p3, v2, :cond_0

    #@4
    .line 1093
    const/4 v0, 0x5

    #@5
    .line 1097
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x1020382

    #@8
    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/widget/TextView;

    #@e
    .line 1098
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    #@11
    .line 1090
    return-void

    #@12
    .line 1095
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
    .line 1120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1121
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 1122
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@f
    .line 1119
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1068
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@3
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@5
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@8
    move-result-wide v2

    #@9
    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    #@c
    .line 1067
    return-void
.end method

.method private updateInputState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1132
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 1133
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@7
    .line 1134
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1135
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@14
    .line 1136
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@16
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    .line 1126
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 1137
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 1138
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@28
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@2b
    .line 1139
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@2d
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@34
    goto :goto_0

    #@35
    .line 1140
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    #@37
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 1141
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    #@3f
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@42
    .line 1142
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    #@44
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

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
    .line 1017
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@7
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1018
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@11
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@13
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@1a
    .line 1019
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@1c
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1e
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@21
    move-result v2

    #@22
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@25
    .line 1020
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@27
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@2a
    .line 1021
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@2c
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@2f
    .line 1022
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@31
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@33
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    #@36
    move-result v2

    #@37
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@3a
    .line 1023
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@3c
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3e
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@41
    move-result v2

    #@42
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@45
    .line 1024
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@47
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@4a
    .line 1045
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@4c
    .line 1046
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@4e
    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    #@51
    move-result v2

    #@52
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@54
    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@57
    move-result v3

    #@58
    add-int/lit8 v3, v3, 0x1

    #@5a
    .line 1045
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, [Ljava/lang/String;

    #@60
    .line 1047
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@62
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@65
    .line 1050
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@67
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@69
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    #@6c
    move-result v2

    #@6d
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@70
    .line 1051
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@72
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@74
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    #@77
    move-result v2

    #@78
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@7b
    .line 1052
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@7d
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@80
    .line 1055
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@82
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@84
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    #@87
    move-result v2

    #@88
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@8b
    .line 1056
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@8d
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@8f
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    #@92
    move-result v2

    #@93
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@96
    .line 1057
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@98
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@9a
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    #@9d
    move-result v2

    #@9e
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    #@a1
    .line 1059
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_0

    #@a7
    .line 1060
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    #@a9
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    #@ac
    .line 1015
    :cond_0
    return-void

    #@ad
    .line 1025
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@af
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@b1
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v1

    #@b5
    if-eqz v1, :cond_2

    #@b7
    .line 1026
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@b9
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@bb
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    #@be
    move-result v2

    #@bf
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@c2
    .line 1027
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@c4
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@c6
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    #@c9
    move-result v2

    #@ca
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@cd
    .line 1028
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@cf
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@d2
    .line 1029
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@d4
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@d7
    .line 1030
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@d9
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@db
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    #@de
    move-result v2

    #@df
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@e2
    .line 1031
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@e4
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@e6
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    #@e9
    move-result v2

    #@ea
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@ed
    .line 1032
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@ef
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1034
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@f6
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@f9
    .line 1035
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@fb
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@fd
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@100
    move-result v2

    #@101
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@104
    .line 1036
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@106
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    #@109
    .line 1037
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@10b
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@10e
    .line 1038
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@110
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@113
    .line 1039
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@115
    const/16 v2, 0xb

    #@117
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@11a
    .line 1040
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

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
    .line 932
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

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
    .line 888
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 889
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    #@0
    .prologue
    .line 845
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 855
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@3
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getVisibility()I

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
    .line 770
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

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
    .line 780
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 824
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 825
    .local v0, "maxDate":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@6
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@d
    .line 826
    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 4

    #@0
    .prologue
    .line 801
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 802
    .local v0, "minDate":Ljava/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@6
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@d
    .line 803
    return-object v0
.end method

.method public getMonth()I
    .locals 2

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

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
    .line 865
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getYear()I
    .locals 2

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

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
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    #@0
    .prologue
    .line 741
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    #@3
    .line 742
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    #@6
    .line 743
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    #@9
    .line 744
    iput-object p4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    #@b
    .line 740
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 840
    iget-boolean v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 870
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@5
    .line 869
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 894
    const/16 v0, 0x14

    #@2
    .line 895
    .local v0, "flags":I
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@4
    .line 896
    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@6
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v4

    #@a
    const/16 v3, 0x14

    #@c
    .line 895
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 897
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 893
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 880
    check-cast v0, Landroid/widget/DatePicker$SavedState;

    #@3
    .line 881
    .local v0, "ss":Landroid/widget/DatePicker$SavedState;
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->-get2(Landroid/widget/DatePicker$SavedState;)I

    #@6
    move-result v1

    #@7
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->-get1(Landroid/widget/DatePicker$SavedState;)I

    #@a
    move-result v2

    #@b
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->-get0(Landroid/widget/DatePicker$SavedState;)I

    #@e
    move-result v3

    #@f
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    #@12
    .line 882
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    #@15
    .line 883
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    #@18
    .line 879
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 6
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 875
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    #@2
    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getYear()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getMonth()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getDayOfMonth()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x0

    #@f
    move-object v1, p1

    #@10
    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$SavedState;)V

    #@13
    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 850
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    #@8
    .line 849
    return-void

    #@9
    .line 850
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
    .line 907
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@3
    .line 909
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@5
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@8
    move-result-object v1

    #@9
    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@b
    .line 910
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@d
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@13
    .line 911
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@15
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@1b
    .line 912
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@1d
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@23
    .line 914
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@25
    const/4 v2, 0x2

    #@26
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@29
    move-result v1

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    iput v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@2e
    .line 915
    new-instance v1, Ljava/text/DateFormatSymbols;

    #@30
    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    #@33
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@39
    .line 917
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_0

    #@3f
    .line 920
    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@41
    new-array v1, v1, [Ljava/lang/String;

    #@43
    iput-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    #@45
    .line 921
    const/4 v0, 0x0

    #@46
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I

    #@48
    if-ge v0, v1, :cond_0

    #@4a
    .line 922
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

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
    .line 921
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_0

    #@64
    .line 906
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@5
    .line 832
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@a
    .line 833
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    #@c
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@f
    .line 834
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    #@14
    .line 835
    iput-boolean p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mIsEnabled:Z

    #@16
    .line 830
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    #@5
    .line 774
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
    .line 808
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 809
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 810
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@17
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    if-eq v0, v1, :cond_0

    #@23
    .line 811
    return-void

    #@24
    .line 813
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@26
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@29
    .line 814
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2b
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    #@2e
    .line 815
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@30
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 816
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3a
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMaxDate:Ljava/util/Calendar;

    #@3c
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3f
    move-result-wide v2

    #@40
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@43
    .line 817
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    #@46
    .line 819
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    #@49
    .line 807
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
    .line 785
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 786
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    #@c
    move-result v0

    #@d
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@f
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    #@12
    move-result v1

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 787
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;

    #@17
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@1a
    move-result v0

    #@1b
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@1d
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    #@20
    move-result v1

    #@21
    if-eq v0, v1, :cond_0

    #@23
    .line 788
    return-void

    #@24
    .line 790
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@26
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@29
    .line 791
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    #@2b
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    #@2e
    .line 792
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@30
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@32
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 793
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;

    #@3a
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMinDate:Ljava/util/Calendar;

    #@3c
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@3f
    move-result-wide v2

    #@40
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@43
    .line 794
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    #@46
    .line 796
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    #@49
    .line 784
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 860
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@8
    .line 859
    return-void

    #@9
    .line 860
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
    .line 749
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->isNewDate(III)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 750
    return-void

    #@7
    .line 752
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V

    #@a
    .line 753
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V

    #@d
    .line 754
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V

    #@10
    .line 755
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V

    #@13
    .line 748
    return-void
.end method
