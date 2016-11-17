.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$1;,
        Landroid/widget/TimePickerClockDelegate$2;,
        Landroid/widget/TimePickerClockDelegate$3;,
        Landroid/widget/TimePickerClockDelegate$4;,
        Landroid/widget/TimePickerClockDelegate$5;,
        Landroid/widget/TimePickerClockDelegate$6;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/android/internal/widget/NumericTextView;

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/android/internal/widget/NumericTextView;

.field private final mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static synthetic -get0(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "isFromPicker"    # Z
    .param p3, "announce"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IZZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TimePickerClockDelegate;IZ)V
    .locals 0
    .param p1, "minute"    # I
    .param p2, "isFromPicker"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

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
    .line 67
    new-array v0, v3, [I

    #@4
    const v1, 0x1010098

    #@7
    aput v1, v0, v2

    #@9
    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    #@b
    .line 68
    new-array v0, v3, [I

    #@d
    const v1, 0x1010033

    #@10
    aput v1, v0, v2

    #@12
    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    #@14
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 106
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    #@3
    .line 89
    const/16 v18, 0x1

    #@5
    move/from16 v0, v18

    #@7
    move-object/from16 v1, p0

    #@9
    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    #@b
    .line 702
    new-instance v18, Landroid/widget/TimePickerClockDelegate$1;

    #@d
    move-object/from16 v0, v18

    #@f
    move-object/from16 v1, p0

    #@11
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@14
    move-object/from16 v0, v18

    #@16
    move-object/from16 v1, p0

    #@18
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@1a
    .line 729
    new-instance v18, Landroid/widget/TimePickerClockDelegate$2;

    #@1c
    move-object/from16 v0, v18

    #@1e
    move-object/from16 v1, p0

    #@20
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@23
    move-object/from16 v0, v18

    #@25
    move-object/from16 v1, p0

    #@27
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@29
    .line 765
    new-instance v18, Landroid/widget/TimePickerClockDelegate$3;

    #@2b
    move-object/from16 v0, v18

    #@2d
    move-object/from16 v1, p0

    #@2f
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@32
    move-object/from16 v0, v18

    #@34
    move-object/from16 v1, p0

    #@36
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    #@38
    .line 772
    new-instance v18, Landroid/widget/TimePickerClockDelegate$4;

    #@3a
    move-object/from16 v0, v18

    #@3c
    move-object/from16 v1, p0

    #@3e
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@41
    move-object/from16 v0, v18

    #@43
    move-object/from16 v1, p0

    #@45
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    #@47
    .line 779
    new-instance v18, Landroid/widget/TimePickerClockDelegate$5;

    #@49
    move-object/from16 v0, v18

    #@4b
    move-object/from16 v1, p0

    #@4d
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@50
    move-object/from16 v0, v18

    #@52
    move-object/from16 v1, p0

    #@54
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    #@56
    .line 806
    new-instance v18, Landroid/widget/TimePickerClockDelegate$6;

    #@58
    move-object/from16 v0, v18

    #@5a
    move-object/from16 v1, p0

    #@5c
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@5f
    move-object/from16 v0, v18

    #@61
    move-object/from16 v1, p0

    #@63
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@65
    .line 109
    move-object/from16 v0, p0

    #@67
    iget-object v0, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@69
    move-object/from16 v18, v0

    #@6b
    .line 110
    sget-object v19, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@6d
    .line 109
    move-object/from16 v0, v18

    #@6f
    move-object/from16 v1, p3

    #@71
    move-object/from16 v2, v19

    #@73
    move/from16 v3, p4

    #@75
    move/from16 v4, p5

    #@77
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@7a
    move-result-object v5

    #@7b
    .line 111
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@7d
    iget-object v0, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@7f
    move-object/from16 v18, v0

    #@81
    .line 112
    const-string/jumbo v19, "layout_inflater"

    #@84
    .line 111
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@87
    move-result-object v11

    #@88
    check-cast v11, Landroid/view/LayoutInflater;

    #@8a
    .line 113
    .local v11, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@8e
    move-object/from16 v18, v0

    #@90
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@93
    move-result-object v15

    #@94
    .line 115
    .local v15, "res":Landroid/content/res/Resources;
    const v18, 0x1040595

    #@97
    move/from16 v0, v18

    #@99
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9c
    move-result-object v18

    #@9d
    move-object/from16 v0, v18

    #@9f
    move-object/from16 v1, p0

    #@a1
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    #@a3
    .line 116
    const v18, 0x1040596

    #@a6
    move/from16 v0, v18

    #@a8
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@ab
    move-result-object v18

    #@ac
    move-object/from16 v0, v18

    #@ae
    move-object/from16 v1, p0

    #@b0
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@b2
    .line 118
    const/16 v18, 0xa

    #@b4
    .line 119
    const v19, 0x10900fe

    #@b7
    .line 118
    move/from16 v0, v18

    #@b9
    move/from16 v1, v19

    #@bb
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@be
    move-result v12

    #@bf
    .line 120
    .local v12, "layoutResourceId":I
    move-object/from16 v0, p1

    #@c1
    invoke-virtual {v11, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@c4
    move-result-object v14

    #@c5
    .line 121
    .local v14, "mainView":Landroid/view/View;
    const v18, 0x102042c

    #@c8
    move/from16 v0, v18

    #@ca
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@cd
    move-result-object v10

    #@ce
    .line 122
    .local v10, "headerView":Landroid/view/View;
    new-instance v18, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    #@d0
    const/16 v19, 0x0

    #@d2
    invoke-direct/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V

    #@d5
    move-object/from16 v0, v18

    #@d7
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@da
    .line 125
    const v18, 0x102042d

    #@dd
    move/from16 v0, v18

    #@df
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e2
    move-result-object v18

    #@e3
    check-cast v18, Lcom/android/internal/widget/NumericTextView;

    #@e5
    move-object/from16 v0, v18

    #@e7
    move-object/from16 v1, p0

    #@e9
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@eb
    .line 126
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@ef
    move-object/from16 v18, v0

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@f5
    move-object/from16 v19, v0

    #@f7
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@fa
    .line 127
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@fe
    move-object/from16 v18, v0

    #@100
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    #@104
    move-object/from16 v19, v0

    #@106
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@109
    .line 128
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@10d
    move-object/from16 v18, v0

    #@10f
    move-object/from16 v0, p0

    #@111
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@113
    move-object/from16 v19, v0

    #@115
    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    #@118
    .line 129
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@11c
    move-object/from16 v18, v0

    #@11e
    .line 130
    new-instance v19, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    #@120
    const v20, 0x1040595

    #@123
    move-object/from16 v0, v19

    #@125
    move-object/from16 v1, p2

    #@127
    move/from16 v2, v20

    #@129
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@12c
    .line 129
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@12f
    .line 131
    const v18, 0x102042e

    #@132
    move/from16 v0, v18

    #@134
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@137
    move-result-object v18

    #@138
    check-cast v18, Landroid/widget/TextView;

    #@13a
    move-object/from16 v0, v18

    #@13c
    move-object/from16 v1, p0

    #@13e
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    #@140
    .line 132
    const v18, 0x102042f

    #@143
    move/from16 v0, v18

    #@145
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@148
    move-result-object v18

    #@149
    check-cast v18, Lcom/android/internal/widget/NumericTextView;

    #@14b
    move-object/from16 v0, v18

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@151
    .line 133
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@155
    move-object/from16 v18, v0

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@15b
    move-object/from16 v19, v0

    #@15d
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@160
    .line 134
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@164
    move-object/from16 v18, v0

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    #@16a
    move-object/from16 v19, v0

    #@16c
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@16f
    .line 135
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@173
    move-object/from16 v18, v0

    #@175
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    #@179
    move-object/from16 v19, v0

    #@17b
    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    #@17e
    .line 136
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@182
    move-object/from16 v18, v0

    #@184
    .line 137
    new-instance v19, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    #@186
    const v20, 0x1040596

    #@189
    move-object/from16 v0, v19

    #@18b
    move-object/from16 v1, p2

    #@18d
    move/from16 v2, v20

    #@18f
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@192
    .line 136
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@195
    .line 138
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@199
    move-object/from16 v18, v0

    #@19b
    const/16 v19, 0x0

    #@19d
    const/16 v20, 0x3b

    #@19f
    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    #@1a2
    .line 141
    const v18, 0x1020431

    #@1a5
    move/from16 v0, v18

    #@1a7
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1aa
    move-result-object v18

    #@1ab
    move-object/from16 v0, v18

    #@1ad
    move-object/from16 v1, p0

    #@1af
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@1b1
    .line 142
    move-object/from16 v0, p0

    #@1b3
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@1b5
    move-object/from16 v18, v0

    #@1b7
    new-instance v19, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    #@1b9
    const/16 v20, 0x0

    #@1bb
    invoke-direct/range {v19 .. v20}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;)V

    #@1be
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@1c1
    .line 144
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    #@1c4
    move-result-object v6

    #@1c5
    .line 145
    .local v6, "amPmStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@1c9
    move-object/from16 v18, v0

    #@1cb
    const v19, 0x1020430

    #@1ce
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1d1
    move-result-object v18

    #@1d2
    check-cast v18, Landroid/widget/RadioButton;

    #@1d4
    move-object/from16 v0, v18

    #@1d6
    move-object/from16 v1, p0

    #@1d8
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@1da
    .line 146
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@1de
    move-object/from16 v18, v0

    #@1e0
    const/16 v19, 0x0

    #@1e2
    aget-object v19, v6, v19

    #@1e4
    invoke-static/range {v19 .. v19}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@1e7
    move-result-object v19

    #@1e8
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1eb
    .line 147
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@1ef
    move-object/from16 v18, v0

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@1f5
    move-object/from16 v19, v0

    #@1f7
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1fa
    .line 148
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@1fe
    move-object/from16 v18, v0

    #@200
    invoke-static/range {v18 .. v18}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    #@203
    .line 150
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@207
    move-object/from16 v18, v0

    #@209
    const v19, 0x1020432

    #@20c
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@20f
    move-result-object v18

    #@210
    check-cast v18, Landroid/widget/RadioButton;

    #@212
    move-object/from16 v0, v18

    #@214
    move-object/from16 v1, p0

    #@216
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@218
    .line 151
    move-object/from16 v0, p0

    #@21a
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@21c
    move-object/from16 v18, v0

    #@21e
    const/16 v19, 0x1

    #@220
    aget-object v19, v6, v19

    #@222
    invoke-static/range {v19 .. v19}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@225
    move-result-object v19

    #@226
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@229
    .line 152
    move-object/from16 v0, p0

    #@22b
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@22d
    move-object/from16 v18, v0

    #@22f
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@233
    move-object/from16 v19, v0

    #@235
    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@238
    .line 153
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@23c
    move-object/from16 v18, v0

    #@23e
    invoke-static/range {v18 .. v18}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    #@241
    .line 158
    const/4 v9, 0x0

    #@242
    .line 162
    .local v9, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v18, 0x1

    #@244
    const/16 v19, 0x0

    #@246
    .line 161
    move/from16 v0, v18

    #@248
    move/from16 v1, v19

    #@24a
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24d
    move-result v17

    #@24e
    .line 163
    .local v17, "timeHeaderTextAppearance":I
    if-eqz v17, :cond_0

    #@250
    .line 164
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@254
    move-object/from16 v18, v0

    #@256
    .line 165
    sget-object v19, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    #@258
    .line 164
    const/16 v20, 0x0

    #@25a
    .line 165
    const/16 v21, 0x0

    #@25c
    .line 164
    move-object/from16 v0, v18

    #@25e
    move-object/from16 v1, v20

    #@260
    move-object/from16 v2, v19

    #@262
    move/from16 v3, v21

    #@264
    move/from16 v4, v17

    #@266
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@269
    move-result-object v16

    #@26a
    .line 166
    .local v16, "textAppearance":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    #@26c
    move-object/from16 v0, v16

    #@26e
    move/from16 v1, v18

    #@270
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@273
    move-result-object v13

    #@274
    .line 167
    .local v13, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    #@276
    invoke-direct {v0, v13}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@279
    move-result-object v9

    #@27a
    .line 168
    .local v9, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    #@27d
    .line 171
    .end local v9    # "headerTextColor":Landroid/content/res/ColorStateList;
    .end local v13    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v16    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_0
    if-nez v9, :cond_1

    #@27f
    .line 172
    const/16 v18, 0xb

    #@281
    move/from16 v0, v18

    #@283
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@286
    move-result-object v9

    #@287
    .line 175
    :cond_1
    if-eqz v9, :cond_2

    #@289
    .line 176
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@28d
    move-object/from16 v18, v0

    #@28f
    move-object/from16 v0, v18

    #@291
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@294
    .line 177
    move-object/from16 v0, p0

    #@296
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    #@298
    move-object/from16 v18, v0

    #@29a
    move-object/from16 v0, v18

    #@29c
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@29f
    .line 178
    move-object/from16 v0, p0

    #@2a1
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@2a3
    move-object/from16 v18, v0

    #@2a5
    move-object/from16 v0, v18

    #@2a7
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@2aa
    .line 179
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@2ae
    move-object/from16 v18, v0

    #@2b0
    move-object/from16 v0, v18

    #@2b2
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@2b5
    .line 180
    move-object/from16 v0, p0

    #@2b7
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@2b9
    move-object/from16 v18, v0

    #@2bb
    move-object/from16 v0, v18

    #@2bd
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@2c0
    .line 184
    :cond_2
    const/16 v18, 0x0

    #@2c2
    move/from16 v0, v18

    #@2c4
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@2c7
    move-result v18

    #@2c8
    if-eqz v18, :cond_3

    #@2ca
    .line 185
    const/16 v18, 0x0

    #@2cc
    move/from16 v0, v18

    #@2ce
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2d1
    move-result-object v18

    #@2d2
    move-object/from16 v0, v18

    #@2d4
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@2d7
    .line 188
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@2da
    .line 190
    const v18, 0x1020438

    #@2dd
    move/from16 v0, v18

    #@2df
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2e2
    move-result-object v18

    #@2e3
    check-cast v18, Landroid/widget/RadialTimePickerView;

    #@2e5
    move-object/from16 v0, v18

    #@2e7
    move-object/from16 v1, p0

    #@2e9
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2eb
    .line 191
    move-object/from16 v0, p0

    #@2ed
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2ef
    move-object/from16 v18, v0

    #@2f1
    move-object/from16 v0, v18

    #@2f3
    move-object/from16 v1, p3

    #@2f5
    move/from16 v2, p4

    #@2f7
    move/from16 v3, p5

    #@2f9
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    #@2fc
    .line 192
    move-object/from16 v0, p0

    #@2fe
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@300
    move-object/from16 v18, v0

    #@302
    move-object/from16 v0, p0

    #@304
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    #@306
    move-object/from16 v19, v0

    #@308
    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    #@30b
    .line 194
    const/16 v18, 0x1

    #@30d
    move/from16 v0, v18

    #@30f
    move-object/from16 v1, p0

    #@311
    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    #@313
    .line 196
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    #@316
    .line 199
    move-object/from16 v0, p0

    #@318
    iget-object v0, v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@31a
    move-object/from16 v18, v0

    #@31c
    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@31f
    move-result-object v18

    #@320
    move-object/from16 v0, v18

    #@322
    move-object/from16 v1, p0

    #@324
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@326
    .line 200
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@32a
    move-object/from16 v18, v0

    #@32c
    const/16 v19, 0xb

    #@32e
    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    #@331
    move-result v7

    #@332
    .line 201
    .local v7, "currentHour":I
    move-object/from16 v0, p0

    #@334
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@336
    move-object/from16 v18, v0

    #@338
    const/16 v19, 0xc

    #@33a
    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    #@33d
    move-result v8

    #@33e
    .line 202
    .local v8, "currentMinute":I
    move-object/from16 v0, p0

    #@340
    iget-boolean v0, v0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@342
    move/from16 v18, v0

    #@344
    const/16 v19, 0x0

    #@346
    move-object/from16 v0, p0

    #@348
    move/from16 v1, v18

    #@34a
    move/from16 v2, v19

    #@34c
    invoke-direct {v0, v7, v8, v1, v2}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    #@34f
    .line 105
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
    .line 272
    if-eqz p1, :cond_0

    #@9
    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 273
    :cond_0
    return-object p1

    #@10
    .line 278
    :cond_1
    const v6, 0x10100a1

    #@13
    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_3

    #@19
    .line 280
    const/16 v6, 0xa

    #@1b
    .line 279
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@22
    move-result v0

    #@23
    .line 282
    .local v0, "activatedColor":I
    const/16 v6, 0x8

    #@25
    .line 281
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    #@28
    move-result-object v6

    #@29
    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@2c
    move-result v2

    #@2d
    .line 292
    .local v2, "defaultColor":I
    :goto_0
    if-eqz v0, :cond_2

    #@2f
    if-nez v2, :cond_4

    #@31
    .line 294
    :cond_2
    return-object v12

    #@32
    .line 284
    .end local v0    # "activatedColor":I
    .end local v2    # "defaultColor":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@35
    move-result v0

    #@36
    .line 287
    .restart local v0    # "activatedColor":I
    iget-object v6, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@38
    sget-object v7, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    #@3a
    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@3d
    move-result-object v5

    #@3e
    .line 288
    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    #@41
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@44
    move-result v3

    #@45
    .line 289
    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    #@48
    move-result v2

    #@49
    .restart local v2    # "defaultColor":I
    goto :goto_0

    #@4a
    .line 297
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
    .line 298
    .local v4, "stateSet":[[I
    new-array v1, v10, [I

    #@58
    aput v0, v1, v8

    #@5a
    aput v2, v1, v9

    #@5c
    .line 299
    .local v1, "colors":[I
    new-instance v6, Landroid/content/res/ColorStateList;

    #@5e
    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@61
    return-object v6
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "v"    # Landroid/widget/TextView;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    #@4
    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@7
    move-result v0

    #@8
    .line 218
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    #@b
    .line 219
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    #@e
    .line 212
    return-void
.end method

.method private getCurrentItemShowing()I
    .locals 1

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getLocalizedHour(I)I
    .locals 1
    .param p1, "hourOfDay"    # I

    #@0
    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 593
    rem-int/lit8 p1, p1, 0xc

    #@6
    .line 596
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    #@8
    if-nez v0, :cond_1

    #@a
    if-nez p1, :cond_1

    #@c
    .line 598
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    const/16 p1, 0x18

    #@12
    .line 601
    :cond_1
    :goto_0
    return p1

    #@13
    .line 598
    :cond_2
    const/16 p1, 0xc

    #@15
    goto :goto_0
.end method

.method private initialize(IIZI)V
    .locals 0
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    #@0
    .prologue
    .line 326
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@2
    .line 327
    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    #@4
    .line 328
    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@6
    .line 329
    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    #@9
    .line 325
    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    #@0
    .prologue
    .line 646
    array-length v3, p1

    #@1
    .line 647
    .local v3, "lengthAny":I
    if-lez v3, :cond_2

    #@3
    .line 648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v1, v4, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 649
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 650
    .local v0, "c":C
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@12
    .line 651
    aget-char v4, p1, v2

    #@14
    if-ne v0, v4, :cond_0

    #@16
    .line 652
    return v1

    #@17
    .line 650
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 648
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 657
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    const/4 v4, -0x1

    #@1e
    return v4
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 303
    const v3, 0xffffff

    #@3
    and-int v2, p1, v3

    #@5
    .line 304
    .local v2, "srcRgb":I
    shr-int/lit8 v3, p1, 0x18

    #@7
    and-int/lit16 v1, v3, 0xff

    #@9
    .line 305
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
    .line 306
    .local v0, "dstAlpha":I
    shl-int/lit8 v3, v0, 0x18

    #@11
    or-int/2addr v3, v2

    #@12
    return v3
.end method

.method private static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@5
    .line 258
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    #@7
    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    .line 257
    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private onTimeChanged()V
    .locals 4

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@6
    .line 561
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 562
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@c
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@e
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    #@15
    move-result v3

    #@16
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@19
    .line 559
    :cond_0
    return-void
.end method

.method private setAmOrPm(I)V
    .locals 4
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    .line 690
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    #@3
    .line 692
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 693
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@11
    .line 695
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 696
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@17
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@19
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    #@20
    move-result v3

    #@21
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@24
    .line 689
    :cond_0
    return-void
.end method

.method private setAmPmAtStart(Z)V
    .locals 4
    .param p1, "isAmPmAtStart"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 361
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    #@4
    if-eq v1, p1, :cond_2

    #@6
    .line 362
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    #@8
    .line 365
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@10
    .line 366
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 367
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 368
    :cond_0
    if-eqz p1, :cond_3

    #@1e
    .line 369
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    #@21
    .line 370
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@23
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    #@2a
    .line 377
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@2c
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    .line 360
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    #@30
    .line 372
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    #@33
    .line 373
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@38
    move-result v1

    #@39
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    #@3c
    goto :goto_0
.end method

.method private setCurrentItemShowing(IZZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 673
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    #@7
    .line 675
    if-nez p1, :cond_1

    #@9
    .line 676
    if-eqz p3, :cond_0

    #@b
    .line 677
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@d
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@12
    .line 685
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@14
    if-nez p1, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setActivated(Z)V

    #@1a
    .line 686
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@1c
    if-ne p1, v1, :cond_3

    #@1e
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    #@21
    .line 672
    return-void

    #@22
    .line 680
    :cond_1
    if-eqz p3, :cond_0

    #@24
    .line 681
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@26
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@2b
    goto :goto_0

    #@2c
    :cond_2
    move v0, v2

    #@2d
    .line 685
    goto :goto_1

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 686
    goto :goto_2
.end method

.method private setHourInternal(IZZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "isFromPicker"    # Z
    .param p3, "announce"    # Z

    #@0
    .prologue
    .line 390
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 391
    return-void

    #@5
    .line 394
    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@7
    .line 395
    invoke-direct {p0, p1, p3}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@a
    .line 396
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    #@d
    .line 398
    if-nez p2, :cond_1

    #@f
    .line 399
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    #@14
    .line 400
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@16
    const/16 v0, 0xc

    #@18
    if-ge p1, v0, :cond_2

    #@1a
    const/4 v0, 0x0

    #@1b
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    #@1e
    .line 403
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@20
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@23
    .line 404
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    #@26
    .line 389
    return-void

    #@27
    .line 400
    :cond_2
    const/4 v0, 0x1

    #@28
    goto :goto_0
.end method

.method private setMinuteInternal(IZ)V
    .locals 1
    .param p1, "minute"    # I
    .param p2, "isFromPicker"    # Z

    #@0
    .prologue
    .line 433
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 434
    return-void

    #@5
    .line 437
    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    #@7
    .line 438
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    #@b
    .line 440
    if-nez p2, :cond_1

    #@d
    .line 441
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    #@12
    .line 444
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@17
    .line 445
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    #@1a
    .line 432
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    #@0
    .prologue
    .line 661
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    #@2
    if-ne v0, p2, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 660
    :goto_0
    return-void

    #@d
    .line 663
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@f
    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@12
    .line 664
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    #@14
    .line 665
    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    #@16
    goto :goto_0
.end method

.method private tryVibrate()V
    .locals 2

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    #@6
    .line 566
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 3
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    .line 571
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 572
    .local v0, "isAm":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@5
    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    #@8
    .line 573
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@a
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@d
    .line 575
    const/4 v2, 0x1

    #@e
    if-ne p1, v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 576
    .local v1, "isPm":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@13
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    #@16
    .line 577
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@18
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@1b
    .line 570
    return-void

    #@1c
    .line 571
    .end local v0    # "isAm":Z
    .end local v1    # "isPm":Z
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "isAm":Z
    goto :goto_0

    #@1e
    .line 575
    :cond_1
    const/4 v1, 0x0

    #@1f
    .restart local v1    # "isPm":Z
    goto :goto_1
.end method

.method private updateHeaderAmPm()V
    .locals 4

    #@0
    .prologue
    .line 348
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 349
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@6
    const/16 v3, 0x8

    #@8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 347
    :goto_0
    return-void

    #@c
    .line 352
    :cond_0
    iget-object v2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@e
    const-string/jumbo v3, "hm"

    #@11
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 353
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string/jumbo v2, "a"

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .line 354
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    #@1f
    .line 356
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@21
    const/16 v3, 0xc

    #@23
    if-ge v2, v3, :cond_1

    #@25
    const/4 v2, 0x0

    #@26
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    #@29
    goto :goto_0

    #@2a
    :cond_1
    const/4 v2, 0x1

    #@2b
    goto :goto_1
.end method

.method private updateHeaderHour(IZ)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "announce"    # Z

    #@0
    .prologue
    .line 605
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    #@3
    move-result v0

    #@4
    .line 606
    .local v0, "localizedHour":I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@6
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    #@9
    .line 608
    if-eqz p2, :cond_0

    #@b
    .line 609
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@d
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x1

    #@12
    invoke-direct {p0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    #@15
    .line 604
    :cond_0
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .locals 2
    .param p1, "minuteOfHour"    # I
    .param p2, "announce"    # Z

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    #@5
    .line 616
    if-eqz p2, :cond_0

    #@7
    .line 617
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@9
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    #@11
    .line 613
    :cond_0
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 6

    #@0
    .prologue
    .line 630
    iget-object v5, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@2
    .line 631
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    const-string/jumbo v4, "Hm"

    #@9
    .line 630
    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 634
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v4, 0x4

    #@e
    new-array v2, v4, [C

    #@10
    .local v2, "hourFormats":[C
    fill-array-data v2, :array_0

    #@13
    .line 635
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    #@16
    move-result v1

    #@17
    .line 636
    .local v1, "hIndex":I
    const/4 v4, -0x1

    #@18
    if-ne v1, v4, :cond_1

    #@1a
    .line 638
    const-string/jumbo v3, ":"

    #@1d
    .line 642
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    #@1f
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 629
    return-void

    #@23
    .line 631
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hIndex":I
    .end local v2    # "hourFormats":[C
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "hm"

    #@26
    goto :goto_0

    #@27
    .line 640
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hIndex":I
    .restart local v2    # "hourFormats":[C
    :cond_1
    add-int/lit8 v4, v1, 0x1

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v4

    #@2d
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    #@32
    .line 634
    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateHourFormat()V
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x4b

    #@2
    const/16 v11, 0x48

    #@4
    const/4 v9, 0x1

    #@5
    .line 230
    iget-object v10, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    #@7
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@9
    if-eqz v8, :cond_3

    #@b
    const-string/jumbo v8, "Hm"

    #@e
    .line 229
    :goto_0
    invoke-static {v10, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 231
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@15
    move-result v4

    #@16
    .line 232
    .local v4, "lengthPattern":I
    const/4 v7, 0x0

    #@17
    .line 233
    .local v7, "showLeadingZero":Z
    const/4 v2, 0x0

    #@18
    .line 235
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    #@1b
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v1

    #@1f
    .line 237
    .local v1, "c":C
    if-eq v1, v11, :cond_0

    #@21
    const/16 v8, 0x68

    #@23
    if-ne v1, v8, :cond_4

    #@25
    .line 238
    :cond_0
    move v2, v1

    #@26
    .line 239
    .local v2, "hourFormat":C
    add-int/lit8 v8, v3, 0x1

    #@28
    if-ge v8, v4, :cond_1

    #@2a
    add-int/lit8 v8, v3, 0x1

    #@2c
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@2f
    move-result v8

    #@30
    if-ne v1, v8, :cond_1

    #@32
    .line 240
    const/4 v7, 0x1

    #@33
    .line 246
    .end local v1    # "c":C
    .end local v2    # "hourFormat":C
    :cond_1
    iput-boolean v7, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    #@35
    .line 247
    if-eq v2, v12, :cond_2

    #@37
    if-ne v2, v11, :cond_5

    #@39
    :cond_2
    move v8, v9

    #@3a
    :goto_2
    iput-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    #@3c
    .line 250
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    #@3e
    if-eqz v8, :cond_6

    #@40
    const/4 v6, 0x0

    #@41
    .line 251
    .local v6, "minHour":I
    :goto_3
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@43
    if-eqz v8, :cond_7

    #@45
    const/16 v8, 0x17

    #@47
    :goto_4
    add-int v5, v8, v6

    #@49
    .line 252
    .local v5, "maxHour":I
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@4b
    invoke-virtual {v8, v6, v5}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    #@4e
    .line 253
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@50
    iget-boolean v9, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    #@52
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    #@55
    .line 228
    return-void

    #@56
    .line 230
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    .end local v5    # "maxHour":I
    .end local v6    # "minHour":I
    .end local v7    # "showLeadingZero":Z
    :cond_3
    const-string/jumbo v8, "hm"

    #@59
    goto :goto_0

    #@5a
    .line 237
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .local v2, "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    .restart local v7    # "showLeadingZero":Z
    :cond_4
    if-eq v1, v12, :cond_0

    #@5c
    const/16 v8, 0x6b

    #@5e
    if-eq v1, v8, :cond_0

    #@60
    .line 235
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_1

    #@63
    .line 247
    .end local v1    # "c":C
    .end local v2    # "hourFormat":C
    :cond_5
    const/4 v8, 0x0

    #@64
    goto :goto_2

    #@65
    .line 250
    :cond_6
    const/4 v6, 0x1

    #@66
    .restart local v6    # "minHour":I
    goto :goto_3

    #@67
    .line 251
    :cond_7
    const/16 v8, 0xb

    #@69
    goto :goto_4
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@4
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    #@6
    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    #@b
    .line 344
    const/4 v0, 0x0

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    #@10
    .line 342
    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 333
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    #@4
    .line 334
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@6
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@9
    .line 335
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    #@c
    .line 336
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    #@e
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    #@11
    .line 337
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    #@14
    .line 339
    iget-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@19
    .line 332
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 526
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 527
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 506
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getHour()I
    .locals 3

    #@0
    .prologue
    .line 412
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@5
    move-result v0

    #@6
    .line 413
    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 414
    return v0

    #@b
    .line 417
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@d
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 418
    rem-int/lit8 v1, v0, 0xc

    #@16
    add-int/lit8 v1, v1, 0xc

    #@18
    return v1

    #@19
    .line 420
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    #@1b
    return v1
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is24Hour()Z
    .locals 1

    #@0
    .prologue
    .line 480
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 500
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 533
    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 534
    const/16 v0, 0x81

    #@6
    .line 539
    .local v0, "flags":I
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@b
    move-result v4

    #@c
    const/16 v5, 0xb

    #@e
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 540
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    #@16
    move-result v4

    #@17
    const/16 v5, 0xc

    #@19
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 542
    iget-object v3, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    #@1e
    .line 543
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@20
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    #@23
    move-result-wide v4

    #@24
    .line 542
    invoke-static {v3, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 544
    .local v1, "selectedTime":Ljava/lang/String;
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2a
    invoke-virtual {v3}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 545
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    #@32
    .line 546
    .local v2, "selectionMode":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    #@35
    move-result-object v3

    #@36
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, " "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    .line 531
    return-void

    #@52
    .line 536
    .end local v0    # "flags":I
    .end local v1    # "selectedTime":Ljava/lang/String;
    .end local v2    # "selectionMode":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x41

    #@54
    .restart local v0    # "flags":I
    goto :goto_0

    #@55
    .line 545
    .restart local v1    # "selectedTime":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@57
    .restart local v2    # "selectionMode":Ljava/lang/String;
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 517
    instance-of v1, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 518
    nop

    #@6
    nop

    #@7
    .line 519
    .local v0, "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    #@e
    move-result v2

    #@f
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    #@12
    move-result v3

    #@13
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    #@16
    move-result v4

    #@17
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    #@1a
    .line 520
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    #@1f
    .line 516
    .end local v0    # "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 6
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 511
    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    #@2
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    #@9
    move-result v3

    #@a
    .line 512
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24Hour()Z

    #@d
    move-result v4

    #@e
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    #@11
    move-result v5

    #@12
    move-object v1, p1

    #@13
    .line 511
    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    #@16
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@5
    .line 491
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@a
    .line 492
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    #@c
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@f
    .line 493
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@14
    .line 494
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@16
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    #@19
    .line 495
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    #@1b
    .line 489
    return-void
.end method

.method public setHour(I)V
    .locals 2
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 386
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IZZ)V

    #@5
    .line 385
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1
    .param p1, "is24Hour"    # Z

    #@0
    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 465
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    #@6
    .line 466
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    #@c
    .line 468
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    #@f
    .line 469
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@11
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@14
    move-result v0

    #@15
    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    #@18
    .line 463
    :cond_0
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 429
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IZ)V

    #@4
    .line 428
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    #@0
    .prologue
    .line 485
    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@2
    .line 484
    return-void
.end method
