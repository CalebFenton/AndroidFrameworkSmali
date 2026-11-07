.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final blacklist AM:I = 0x0

.field private static final blacklist ATTRS_DISABLED_ALPHA:[I

.field private static final blacklist ATTRS_TEXT_COLOR:[I

.field private static final blacklist DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final blacklist FROM_EXTERNAL_API:I = 0x0

.field private static final blacklist FROM_INPUT_PICKER:I = 0x2

.field private static final blacklist FROM_RADIAL_PICKER:I = 0x1

.field private static final blacklist HOURS_IN_HALF_DAY:I = 0xc

.field private static final blacklist HOUR_INDEX:I = 0x0

.field private static final blacklist MINUTE_INDEX:I = 0x1

.field private static final blacklist PM:I = 0x1


# instance fields
.field private blacklist mAllowAutoAdvance:Z

.field private final blacklist mAmLabel:Landroid/widget/RadioButton;

.field private final blacklist mAmPmLayout:Landroid/view/View;

.field private final blacklist mClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mCommitHour:Ljava/lang/Runnable;

.field private final blacklist mCommitMinute:Ljava/lang/Runnable;

.field private blacklist mCurrentHour:I

.field private blacklist mCurrentMinute:I

.field private final blacklist mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private final blacklist mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private blacklist mHourFormatShowLeadingZero:Z

.field private blacklist mHourFormatStartsAtZero:Z

.field private final blacklist mHourView:Lcom/android/internal/widget/NumericTextView;

.field private blacklist mIs24Hour:Z

.field private blacklist mIsAmPmAtLeft:Z

.field private blacklist mIsAmPmAtTop:Z

.field private blacklist mIsEnabled:Z

.field private final blacklist mMinuteView:Lcom/android/internal/widget/NumericTextView;

.field private final blacklist mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final blacklist mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final blacklist mPmLabel:Landroid/widget/RadioButton;

.field private blacklist mRadialPickerModeEnabled:Z

.field private final blacklist mRadialTimePickerHeader:Landroid/view/View;

.field private final blacklist mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final blacklist mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

.field private final blacklist mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private final blacklist mSelectHours:Ljava/lang/String;

.field private final blacklist mSelectMinutes:Ljava/lang/String;

.field private final blacklist mSeparatorView:Landroid/widget/TextView;

.field private final blacklist mTempCalendar:Ljava/util/Calendar;

.field private final blacklist mTextInputPickerHeader:Landroid/view/View;

.field private final blacklist mTextInputPickerModeEnabledDescription:Ljava/lang/String;

.field private final blacklist mTextInputPickerView:Landroid/widget/TextInputTimePickerView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowAutoAdvance(Landroid/widget/TimePickerClockDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCommitHour(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCommitMinute(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHourView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoggleRadialPickerMode(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtryVibrate(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    const v0, 0x1010098

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .line 81
    const v0, 0x1010033

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 96
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 111
    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 118
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    .line 120
    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    .line 892
    new-instance v7, Landroid/widget/TimePickerClockDelegate$2;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 921
    new-instance v7, Landroid/widget/TimePickerClockDelegate$3;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 939
    new-instance v7, Landroid/widget/TimePickerClockDelegate$4;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 975
    new-instance v7, Landroid/widget/TimePickerClockDelegate$5;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 982
    new-instance v7, Landroid/widget/TimePickerClockDelegate$6;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 989
    new-instance v7, Landroid/widget/TimePickerClockDelegate$7;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$7;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1016
    new-instance v7, Landroid/widget/TimePickerClockDelegate$8;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$8;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 131
    iget-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v7, v2, v8, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 133
    .local v7, "a":Landroid/content/res/TypedArray;
    iget-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 135
    .local v8, "inflater":Landroid/view/LayoutInflater;
    iget-object v9, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 137
    .local v9, "res":Landroid/content/res/Resources;
    const v10, 0x1040994

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 138
    const v11, 0x1040998

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 140
    const v12, 0x1090171

    const/16 v13, 0xc

    invoke-virtual {v7, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 142
    .local v12, "layoutResourceId":I
    move-object/from16 v14, p1

    invoke-virtual {v8, v12, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 143
    .local v15, "mainView":Landroid/view/View;
    invoke-virtual {v15, v6}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 144
    const v13, 0x1020599

    invoke-virtual {v15, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    .line 145
    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    new-instance v6, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate-IA;)V

    invoke-virtual {v13, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    const v6, 0x1020365

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/NumericTextView;

    iput-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    .line 149
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    .line 152
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    new-instance v13, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    invoke-direct {v13, v1, v10}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 154
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityLiveRegion(I)V

    .line 155
    const v6, 0x1020506

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 156
    const v6, 0x10203f9

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/NumericTextView;

    iput-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    .line 157
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    .line 160
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    new-instance v10, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v13, 0x1040998

    invoke-direct {v10, v1, v13}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 162
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityLiveRegion(I)V

    .line 163
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    const/16 v10, 0x3b

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v10}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    .line 166
    const v6, 0x1020213

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 167
    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    new-instance v10, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    invoke-direct {v10, v11}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate-IA;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    invoke-static {v1}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "amPmStrings":[Ljava/lang/String;
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v13, 0x1020211

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 171
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    const/16 v16, 0x0

    aget-object v13, v6, v16

    invoke-static {v13}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 175
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const v13, 0x1020482

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 176
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    aget-object v13, v6, v5

    invoke-static {v13}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 183
    const/4 v10, 0x0

    .line 186
    .local v10, "headerTextColor":Landroid/content/res/ColorStateList;
    const/4 v13, 0x0

    invoke-virtual {v7, v5, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 188
    .local v11, "timeHeaderTextAppearance":I
    if-eqz v11, :cond_18c

    .line 189
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    move-object/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "amPmStrings":[Ljava/lang/String;
    .local v17, "amPmStrings":[Ljava/lang/String;
    invoke-virtual {v5, v6, v1, v13, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 191
    .local v1, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 192
    .local v5, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-direct {v0, v5}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 193
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_18e

    .line 188
    .end local v1    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v5    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v17    # "amPmStrings":[Ljava/lang/String;
    .restart local v6    # "amPmStrings":[Ljava/lang/String;
    :cond_18c
    move-object/from16 v17, v6

    .line 196
    .end local v6    # "amPmStrings":[Ljava/lang/String;
    .restart local v17    # "amPmStrings":[Ljava/lang/String;
    :goto_18e
    const/16 v1, 0xb

    if-nez v10, :cond_196

    .line 197
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 200
    :cond_196
    const v5, 0x1020382

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 202
    if-eqz v10, :cond_1ba

    .line 203
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 205
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 206
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_1ba
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_1d3

    .line 212
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_1d3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    const v5, 0x102049f

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadialTimePickerView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    .line 221
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v5, v2, v3, v4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 222
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 224
    const v5, 0x102038e

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextInputTimePickerView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    .line 225
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextInputTimePickerView;->setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 227
    nop

    .line 228
    const v5, 0x10205a8

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 229
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/TimePickerClockDelegate$1;

    invoke-direct {v6, v0}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040a47

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040a48

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    .line 240
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 242
    invoke-direct {v0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 245
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 246
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 247
    .local v1, "currentHour":I
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 248
    .local v5, "currentMinute":I
    iget-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    const/4 v13, 0x0

    invoke-direct {v0, v1, v5, v6, v13}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 249
    return-void
.end method

.method private blacklist applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 357
    if-eqz p1, :cond_61

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_61

    .line 363
    :cond_c
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 364
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 366
    .local v1, "activatedColor":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .local v3, "defaultColor":I
    goto :goto_46

    .line 369
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 372
    .restart local v1    # "activatedColor":I
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 373
    .local v3, "ta":Landroid/content/res/TypedArray;
    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 374
    .local v4, "disabledAlpha":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    invoke-direct {p0, v1, v4}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    move-result v5

    move v3, v5

    .line 378
    .end local v4    # "disabledAlpha":F
    .local v3, "defaultColor":I
    :goto_46
    if-eqz v1, :cond_5f

    if-nez v3, :cond_4b

    goto :goto_5f

    .line 383
    :cond_4b
    filled-new-array {v0}, [I

    move-result-object v0

    new-array v2, v2, [I

    filled-new-array {v0, v2}, [[I

    move-result-object v0

    .line 384
    .local v0, "stateSet":[[I
    filled-new-array {v1, v3}, [I

    move-result-object v2

    .line 385
    .local v2, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 380
    .end local v0    # "stateSet":[[I
    .end local v2    # "colors":[I
    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return-object v0

    .line 358
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_61
    :goto_61
    return-object p1
.end method

.method private static blacklist ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .registers 2
    .param p0, "v"    # Landroid/widget/TextView;

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 295
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 296
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 297
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 298
    return-void
.end method

.method private blacklist getCurrentItemShowing()I
    .registers 2

    .line 730
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private static blacklist getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "dateTimePattern"    # Ljava/lang/String;

    .line 823
    const-string v0, ":"

    .line 824
    .local v0, "defaultSeparator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 825
    .local v1, "foundHourPattern":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 826
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_40

    .line 845
    if-nez v1, :cond_34

    .line 846
    goto :goto_31

    .line 832
    :sswitch_14
    const/4 v1, 0x1

    .line 833
    goto :goto_31

    .line 837
    :sswitch_16
    if-nez v1, :cond_19

    .line 838
    goto :goto_31

    .line 840
    :cond_19
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 841
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 842
    .local v3, "quotedSubstring":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 843
    .local v5, "quotedTextLength":I
    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 835
    .end local v3    # "quotedSubstring":Landroid/text/SpannableStringBuilder;
    .end local v5    # "quotedTextLength":I
    :sswitch_30
    nop

    .line 825
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 848
    :cond_34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 851
    .end local v2    # "i":I
    :cond_3d
    const-string v2, ":"

    return-object v2

    :sswitch_data_40
    .sparse-switch
        0x20 -> :sswitch_30
        0x27 -> :sswitch_16
        0x48 -> :sswitch_14
        0x4b -> :sswitch_14
        0x68 -> :sswitch_14
        0x6b -> :sswitch_14
    .end sparse-switch
.end method

.method private blacklist getLocalizedHour(I)I
    .registers 3
    .param p1, "hourOfDay"    # I

    .line 771
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_6

    .line 773
    rem-int/lit8 p1, p1, 0xc

    .line 776
    :cond_6
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v0, :cond_16

    if-nez p1, :cond_16

    .line 778
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x18

    goto :goto_15

    :cond_13
    const/16 v0, 0xc

    :goto_15
    move p1, v0

    .line 781
    :cond_16
    return p1
.end method

.method private blacklist initialize(IIZI)V
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .line 412
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 413
    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 414
    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 415
    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 416
    return-void
.end method

.method private static blacklist lastIndexOfAny(Ljava/lang/String;[C)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .line 855
    array-length v0, p1

    .line 856
    .local v0, "lengthAny":I
    if-lez v0, :cond_1d

    .line 857
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 858
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 859
    .local v2, "c":C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    if-ge v3, v0, :cond_1a

    .line 860
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_17

    .line 861
    return v1

    .line 859
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 857
    .end local v2    # "c":C
    .end local v3    # "j":I
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 866
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist multiplyAlphaComponent(IF)I
    .registers 7
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 389
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 390
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 391
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 392
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method static final blacklist obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .line 342
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onTimeChanged()V
    .registers 5

    .line 737
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 738
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_19

    .line 739
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 741
    :cond_19
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_2c

    .line 742
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 744
    :cond_2c
    return-void
.end method

.method private blacklist setAmOrPm(I)V
    .registers 6
    .param p1, "amOrPm"    # I

    .line 880
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 882
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 883
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 884
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 885
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_27

    .line 886
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 889
    :cond_27
    return-void
.end method

.method private blacklist setAmPmStart(Z)V
    .registers 9
    .param p1, "isAmPmAtStart"    # Z

    .line 452
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5d

    .line 455
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_5d

    .line 481
    :cond_17
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_25

    .line 482
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_a6

    .line 484
    :cond_25
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    if-ne v2, p1, :cond_2a

    .line 486
    return-void

    .line 490
    :cond_2a
    if-eqz p1, :cond_37

    .line 491
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    .line 492
    .local v2, "otherViewId":I
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 493
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_41

    .line 495
    .end local v2    # "otherViewId":I
    :cond_37
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    .line 496
    .restart local v2    # "otherViewId":I
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 497
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 501
    :goto_41
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 502
    .local v1, "otherView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 503
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 504
    .local v4, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 505
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 506
    .local v6, "right":I
    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 508
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    goto :goto_a6

    .line 456
    .end local v1    # "otherView":Landroid/view/View;
    .end local v2    # "otherViewId":I
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    :cond_5d
    :goto_5d
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 459
    .local v2, "margin":I
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-nez v4, :cond_77

    .line 460
    move v4, p1

    .local v4, "isAmPmAtLeft":Z
    goto :goto_79

    .line 462
    .end local v4    # "isAmPmAtLeft":Z
    :cond_77
    xor-int/lit8 v4, p1, 0x1

    .line 465
    .restart local v4    # "isAmPmAtLeft":Z
    :goto_79
    if-eqz v4, :cond_88

    .line 466
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 467
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_94

    .line 469
    :cond_88
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 470
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 473
    :goto_94
    if-eqz p1, :cond_9d

    .line 474
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 475
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_a3

    .line 477
    :cond_9d
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 478
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 480
    :goto_a3
    iput-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    .line 481
    .end local v2    # "margin":I
    .end local v4    # "isAmPmAtLeft":Z
    nop

    .line 511
    :cond_a6
    :goto_a6
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    return-void
.end method

.method private blacklist setCurrentItemShowing(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z

    .line 873
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 875
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    .line 876
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    if-ne p1, v2, :cond_16

    move v1, v2

    :cond_16
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    .line 877
    return-void
.end method

.method private blacklist setHourInternal(IIZZ)V
    .registers 8
    .param p1, "hour"    # I
    .param p2, "source"    # I
    .param p3, "announce"    # Z
    .param p4, "notify"    # Z

    .line 532
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_5

    .line 533
    return-void

    .line 536
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    .line 537
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 538
    invoke-direct {p0, p1, p3}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 539
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 541
    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    .line 542
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 543
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    .line 545
    :cond_22
    const/4 v0, 0x2

    if-eq p2, v0, :cond_28

    .line 546
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 549
    :cond_28
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 550
    if-eqz p4, :cond_32

    .line 551
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 553
    :cond_32
    return-void
.end method

.method private blacklist setMinuteInternal(IIZ)V
    .registers 5
    .param p1, "minute"    # I
    .param p2, "source"    # I
    .param p3, "notify"    # Z

    .line 581
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_5

    .line 582
    return-void

    .line 585
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    .line 586
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 587
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 589
    if-eq p2, v0, :cond_15

    .line 590
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 592
    :cond_15
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    .line 593
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 596
    :cond_1b
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 597
    if-eqz p3, :cond_25

    .line 598
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 600
    :cond_25
    return-void
.end method

.method private blacklist toggleRadialPickerMode()V
    .registers 4

    .line 252
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    .line 253
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x10801a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 258
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 260
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_6b

    .line 262
    :cond_2d
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x10801ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 267
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 270
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 271
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_68

    .line 272
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 274
    :cond_68
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 276
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_6b
    return-void
.end method

.method private blacklist tryVibrate()V
    .registers 3

    .line 747
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    .line 748
    return-void
.end method

.method private blacklist updateAmPmLabelStates(I)V
    .registers 6
    .param p1, "amOrPm"    # I

    .line 751
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 752
    .local v2, "isAm":Z
    :goto_7
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 753
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 755
    if-ne p1, v1, :cond_14

    move v0, v1

    .line 756
    .local v0, "isPm":Z
    :cond_14
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 757
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 758
    return-void
.end method

.method private blacklist updateHeaderAmPm()V
    .registers 5

    .line 440
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_c

    .line 441
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 444
    :cond_c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 446
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmStart(Z)V

    .line 447
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_25

    const/4 v2, 0x0

    goto :goto_26

    :cond_25
    const/4 v2, 0x1

    :goto_26
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 449
    .end local v0    # "dateTimePattern":Ljava/lang/String;
    .end local v1    # "isAmPmAtStart":Z
    :goto_29
    return-void
.end method

.method private blacklist updateHeaderHour(IZ)V
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "announce"    # Z

    .line 785
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    .line 786
    .local v0, "localizedHour":I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 787
    return-void
.end method

.method private blacklist updateHeaderMinute(IZ)V
    .registers 4
    .param p1, "minuteOfHour"    # I
    .param p2, "announce"    # Z

    .line 790
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 791
    return-void
.end method

.method private blacklist updateHeaderSeparator()V
    .registers 4

    .line 802
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 803
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_9

    const-string v1, "Hm"

    goto :goto_b

    :cond_9
    const-string v1, "hm"

    .line 802
    :goto_b
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "separatorText":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v2, v1}, Landroid/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method private blacklist updateHourFormat()V
    .registers 11

    .line 307
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 308
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_9

    const-string v1, "Hm"

    goto :goto_b

    :cond_9
    const-string v1, "hm"

    .line 307
    :goto_b
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 310
    .local v1, "lengthPattern":I
    const/4 v2, 0x0

    .line 311
    .local v2, "showLeadingZero":Z
    const/4 v3, 0x0

    .line 313
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    const/16 v5, 0x48

    const/16 v6, 0x4b

    if-ge v4, v1, :cond_3e

    .line 314
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 315
    .local v7, "c":C
    if-eq v7, v5, :cond_30

    const/16 v8, 0x68

    if-eq v7, v8, :cond_30

    if-eq v7, v6, :cond_30

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_2d

    goto :goto_30

    .line 313
    .end local v7    # "c":C
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 316
    .restart local v7    # "c":C
    :cond_30
    :goto_30
    move v3, v7

    .line 317
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_3e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3e

    .line 318
    const/4 v2, 0x1

    .line 324
    .end local v4    # "i":I
    .end local v7    # "c":C
    :cond_3e
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 325
    const/4 v4, 0x1

    if-eq v3, v6, :cond_48

    if-ne v3, v5, :cond_46

    goto :goto_48

    :cond_46
    const/4 v5, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    move v5, v4

    :goto_49
    iput-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 328
    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    xor-int/2addr v4, v5

    .line 329
    .local v4, "minHour":I
    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v5, :cond_55

    const/16 v5, 0x17

    goto :goto_57

    :cond_55
    const/16 v5, 0xb

    :goto_57
    add-int/2addr v5, v4

    .line 330
    .local v5, "maxHour":I
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    .line 331
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-boolean v7, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 333
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "digits":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 335
    .local v7, "maxCharLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_70
    const/16 v9, 0xa

    if-ge v8, v9, :cond_81

    .line 336
    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 335
    add-int/lit8 v8, v8, 0x1

    goto :goto_70

    .line 338
    .end local v8    # "i":I
    :cond_81
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    mul-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextInputTimePickerView;->setHourFormat(I)V

    .line 339
    return-void
.end method

.method private blacklist updateRadialPicker(I)V
    .registers 6
    .param p1, "index"    # I

    .line 435
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZ)V

    .line 437
    return-void
.end method

.method private blacklist updateTextInputPicker()V
    .registers 7

    .line 430
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 431
    iget v3, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_12

    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    const/4 v3, 0x1

    :goto_13
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 430
    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    .line 432
    return-void
.end method

.method private blacklist updateUI(I)V
    .registers 4
    .param p1, "index"    # I

    .line 419
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 420
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 421
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 422
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 423
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 424
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 426
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 427
    return-void
.end method


# virtual methods
.method public blacklist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 675
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAmView()Landroid/view/View;
    .registers 2

    .line 716
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public blacklist getBaseline()I
    .registers 2

    .line 655
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getHour()I
    .registers 4

    .line 560
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 561
    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_b

    .line 562
    return v0

    .line 565
    :cond_b
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 566
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    .line 568
    :cond_19
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public blacklist getHourView()Landroid/view/View;
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public blacklist getMinute()I
    .registers 2

    .line 607
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public blacklist getMinuteView()Landroid/view/View;
    .registers 2

    .line 709
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public blacklist getPmView()Landroid/view/View;
    .registers 2

    .line 723
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public blacklist is24Hour()Z
    .registers 2

    .line 634
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 649
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public blacklist onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 681
    const/4 v0, 0x1

    .line 682
    .local v0, "flags":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_8

    .line 683
    or-int/lit16 v0, v0, 0x80

    goto :goto_a

    .line 685
    :cond_8
    or-int/lit8 v0, v0, 0x40

    .line 688
    :goto_a
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 689
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 691
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 692
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 691
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "selectedTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_37

    .line 694
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    goto :goto_39

    :cond_37
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 695
    .local v2, "selectionMode":Ljava/lang/String;
    :goto_39
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 666
    instance-of v0, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_1f

    .line 667
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 668
    .local v0, "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 669
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 671
    .end local v0    # "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_1f
    return-void
.end method

.method public blacklist onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 8
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 660
    new-instance v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 661
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v1, p1

    .end local p1    # "superState":Landroid/os/Parcelable;
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 660
    return-object v0
.end method

.method public blacklist setDate(II)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 516
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    .line 517
    invoke-direct {p0, p2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    .line 519
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 520
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 639
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    .line 640
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    .line 641
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 642
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 644
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 645
    return-void
.end method

.method public blacklist setHour(I)V
    .registers 4
    .param p1, "hour"    # I

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    .line 528
    return-void
.end method

.method public blacklist setIs24Hour(Z)V
    .registers 3
    .param p1, "is24Hour"    # Z

    .line 618
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_18

    .line 619
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 620
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 622
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 623
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 625
    :cond_18
    return-void
.end method

.method public blacklist setMinute(I)V
    .registers 4
    .param p1, "minute"    # I

    .line 577
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    .line 578
    return-void
.end method

.method public blacklist validateInput()Z
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
