.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static synthetic -get0(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 74
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    #@3
    .line 65
    const/4 v12, 0x1

    #@4
    move-object/from16 v0, p0

    #@6
    iput-boolean v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    #@8
    .line 77
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@c
    .line 78
    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@e
    .line 77
    move-object/from16 v0, p3

    #@10
    move/from16 v1, p4

    #@12
    move/from16 v2, p5

    #@14
    invoke-virtual {v12, v0, v13, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@17
    move-result-object v4

    #@18
    .line 80
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    #@1a
    const v13, 0x10900fc

    #@1d
    .line 79
    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@20
    move-result v9

    #@21
    .line 81
    .local v9, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 83
    move-object/from16 v0, p0

    #@26
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@28
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@2b
    move-result-object v8

    #@2c
    .line 84
    .local v8, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    #@2e
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@30
    const/4 v13, 0x1

    #@31
    invoke-virtual {v8, v9, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@34
    .line 87
    const v12, 0x1020434

    #@37
    move-object/from16 v0, p1

    #@39
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v12

    #@3d
    check-cast v12, Landroid/widget/NumberPicker;

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@43
    .line 88
    move-object/from16 v0, p0

    #@45
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@47
    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$1;

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@4e
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@51
    .line 101
    move-object/from16 v0, p0

    #@53
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@55
    const v13, 0x10203c2

    #@58
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@5b
    move-result-object v12

    #@5c
    check-cast v12, Landroid/widget/EditText;

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@62
    .line 102
    move-object/from16 v0, p0

    #@64
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@66
    const/4 v13, 0x5

    #@67
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    #@6a
    .line 105
    move-object/from16 v0, p0

    #@6c
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@6e
    const v13, 0x1020437

    #@71
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@74
    move-result-object v12

    #@75
    check-cast v12, Landroid/widget/TextView;

    #@77
    move-object/from16 v0, p0

    #@79
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@7b
    .line 106
    move-object/from16 v0, p0

    #@7d
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@7f
    if-eqz v12, :cond_0

    #@81
    .line 107
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setDividerText()V

    #@84
    .line 111
    :cond_0
    move-object/from16 v0, p0

    #@86
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@88
    const v13, 0x1020435

    #@8b
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@8e
    move-result-object v12

    #@8f
    check-cast v12, Landroid/widget/NumberPicker;

    #@91
    move-object/from16 v0, p0

    #@93
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@95
    .line 112
    move-object/from16 v0, p0

    #@97
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@99
    const/4 v13, 0x0

    #@9a
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@9d
    .line 113
    move-object/from16 v0, p0

    #@9f
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@a1
    const/16 v13, 0x3b

    #@a3
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@a6
    .line 114
    move-object/from16 v0, p0

    #@a8
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@aa
    const-wide/16 v14, 0x64

    #@ac
    invoke-virtual {v12, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@af
    .line 115
    move-object/from16 v0, p0

    #@b1
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@b3
    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    #@b6
    move-result-object v13

    #@b7
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    #@ba
    .line 116
    move-object/from16 v0, p0

    #@bc
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@be
    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$2;

    #@c0
    move-object/from16 v0, p0

    #@c2
    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@c5
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@c8
    .line 139
    move-object/from16 v0, p0

    #@ca
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@cc
    const v13, 0x10203c2

    #@cf
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d2
    move-result-object v12

    #@d3
    check-cast v12, Landroid/widget/EditText;

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@d9
    .line 140
    move-object/from16 v0, p0

    #@db
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@dd
    const/4 v13, 0x5

    #@de
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    #@e1
    .line 143
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    #@e4
    move-result-object v12

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    #@e9
    .line 146
    move-object/from16 v0, p0

    #@eb
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@ed
    const v13, 0x1020436

    #@f0
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@f3
    move-result-object v6

    #@f4
    .line 147
    .local v6, "amPmView":Landroid/view/View;
    instance-of v12, v6, Landroid/widget/Button;

    #@f6
    if-eqz v12, :cond_4

    #@f8
    .line 148
    const/4 v12, 0x0

    #@f9
    move-object/from16 v0, p0

    #@fb
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@fd
    .line 149
    const/4 v12, 0x0

    #@fe
    move-object/from16 v0, p0

    #@100
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@102
    move-object v12, v6

    #@103
    .line 150
    nop

    #@104
    nop

    #@105
    move-object/from16 v0, p0

    #@107
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@109
    .line 151
    move-object/from16 v0, p0

    #@10b
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@10d
    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$3;

    #@10f
    move-object/from16 v0, p0

    #@111
    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@114
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@117
    .line 178
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    #@11a
    move-result v12

    #@11b
    if-eqz v12, :cond_1

    #@11d
    .line 180
    const v12, 0x1020433

    #@120
    move-object/from16 v0, p1

    #@122
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@125
    move-result-object v5

    #@126
    check-cast v5, Landroid/view/ViewGroup;

    #@128
    .line 181
    .local v5, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@12b
    .line 182
    const/4 v12, 0x0

    #@12c
    invoke-virtual {v5, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@12f
    .line 186
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@132
    move-result-object v10

    #@133
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    #@135
    .line 187
    .local v10, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    #@138
    move-result v11

    #@139
    .line 188
    .local v11, "startMargin":I
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@13c
    move-result v7

    #@13d
    .line 189
    .local v7, "endMargin":I
    if-eq v11, v7, :cond_1

    #@13f
    .line 190
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    #@142
    .line 191
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@145
    .line 195
    .end local v5    # "amPmParent":Landroid/view/ViewGroup;
    .end local v7    # "endMargin":I
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    #@148
    .line 198
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    #@14b
    .line 199
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    #@14e
    .line 200
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@151
    .line 203
    move-object/from16 v0, p0

    #@153
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@155
    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@158
    move-result-object v12

    #@159
    move-object/from16 v0, p0

    #@15b
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@15d
    .line 204
    move-object/from16 v0, p0

    #@15f
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@161
    const/16 v13, 0xb

    #@163
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    #@166
    move-result v12

    #@167
    move-object/from16 v0, p0

    #@169
    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setHour(I)V

    #@16c
    .line 205
    move-object/from16 v0, p0

    #@16e
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@170
    const/16 v13, 0xc

    #@172
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    #@175
    move-result v12

    #@176
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    #@17b
    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    #@17e
    move-result v12

    #@17f
    if-nez v12, :cond_2

    #@181
    .line 208
    const/4 v12, 0x0

    #@182
    move-object/from16 v0, p0

    #@184
    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    #@187
    .line 212
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setContentDescriptions()V

    #@18a
    .line 215
    move-object/from16 v0, p0

    #@18c
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@18e
    invoke-virtual {v12}, Landroid/view/View;->getImportantForAccessibility()I

    #@191
    move-result v12

    #@192
    if-nez v12, :cond_3

    #@194
    .line 216
    move-object/from16 v0, p0

    #@196
    iget-object v12, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@198
    const/4 v13, 0x1

    #@199
    invoke-virtual {v12, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@19c
    .line 73
    :cond_3
    return-void

    #@19d
    .line 160
    :cond_4
    const/4 v12, 0x0

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@1a2
    move-object v12, v6

    #@1a3
    .line 161
    check-cast v12, Landroid/widget/NumberPicker;

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1a9
    .line 162
    move-object/from16 v0, p0

    #@1ab
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1ad
    const/4 v13, 0x0

    #@1ae
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@1b1
    .line 163
    move-object/from16 v0, p0

    #@1b3
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1b5
    const/4 v13, 0x1

    #@1b6
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@1b9
    .line 164
    move-object/from16 v0, p0

    #@1bb
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iget-object v13, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    #@1c1
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@1c4
    .line 165
    move-object/from16 v0, p0

    #@1c6
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1c8
    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$4;

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@1cf
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@1d2
    .line 174
    move-object/from16 v0, p0

    #@1d4
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1d6
    const v13, 0x10203c2

    #@1d9
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1dc
    move-result-object v12

    #@1dd
    check-cast v12, Landroid/widget/EditText;

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@1e3
    .line 175
    move-object/from16 v0, p0

    #@1e5
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@1e7
    const/4 v13, 0x6

    #@1e8
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    #@1eb
    goto/16 :goto_0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 529
    const/4 v2, 0x2

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 530
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v2

    #@e
    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@10
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@13
    move-result-object v0

    #@14
    .line 531
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@16
    aget-object v2, v2, v3

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    if-le v2, v5, :cond_0

    #@1e
    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    #@20
    :goto_0
    aput-object v2, v1, v3

    #@22
    .line 532
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@24
    aget-object v2, v2, v4

    #@26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@29
    move-result v2

    #@2a
    if-le v2, v5, :cond_1

    #@2c
    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    #@2e
    :goto_1
    aput-object v2, v1, v4

    #@30
    .line 533
    return-object v1

    #@31
    .line 531
    :cond_0
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@33
    aget-object v2, v2, v3

    #@35
    goto :goto_0

    #@36
    .line 532
    :cond_1
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@38
    aget-object v2, v2, v4

    #@3a
    goto :goto_1
.end method

.method private getHourFormatData()V
    .locals 7

    #@0
    .prologue
    .line 221
    iget-object v6, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@2
    .line 222
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@4
    if-eqz v5, :cond_2

    #@6
    const-string/jumbo v5, "Hm"

    #@9
    .line 221
    :goto_0
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 223
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v4

    #@11
    .line 224
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    #@12
    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    #@14
    .line 225
    const/4 v2, 0x0

    #@15
    .line 228
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    #@16
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    #@18
    .line 229
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    .line 230
    .local v1, "c":C
    const/16 v5, 0x48

    #@1e
    if-eq v1, v5, :cond_0

    #@20
    const/16 v5, 0x68

    #@22
    if-ne v1, v5, :cond_3

    #@24
    .line 231
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    #@26
    .line 232
    add-int/lit8 v5, v3, 0x1

    #@28
    if-ge v5, v4, :cond_1

    #@2a
    add-int/lit8 v5, v3, 0x1

    #@2c
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v5

    #@30
    if-ne v1, v5, :cond_1

    #@32
    .line 233
    const/4 v5, 0x1

    #@33
    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    #@35
    .line 220
    .end local v1    # "c":C
    :cond_1
    return-void

    #@36
    .line 222
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_2
    const-string/jumbo v5, "hm"

    #@39
    goto :goto_0

    #@3a
    .line 230
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    :cond_3
    const/16 v5, 0x4b

    #@3c
    if-eq v1, v5, :cond_0

    #@3e
    const/16 v5, 0x6b

    #@40
    if-eq v1, v5, :cond_0

    #@42
    .line 228
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@2
    .line 242
    const-string/jumbo v2, "hm"

    #@5
    .line 241
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 244
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string/jumbo v1, "a"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    return v1
.end method

.method private onTimeChanged()V
    .locals 4

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@6
    .line 464
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 465
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@c
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@e
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    #@11
    move-result v2

    #@12
    .line 466
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    #@15
    move-result v3

    #@16
    .line 465
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@19
    .line 462
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    #@0
    .prologue
    const v3, 0x10203c3

    #@3
    const v2, 0x10203c1

    #@6
    .line 503
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@8
    .line 504
    const v1, 0x1040499

    #@b
    .line 503
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@e
    .line 505
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@10
    .line 506
    const v1, 0x104049a

    #@13
    .line 505
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@16
    .line 508
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@18
    .line 509
    const v1, 0x104049b

    #@1b
    .line 508
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@1e
    .line 510
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@20
    .line 511
    const v1, 0x104049c

    #@23
    .line 510
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@26
    .line 513
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 514
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@2c
    .line 515
    const v1, 0x104049d

    #@2f
    .line 514
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@32
    .line 516
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@34
    .line 517
    const v1, 0x104049e

    #@37
    .line 516
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@3a
    .line 501
    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 3
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    #@0
    .prologue
    const/16 v2, 0xc

    #@2
    const/4 v1, 0x0

    #@3
    .line 285
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    #@6
    move-result v0

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 286
    return-void

    #@a
    .line 288
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    .line 290
    if-lt p1, v2, :cond_4

    #@12
    .line 291
    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@14
    .line 292
    if-le p1, v2, :cond_1

    #@16
    .line 293
    add-int/lit8 p1, p1, -0xc

    #@18
    .line 301
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@1b
    .line 303
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@1d
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    #@20
    .line 304
    if-eqz p2, :cond_3

    #@22
    .line 305
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    #@25
    .line 283
    :cond_3
    return-void

    #@26
    .line 296
    :cond_4
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@29
    .line 297
    if-nez p1, :cond_1

    #@2b
    .line 298
    const/16 p1, 0xc

    #@2d
    goto :goto_0
.end method

.method private setDividerText()V
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 256
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@3
    if-eqz v5, :cond_1

    #@5
    const-string/jumbo v4, "Hm"

    #@8
    .line 257
    .local v4, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@a
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 260
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    #@10
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@13
    move-result v1

    #@14
    .line 261
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_0

    #@16
    .line 262
    const/16 v5, 0x68

    #@18
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@1b
    move-result v1

    #@1c
    .line 264
    :cond_0
    if-ne v1, v7, :cond_2

    #@1e
    .line 266
    const-string/jumbo v3, ":"

    #@21
    .line 275
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@23
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 255
    return-void

    #@27
    .line 256
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hourIndex":I
    .end local v3    # "separatorText":Ljava/lang/String;
    .end local v4    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "hm"

    #@2a
    .restart local v4    # "skeleton":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 268
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hourIndex":I
    :cond_2
    const/16 v5, 0x6d

    #@2d
    add-int/lit8 v6, v1, 0x1

    #@2f
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    #@32
    move-result v2

    #@33
    .line 269
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3

    #@35
    .line 270
    add-int/lit8 v5, v1, 0x1

    #@37
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v5

    #@3b
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    #@40
    .line 272
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v1, 0x1

    #@42
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    #@0
    .prologue
    .line 522
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 523
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 524
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@f
    .line 521
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    .line 443
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 444
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 445
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 459
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@14
    const/4 v2, 0x4

    #@15
    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@18
    .line 442
    return-void

    #@19
    .line 447
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@1b
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 450
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@21
    if-eqz v1, :cond_2

    #@23
    const/4 v0, 0x0

    #@24
    .line 451
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 452
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@2a
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    #@2d
    .line 453
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@2f
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    #@32
    goto :goto_0

    #@33
    .line 450
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    #@34
    .restart local v0    # "index":I
    goto :goto_1

    #@35
    .line 455
    :cond_3
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@37
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    #@39
    aget-object v2, v2, v0

    #@3b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3e
    .line 456
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@40
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    #@43
    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 471
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 473
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    #@a
    const/16 v1, 0x6b

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 474
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@10
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@13
    .line 475
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@15
    const/16 v1, 0x18

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@1a
    .line 490
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@1c
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    #@1e
    if-eqz v0, :cond_3

    #@20
    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    #@23
    move-result-object v0

    #@24
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    #@27
    .line 470
    return-void

    #@28
    .line 477
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2a
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@2d
    .line 478
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2f
    const/16 v1, 0x17

    #@31
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@34
    goto :goto_0

    #@35
    .line 482
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    #@37
    const/16 v1, 0x4b

    #@39
    if-ne v0, v1, :cond_2

    #@3b
    .line 483
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@3d
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@40
    .line 484
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@42
    const/16 v1, 0xb

    #@44
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@47
    goto :goto_0

    #@48
    .line 486
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@4a
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@4d
    .line 487
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@4f
    const/16 v1, 0xc

    #@51
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@54
    goto :goto_0

    #@55
    .line 490
    :cond_3
    const/4 v0, 0x0

    #@56
    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 427
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 428
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@7
    .line 429
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 430
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@14
    .line 431
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@16
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    .line 421
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 432
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 433
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@28
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@2b
    .line 434
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2d
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@34
    goto :goto_0

    #@35
    .line 435
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@37
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 436
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@3f
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    #@42
    .line 437
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@44
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@4b
    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    #@0
    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 495
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@8
    const/4 v1, 0x6

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    #@c
    .line 493
    :goto_0
    return-void

    #@d
    .line 497
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    #@13
    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 402
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 403
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBaseline()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHour()I
    .locals 2

    #@0
    .prologue
    .line 311
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    #@5
    move-result v0

    #@6
    .line 312
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 313
    return v0

    #@d
    .line 314
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 315
    rem-int/lit8 v1, v0, 0xc

    #@13
    return v1

    #@14
    .line 317
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    #@16
    add-int/lit8 v1, v1, 0xc

    #@18
    return v1
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is24Hour()Z
    .locals 1

    #@0
    .prologue
    .line 353
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 409
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 410
    const/16 v0, 0x81

    #@6
    .line 414
    .local v0, "flags":I
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    #@b
    move-result v3

    #@c
    const/16 v4, 0xb

    #@e
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 415
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    #@16
    move-result v3

    #@17
    const/16 v4, 0xc

    #@19
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 416
    iget-object v2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@1e
    .line 417
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@20
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@23
    move-result-wide v4

    #@24
    .line 416
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 418
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 407
    return-void

    #@30
    .line 412
    .end local v0    # "flags":I
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x41

    #@32
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 393
    instance-of v1, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 394
    nop

    #@6
    nop

    #@7
    .line 395
    .local v0, "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setHour(I)V

    #@e
    .line 396
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setMinute(I)V

    #@15
    .line 392
    .end local v0    # "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 388
    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    #@2
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24Hour()Z

    #@d
    move-result v3

    #@e
    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZ)V

    #@11
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@5
    .line 364
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 365
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@e
    .line 367
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@10
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@13
    .line 368
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 369
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@1c
    .line 373
    :goto_0
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    #@1e
    .line 362
    return-void

    #@1f
    .line 371
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@24
    goto :goto_0
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 280
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    #@4
    .line 279
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    #@0
    .prologue
    .line 336
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 337
    return-void

    #@5
    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHour()I

    #@8
    move-result v0

    #@9
    .line 342
    .local v0, "currentHour":I
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@b
    .line 343
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    #@e
    .line 344
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    #@11
    .line 346
    const/4 v1, 0x0

    #@12
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    #@15
    .line 347
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    #@18
    .line 348
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@1b
    .line 335
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinute()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 324
    return-void

    #@7
    .line 326
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    #@c
    .line 327
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    #@f
    .line 322
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    #@0
    .prologue
    .line 358
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@2
    .line 357
    return-void
.end method
