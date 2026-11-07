.class Landroid/widget/DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "DatePickerSpinnerDelegate.java"


# static fields
.field private static final blacklist DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final blacklist DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final blacklist DEFAULT_ENABLED_STATE:Z = true

.field private static final blacklist DEFAULT_END_YEAR:I = 0x834

.field private static final blacklist DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final blacklist DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final blacklist mCalendarView:Landroid/widget/CalendarView;

.field private final blacklist mDateFormat:Ljava/text/DateFormat;

.field private final blacklist mDaySpinner:Landroid/widget/NumberPicker;

.field private final blacklist mDaySpinnerInput:Landroid/widget/EditText;

.field private blacklist mIsEnabled:Z

.field private blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private blacklist mMinDate:Landroid/icu/util/Calendar;

.field private final blacklist mMonthSpinner:Landroid/widget/NumberPicker;

.field private final blacklist mMonthSpinnerInput:Landroid/widget/EditText;

.field private blacklist mNumberOfMonths:I

.field private blacklist mShortMonths:[Ljava/lang/String;

.field private final blacklist mSpinners:Landroid/widget/LinearLayout;

.field private blacklist mTempDate:Landroid/icu/util/Calendar;

.field private final blacklist mYearSpinner:Landroid/widget/NumberPicker;

.field private final blacklist mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDaySpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonthSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYearSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .registers 1

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDateChanged(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDate(Landroid/widget/DatePickerSpinnerDelegate;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCalendarView(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInputState(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSpinners(Landroid/widget/DatePickerSpinnerDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 26
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 79
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 95
    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 96
    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 101
    sget-object v4, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 103
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 105
    .local v8, "spinnersShown":Z
    const/4 v9, 0x7

    invoke-virtual {v4, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 107
    .local v9, "calendarViewShown":Z
    const/16 v10, 0x76c

    invoke-virtual {v4, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 109
    .local v10, "startYear":I
    const/16 v11, 0x834

    const/4 v12, 0x2

    invoke-virtual {v4, v12, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 110
    .local v11, "endYear":I
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "minDate":Ljava/lang/String;
    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "maxDate":Ljava/lang/String;
    const/16 v14, 0x14

    const v12, 0x109006e

    invoke-virtual {v4, v14, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 114
    .local v12, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    nop

    .line 117
    const-string v14, "layout_inflater"

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 118
    .local v14, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v14, v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "view":Landroid/view/View;
    move/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 121
    new-instance v2, Landroid/widget/DatePickerSpinnerDelegate$1;

    invoke-direct {v2, v0}, Landroid/widget/DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 157
    .local v2, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    move-object/from16 v18, v1

    .end local v1    # "view":Landroid/view/View;
    .local v18, "view":Landroid/view/View;
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x1020479

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 160
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x1020266

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarView;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 161
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v3, Landroid/widget/DatePickerSpinnerDelegate$2;

    invoke-direct {v3, v0}, Landroid/widget/DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    invoke-virtual {v1, v3}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 170
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x10202c8

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 171
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 172
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    move-object/from16 v19, v4

    .end local v4    # "attributesArray":Landroid/content/res/TypedArray;
    .local v19, "attributesArray":Landroid/content/res/TypedArray;
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 173
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 174
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v3, 0x1020440

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 177
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v4, 0x1020405

    invoke-virtual {v1, v4}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 178
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 179
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 180
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 181
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 182
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 183
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v3, 0x1020440

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 186
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const v3, 0x1020608

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 187
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 188
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 189
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v3, 0x1020440

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 193
    if-nez v8, :cond_136

    if-nez v9, :cond_136

    .line 194
    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    goto :goto_13c

    .line 196
    :cond_136
    invoke-virtual {v0, v8}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 197
    invoke-virtual {v0, v9}, Landroid/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    .line 201
    :goto_13c
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    .line 202
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_159

    .line 203
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v13, v1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_157

    .line 204
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_160

    .line 203
    :cond_157
    const/4 v3, 0x1

    goto :goto_160

    .line 207
    :cond_159
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 209
    :goto_160
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 212
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    .line 213
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_186

    .line 214
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v15, v1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_18b

    .line 215
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v11, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_18b

    .line 218
    :cond_186
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v11, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 220
    :cond_18b
    :goto_18b
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 223
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 224
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 225
    move-object/from16 v16, v2

    const/4 v2, 0x5

    .end local v2    # "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    .local v16, "onChangeListener":Landroid/widget/NumberPicker$OnValueChangeListener;
    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 224
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 228
    invoke-direct {v0}, Landroid/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    .line 231
    invoke-direct {v0}, Landroid/widget/DatePickerSpinnerDelegate;->setContentDescriptions()V

    .line 234
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1cc

    .line 235
    iget-object v1, v0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 237
    :cond_1cc
    return-void
.end method

.method private blacklist getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .registers 6
    .param p1, "oldCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 441
    if-nez p1, :cond_7

    .line 442
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 444
    :cond_7
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 445
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 446
    .local v2, "newCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 447
    return-object v2
.end method

.method private blacklist isNewDate(III)Z
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 500
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 501
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1e

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 502
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    nop

    .line 500
    :goto_1f
    return v1
.end method

.method private greylist-max-r notifyDateChanged()V
    .registers 6

    .line 580
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 581
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1d

    .line 582
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 583
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 582
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 585
    :cond_1d
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_34

    .line 586
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDelegator:Landroid/widget/DatePicker;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 587
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 586
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 589
    :cond_34
    return-void
.end method

.method private blacklist parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .registers 5
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Landroid/icu/util/Calendar;

    .line 491
    :try_start_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_9} :catch_b

    .line 492
    const/4 v0, 0x1

    return v0

    .line 493
    :catch_b
    move-exception v0

    .line 494
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 495
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist reorderSpinners()V
    .registers 7

    .line 457
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    .line 462
    .local v1, "order":[C
    array-length v2, v1

    .line 463
    .local v2, "spinnerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_51

    .line 464
    aget-char v4, v1, v3

    sparse-switch v4, :sswitch_data_52

    .line 478
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 474
    :sswitch_27
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 476
    goto :goto_4e

    .line 466
    :sswitch_34
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 468
    goto :goto_4e

    .line 470
    :sswitch_41
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v4, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 472
    nop

    .line 463
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 481
    .end local v3    # "i":I
    :cond_51
    return-void

    :sswitch_data_52
    .sparse-switch
        0x4d -> :sswitch_41
        0x64 -> :sswitch_34
        0x79 -> :sswitch_27
    .end sparse-switch
.end method

.method private blacklist setContentDescriptions()V
    .registers 5

    .line 611
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040332

    const v2, 0x102037c

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 613
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x104032e

    const v3, 0x10202cd

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 616
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040333

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 618
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104032f

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 621
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040334

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 623
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040330

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 625
    return-void
.end method

.method private greylist-max-r setDate(III)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 507
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    .line 508
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 509
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 510
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_33

    .line 511
    :cond_1e
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 512
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 514
    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist setImeOptions(Landroid/widget/NumberPicker;II)V
    .registers 6
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .line 600
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_6

    .line 601
    const/4 v0, 0x5

    .local v0, "imeOptions":I
    goto :goto_7

    .line 603
    .end local v0    # "imeOptions":I
    :cond_6
    const/4 v0, 0x6

    .line 605
    .restart local v0    # "imeOptions":I
    :goto_7
    const v1, 0x1020440

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 606
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 607
    return-void
.end method

.method private blacklist trySetContentDescription(Landroid/view/View;II)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .line 628
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 629
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 630
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 632
    :cond_f
    return-void
.end method

.method private greylist-max-r updateCalendarView()V
    .registers 5

    .line 571
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 572
    return-void
.end method

.method private greylist-max-r updateInputState()V
    .registers 4

    .line 641
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 642
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_45

    .line 643
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 644
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 645
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_45

    .line 646
    :cond_20
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 647
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 648
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_45

    .line 649
    :cond_33
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 650
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 651
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 654
    :cond_45
    :goto_45
    return-void
.end method

.method private greylist-max-r updateSpinners()V
    .registers 8

    .line 519
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_4b

    .line 520
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 521
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 522
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 523
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 525
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 526
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_bc

    .line 527
    :cond_4b
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 528
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 529
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 530
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 531
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 533
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 534
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_bc

    .line 536
    :cond_91
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 537
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v4}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 538
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 539
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 541
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 542
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 547
    :goto_bc
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 548
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    .line 547
    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 549
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 553
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 554
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 557
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 558
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 559
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 561
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 562
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 564
    :cond_11d
    return-void
.end method

.method private blacklist usingNumericMonths()Z
    .registers 3

    .line 431
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 395
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getCalendarView()Landroid/widget/CalendarView;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public blacklist getCalendarViewShown()Z
    .registers 2

    .line 359
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist getDayOfMonth()I
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getFirstDayOfWeek()I
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxDate()Landroid/icu/util/Calendar;
    .registers 4

    .line 328
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 329
    .local v0, "maxDate":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 330
    return-object v0
.end method

.method public blacklist getMinDate()Landroid/icu/util/Calendar;
    .registers 4

    .line 304
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, "minDate":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 306
    return-object v0
.end method

.method public blacklist getMonth()I
    .registers 3

    .line 267
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSpinnersShown()Z
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public blacklist getYear()I
    .registers 3

    .line 262
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 242
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 243
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 244
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 246
    iput-object p4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 247
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 374
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 375
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 385
    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    if-eqz v0, :cond_1c

    .line 386
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 387
    .local v0, "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 388
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 389
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 391
    .end local v0    # "ss":Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
    :cond_1c
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 11
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 379
    new-instance v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 380
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v1, p1

    .end local p1    # "superState":Landroid/os/Parcelable;
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-direct/range {v0 .. v8}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    .line 379
    return-object v0
.end method

.method public blacklist setCalendarViewShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .line 354
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 355
    return-void
.end method

.method protected blacklist setCurrentLocale(Ljava/util/Locale;)V
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .line 406
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 408
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 409
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 410
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 411
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 413
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 414
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 416
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 419
    iget v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    iget v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    if-ge v0, v1, :cond_61

    .line 421
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 424
    .end local v0    # "i":I
    :cond_61
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 335
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 339
    iput-boolean p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 340
    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .line 277
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    .line 278
    return-void
.end method

.method public blacklist setMaxDate(J)V
    .registers 6
    .param p1, "maxDate"    # J

    .line 311
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 312
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 313
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 315
    return-void

    .line 317
    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 318
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 319
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 320
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 321
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 323
    :cond_46
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 324
    return-void
.end method

.method public blacklist setMinDate(J)V
    .registers 6
    .param p1, "minDate"    # J

    .line 287
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 288
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 289
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 291
    return-void

    .line 293
    :cond_24
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 294
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 295
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 296
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 297
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 299
    :cond_46
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 300
    return-void
.end method

.method public blacklist setSpinnersShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .line 364
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    return-void
.end method

.method public blacklist updateDate(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 251
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 252
    return-void

    .line 254
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 255
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 256
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 257
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    .line 258
    return-void
.end method
