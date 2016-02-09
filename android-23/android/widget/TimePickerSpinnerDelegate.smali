.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


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

.field private mTempCalendar:Ljava/util/Calendar;


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
    .line 78
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    #@3
    .line 71
    const/4 v12, 0x1

    #@4
    move-object/from16 v0, p0

    #@6
    iput-boolean v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    #@8
    .line 81
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@c
    .line 82
    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@e
    .line 81
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
    .line 84
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    #@1a
    const v13, 0x10900f2

    #@1d
    .line 83
    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@20
    move-result v9

    #@21
    .line 85
    .local v9, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 87
    move-object/from16 v0, p0

    #@26
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@28
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@2b
    move-result-object v8

    #@2c
    .line 88
    .local v8, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    #@2e
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@30
    const/4 v13, 0x1

    #@31
    invoke-virtual {v8, v9, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@34
    .line 91
    const v12, 0x10203f1

    #@37
    move-object/from16 v0, p1

    #@39
    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v12

    #@3d
    check-cast v12, Landroid/widget/NumberPicker;

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@43
    .line 92
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
    .line 105
    move-object/from16 v0, p0

    #@53
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@55
    const v13, 0x1020382

    #@58
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@5b
    move-result-object v12

    #@5c
    check-cast v12, Landroid/widget/EditText;

    #@5e
    move-object/from16 v0, p0

    #@60
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@62
    .line 106
    move-object/from16 v0, p0

    #@64
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@66
    const/4 v13, 0x5

    #@67
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    #@6a
    .line 109
    move-object/from16 v0, p0

    #@6c
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@6e
    const v13, 0x10203f4

    #@71
    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    #@74
    move-result-object v12

    #@75
    check-cast v12, Landroid/widget/TextView;

    #@77
    move-object/from16 v0, p0

    #@79
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@7b
    .line 110
    move-object/from16 v0, p0

    #@7d
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@7f
    if-eqz v12, :cond_0

    #@81
    .line 111
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setDividerText()V

    #@84
    .line 115
    :cond_0
    move-object/from16 v0, p0

    #@86
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@88
    const v13, 0x10203f2

    #@8b
    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    #@8e
    move-result-object v12

    #@8f
    check-cast v12, Landroid/widget/NumberPicker;

    #@91
    move-object/from16 v0, p0

    #@93
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@95
    .line 116
    move-object/from16 v0, p0

    #@97
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@99
    const/4 v13, 0x0

    #@9a
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@9d
    .line 117
    move-object/from16 v0, p0

    #@9f
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@a1
    const/16 v13, 0x3b

    #@a3
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@a6
    .line 118
    move-object/from16 v0, p0

    #@a8
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@aa
    const-wide/16 v14, 0x64

    #@ac
    invoke-virtual {v12, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    #@af
    .line 119
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
    .line 120
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
    .line 143
    move-object/from16 v0, p0

    #@ca
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@cc
    const v13, 0x1020382

    #@cf
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@d2
    move-result-object v12

    #@d3
    check-cast v12, Landroid/widget/EditText;

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@d9
    .line 144
    move-object/from16 v0, p0

    #@db
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@dd
    const/4 v13, 0x5

    #@de
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    #@e1
    .line 147
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    #@e4
    move-result-object v12

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    #@e9
    .line 150
    move-object/from16 v0, p0

    #@eb
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@ed
    const v13, 0x10203f3

    #@f0
    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    #@f3
    move-result-object v6

    #@f4
    .line 151
    .local v6, "amPmView":Landroid/view/View;
    instance-of v12, v6, Landroid/widget/Button;

    #@f6
    if-eqz v12, :cond_4

    #@f8
    .line 152
    const/4 v12, 0x0

    #@f9
    move-object/from16 v0, p0

    #@fb
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@fd
    .line 153
    const/4 v12, 0x0

    #@fe
    move-object/from16 v0, p0

    #@100
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@102
    move-object v12, v6

    #@103
    .line 154
    check-cast v12, Landroid/widget/Button;

    #@105
    move-object/from16 v0, p0

    #@107
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@109
    .line 155
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
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@117
    .line 182
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    #@11a
    move-result v12

    #@11b
    if-eqz v12, :cond_1

    #@11d
    .line 184
    const v12, 0x10203f0

    #@120
    move-object/from16 v0, p1

    #@122
    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    #@125
    move-result-object v5

    #@126
    check-cast v5, Landroid/view/ViewGroup;

    #@128
    .line 185
    .local v5, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@12b
    .line 186
    const/4 v12, 0x0

    #@12c
    invoke-virtual {v5, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@12f
    .line 190
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@132
    move-result-object v10

    #@133
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    #@135
    .line 191
    .local v10, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    #@138
    move-result v11

    #@139
    .line 192
    .local v11, "startMargin":I
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    #@13c
    move-result v7

    #@13d
    .line 193
    .local v7, "endMargin":I
    if-eq v11, v7, :cond_1

    #@13f
    .line 194
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    #@142
    .line 195
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    #@145
    .line 199
    .end local v5    # "amPmParent":Landroid/view/ViewGroup;
    .end local v7    # "endMargin":I
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    #@148
    .line 202
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    #@14b
    .line 203
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    #@14e
    .line 204
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@151
    .line 207
    move-object/from16 v0, p0

    #@153
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@155
    const/16 v13, 0xb

    #@157
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    #@15a
    move-result v12

    #@15b
    move-object/from16 v0, p0

    #@15d
    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(I)V

    #@160
    .line 208
    move-object/from16 v0, p0

    #@162
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@164
    const/16 v13, 0xc

    #@166
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    #@169
    move-result v12

    #@16a
    move-object/from16 v0, p0

    #@16c
    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(I)V

    #@16f
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    #@172
    move-result v12

    #@173
    if-nez v12, :cond_2

    #@175
    .line 211
    const/4 v12, 0x0

    #@176
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    #@17b
    .line 215
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setContentDescriptions()V

    #@17e
    .line 218
    move-object/from16 v0, p0

    #@180
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@182
    invoke-virtual {v12}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    #@185
    move-result v12

    #@186
    if-nez v12, :cond_3

    #@188
    .line 219
    move-object/from16 v0, p0

    #@18a
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@18c
    const/4 v13, 0x1

    #@18d
    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    #@190
    .line 77
    :cond_3
    return-void

    #@191
    .line 164
    :cond_4
    const/4 v12, 0x0

    #@192
    move-object/from16 v0, p0

    #@194
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@196
    move-object v12, v6

    #@197
    .line 165
    check-cast v12, Landroid/widget/NumberPicker;

    #@199
    move-object/from16 v0, p0

    #@19b
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@19d
    .line 166
    move-object/from16 v0, p0

    #@19f
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1a1
    const/4 v13, 0x0

    #@1a2
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@1a5
    .line 167
    move-object/from16 v0, p0

    #@1a7
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1a9
    const/4 v13, 0x1

    #@1aa
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@1ad
    .line 168
    move-object/from16 v0, p0

    #@1af
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    iget-object v13, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    #@1b5
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    #@1b8
    .line 169
    move-object/from16 v0, p0

    #@1ba
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1bc
    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$4;

    #@1be
    move-object/from16 v0, p0

    #@1c0
    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    #@1c3
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    #@1c6
    .line 178
    move-object/from16 v0, p0

    #@1c8
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@1ca
    const v13, 0x1020382

    #@1cd
    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@1d0
    move-result-object v12

    #@1d1
    check-cast v12, Landroid/widget/EditText;

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@1d7
    .line 179
    move-object/from16 v0, p0

    #@1d9
    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@1db
    const/4 v13, 0x6

    #@1dc
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    #@1df
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
    .line 593
    const/4 v2, 0x2

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 594
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
    .line 595
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
    .line 596
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
    .line 597
    return-object v1

    #@31
    .line 595
    :cond_0
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@33
    aget-object v2, v2, v3

    #@35
    goto :goto_0

    #@36
    .line 596
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
    .line 224
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@2
    .line 225
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@4
    if-eqz v5, :cond_2

    #@6
    const-string/jumbo v5, "Hm"

    #@9
    .line 224
    :goto_0
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 226
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v4

    #@11
    .line 227
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    #@12
    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    #@14
    .line 228
    const/4 v2, 0x0

    #@15
    .line 231
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    #@16
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    #@18
    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    .line 233
    .local v1, "c":C
    const/16 v5, 0x48

    #@1e
    if-eq v1, v5, :cond_0

    #@20
    const/16 v5, 0x68

    #@22
    if-ne v1, v5, :cond_3

    #@24
    .line 234
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    #@26
    .line 235
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
    .line 236
    const/4 v5, 0x1

    #@33
    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    #@35
    .line 223
    .end local v1    # "c":C
    :cond_1
    return-void

    #@36
    .line 225
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_2
    const-string/jumbo v5, "hm"

    #@39
    goto :goto_0

    #@3a
    .line 233
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
    .line 231
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    #@0
    .prologue
    .line 244
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@2
    .line 245
    const-string/jumbo v2, "hm"

    #@5
    .line 244
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 247
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
    .line 481
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    #@6
    .line 482
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 483
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@c
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@e
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    #@11
    move-result v2

    #@12
    .line 484
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    #@15
    move-result v3

    #@16
    .line 483
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@19
    .line 480
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    #@0
    .prologue
    const v3, 0x1020383

    #@3
    const v2, 0x1020381

    #@6
    .line 521
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@8
    .line 522
    const v1, 0x104045e

    #@b
    .line 521
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@e
    .line 523
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@10
    .line 524
    const v1, 0x104045f

    #@13
    .line 523
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@16
    .line 526
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@18
    .line 527
    const v1, 0x1040460

    #@1b
    .line 526
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@1e
    .line 528
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@20
    .line 529
    const v1, 0x1040461

    #@23
    .line 528
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@26
    .line 531
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 532
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@2c
    .line 533
    const v1, 0x1040462

    #@2f
    .line 532
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@32
    .line 534
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@34
    .line 535
    const v1, 0x1040463

    #@37
    .line 534
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    #@3a
    .line 519
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
    .line 288
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    #@6
    move-result v0

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 289
    return-void

    #@a
    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    .line 293
    if-lt p1, v2, :cond_4

    #@12
    .line 294
    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@14
    .line 295
    if-le p1, v2, :cond_1

    #@16
    .line 296
    add-int/lit8 p1, p1, -0xc

    #@18
    .line 304
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@1b
    .line 306
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@1d
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    #@20
    .line 307
    if-eqz p2, :cond_3

    #@22
    .line 308
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    #@25
    .line 286
    :cond_3
    return-void

    #@26
    .line 299
    :cond_4
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@29
    .line 300
    if-nez p1, :cond_1

    #@2b
    .line 301
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
    .line 259
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@3
    if-eqz v5, :cond_1

    #@5
    const-string/jumbo v4, "Hm"

    #@8
    .line 260
    .local v4, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@a
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 263
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    #@10
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@13
    move-result v1

    #@14
    .line 264
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_0

    #@16
    .line 265
    const/16 v5, 0x68

    #@18
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@1b
    move-result v1

    #@1c
    .line 267
    :cond_0
    if-ne v1, v7, :cond_2

    #@1e
    .line 269
    const-string/jumbo v3, ":"

    #@21
    .line 278
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@23
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@26
    .line 258
    return-void

    #@27
    .line 259
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
    .line 271
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
    .line 272
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3

    #@35
    .line 273
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
    .line 275
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
    .line 540
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 541
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 542
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    #@f
    .line 539
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
    .line 450
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 451
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 452
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@f
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    #@12
    .line 466
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@14
    const/4 v2, 0x4

    #@15
    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    #@18
    .line 449
    return-void

    #@19
    .line 454
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@1b
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 457
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@21
    if-eqz v1, :cond_2

    #@23
    const/4 v0, 0x0

    #@24
    .line 458
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 459
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@2a
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    #@2d
    .line 460
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@2f
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    #@32
    goto :goto_0

    #@33
    .line 457
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    #@34
    .restart local v0    # "index":I
    goto :goto_1

    #@35
    .line 462
    :cond_3
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@37
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    #@39
    aget-object v2, v2, v0

    #@3b
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@3e
    .line 463
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@40
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

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
    .line 489
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 491
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    #@a
    const/16 v1, 0x6b

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 492
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@10
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@13
    .line 493
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@15
    const/16 v1, 0x18

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@1a
    .line 508
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
    .line 488
    return-void

    #@28
    .line 495
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2a
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@2d
    .line 496
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2f
    const/16 v1, 0x17

    #@31
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@34
    goto :goto_0

    #@35
    .line 500
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    #@37
    const/16 v1, 0x4b

    #@39
    if-ne v0, v1, :cond_2

    #@3b
    .line 501
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@3d
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@40
    .line 502
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@42
    const/16 v1, 0xb

    #@44
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@47
    goto :goto_0

    #@48
    .line 504
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@4a
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    #@4d
    .line 505
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@4f
    const/16 v1, 0xc

    #@51
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    #@54
    goto :goto_0

    #@55
    .line 508
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
    .line 434
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 435
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@7
    .line 436
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 437
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@14
    .line 438
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@16
    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    .line 428
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 439
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 440
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@28
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@2b
    .line 441
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2d
    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@34
    goto :goto_0

    #@35
    .line 442
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@37
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 443
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    #@3f
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    #@42
    .line 444
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@44
    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

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
    .line 512
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 513
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@8
    const/4 v1, 0x6

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    #@c
    .line 511
    :goto_0
    return-void

    #@d
    .line 515
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    #@f
    const/4 v1, 0x5

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    #@13
    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 409
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 410
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    #@0
    .prologue
    .line 314
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    #@5
    move-result v0

    #@6
    .line 315
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 316
    return v0

    #@d
    .line 317
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 318
    rem-int/lit8 v1, v0, 0xc

    #@13
    return v1

    #@14
    .line 320
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    #@16
    add-int/lit8 v1, v1, 0xc

    #@18
    return v1
.end method

.method public getCurrentMinute()I
    .locals 1

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is24HourView()Z
    .locals 1

    #@0
    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 392
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@5
    .line 391
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 416
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 417
    const/16 v0, 0x81

    #@6
    .line 421
    .local v0, "flags":I
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    #@b
    move-result v3

    #@c
    const/16 v4, 0xb

    #@e
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 422
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    #@16
    move-result v3

    #@17
    const/16 v4, 0xc

    #@19
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 423
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    #@1e
    .line 424
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@20
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@23
    move-result-wide v4

    #@24
    .line 423
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 425
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 414
    return-void

    #@30
    .line 419
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
    move-object v0, p1

    #@1
    .line 402
    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    #@3
    .line 403
    .local v0, "ss":Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(I)V

    #@a
    .line 404
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(I)V

    #@11
    .line 401
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 397
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    #@2
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    #@9
    move-result v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerSpinnerDelegate$SavedState;)V

    #@e
    return-object v0
.end method

.method public setCurrentHour(I)V
    .locals 1
    .param p1, "currentHour"    # I

    #@0
    .prologue
    .line 283
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    #@4
    .line 282
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@3
    .line 477
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@9
    .line 475
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "currentMinute"    # I

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 327
    return-void

    #@7
    .line 329
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    #@c
    .line 330
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    #@f
    .line 325
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@5
    .line 368
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 369
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    #@b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@e
    .line 371
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    #@10
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@13
    .line 372
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 373
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    #@19
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    #@1c
    .line 377
    :goto_0
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    #@1e
    .line 366
    return-void

    #@1f
    .line 375
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    #@21
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@24
    goto :goto_0
.end method

.method public setIs24HourView(Z)V
    .locals 2
    .param p1, "is24HourView"    # Z

    #@0
    .prologue
    .line 340
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 341
    return-void

    #@5
    .line 344
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    #@8
    move-result v0

    #@9
    .line 346
    .local v0, "currentHour":I
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    #@b
    .line 347
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    #@e
    .line 348
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    #@11
    .line 350
    const/4 v1, 0x0

    #@12
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    #@15
    .line 351
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    #@18
    .line 352
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    #@1b
    .line 339
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@2
    .line 361
    return-void
.end method
