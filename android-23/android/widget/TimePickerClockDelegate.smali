.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$SavedState;,
        Landroid/widget/TimePickerClockDelegate$Node;,
        Landroid/widget/TimePickerClockDelegate$1;,
        Landroid/widget/TimePickerClockDelegate$2;,
        Landroid/widget/TimePickerClockDelegate$3;
    }
.end annotation


# static fields
.field static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimePickerClockDelegate"


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private final mAmLabel:Landroid/widget/CheckedTextView;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mAmText:Ljava/lang/String;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mHeaderView:Landroid/view/View;

.field private final mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsAmPmAtStart:Z

.field private mIsEnabled:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

.field private final mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private final mPmLabel:Landroid/widget/CheckedTextView;

.field private final mPmText:Ljava/lang/String;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/TimePickerClockDelegate;)Landroid/widget/RadialTimePickerView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TimePickerClockDelegate;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/TimePickerClockDelegate;I)Z
    .locals 1
    .param p1, "keyCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->processKeyUp(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->finishKbMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TimePickerClockDelegate;I)V
    .locals 0
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/TimePickerClockDelegate;IZZ)V
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

.method static synthetic -wrap5(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

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
    .line 69
    new-array v0, v3, [I

    #@4
    .line 70
    const v1, 0x1010098

    #@7
    aput v1, v0, v2

    #@9
    .line 69
    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    #@b
    .line 71
    new-array v0, v3, [I

    #@d
    .line 72
    const v1, 0x1010033

    #@10
    aput v1, v0, v2

    #@12
    .line 71
    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    #@14
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 23
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    #@0
    .prologue
    .line 122
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    #@3
    .line 93
    const/16 v19, 0x1

    #@5
    move/from16 v0, v19

    #@7
    move-object/from16 v1, p0

    #@9
    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    #@b
    .line 105
    new-instance v19, Ljava/util/ArrayList;

    #@d
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@10
    move-object/from16 v0, v19

    #@12
    move-object/from16 v1, p0

    #@14
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@16
    .line 1327
    new-instance v19, Landroid/widget/TimePickerClockDelegate$1;

    #@18
    move-object/from16 v0, v19

    #@1a
    move-object/from16 v1, p0

    #@1c
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@1f
    move-object/from16 v0, v19

    #@21
    move-object/from16 v1, p0

    #@23
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@25
    .line 1354
    new-instance v19, Landroid/widget/TimePickerClockDelegate$2;

    #@27
    move-object/from16 v0, v19

    #@29
    move-object/from16 v1, p0

    #@2b
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@2e
    move-object/from16 v0, v19

    #@30
    move-object/from16 v1, p0

    #@32
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    #@34
    .line 1364
    new-instance v19, Landroid/widget/TimePickerClockDelegate$3;

    #@36
    move-object/from16 v0, v19

    #@38
    move-object/from16 v1, p0

    #@3a
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    #@3d
    move-object/from16 v0, v19

    #@3f
    move-object/from16 v1, p0

    #@41
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    #@43
    .line 125
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    #@47
    move-object/from16 v19, v0

    #@49
    .line 126
    sget-object v20, Lcom/android/internal/R$styleable;->TimePicker:[I

    #@4b
    .line 125
    move-object/from16 v0, v19

    #@4d
    move-object/from16 v1, p3

    #@4f
    move-object/from16 v2, v20

    #@51
    move/from16 v3, p4

    #@53
    move/from16 v4, p5

    #@55
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@58
    move-result-object v5

    #@59
    .line 127
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    #@5d
    move-object/from16 v19, v0

    #@5f
    .line 128
    const-string/jumbo v20, "layout_inflater"

    #@62
    .line 127
    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@65
    move-result-object v12

    #@66
    check-cast v12, Landroid/view/LayoutInflater;

    #@68
    .line 129
    .local v12, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    #@6c
    move-object/from16 v19, v0

    #@6e
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@71
    move-result-object v16

    #@72
    .line 131
    .local v16, "res":Landroid/content/res/Resources;
    const v19, 0x1040559

    #@75
    move-object/from16 v0, v16

    #@77
    move/from16 v1, v19

    #@79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7c
    move-result-object v19

    #@7d
    move-object/from16 v0, v19

    #@7f
    move-object/from16 v1, p0

    #@81
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    #@83
    .line 132
    const v19, 0x104055a

    #@86
    move-object/from16 v0, v16

    #@88
    move/from16 v1, v19

    #@8a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@8d
    move-result-object v19

    #@8e
    move-object/from16 v0, v19

    #@90
    move-object/from16 v1, p0

    #@92
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@94
    .line 134
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    .line 135
    .local v7, "amPmStrings":[Ljava/lang/String;
    const/16 v19, 0x0

    #@9a
    aget-object v19, v7, v19

    #@9c
    move-object/from16 v0, v19

    #@9e
    move-object/from16 v1, p0

    #@a0
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmText:Ljava/lang/String;

    #@a2
    .line 136
    const/16 v19, 0x1

    #@a4
    aget-object v19, v7, v19

    #@a6
    move-object/from16 v0, v19

    #@a8
    move-object/from16 v1, p0

    #@aa
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmText:Ljava/lang/String;

    #@ac
    .line 138
    const/16 v19, 0xa

    #@ae
    .line 139
    const v20, 0x10900f4

    #@b1
    .line 138
    move/from16 v0, v19

    #@b3
    move/from16 v1, v20

    #@b5
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b8
    move-result v13

    #@b9
    .line 140
    .local v13, "layoutResourceId":I
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v12, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@be
    move-result-object v15

    #@bf
    .line 142
    .local v15, "mainView":Landroid/view/View;
    const v19, 0x10203e9

    #@c2
    move/from16 v0, v19

    #@c4
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@c7
    move-result-object v19

    #@c8
    move-object/from16 v0, v19

    #@ca
    move-object/from16 v1, p0

    #@cc
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    #@ce
    .line 145
    const v19, 0x10203ea

    #@d1
    move/from16 v0, v19

    #@d3
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@d6
    move-result-object v19

    #@d7
    check-cast v19, Landroid/widget/TextView;

    #@d9
    move-object/from16 v0, v19

    #@db
    move-object/from16 v1, p0

    #@dd
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@df
    .line 146
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@e3
    move-object/from16 v19, v0

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@e9
    move-object/from16 v20, v0

    #@eb
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@ee
    .line 147
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@f2
    move-object/from16 v19, v0

    #@f4
    .line 148
    new-instance v20, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    #@f6
    const v21, 0x1040559

    #@f9
    move-object/from16 v0, v20

    #@fb
    move-object/from16 v1, p2

    #@fd
    move/from16 v2, v21

    #@ff
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@102
    .line 147
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@105
    .line 149
    const v19, 0x10203eb

    #@108
    move/from16 v0, v19

    #@10a
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@10d
    move-result-object v19

    #@10e
    check-cast v19, Landroid/widget/TextView;

    #@110
    move-object/from16 v0, v19

    #@112
    move-object/from16 v1, p0

    #@114
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    #@116
    .line 150
    const v19, 0x10203ec

    #@119
    move/from16 v0, v19

    #@11b
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11e
    move-result-object v19

    #@11f
    check-cast v19, Landroid/widget/TextView;

    #@121
    move-object/from16 v0, v19

    #@123
    move-object/from16 v1, p0

    #@125
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@127
    .line 151
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@12b
    move-object/from16 v19, v0

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@131
    move-object/from16 v20, v0

    #@133
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@136
    .line 152
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@13a
    move-object/from16 v19, v0

    #@13c
    .line 153
    new-instance v20, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    #@13e
    const v21, 0x104055a

    #@141
    move-object/from16 v0, v20

    #@143
    move-object/from16 v1, p2

    #@145
    move/from16 v2, v21

    #@147
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    #@14a
    .line 152
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@14d
    .line 157
    move-object/from16 v0, p0

    #@14f
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@151
    move-object/from16 v19, v0

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@157
    move-object/from16 v20, v0

    #@159
    const/16 v21, 0x18

    #@15b
    move-object/from16 v0, p0

    #@15d
    move-object/from16 v1, v20

    #@15f
    move/from16 v2, v21

    #@161
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->computeStableWidth(Landroid/widget/TextView;I)I

    #@164
    move-result v20

    #@165
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMinWidth(I)V

    #@168
    .line 158
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@16c
    move-object/from16 v19, v0

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@172
    move-object/from16 v20, v0

    #@174
    const/16 v21, 0x3c

    #@176
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, v20

    #@17a
    move/from16 v2, v21

    #@17c
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->computeStableWidth(Landroid/widget/TextView;I)I

    #@17f
    move-result v20

    #@180
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMinWidth(I)V

    #@183
    .line 160
    new-instance v19, Landroid/text/SpannableStringBuilder;

    #@185
    invoke-direct/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@188
    .line 161
    const/16 v20, 0x0

    #@18a
    aget-object v20, v7, v20

    #@18c
    new-instance v21, Landroid/text/style/TtsSpan$VerbatimBuilder;

    #@18e
    const/16 v22, 0x0

    #@190
    aget-object v22, v7, v22

    #@192
    invoke-direct/range {v21 .. v22}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    #@195
    invoke-virtual/range {v21 .. v21}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    #@198
    move-result-object v21

    #@199
    const/16 v22, 0x0

    #@19b
    .line 160
    invoke-virtual/range {v19 .. v22}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    #@19e
    move-result-object v6

    #@19f
    .line 164
    .local v6, "amLabel":Landroid/text/SpannableStringBuilder;
    const v19, 0x10203ed

    #@1a2
    move/from16 v0, v19

    #@1a4
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a7
    move-result-object v19

    #@1a8
    move-object/from16 v0, v19

    #@1aa
    move-object/from16 v1, p0

    #@1ac
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@1ae
    .line 165
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@1b2
    move-object/from16 v19, v0

    #@1b4
    const v20, 0x10203ee

    #@1b7
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1ba
    move-result-object v19

    #@1bb
    check-cast v19, Landroid/widget/CheckedTextView;

    #@1bd
    move-object/from16 v0, v19

    #@1bf
    move-object/from16 v1, p0

    #@1c1
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@1c3
    .line 166
    move-object/from16 v0, p0

    #@1c5
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@1c7
    move-object/from16 v19, v0

    #@1c9
    const/16 v20, 0x0

    #@1cb
    aget-object v20, v7, v20

    #@1cd
    invoke-static/range {v20 .. v20}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@1d0
    move-result-object v20

    #@1d1
    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    #@1d4
    .line 167
    move-object/from16 v0, p0

    #@1d6
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@1d8
    move-object/from16 v19, v0

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@1de
    move-object/from16 v20, v0

    #@1e0
    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1e3
    .line 168
    move-object/from16 v0, p0

    #@1e5
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@1e7
    move-object/from16 v19, v0

    #@1e9
    const v20, 0x10203ef

    #@1ec
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1ef
    move-result-object v19

    #@1f0
    check-cast v19, Landroid/widget/CheckedTextView;

    #@1f2
    move-object/from16 v0, v19

    #@1f4
    move-object/from16 v1, p0

    #@1f6
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@1f8
    .line 169
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@1fc
    move-object/from16 v19, v0

    #@1fe
    const/16 v20, 0x1

    #@200
    aget-object v20, v7, v20

    #@202
    invoke-static/range {v20 .. v20}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@205
    move-result-object v20

    #@206
    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    #@209
    .line 170
    move-object/from16 v0, p0

    #@20b
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@20d
    move-object/from16 v19, v0

    #@20f
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    #@213
    move-object/from16 v20, v0

    #@215
    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@218
    .line 175
    const/4 v11, 0x0

    #@219
    .line 179
    .local v11, "headerTextColor":Landroid/content/res/ColorStateList;
    const/16 v19, 0x1

    #@21b
    const/16 v20, 0x0

    #@21d
    .line 178
    move/from16 v0, v19

    #@21f
    move/from16 v1, v20

    #@221
    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@224
    move-result v18

    #@225
    .line 180
    .local v18, "timeHeaderTextAppearance":I
    if-eqz v18, :cond_0

    #@227
    .line 181
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    #@22b
    move-object/from16 v19, v0

    #@22d
    .line 182
    sget-object v20, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    #@22f
    .line 181
    const/16 v21, 0x0

    #@231
    .line 182
    const/16 v22, 0x0

    #@233
    .line 181
    move-object/from16 v0, v19

    #@235
    move-object/from16 v1, v21

    #@237
    move-object/from16 v2, v20

    #@239
    move/from16 v3, v22

    #@23b
    move/from16 v4, v18

    #@23d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@240
    move-result-object v17

    #@241
    .line 183
    .local v17, "textAppearance":Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    #@243
    move-object/from16 v0, v17

    #@245
    move/from16 v1, v19

    #@247
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@24a
    move-result-object v14

    #@24b
    .line 184
    .local v14, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    #@24d
    invoke-direct {v0, v14}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@250
    move-result-object v11

    #@251
    .line 185
    .local v11, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    #@254
    .line 188
    .end local v11    # "headerTextColor":Landroid/content/res/ColorStateList;
    .end local v14    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .end local v17    # "textAppearance":Landroid/content/res/TypedArray;
    :cond_0
    if-nez v11, :cond_1

    #@256
    .line 189
    const/16 v19, 0xb

    #@258
    move/from16 v0, v19

    #@25a
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@25d
    move-result-object v11

    #@25e
    .line 192
    :cond_1
    if-eqz v11, :cond_2

    #@260
    .line 193
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@264
    move-object/from16 v19, v0

    #@266
    move-object/from16 v0, v19

    #@268
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@26b
    .line 194
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    #@26f
    move-object/from16 v19, v0

    #@271
    move-object/from16 v0, v19

    #@273
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@276
    .line 195
    move-object/from16 v0, p0

    #@278
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@27a
    move-object/from16 v19, v0

    #@27c
    move-object/from16 v0, v19

    #@27e
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@281
    .line 196
    move-object/from16 v0, p0

    #@283
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@285
    move-object/from16 v19, v0

    #@287
    move-object/from16 v0, v19

    #@289
    invoke-virtual {v0, v11}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@28c
    .line 197
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@290
    move-object/from16 v19, v0

    #@292
    move-object/from16 v0, v19

    #@294
    invoke-virtual {v0, v11}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@297
    .line 201
    :cond_2
    const/16 v19, 0x0

    #@299
    move/from16 v0, v19

    #@29b
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@29e
    move-result v19

    #@29f
    if-eqz v19, :cond_3

    #@2a1
    .line 202
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    #@2a5
    move-object/from16 v19, v0

    #@2a7
    const/16 v20, 0x0

    #@2a9
    move/from16 v0, v20

    #@2ab
    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2ae
    move-result-object v20

    #@2af
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@2b2
    .line 205
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    #@2b5
    .line 208
    const v19, 0x10203f5

    #@2b8
    .line 207
    move/from16 v0, v19

    #@2ba
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2bd
    move-result-object v19

    #@2be
    check-cast v19, Landroid/widget/RadialTimePickerView;

    #@2c0
    move-object/from16 v0, v19

    #@2c2
    move-object/from16 v1, p0

    #@2c4
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2c6
    .line 210
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->setupListeners()V

    #@2c9
    .line 212
    const/16 v19, 0x1

    #@2cb
    move/from16 v0, v19

    #@2cd
    move-object/from16 v1, p0

    #@2cf
    iput-boolean v0, v1, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    #@2d1
    .line 215
    const v19, 0x104055f

    #@2d4
    move-object/from16 v0, v16

    #@2d6
    move/from16 v1, v19

    #@2d8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2db
    move-result-object v19

    #@2dc
    move-object/from16 v0, v19

    #@2de
    move-object/from16 v1, p0

    #@2e0
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    #@2e2
    .line 216
    const v19, 0x104055d

    #@2e5
    move-object/from16 v0, v16

    #@2e7
    move/from16 v1, v19

    #@2e9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2ec
    move-result-object v19

    #@2ed
    move-object/from16 v0, v19

    #@2ef
    move-object/from16 v1, p0

    #@2f1
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    #@2f3
    .line 217
    move-object/from16 v0, p0

    #@2f5
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    #@2f7
    move-object/from16 v19, v0

    #@2f9
    const/16 v20, 0x0

    #@2fb
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    #@2fe
    move-result v19

    #@2ff
    move/from16 v0, v19

    #@301
    move-object/from16 v1, p0

    #@303
    iput-char v0, v1, Landroid/widget/TimePickerClockDelegate;->mPlaceholderText:C

    #@305
    .line 218
    const/16 v19, -0x1

    #@307
    move/from16 v0, v19

    #@309
    move-object/from16 v1, p0

    #@30b
    iput v0, v1, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    #@30d
    const/16 v19, -0x1

    #@30f
    move/from16 v0, v19

    #@311
    move-object/from16 v1, p0

    #@313
    iput v0, v1, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    #@315
    .line 219
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->generateLegalTimesTree()V

    #@318
    .line 222
    move-object/from16 v0, p0

    #@31a
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@31c
    move-object/from16 v19, v0

    #@31e
    invoke-static/range {v19 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@321
    move-result-object v8

    #@322
    .line 223
    .local v8, "calendar":Ljava/util/Calendar;
    const/16 v19, 0xb

    #@324
    move/from16 v0, v19

    #@326
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    #@329
    move-result v9

    #@32a
    .line 224
    .local v9, "currentHour":I
    const/16 v19, 0xc

    #@32c
    move/from16 v0, v19

    #@32e
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    #@331
    move-result v10

    #@332
    .line 225
    .local v10, "currentMinute":I
    const/16 v19, 0x0

    #@334
    const/16 v20, 0x0

    #@336
    move-object/from16 v0, p0

    #@338
    move/from16 v1, v19

    #@33a
    move/from16 v2, v20

    #@33c
    invoke-direct {v0, v9, v10, v1, v2}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    #@33f
    .line 121
    return-void
.end method

.method private addKeyIfLegal(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v7, 0x7

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 925
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x4

    #@e
    if-ne v1, v2, :cond_1

    #@10
    .line 927
    :cond_0
    return v5

    #@11
    .line 926
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@13
    if-nez v1, :cond_2

    #@15
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    #@18
    move-result v1

    #@19
    .line 925
    if-nez v1, :cond_0

    #@1b
    .line 930
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@1d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 931
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeLegalSoFar()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_3

    #@2a
    .line 932
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->deleteLastTypedKey()I

    #@2d
    .line 933
    return v5

    #@2e
    .line 936
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getValFromKeyCode(I)I

    #@31
    move-result v0

    #@32
    .line 937
    .local v0, "val":I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@34
    const-string/jumbo v2, "%d"

    #@37
    new-array v3, v6, [Ljava/lang/Object;

    #@39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v4

    #@3d
    aput-object v4, v3, v5

    #@3f
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@46
    .line 939
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_5

    #@4c
    .line 940
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@4e
    if-nez v1, :cond_4

    #@50
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v1

    #@56
    const/4 v2, 0x3

    #@57
    if-gt v1, v2, :cond_4

    #@59
    .line 941
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@5b
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@60
    move-result v2

    #@61
    add-int/lit8 v2, v2, -0x1

    #@63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@6a
    .line 942
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@6c
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@71
    move-result v2

    #@72
    add-int/lit8 v2, v2, -0x1

    #@74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@7b
    .line 944
    :cond_4
    invoke-virtual {p0, v6}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    #@7e
    .line 947
    :cond_5
    return v6
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
    .line 244
    if-eqz p1, :cond_0

    #@9
    invoke-virtual {p1, v11}, Landroid/content/res/ColorStateList;->hasState(I)Z

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 245
    :cond_0
    return-object p1

    #@10
    .line 250
    :cond_1
    const v6, 0x10100a1

    #@13
    invoke-virtual {p1, v6}, Landroid/content/res/ColorStateList;->hasState(I)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_3

    #@19
    .line 252
    const/16 v6, 0xa

    #@1b
    .line 251
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@22
    move-result v0

    #@23
    .line 254
    .local v0, "activatedColor":I
    const/16 v6, 0x8

    #@25
    .line 253
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    #@28
    move-result-object v6

    #@29
    invoke-virtual {p1, v6, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@2c
    move-result v2

    #@2d
    .line 264
    .local v2, "defaultColor":I
    :goto_0
    if-eqz v0, :cond_2

    #@2f
    if-nez v2, :cond_4

    #@31
    .line 266
    :cond_2
    return-object v12

    #@32
    .line 256
    .end local v0    # "activatedColor":I
    .end local v2    # "defaultColor":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@35
    move-result v0

    #@36
    .line 259
    .restart local v0    # "activatedColor":I
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    #@38
    sget-object v7, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    #@3a
    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@3d
    move-result-object v5

    #@3e
    .line 260
    .local v5, "ta":Landroid/content/res/TypedArray;
    const v6, 0x3e99999a    # 0.3f

    #@41
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@44
    move-result v3

    #@45
    .line 261
    .local v3, "disabledAlpha":F
    invoke-direct {p0, v0, v3}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    #@48
    move-result v2

    #@49
    .restart local v2    # "defaultColor":I
    goto :goto_0

    #@4a
    .line 269
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
    .line 270
    .local v4, "stateSet":[[I
    new-array v1, v10, [I

    #@58
    aput v0, v1, v8

    #@5a
    aput v2, v1, v9

    #@5c
    .line 271
    .local v1, "colors":[I
    new-instance v6, Landroid/content/res/ColorStateList;

    #@5e
    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@61
    return-object v6
.end method

.method private computeStableWidth(Landroid/widget/TextView;I)I
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "maxNumber"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 298
    const/4 v1, 0x0

    #@2
    .line 300
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@5
    .line 301
    const-string/jumbo v4, "%02d"

    #@8
    const/4 v5, 0x1

    #@9
    new-array v5, v5, [Ljava/lang/Object;

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v6

    #@f
    aput-object v6, v5, v7

    #@11
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 302
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@18
    .line 303
    invoke-virtual {p1, v7, v7}, Landroid/widget/TextView;->measure(II)V

    #@1b
    .line 305
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@1e
    move-result v3

    #@1f
    .line 306
    .local v3, "width":I
    if-le v3, v1, :cond_0

    #@21
    .line 307
    move v1, v3

    #@22
    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 311
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "width":I
    :cond_1
    return v1
.end method

.method private deleteLastTypedKey()I
    .locals 3

    #@0
    .prologue
    .line 983
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@2
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v2, v2, -0x1

    #@a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/Integer;

    #@10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    .line 984
    .local v0, "deleted":I
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 985
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    #@1e
    .line 987
    :cond_0
    return v0
.end method

.method private finishKbMode()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 994
    iput-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@4
    .line 995
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 996
    const/4 v1, 0x0

    #@d
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getEnteredTime([Z)[I

    #@10
    move-result-object v0

    #@11
    .line 997
    .local v0, "values":[I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@13
    aget v2, v0, v3

    #@15
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    #@18
    .line 998
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@1a
    aget v2, v0, v4

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    #@1f
    .line 999
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@21
    if-nez v1, :cond_0

    #@23
    .line 1000
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@25
    const/4 v2, 0x2

    #@26
    aget v2, v0, v2

    #@28
    invoke-virtual {v1, v2}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    #@2b
    .line 1002
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@30
    .line 1004
    .end local v0    # "values":[I
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    #@33
    .line 1005
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@35
    invoke-virtual {v1, v4}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    #@38
    .line 993
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 24

    #@0
    .prologue
    .line 1161
    const/4 v6, 0x7

    #@1
    .line 1162
    .local v6, "k0":I
    const/16 v7, 0x8

    #@3
    .line 1163
    .local v7, "k1":I
    const/16 v8, 0x9

    #@5
    .line 1164
    .local v8, "k2":I
    const/16 v9, 0xa

    #@7
    .line 1165
    .local v9, "k3":I
    const/16 v10, 0xb

    #@9
    .line 1166
    .local v10, "k4":I
    const/16 v11, 0xc

    #@b
    .line 1167
    .local v11, "k5":I
    const/16 v12, 0xd

    #@d
    .line 1168
    .local v12, "k6":I
    const/16 v13, 0xe

    #@f
    .line 1169
    .local v13, "k7":I
    const/16 v14, 0xf

    #@11
    .line 1170
    .local v14, "k8":I
    const/16 v15, 0x10

    #@13
    .line 1173
    .local v15, "k9":I
    new-instance v20, Landroid/widget/TimePickerClockDelegate$Node;

    #@15
    const/16 v21, 0x0

    #@17
    move/from16 v0, v21

    #@19
    new-array v0, v0, [I

    #@1b
    move-object/from16 v21, v0

    #@1d
    move-object/from16 v0, v20

    #@1f
    move-object/from16 v1, p0

    #@21
    move-object/from16 v2, v21

    #@23
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@26
    move-object/from16 v0, v20

    #@28
    move-object/from16 v1, p0

    #@2a
    iput-object v0, v1, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@2c
    .line 1174
    move-object/from16 v0, p0

    #@2e
    iget-boolean v0, v0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@30
    move/from16 v20, v0

    #@32
    if-eqz v20, :cond_0

    #@34
    .line 1176
    new-instance v16, Landroid/widget/TimePickerClockDelegate$Node;

    #@36
    const/16 v20, 0x6

    #@38
    move/from16 v0, v20

    #@3a
    new-array v0, v0, [I

    #@3c
    move-object/from16 v20, v0

    #@3e
    fill-array-data v20, :array_0

    #@41
    move-object/from16 v0, v16

    #@43
    move-object/from16 v1, p0

    #@45
    move-object/from16 v2, v20

    #@47
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@4a
    .line 1177
    .local v16, "minuteFirstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    new-instance v17, Landroid/widget/TimePickerClockDelegate$Node;

    #@4c
    const/16 v20, 0xa

    #@4e
    move/from16 v0, v20

    #@50
    new-array v0, v0, [I

    #@52
    move-object/from16 v20, v0

    #@54
    fill-array-data v20, :array_1

    #@57
    move-object/from16 v0, v17

    #@59
    move-object/from16 v1, p0

    #@5b
    move-object/from16 v2, v20

    #@5d
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@60
    .line 1179
    .local v17, "minuteSecondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@63
    .line 1182
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    #@65
    const/16 v20, 0x7

    #@67
    const/16 v21, 0x8

    #@69
    filled-new-array/range {v20 .. v21}, [I

    #@6c
    move-result-object v20

    #@6d
    move-object/from16 v0, p0

    #@6f
    move-object/from16 v1, v20

    #@71
    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@74
    .line 1183
    .local v4, "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@78
    move-object/from16 v20, v0

    #@7a
    move-object/from16 v0, v20

    #@7c
    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@7f
    .line 1186
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@81
    const/16 v20, 0x6

    #@83
    move/from16 v0, v20

    #@85
    new-array v0, v0, [I

    #@87
    move-object/from16 v20, v0

    #@89
    fill-array-data v20, :array_2

    #@8c
    move-object/from16 v0, v18

    #@8e
    move-object/from16 v1, p0

    #@90
    move-object/from16 v2, v20

    #@92
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@95
    .line 1187
    .local v18, "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@97
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@9a
    .line 1189
    move-object/from16 v0, v18

    #@9c
    move-object/from16 v1, v16

    #@9e
    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@a1
    .line 1192
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    #@a3
    const/16 v20, 0xd

    #@a5
    const/16 v21, 0xe

    #@a7
    const/16 v22, 0xf

    #@a9
    const/16 v23, 0x10

    #@ab
    filled-new-array/range {v20 .. v23}, [I

    #@ae
    move-result-object v20

    #@af
    move-object/from16 v0, v19

    #@b1
    move-object/from16 v1, p0

    #@b3
    move-object/from16 v2, v20

    #@b5
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@b8
    .line 1194
    .local v19, "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@bb
    .line 1197
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@bd
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xd

    #@bf
    const/16 v21, 0xe

    #@c1
    const/16 v22, 0xf

    #@c3
    const/16 v23, 0x10

    #@c5
    filled-new-array/range {v20 .. v23}, [I

    #@c8
    move-result-object v20

    #@c9
    move-object/from16 v0, v18

    #@cb
    move-object/from16 v1, p0

    #@cd
    move-object/from16 v2, v20

    #@cf
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@d2
    .line 1198
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@d4
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@d7
    .line 1200
    move-object/from16 v0, v18

    #@d9
    move-object/from16 v1, v16

    #@db
    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@de
    .line 1203
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    #@e0
    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x1

    #@e2
    move/from16 v0, v20

    #@e4
    new-array v0, v0, [I

    #@e6
    move-object/from16 v20, v0

    #@e8
    const/16 v21, 0x9

    #@ea
    const/16 v22, 0x0

    #@ec
    aput v21, v20, v22

    #@ee
    move-object/from16 v0, p0

    #@f0
    move-object/from16 v1, v20

    #@f2
    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@f5
    .line 1204
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@f9
    move-object/from16 v20, v0

    #@fb
    move-object/from16 v0, v20

    #@fd
    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@100
    .line 1207
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@102
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x7

    #@104
    const/16 v21, 0x8

    #@106
    const/16 v22, 0x9

    #@108
    const/16 v23, 0xa

    #@10a
    filled-new-array/range {v20 .. v23}, [I

    #@10d
    move-result-object v20

    #@10e
    move-object/from16 v0, v18

    #@110
    move-object/from16 v1, p0

    #@112
    move-object/from16 v2, v20

    #@114
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@117
    .line 1208
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@119
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@11c
    .line 1210
    move-object/from16 v0, v18

    #@11e
    move-object/from16 v1, v16

    #@120
    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@123
    .line 1213
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@125
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xb

    #@127
    const/16 v21, 0xc

    #@129
    filled-new-array/range {v20 .. v21}, [I

    #@12c
    move-result-object v20

    #@12d
    move-object/from16 v0, v18

    #@12f
    move-object/from16 v1, p0

    #@131
    move-object/from16 v2, v20

    #@133
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@136
    .line 1214
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@138
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@13b
    .line 1216
    move-object/from16 v0, v18

    #@13d
    move-object/from16 v1, v17

    #@13f
    invoke-virtual {v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@142
    .line 1219
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    #@144
    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x7

    #@146
    move/from16 v0, v20

    #@148
    new-array v0, v0, [I

    #@14a
    move-object/from16 v20, v0

    #@14c
    fill-array-data v20, :array_3

    #@14f
    move-object/from16 v0, p0

    #@151
    move-object/from16 v1, v20

    #@153
    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@156
    .line 1220
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@15a
    move-object/from16 v20, v0

    #@15c
    move-object/from16 v0, v20

    #@15e
    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@161
    .line 1222
    move-object/from16 v0, v16

    #@163
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@166
    .line 1159
    .end local v16    # "minuteFirstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v17    # "minuteSecondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    :goto_0
    return-void

    #@167
    .line 1226
    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    :cond_0
    new-instance v3, Landroid/widget/TimePickerClockDelegate$Node;

    #@169
    const/16 v20, 0x2

    #@16b
    move/from16 v0, v20

    #@16d
    new-array v0, v0, [I

    #@16f
    move-object/from16 v20, v0

    #@171
    const/16 v21, 0x0

    #@173
    move-object/from16 v0, p0

    #@175
    move/from16 v1, v21

    #@177
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@17a
    move-result v21

    #@17b
    const/16 v22, 0x0

    #@17d
    aput v21, v20, v22

    #@17f
    const/16 v21, 0x1

    #@181
    move-object/from16 v0, p0

    #@183
    move/from16 v1, v21

    #@185
    invoke-direct {v0, v1}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@188
    move-result v21

    #@189
    const/16 v22, 0x1

    #@18b
    aput v21, v20, v22

    #@18d
    move-object/from16 v0, p0

    #@18f
    move-object/from16 v1, v20

    #@191
    invoke-direct {v3, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@194
    .line 1229
    .local v3, "ampm":Landroid/widget/TimePickerClockDelegate$Node;
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    #@196
    const/16 v20, 0x1

    #@198
    move/from16 v0, v20

    #@19a
    new-array v0, v0, [I

    #@19c
    move-object/from16 v20, v0

    #@19e
    const/16 v21, 0x8

    #@1a0
    const/16 v22, 0x0

    #@1a2
    aput v21, v20, v22

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    move-object/from16 v1, v20

    #@1a8
    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@1ab
    .line 1230
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@1af
    move-object/from16 v20, v0

    #@1b1
    move-object/from16 v0, v20

    #@1b3
    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@1b6
    .line 1232
    invoke-virtual {v4, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@1b9
    .line 1235
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@1bb
    const/16 v20, 0x7

    #@1bd
    const/16 v21, 0x8

    #@1bf
    const/16 v22, 0x9

    #@1c1
    filled-new-array/range {v20 .. v22}, [I

    #@1c4
    move-result-object v20

    #@1c5
    move-object/from16 v0, v18

    #@1c7
    move-object/from16 v1, p0

    #@1c9
    move-object/from16 v2, v20

    #@1cb
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@1ce
    .line 1236
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@1d0
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@1d3
    .line 1238
    move-object/from16 v0, v18

    #@1d5
    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@1d8
    .line 1241
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    #@1da
    const/16 v20, 0x6

    #@1dc
    move/from16 v0, v20

    #@1de
    new-array v0, v0, [I

    #@1e0
    move-object/from16 v20, v0

    #@1e2
    fill-array-data v20, :array_4

    #@1e5
    move-object/from16 v0, v19

    #@1e7
    move-object/from16 v1, p0

    #@1e9
    move-object/from16 v2, v20

    #@1eb
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@1ee
    .line 1242
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@1f1
    .line 1244
    move-object/from16 v0, v19

    #@1f3
    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@1f6
    .line 1248
    new-instance v5, Landroid/widget/TimePickerClockDelegate$Node;

    #@1f8
    const/16 v20, 0xa

    #@1fa
    move/from16 v0, v20

    #@1fc
    new-array v0, v0, [I

    #@1fe
    move-object/from16 v20, v0

    #@200
    fill-array-data v20, :array_5

    #@203
    move-object/from16 v0, p0

    #@205
    move-object/from16 v1, v20

    #@207
    invoke-direct {v5, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@20a
    .line 1249
    .local v5, "fourthDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v19

    #@20c
    invoke-virtual {v0, v5}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@20f
    .line 1251
    invoke-virtual {v5, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@212
    .line 1254
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    #@214
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xd

    #@216
    const/16 v21, 0xe

    #@218
    const/16 v22, 0xf

    #@21a
    const/16 v23, 0x10

    #@21c
    filled-new-array/range {v20 .. v23}, [I

    #@21f
    move-result-object v20

    #@220
    move-object/from16 v0, v19

    #@222
    move-object/from16 v1, p0

    #@224
    move-object/from16 v2, v20

    #@226
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@229
    .line 1255
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@22c
    .line 1257
    move-object/from16 v0, v19

    #@22e
    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@231
    .line 1260
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@233
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    #@235
    const/16 v21, 0xb

    #@237
    const/16 v22, 0xc

    #@239
    filled-new-array/range {v20 .. v22}, [I

    #@23c
    move-result-object v20

    #@23d
    move-object/from16 v0, v18

    #@23f
    move-object/from16 v1, p0

    #@241
    move-object/from16 v2, v20

    #@243
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@246
    .line 1261
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@248
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@24b
    .line 1264
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    #@24d
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    #@24f
    move/from16 v0, v20

    #@251
    new-array v0, v0, [I

    #@253
    move-object/from16 v20, v0

    #@255
    fill-array-data v20, :array_6

    #@258
    move-object/from16 v0, v19

    #@25a
    move-object/from16 v1, p0

    #@25c
    move-object/from16 v2, v20

    #@25e
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@261
    .line 1265
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@264
    .line 1267
    move-object/from16 v0, v19

    #@266
    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@269
    .line 1270
    new-instance v4, Landroid/widget/TimePickerClockDelegate$Node;

    #@26b
    .end local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x8

    #@26d
    move/from16 v0, v20

    #@26f
    new-array v0, v0, [I

    #@271
    move-object/from16 v20, v0

    #@273
    fill-array-data v20, :array_7

    #@276
    move-object/from16 v0, p0

    #@278
    move-object/from16 v1, v20

    #@27a
    invoke-direct {v4, v0, v1}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@27d
    .line 1271
    .restart local v4    # "firstDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@281
    move-object/from16 v20, v0

    #@283
    move-object/from16 v0, v20

    #@285
    invoke-virtual {v0, v4}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@288
    .line 1273
    invoke-virtual {v4, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@28b
    .line 1276
    new-instance v18, Landroid/widget/TimePickerClockDelegate$Node;

    #@28d
    .end local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0x6

    #@28f
    move/from16 v0, v20

    #@291
    new-array v0, v0, [I

    #@293
    move-object/from16 v20, v0

    #@295
    fill-array-data v20, :array_8

    #@298
    move-object/from16 v0, v18

    #@29a
    move-object/from16 v1, p0

    #@29c
    move-object/from16 v2, v20

    #@29e
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@2a1
    .line 1277
    .restart local v18    # "secondDigit":Landroid/widget/TimePickerClockDelegate$Node;
    move-object/from16 v0, v18

    #@2a3
    invoke-virtual {v4, v0}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@2a6
    .line 1280
    new-instance v19, Landroid/widget/TimePickerClockDelegate$Node;

    #@2a8
    .end local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    const/16 v20, 0xa

    #@2aa
    move/from16 v0, v20

    #@2ac
    new-array v0, v0, [I

    #@2ae
    move-object/from16 v20, v0

    #@2b0
    fill-array-data v20, :array_9

    #@2b3
    move-object/from16 v0, v19

    #@2b5
    move-object/from16 v1, p0

    #@2b7
    move-object/from16 v2, v20

    #@2b9
    invoke-direct {v0, v1, v2}, Landroid/widget/TimePickerClockDelegate$Node;-><init>(Landroid/widget/TimePickerClockDelegate;[I)V

    #@2bc
    .line 1281
    .restart local v19    # "thirdDigit":Landroid/widget/TimePickerClockDelegate$Node;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@2bf
    .line 1283
    move-object/from16 v0, v19

    #@2c1
    invoke-virtual {v0, v3}, Landroid/widget/TimePickerClockDelegate$Node;->addChild(Landroid/widget/TimePickerClockDelegate$Node;)V

    #@2c4
    goto/16 :goto_0

    #@2c6
    .line 1176
    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    #@2d6
    .line 1177
    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    #@2ee
    .line 1186
    :array_2
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    #@2fe
    .line 1219
    :array_3
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    #@310
    .line 1241
    :array_4
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    #@320
    .line 1248
    :array_5
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    #@338
    .line 1264
    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    #@350
    .line 1270
    :array_7
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    #@364
    .line 1276
    :array_8
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    #@374
    .line 1280
    :array_9
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 14
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v10, -0x1

    #@4
    .line 1124
    iget v8, p0, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    #@6
    if-eq v8, v10, :cond_0

    #@8
    iget v8, p0, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    #@a
    if-ne v8, v10, :cond_1

    #@c
    .line 1126
    :cond_0
    invoke-static {v10}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    #@f
    move-result-object v5

    #@10
    .line 1127
    .local v5, "kcm":Landroid/view/KeyCharacterMap;
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mAmText:Ljava/lang/String;

    #@12
    iget-object v9, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 1128
    .local v2, "amText":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mPmText:Ljava/lang/String;

    #@1a
    iget-object v9, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    .line 1129
    .local v7, "pmText":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@23
    move-result v8

    #@24
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    #@27
    move-result v9

    #@28
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@2b
    move-result v0

    #@2c
    .line 1130
    .local v0, "N":I
    const/4 v4, 0x0

    #@2d
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    #@2f
    .line 1131
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@32
    move-result v1

    #@33
    .line 1132
    .local v1, "amChar":C
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@36
    move-result v6

    #@37
    .line 1133
    .local v6, "pmChar":C
    if-eq v1, v6, :cond_3

    #@39
    .line 1135
    new-array v8, v13, [C

    #@3b
    aput-char v1, v8, v11

    #@3d
    aput-char v6, v8, v12

    #@3f
    invoke-virtual {v5, v8}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    #@42
    move-result-object v3

    #@43
    .line 1136
    .local v3, "events":[Landroid/view/KeyEvent;
    if-eqz v3, :cond_2

    #@45
    array-length v8, v3

    #@46
    const/4 v9, 0x4

    #@47
    if-ne v8, v9, :cond_2

    #@49
    .line 1137
    aget-object v8, v3, v11

    #@4b
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    #@4e
    move-result v8

    #@4f
    iput v8, p0, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    #@51
    .line 1138
    aget-object v8, v3, v13

    #@53
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    #@56
    move-result v8

    #@57
    iput v8, p0, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    #@59
    .line 1147
    .end local v0    # "N":I
    .end local v1    # "amChar":C
    .end local v2    # "amText":Ljava/lang/CharSequence;
    .end local v3    # "events":[Landroid/view/KeyEvent;
    .end local v4    # "i":I
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "pmChar":C
    .end local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    if-nez p1, :cond_4

    #@5b
    .line 1148
    iget v8, p0, Landroid/widget/TimePickerClockDelegate;->mAmKeyCode:I

    #@5d
    return v8

    #@5e
    .line 1140
    .restart local v0    # "N":I
    .restart local v1    # "amChar":C
    .restart local v2    # "amText":Ljava/lang/CharSequence;
    .restart local v3    # "events":[Landroid/view/KeyEvent;
    .restart local v4    # "i":I
    .restart local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v6    # "pmChar":C
    .restart local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_2
    const-string/jumbo v8, "TimePickerClockDelegate"

    #@61
    const-string/jumbo v9, "Unable to find keycodes for AM and PM."

    #@64
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_1

    #@68
    .line 1130
    .end local v3    # "events":[Landroid/view/KeyEvent;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 1149
    .end local v0    # "N":I
    .end local v1    # "amChar":C
    .end local v2    # "amText":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v5    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v6    # "pmChar":C
    .end local v7    # "pmText":Ljava/lang/CharSequence;
    :cond_4
    if-ne p1, v12, :cond_5

    #@6d
    .line 1150
    iget v8, p0, Landroid/widget/TimePickerClockDelegate;->mPmKeyCode:I

    #@6f
    return v8

    #@70
    .line 1153
    :cond_5
    return v10
.end method

.method private getCurrentItemShowing()I
    .locals 1

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getEnteredTime([Z)[I
    .locals 11
    .param p1, "enteredZeros"    # [Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1084
    const/4 v0, -0x1

    #@3
    .line 1085
    .local v0, "amOrPm":I
    const/4 v5, 0x1

    #@4
    .line 1086
    .local v5, "startIndex":I
    iget-boolean v7, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@6
    if-nez v7, :cond_1

    #@8
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 1087
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@10
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v8

    #@16
    add-int/lit8 v8, v8, -0x1

    #@18
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v7

    #@1c
    check-cast v7, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v3

    #@22
    .line 1088
    .local v3, "keyCode":I
    invoke-direct {p0, v9}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@25
    move-result v7

    #@26
    if-ne v3, v7, :cond_3

    #@28
    .line 1089
    const/4 v0, 0x0

    #@29
    .line 1093
    :cond_0
    :goto_0
    const/4 v5, 0x2

    #@2a
    .line 1095
    .end local v3    # "keyCode":I
    :cond_1
    const/4 v4, -0x1

    #@2b
    .line 1096
    .local v4, "minute":I
    const/4 v1, -0x1

    #@2c
    .line 1097
    .local v1, "hour":I
    move v2, v5

    #@2d
    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v7

    #@33
    if-gt v2, v7, :cond_7

    #@35
    .line 1098
    iget-object v7, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@37
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v8

    #@3d
    sub-int/2addr v8, v2

    #@3e
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v7

    #@42
    check-cast v7, Ljava/lang/Integer;

    #@44
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@47
    move-result v7

    #@48
    invoke-direct {p0, v7}, Landroid/widget/TimePickerClockDelegate;->getValFromKeyCode(I)I

    #@4b
    move-result v6

    #@4c
    .line 1099
    .local v6, "val":I
    if-ne v2, v5, :cond_4

    #@4e
    .line 1100
    move v4, v6

    #@4f
    .line 1097
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 1090
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v6    # "val":I
    .restart local v3    # "keyCode":I
    :cond_3
    invoke-direct {p0, v10}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@55
    move-result v7

    #@56
    if-ne v3, v7, :cond_0

    #@58
    .line 1091
    const/4 v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 1101
    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v2    # "i":I
    .restart local v4    # "minute":I
    .restart local v6    # "val":I
    :cond_4
    add-int/lit8 v7, v5, 0x1

    #@5c
    if-ne v2, v7, :cond_5

    #@5e
    .line 1102
    mul-int/lit8 v7, v6, 0xa

    #@60
    add-int/2addr v4, v7

    #@61
    .line 1103
    if-eqz p1, :cond_2

    #@63
    if-nez v6, :cond_2

    #@65
    .line 1104
    aput-boolean v10, p1, v10

    #@67
    goto :goto_2

    #@68
    .line 1106
    :cond_5
    add-int/lit8 v7, v5, 0x2

    #@6a
    if-ne v2, v7, :cond_6

    #@6c
    .line 1107
    move v1, v6

    #@6d
    goto :goto_2

    #@6e
    .line 1108
    :cond_6
    add-int/lit8 v7, v5, 0x3

    #@70
    if-ne v2, v7, :cond_2

    #@72
    .line 1109
    mul-int/lit8 v7, v6, 0xa

    #@74
    add-int/2addr v1, v7

    #@75
    .line 1110
    if-eqz p1, :cond_2

    #@77
    if-nez v6, :cond_2

    #@79
    .line 1111
    aput-boolean v10, p1, v9

    #@7b
    goto :goto_2

    #@7c
    .line 1116
    .end local v6    # "val":I
    :cond_7
    const/4 v7, 0x3

    #@7d
    new-array v7, v7, [I

    #@7f
    aput v1, v7, v9

    #@81
    aput v4, v7, v10

    #@83
    const/4 v8, 0x2

    #@84
    aput v0, v7, v8

    #@86
    return-object v7
.end method

.method private getTypedTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method private getValFromKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 1047
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1069
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 1049
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1051
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 1053
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 1055
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 1057
    :pswitch_4
    const/4 v0, 0x4

    #@e
    return v0

    #@f
    .line 1059
    :pswitch_5
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 1061
    :pswitch_6
    const/4 v0, 0x6

    #@12
    return v0

    #@13
    .line 1063
    :pswitch_7
    const/4 v0, 0x7

    #@14
    return v0

    #@15
    .line 1065
    :pswitch_8
    const/16 v0, 0x8

    #@17
    return v0

    #@18
    .line 1067
    :pswitch_9
    const/16 v0, 0x9

    #@1a
    return v0

    #@1b
    .line 1047
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private inKbMode()Z
    .locals 1

    #@0
    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@2
    return v0
.end method

.method private initialize(IIZI)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    #@0
    .prologue
    .line 315
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@2
    .line 316
    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    #@4
    .line 317
    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@6
    .line 318
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@9
    .line 319
    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    #@c
    .line 314
    return-void
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 969
    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@4
    if-eqz v3, :cond_1

    #@6
    .line 972
    const/4 v3, 0x0

    #@7
    invoke-direct {p0, v3}, Landroid/widget/TimePickerClockDelegate;->getEnteredTime([Z)[I

    #@a
    move-result-object v0

    #@b
    .line 973
    .local v0, "values":[I
    aget v3, v0, v2

    #@d
    if-ltz v3, :cond_0

    #@f
    aget v3, v0, v1

    #@11
    if-ltz v3, :cond_0

    #@13
    aget v3, v0, v1

    #@15
    const/16 v4, 0x3c

    #@17
    if-ge v3, v4, :cond_0

    #@19
    :goto_0
    return v1

    #@1a
    :cond_0
    move v1, v2

    #@1b
    goto :goto_0

    #@1c
    .line 977
    .end local v0    # "values":[I
    :cond_1
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@1e
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_2

    #@2c
    .line 978
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@2e
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@31
    move-result v1

    #@32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    .line 977
    :cond_2
    return v1
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 4

    #@0
    .prologue
    .line 955
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mLegalTimesTree:Landroid/widget/TimePickerClockDelegate$Node;

    #@2
    .line 956
    .local v2, "node":Landroid/widget/TimePickerClockDelegate$Node;
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "keyCode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/Integer;

    #@14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    .line 957
    .local v0, "keyCode":I
    invoke-virtual {v2, v0}, Landroid/widget/TimePickerClockDelegate$Node;->canReach(I)Landroid/widget/TimePickerClockDelegate$Node;

    #@1b
    move-result-object v2

    #@1c
    .line 958
    if-nez v2, :cond_0

    #@1e
    .line 959
    const/4 v3, 0x0

    #@1f
    return v3

    #@20
    .line 962
    .end local v0    # "keyCode":I
    :cond_1
    const/4 v3, 0x1

    #@21
    return v3
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    #@0
    .prologue
    .line 805
    array-length v3, p1

    #@1
    .line 806
    .local v3, "lengthAny":I
    if-lez v3, :cond_2

    #@3
    .line 807
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
    .line 808
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 809
    .local v0, "c":C
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@12
    .line 810
    aget-char v4, p1, v2

    #@14
    if-ne v0, v4, :cond_0

    #@16
    .line 811
    return v1

    #@17
    .line 809
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 807
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 816
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    const/4 v4, -0x1

    #@1e
    return v4
.end method

.method private static modulo12(IZ)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "startWithZero"    # Z

    #@0
    .prologue
    .line 773
    rem-int/lit8 v0, p0, 0xc

    #@2
    .line 774
    .local v0, "value":I
    if-nez v0, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 777
    :cond_0
    :goto_0
    return v0

    #@7
    .line 775
    :cond_1
    const/16 v0, 0xc

    #@9
    goto :goto_0
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    #@0
    .prologue
    .line 275
    const v3, 0xffffff

    #@3
    and-int v2, p1, v3

    #@5
    .line 276
    .local v2, "srcRgb":I
    shr-int/lit8 v3, p1, 0x18

    #@7
    and-int/lit16 v1, v3, 0xff

    #@9
    .line 277
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
    .line 278
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
    .line 229
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@5
    .line 230
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    #@7
    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    .line 229
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
    .line 587
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    #@6
    .line 588
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 589
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@c
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@e
    .line 590
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    #@15
    move-result v3

    #@16
    .line 589
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@19
    .line 586
    :cond_0
    return-void
.end method

.method private processKeyUp(I)Z
    .locals 7
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 863
    const/16 v2, 0x43

    #@4
    if-ne p1, v2, :cond_3

    #@6
    .line 864
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 865
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 866
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->deleteLastTypedKey()I

    #@15
    move-result v0

    #@16
    .line 868
    .local v0, "deleted":I
    invoke-direct {p0, v6}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@19
    move-result v2

    #@1a
    if-ne v0, v2, :cond_1

    #@1c
    .line 869
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmText:Ljava/lang/String;

    #@1e
    .line 875
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@20
    .line 876
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mDeletedKeyFormat:Ljava/lang/String;

    #@22
    new-array v4, v5, [Ljava/lang/Object;

    #@24
    aput-object v1, v4, v6

    #@26
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 875
    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@2d
    .line 877
    invoke-direct {p0, v5}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    #@30
    .line 903
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_0
    return v6

    #@31
    .line 870
    .restart local v0    # "deleted":I
    :cond_1
    invoke-direct {p0, v5}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@34
    move-result v2

    #@35
    if-ne v0, v2, :cond_2

    #@37
    .line 871
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmText:Ljava/lang/String;

    #@39
    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 873
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "%d"

    #@3d
    new-array v3, v5, [Ljava/lang/Object;

    #@3f
    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->getValFromKeyCode(I)I

    #@42
    move-result v4

    #@43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v4

    #@47
    aput-object v4, v3, v6

    #@49
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_0

    #@4e
    .line 880
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x7

    #@4f
    if-eq p1, v2, :cond_4

    #@51
    const/16 v2, 0x8

    #@53
    if-ne p1, v2, :cond_5

    #@55
    .line 887
    :cond_4
    :goto_1
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@57
    if-nez v2, :cond_7

    #@59
    .line 888
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@5b
    if-nez v2, :cond_6

    #@5d
    .line 890
    const-string/jumbo v2, "TimePickerClockDelegate"

    #@60
    const-string/jumbo v3, "Unable to initiate keyboard mode, TimePicker was null."

    #@63
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 891
    return v5

    #@67
    .line 881
    :cond_5
    const/16 v2, 0x9

    #@69
    if-eq p1, v2, :cond_4

    #@6b
    const/16 v2, 0xa

    #@6d
    if-eq p1, v2, :cond_4

    #@6f
    .line 882
    const/16 v2, 0xb

    #@71
    if-eq p1, v2, :cond_4

    #@73
    const/16 v2, 0xc

    #@75
    if-eq p1, v2, :cond_4

    #@77
    .line 883
    const/16 v2, 0xd

    #@79
    if-eq p1, v2, :cond_4

    #@7b
    const/16 v2, 0xe

    #@7d
    if-eq p1, v2, :cond_4

    #@7f
    .line 884
    const/16 v2, 0xf

    #@81
    if-eq p1, v2, :cond_4

    #@83
    const/16 v2, 0x10

    #@85
    if-eq p1, v2, :cond_4

    #@87
    .line 885
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@89
    if-nez v2, :cond_0

    #@8b
    .line 886
    invoke-direct {p0, v6}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@8e
    move-result v2

    #@8f
    if-eq p1, v2, :cond_4

    #@91
    invoke-direct {p0, v5}, Landroid/widget/TimePickerClockDelegate;->getAmOrPmKeyCode(I)I

    #@94
    move-result v2

    #@95
    if-ne p1, v2, :cond_0

    #@97
    goto :goto_1

    #@98
    .line 893
    :cond_6
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@9a
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@9d
    .line 894
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->tryStartingKbMode(I)V

    #@a0
    .line 895
    return v5

    #@a1
    .line 898
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->addKeyIfLegal(I)Z

    #@a4
    move-result v2

    #@a5
    if-eqz v2, :cond_8

    #@a7
    .line 899
    invoke-direct {p0, v6}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    #@aa
    .line 901
    :cond_8
    return v5
.end method

.method private setAmOrPm(I)V
    .locals 1
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    .line 851
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    #@3
    .line 852
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    #@8
    .line 850
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
    .line 365
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    #@4
    if-eq v1, p1, :cond_2

    #@6
    .line 366
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtStart:Z

    #@8
    .line 369
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@10
    .line 370
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 371
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 372
    :cond_0
    if-eqz p1, :cond_3

    #@1e
    .line 373
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    #@21
    .line 374
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@23
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    #@2a
    .line 381
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@2c
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@2f
    .line 364
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    #@30
    .line 376
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    #@33
    .line 377
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@35
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

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
    .line 834
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    #@7
    .line 836
    if-nez p1, :cond_1

    #@9
    .line 837
    if-eqz p3, :cond_0

    #@b
    .line 838
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@d
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@12
    .line 846
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@14
    if-nez p1, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    #@1a
    .line 847
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@1c
    if-ne p1, v1, :cond_3

    #@1e
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    #@21
    .line 833
    return-void

    #@22
    .line 841
    :cond_1
    if-eqz p3, :cond_0

    #@24
    .line 842
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@26
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@2b
    goto :goto_0

    #@2c
    :cond_2
    move v0, v2

    #@2d
    .line 846
    goto :goto_1

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 847
    goto :goto_2
.end method

.method private setInKbMode(Z)V
    .locals 0
    .param p1, "inKbMode"    # Z

    #@0
    .prologue
    .line 555
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@2
    .line 554
    return-void
.end method

.method private setTypedTimes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 566
    .local p1, "typeTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@2
    .line 565
    return-void
.end method

.method private setupListeners()V
    .locals 2

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mKeyListener:Landroid/view/View$OnKeyListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@7
    .line 324
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    #@9
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@e
    .line 325
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHeaderView:Landroid/view/View;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    #@14
    .line 327
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@16
    invoke-virtual {v0, p0}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    #@19
    .line 322
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    #@0
    .prologue
    .line 764
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
    .line 763
    :goto_0
    return-void

    #@d
    .line 766
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@12
    .line 767
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    #@14
    .line 768
    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    #@16
    goto :goto_0
.end method

.method private tryStartingKbMode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 914
    const/4 v0, -0x1

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->addKeyIfLegal(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 915
    :cond_0
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@d
    .line 916
    invoke-virtual {p0, v1}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    #@10
    .line 917
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->updateDisplay(Z)V

    #@13
    .line 918
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setInputEnabled(Z)V

    #@18
    .line 913
    :cond_1
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    #@0
    .prologue
    .line 676
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    #@6
    .line 675
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .locals 3
    .param p1, "amOrPm"    # I

    #@0
    .prologue
    .line 680
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    .line 681
    .local v0, "isAm":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@5
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    #@8
    .line 682
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@a
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    #@d
    .line 684
    const/4 v2, 0x1

    #@e
    if-ne p1, v2, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    .line 685
    .local v1, "isPm":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@13
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setActivated(Z)V

    #@16
    .line 686
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@18
    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    #@1b
    .line 679
    return-void

    #@1c
    .line 680
    .end local v0    # "isAm":Z
    .end local v1    # "isPm":Z
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "isAm":Z
    goto :goto_0

    #@1e
    .line 684
    :cond_1
    const/4 v1, 0x0

    #@1f
    .restart local v1    # "isPm":Z
    goto :goto_1
.end method

.method private updateDisplay(Z)V
    .locals 11
    .param p1, "allowEmptyDisplay"    # Z

    #@0
    .prologue
    .line 1017
    if-nez p1, :cond_3

    #@2
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v8

    #@8
    if-eqz v8, :cond_3

    #@a
    .line 1018
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@c
    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@f
    move-result v1

    #@10
    .line 1019
    .local v1, "hour":I
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@12
    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    #@15
    move-result v4

    #@16
    .line 1020
    .local v4, "minute":I
    const/4 v8, 0x0

    #@17
    invoke-direct {p0, v1, v8}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@1a
    .line 1021
    const/4 v8, 0x0

    #@1b
    invoke-direct {p0, v4, v8}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    #@1e
    .line 1022
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@20
    if-nez v8, :cond_0

    #@22
    .line 1023
    const/16 v8, 0xc

    #@24
    if-ge v1, v8, :cond_2

    #@26
    const/4 v8, 0x0

    #@27
    :goto_0
    invoke-direct {p0, v8}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    #@2a
    .line 1025
    :cond_0
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2c
    invoke-virtual {v8}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@2f
    move-result v8

    #@30
    const/4 v9, 0x1

    #@31
    const/4 v10, 0x1

    #@32
    invoke-direct {p0, v8, v9, v10}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    #@35
    .line 1026
    const/4 v8, 0x1

    #@36
    invoke-virtual {p0, v8}, Landroid/widget/TimePickerClockDelegate;->onValidationChanged(Z)V

    #@39
    .line 1016
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_1
    :goto_1
    return-void

    #@3a
    .line 1023
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    :cond_2
    const/4 v8, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1028
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    :cond_3
    const/4 v8, 0x2

    #@3d
    new-array v0, v8, [Z

    #@3f
    .local v0, "enteredZeros":[Z
    fill-array-data v0, :array_0

    #@42
    .line 1029
    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->getEnteredTime([Z)[I

    #@45
    move-result-object v7

    #@46
    .line 1030
    .local v7, "values":[I
    const/4 v8, 0x0

    #@47
    aget-boolean v8, v0, v8

    #@49
    if-eqz v8, :cond_4

    #@4b
    const-string/jumbo v2, "%02d"

    #@4e
    .line 1031
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    #@4f
    aget-boolean v8, v0, v8

    #@51
    if-eqz v8, :cond_5

    #@53
    const-string/jumbo v5, "%02d"

    #@56
    .line 1032
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    #@57
    aget v8, v7, v8

    #@59
    const/4 v9, -0x1

    #@5a
    if-ne v8, v9, :cond_6

    #@5c
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    #@5e
    .line 1034
    .local v3, "hourStr":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x1

    #@5f
    aget v8, v7, v8

    #@61
    const/4 v9, -0x1

    #@62
    if-ne v8, v9, :cond_7

    #@64
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mDoublePlaceholderText:Ljava/lang/String;

    #@66
    .line 1036
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@68
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@6b
    .line 1037
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@6d
    const/4 v9, 0x0

    #@6e
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setActivated(Z)V

    #@71
    .line 1038
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@73
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@76
    .line 1039
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@78
    const/4 v9, 0x0

    #@79
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setActivated(Z)V

    #@7c
    .line 1040
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@7e
    if-nez v8, :cond_1

    #@80
    .line 1041
    const/4 v8, 0x2

    #@81
    aget v8, v7, v8

    #@83
    invoke-direct {p0, v8}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    #@86
    goto :goto_1

    #@87
    .line 1030
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "%2d"

    #@8a
    .restart local v2    # "hourFormat":Ljava/lang/String;
    goto :goto_2

    #@8b
    .line 1031
    :cond_5
    const-string/jumbo v5, "%2d"

    #@8e
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    goto :goto_3

    #@8f
    .line 1033
    :cond_6
    const/4 v8, 0x1

    #@90
    new-array v8, v8, [Ljava/lang/Object;

    #@92
    const/4 v9, 0x0

    #@93
    aget v9, v7, v9

    #@95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v9

    #@99
    const/4 v10, 0x0

    #@9a
    aput-object v9, v8, v10

    #@9c
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    iget-char v9, p0, Landroid/widget/TimePickerClockDelegate;->mPlaceholderText:C

    #@a2
    const/16 v10, 0x20

    #@a4
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@a7
    move-result-object v3

    #@a8
    .restart local v3    # "hourStr":Ljava/lang/String;
    goto :goto_4

    #@a9
    .line 1035
    :cond_7
    const/4 v8, 0x1

    #@aa
    new-array v8, v8, [Ljava/lang/Object;

    #@ac
    const/4 v9, 0x1

    #@ad
    aget v9, v7, v9

    #@af
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2
    move-result-object v9

    #@b3
    const/4 v10, 0x0

    #@b4
    aput-object v9, v8, v10

    #@b6
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    iget-char v9, p0, Landroid/widget/TimePickerClockDelegate;->mPlaceholderText:C

    #@bc
    const/16 v10, 0x20

    #@be
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    .restart local v6    # "minuteStr":Ljava/lang/String;
    goto :goto_5

    #@c3
    .line 1028
    nop

    #@c4
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private updateHeaderAmPm()V
    .locals 4

    #@0
    .prologue
    .line 352
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 353
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    #@6
    const/16 v3, 0x8

    #@8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 350
    :goto_0
    return-void

    #@c
    .line 356
    :cond_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@e
    const-string/jumbo v3, "hm"

    #@11
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 357
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string/jumbo v2, "a"

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .line 358
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmAtStart(Z)V

    #@1f
    .line 360
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

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
    .locals 11
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    #@0
    .prologue
    .line 724
    iget-object v9, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@2
    .line 725
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@4
    if-eqz v8, :cond_4

    #@6
    const-string/jumbo v8, "Hm"

    #@9
    .line 724
    :goto_0
    invoke-static {v9, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 726
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v6

    #@11
    .line 727
    .local v6, "lengthPattern":I
    const/4 v4, 0x0

    #@12
    .line 728
    .local v4, "hourWithTwoDigit":Z
    const/4 v3, 0x0

    #@13
    .line 731
    .local v3, "hourFormat":C
    const/4 v5, 0x0

    #@14
    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_1

    #@16
    .line 732
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    .line 733
    .local v1, "c":C
    const/16 v8, 0x48

    #@1c
    if-eq v1, v8, :cond_0

    #@1e
    const/16 v8, 0x68

    #@20
    if-ne v1, v8, :cond_5

    #@22
    .line 734
    :cond_0
    move v3, v1

    #@23
    .line 735
    .local v3, "hourFormat":C
    add-int/lit8 v8, v5, 0x1

    #@25
    if-ge v8, v6, :cond_1

    #@27
    add-int/lit8 v8, v5, 0x1

    #@29
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v8

    #@2d
    if-ne v1, v8, :cond_1

    #@2f
    .line 736
    const/4 v4, 0x1

    #@30
    .line 742
    .end local v1    # "c":C
    .end local v3    # "hourFormat":C
    :cond_1
    if-eqz v4, :cond_6

    #@32
    .line 743
    const-string/jumbo v2, "%02d"

    #@35
    .line 747
    .local v2, "format":Ljava/lang/String;
    :goto_2
    iget-boolean v8, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@37
    if-eqz v8, :cond_7

    #@39
    .line 749
    const/16 v8, 0x6b

    #@3b
    if-ne v3, v8, :cond_2

    #@3d
    if-nez p1, :cond_2

    #@3f
    .line 750
    const/16 p1, 0x18

    #@41
    .line 756
    :cond_2
    :goto_3
    const/4 v8, 0x1

    #@42
    new-array v8, v8, [Ljava/lang/Object;

    #@44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@47
    move-result-object v9

    #@48
    const/4 v10, 0x0

    #@49
    aput-object v9, v8, v10

    #@4b
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .line 757
    .local v7, "text":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@51
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@54
    .line 758
    if-eqz p2, :cond_3

    #@56
    .line 759
    const/4 v8, 0x1

    #@57
    invoke-direct {p0, v7, v8}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    #@5a
    .line 723
    :cond_3
    return-void

    #@5b
    .line 725
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "format":Ljava/lang/String;
    .end local v4    # "hourWithTwoDigit":Z
    .end local v5    # "i":I
    .end local v6    # "lengthPattern":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_4
    const-string/jumbo v8, "hm"

    #@5e
    goto :goto_0

    #@5f
    .line 733
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .local v3, "hourFormat":C
    .restart local v4    # "hourWithTwoDigit":Z
    .restart local v5    # "i":I
    .restart local v6    # "lengthPattern":I
    :cond_5
    const/16 v8, 0x4b

    #@61
    if-eq v1, v8, :cond_0

    #@63
    const/16 v8, 0x6b

    #@65
    if-eq v1, v8, :cond_0

    #@67
    .line 731
    add-int/lit8 v5, v5, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 745
    .end local v1    # "c":C
    .end local v3    # "hourFormat":C
    :cond_6
    const-string/jumbo v2, "%d"

    #@6d
    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_2

    #@6e
    .line 754
    :cond_7
    const/16 v8, 0x4b

    #@70
    if-ne v3, v8, :cond_8

    #@72
    const/4 v8, 0x1

    #@73
    :goto_4
    invoke-static {p1, v8}, Landroid/widget/TimePickerClockDelegate;->modulo12(IZ)I

    #@76
    move-result p1

    #@77
    goto :goto_3

    #@78
    :cond_8
    const/4 v8, 0x0

    #@79
    goto :goto_4
.end method

.method private updateHeaderMinute(IZ)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "announceForAccessibility"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 820
    const/16 v1, 0x3c

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 821
    const/4 p1, 0x0

    #@6
    .line 823
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@8
    const-string/jumbo v2, "%02d"

    #@b
    const/4 v3, 0x1

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    aput-object v4, v3, v5

    #@14
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 824
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1d
    .line 825
    if-eqz p2, :cond_1

    #@1f
    .line 826
    invoke-direct {p0, v0, v5}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    #@22
    .line 819
    :cond_1
    return-void
.end method

.method private updateHeaderSeparator()V
    .locals 6

    #@0
    .prologue
    .line 789
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentLocale:Ljava/util/Locale;

    #@2
    .line 790
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    const-string/jumbo v4, "Hm"

    #@9
    .line 789
    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 793
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/4 v4, 0x4

    #@e
    new-array v2, v4, [C

    #@10
    .local v2, "hourFormats":[C
    fill-array-data v2, :array_0

    #@13
    .line 794
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->lastIndexOfAny(Ljava/lang/String;[C)I

    #@16
    move-result v1

    #@17
    .line 795
    .local v1, "hIndex":I
    const/4 v4, -0x1

    #@18
    if-ne v1, v4, :cond_1

    #@1a
    .line 797
    const-string/jumbo v3, ":"

    #@1d
    .line 801
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    #@1f
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@22
    .line 788
    return-void

    #@23
    .line 790
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hIndex":I
    .end local v2    # "hourFormats":[C
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "hm"

    #@26
    goto :goto_0

    #@27
    .line 799
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
    .line 793
    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
    .end array-data
.end method

.method private updateRadialPicker(I)V
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@4
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    #@6
    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    #@b
    .line 347
    const/4 v0, 0x0

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    #@10
    .line 345
    return-void
.end method

.method private updateUI(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 332
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    #@4
    .line 334
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    #@7
    .line 336
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@9
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@c
    .line 338
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    #@f
    .line 340
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    #@11
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    #@14
    .line 342
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@16
    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    #@19
    .line 330
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 530
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 531
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getBaseline()I
    .locals 1

    #@0
    .prologue
    .line 495
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    #@0
    .prologue
    .line 407
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@5
    move-result v0

    #@6
    .line 408
    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 409
    return v0

    #@b
    .line 411
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@d
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    #@10
    move-result v1

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 416
    rem-int/lit8 v1, v0, 0xc

    #@16
    return v1

    #@17
    .line 413
    :pswitch_0
    rem-int/lit8 v1, v0, 0xc

    #@19
    add-int/lit8 v1, v1, 0xc

    #@1b
    return v1

    #@1c
    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentMinute()I
    .locals 1

    #@0
    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is24HourView()Z
    .locals 1

    #@0
    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 489
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    #@2
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@2
    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    #@9
    .line 499
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 537
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 538
    const/16 v0, 0x81

    #@6
    .line 542
    .local v0, "flags":I
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@8
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    #@b
    move-result v3

    #@c
    const/16 v4, 0xb

    #@e
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 543
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@13
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    #@16
    move-result v3

    #@17
    const/16 v4, 0xc

    #@19
    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 544
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    #@1e
    .line 545
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@20
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@23
    move-result-wide v4

    #@24
    .line 544
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 546
    .local v1, "selectedDate":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 535
    return-void

    #@30
    .line 540
    .end local v0    # "flags":I
    .end local v1    # "selectedDate":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x41

    #@32
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 511
    check-cast v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    #@3
    .line 512
    .local v0, "ss":Landroid/widget/TimePickerClockDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->inKbMode()Z

    #@6
    move-result v1

    #@7
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setInKbMode(Z)V

    #@a
    .line 513
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getTypesTimes()Ljava/util/ArrayList;

    #@d
    move-result-object v1

    #@e
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setTypedTimes(Ljava/util/ArrayList;)V

    #@11
    .line 514
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getHour()I

    #@14
    move-result v1

    #@15
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getMinute()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->is24HourMode()Z

    #@1c
    move-result v3

    #@1d
    invoke-virtual {v0}, Landroid/widget/TimePickerClockDelegate$SavedState;->getCurrentItemShowing()I

    #@20
    move-result v4

    #@21
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    #@24
    .line 515
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@26
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    #@29
    .line 516
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mInKbMode:Z

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 517
    const/4 v1, -0x1

    #@2e
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->tryStartingKbMode(I)V

    #@31
    .line 518
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@33
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    #@36
    .line 510
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 505
    new-instance v0, Landroid/widget/TimePickerClockDelegate$SavedState;

    #@2
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    #@5
    move-result v2

    #@6
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    #@9
    move-result v3

    #@a
    .line 506
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24HourView()Z

    #@d
    move-result v4

    #@e
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->inKbMode()Z

    #@11
    move-result v5

    #@12
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getTypedTimes()Ljava/util/ArrayList;

    #@15
    move-result-object v6

    #@16
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    #@19
    move-result v7

    #@1a
    .line 505
    const/4 v8, 0x0

    #@1b
    move-object v1, p1

    #@1c
    invoke-direct/range {v0 .. v8}, Landroid/widget/TimePickerClockDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZZLjava/util/ArrayList;ILandroid/widget/TimePickerClockDelegate$SavedState;)V

    #@1f
    return-object v0
.end method

.method public onValueSelected(IIZ)V
    .locals 4
    .param p1, "pickerIndex"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 694
    packed-switch p1, :pswitch_data_0

    #@5
    .line 718
    :goto_0
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 719
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@b
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@d
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentHour()I

    #@10
    move-result v2

    #@11
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentMinute()I

    #@14
    move-result v3

    #@15
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    #@18
    .line 693
    :cond_0
    return-void

    #@19
    .line 696
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    if-eqz p3, :cond_1

    #@1f
    .line 697
    invoke-direct {p0, p2, v2}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@22
    .line 698
    invoke-direct {p0, v1, v1, v2}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    #@25
    .line 699
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, ". "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    #@44
    goto :goto_0

    #@45
    .line 701
    :cond_1
    invoke-direct {p0, p2, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@48
    goto :goto_0

    #@49
    .line 705
    :pswitch_1
    invoke-direct {p0, p2, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    #@4c
    goto :goto_0

    #@4d
    .line 708
    :pswitch_2
    invoke-direct {p0, p2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    #@50
    goto :goto_0

    #@51
    .line 711
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->isTypedTimeFullyLegal()Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_2

    #@57
    .line 712
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTypedTimes:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5c
    .line 714
    :cond_2
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->finishKbMode()V

    #@5f
    goto :goto_0

    #@60
    .line 694
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentHour(I)V
    .locals 4
    .param p1, "currentHour"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 390
    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 391
    return-void

    #@6
    .line 393
    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@8
    .line 394
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@b
    .line 395
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    #@e
    .line 396
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@10
    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    #@13
    .line 397
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@15
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@17
    const/16 v3, 0xc

    #@19
    if-ge v2, v3, :cond_1

    #@1b
    const/4 v0, 0x0

    #@1c
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)V

    #@1f
    .line 398
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@21
    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    #@24
    .line 399
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    #@27
    .line 389
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    #@3
    .line 525
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    #@9
    .line 523
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "currentMinute"    # I

    #@0
    .prologue
    .line 426
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 427
    return-void

    #@5
    .line 429
    :cond_0
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mInitialMinute:I

    #@7
    .line 430
    const/4 v0, 0x1

    #@8
    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    #@b
    .line 431
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    #@10
    .line 432
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@12
    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    #@15
    .line 433
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    #@18
    .line 425
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@5
    .line 480
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    #@a
    .line 481
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/CheckedTextView;

    #@c
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    #@f
    .line 482
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/CheckedTextView;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    #@14
    .line 483
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@16
    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    #@19
    .line 484
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    #@1b
    .line 478
    return-void
.end method

.method public setIs24HourView(Z)V
    .locals 2
    .param p1, "is24HourView"    # Z

    #@0
    .prologue
    .line 451
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 452
    return-void

    #@5
    .line 454
    :cond_0
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24HourView:Z

    #@7
    .line 455
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->generateLegalTimesTree()V

    #@a
    .line 456
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@c
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    #@f
    move-result v0

    #@10
    .line 457
    .local v0, "hour":I
    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mInitialHourOfDay:I

    #@12
    .line 458
    const/4 v1, 0x0

    #@13
    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    #@16
    .line 459
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    #@19
    .line 460
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    #@1b
    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    #@1e
    move-result v1

    #@1f
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    #@22
    .line 461
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    #@24
    invoke-virtual {v1}, Landroid/widget/TimePicker;->invalidate()V

    #@27
    .line 450
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    #@0
    .prologue
    .line 474
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    #@2
    .line 473
    return-void
.end method
