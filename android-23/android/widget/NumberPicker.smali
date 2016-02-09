.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$TwoDigitFormatter;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x1090093

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelPreferred:Z


# direct methods
.method static synthetic -get0()[C
    .locals 1

    #@0
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    #@2
    return v0
.end method

.method static synthetic -get10(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    #@2
    return v0
.end method

.method static synthetic -get13(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    #@2
    return v0
.end method

.method static synthetic -get14(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    #@2
    return v0
.end method

.method static synthetic -get15(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    #@2
    return v0
.end method

.method static synthetic -get16(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    #@2
    return v0
.end method

.method static synthetic -get17(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@2
    return v0
.end method

.method static synthetic -get18(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@2
    return v0
.end method

.method static synthetic -get19(Landroid/widget/NumberPicker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/NumberPicker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/NumberPicker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/NumberPicker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/widget/NumberPicker;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/NumberPicker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/NumberPicker;)Z
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/NumberPicker;I)I
    .locals 1
    .param p1, "selectorIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .param p1, "increment"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/NumberPicker;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/NumberPicker;ZJ)V
    .locals 0
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 200
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    #@2
    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    #@5
    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    #@7
    .line 2053
    const/16 v0, 0x3c

    #@9
    new-array v0, v0, [C

    #@b
    fill-array-data v0, :array_0

    #@e
    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    #@10
    .line 94
    return-void

    #@11
    .line 2053
    nop

    #@12
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 562
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 561
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 572
    const v0, 0x116001e

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 571
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 585
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 584
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 602
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 154
    const/16 v18, 0x1

    #@5
    move/from16 v0, v18

    #@7
    move-object/from16 v1, p0

    #@9
    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    #@b
    .line 302
    const-wide/16 v18, 0x12c

    #@d
    move-wide/from16 v0, v18

    #@f
    move-object/from16 v2, p0

    #@11
    iput-wide v0, v2, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    #@13
    .line 307
    new-instance v18, Landroid/util/SparseArray;

    #@15
    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    #@18
    move-object/from16 v0, v18

    #@1a
    move-object/from16 v1, p0

    #@1c
    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    #@1e
    .line 312
    const/16 v18, 0x3

    #@20
    move/from16 v0, v18

    #@22
    new-array v0, v0, [I

    #@24
    move-object/from16 v18, v0

    #@26
    move-object/from16 v0, v18

    #@28
    move-object/from16 v1, p0

    #@2a
    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@2c
    .line 332
    const/high16 v18, -0x80000000

    #@2e
    move/from16 v0, v18

    #@30
    move-object/from16 v1, p0

    #@32
    iput v0, v1, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@34
    .line 433
    const/16 v18, 0x0

    #@36
    move/from16 v0, v18

    #@38
    move-object/from16 v1, p0

    #@3a
    iput v0, v1, Landroid/widget/NumberPicker;->mScrollState:I

    #@3c
    .line 484
    const/16 v18, -0x1

    #@3e
    move/from16 v0, v18

    #@40
    move-object/from16 v1, p0

    #@42
    iput v0, v1, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    #@44
    .line 606
    sget-object v18, Lcom/android/internal/R$styleable;->NumberPicker:[I

    #@46
    .line 605
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, p2

    #@4a
    move-object/from16 v2, v18

    #@4c
    move/from16 v3, p3

    #@4e
    move/from16 v4, p4

    #@50
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@53
    move-result-object v6

    #@54
    .line 608
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    #@56
    const v19, 0x1090093

    #@59
    .line 607
    move/from16 v0, v18

    #@5b
    move/from16 v1, v19

    #@5d
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result v13

    #@61
    .line 610
    .local v13, "layoutResId":I
    const v18, 0x1090093

    #@64
    move/from16 v0, v18

    #@66
    if-eq v13, v0, :cond_1

    #@68
    const/16 v18, 0x1

    #@6a
    :goto_0
    move/from16 v0, v18

    #@6c
    move-object/from16 v1, p0

    #@6e
    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@70
    .line 613
    const/16 v18, 0xa

    #@72
    const/16 v19, 0x0

    #@74
    .line 612
    move/from16 v0, v18

    #@76
    move/from16 v1, v19

    #@78
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7b
    move-result v18

    #@7c
    move/from16 v0, v18

    #@7e
    move-object/from16 v1, p0

    #@80
    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    #@82
    .line 615
    const/16 v18, 0x0

    #@84
    const/16 v19, 0x0

    #@86
    move/from16 v0, v18

    #@88
    move/from16 v1, v19

    #@8a
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    #@8d
    move-result v18

    #@8e
    move/from16 v0, v18

    #@90
    move-object/from16 v1, p0

    #@92
    iput v0, v1, Landroid/widget/NumberPicker;->mSolidColor:I

    #@94
    .line 618
    const/16 v18, 0x2

    #@96
    .line 617
    move/from16 v0, v18

    #@98
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9b
    move-result-object v17

    #@9c
    .line 619
    .local v17, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_0

    #@9e
    .line 620
    move-object/from16 v0, v17

    #@a0
    move-object/from16 v1, p0

    #@a2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a5
    .line 621
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    #@a8
    move-result v18

    #@a9
    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@ac
    .line 622
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@af
    move-result v18

    #@b0
    if-eqz v18, :cond_0

    #@b2
    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    #@b5
    move-result-object v18

    #@b6
    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@b9
    .line 626
    :cond_0
    move-object/from16 v0, v17

    #@bb
    move-object/from16 v1, p0

    #@bd
    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@bf
    .line 629
    const/high16 v18, 0x40000000    # 2.0f

    #@c1
    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    #@c4
    move-result-object v19

    #@c5
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@c8
    move-result-object v19

    #@c9
    .line 629
    const/16 v20, 0x1

    #@cb
    .line 628
    move/from16 v0, v20

    #@cd
    move/from16 v1, v18

    #@cf
    move-object/from16 v2, v19

    #@d1
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@d4
    move-result v18

    #@d5
    move/from16 v0, v18

    #@d7
    float-to-int v11, v0

    #@d8
    .line 632
    .local v11, "defSelectionDividerHeight":I
    const/16 v18, 0x3

    #@da
    .line 631
    move/from16 v0, v18

    #@dc
    invoke-virtual {v6, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@df
    move-result v18

    #@e0
    move/from16 v0, v18

    #@e2
    move-object/from16 v1, p0

    #@e4
    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    #@e6
    .line 635
    const/high16 v18, 0x42400000    # 48.0f

    #@e8
    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    #@eb
    move-result-object v19

    #@ec
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@ef
    move-result-object v19

    #@f0
    .line 635
    const/16 v20, 0x1

    #@f2
    .line 634
    move/from16 v0, v20

    #@f4
    move/from16 v1, v18

    #@f6
    move-object/from16 v2, v19

    #@f8
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@fb
    move-result v18

    #@fc
    move/from16 v0, v18

    #@fe
    float-to-int v10, v0

    #@ff
    .line 638
    .local v10, "defSelectionDividerDistance":I
    const/16 v18, 0x4

    #@101
    .line 637
    move/from16 v0, v18

    #@103
    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@106
    move-result v18

    #@107
    move/from16 v0, v18

    #@109
    move-object/from16 v1, p0

    #@10b
    iput v0, v1, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    #@10d
    .line 641
    const/16 v18, 0x5

    #@10f
    const/16 v19, -0x1

    #@111
    .line 640
    move/from16 v0, v18

    #@113
    move/from16 v1, v19

    #@115
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@118
    move-result v18

    #@119
    move/from16 v0, v18

    #@11b
    move-object/from16 v1, p0

    #@11d
    iput v0, v1, Landroid/widget/NumberPicker;->mMinHeight:I

    #@11f
    .line 644
    const/16 v18, 0x6

    #@121
    const/16 v19, -0x1

    #@123
    .line 643
    move/from16 v0, v18

    #@125
    move/from16 v1, v19

    #@127
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@12a
    move-result v18

    #@12b
    move/from16 v0, v18

    #@12d
    move-object/from16 v1, p0

    #@12f
    iput v0, v1, Landroid/widget/NumberPicker;->mMaxHeight:I

    #@131
    .line 645
    move-object/from16 v0, p0

    #@133
    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    #@135
    move/from16 v18, v0

    #@137
    const/16 v19, -0x1

    #@139
    move/from16 v0, v18

    #@13b
    move/from16 v1, v19

    #@13d
    if-eq v0, v1, :cond_2

    #@13f
    move-object/from16 v0, p0

    #@141
    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    #@143
    move/from16 v18, v0

    #@145
    const/16 v19, -0x1

    #@147
    move/from16 v0, v18

    #@149
    move/from16 v1, v19

    #@14b
    if-eq v0, v1, :cond_2

    #@14d
    .line 646
    move-object/from16 v0, p0

    #@14f
    iget v0, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    #@151
    move/from16 v18, v0

    #@153
    move-object/from16 v0, p0

    #@155
    iget v0, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    #@157
    move/from16 v19, v0

    #@159
    move/from16 v0, v18

    #@15b
    move/from16 v1, v19

    #@15d
    if-le v0, v1, :cond_2

    #@15f
    .line 647
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@161
    const-string/jumbo v19, "minHeight > maxHeight"

    #@164
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@167
    throw v18

    #@168
    .line 610
    .end local v10    # "defSelectionDividerDistance":I
    .end local v11    # "defSelectionDividerHeight":I
    .end local v17    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v18, 0x0

    #@16a
    goto/16 :goto_0

    #@16c
    .line 651
    .restart local v10    # "defSelectionDividerDistance":I
    .restart local v11    # "defSelectionDividerHeight":I
    .restart local v17    # "selectionDivider":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/16 v18, 0x7

    #@16e
    const/16 v19, -0x1

    #@170
    .line 650
    move/from16 v0, v18

    #@172
    move/from16 v1, v19

    #@174
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@177
    move-result v18

    #@178
    move/from16 v0, v18

    #@17a
    move-object/from16 v1, p0

    #@17c
    iput v0, v1, Landroid/widget/NumberPicker;->mMinWidth:I

    #@17e
    .line 654
    const/16 v18, 0x8

    #@180
    const/16 v19, -0x1

    #@182
    .line 653
    move/from16 v0, v18

    #@184
    move/from16 v1, v19

    #@186
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@189
    move-result v18

    #@18a
    move/from16 v0, v18

    #@18c
    move-object/from16 v1, p0

    #@18e
    iput v0, v1, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@190
    .line 655
    move-object/from16 v0, p0

    #@192
    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    #@194
    move/from16 v18, v0

    #@196
    const/16 v19, -0x1

    #@198
    move/from16 v0, v18

    #@19a
    move/from16 v1, v19

    #@19c
    if-eq v0, v1, :cond_3

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@1a2
    move/from16 v18, v0

    #@1a4
    const/16 v19, -0x1

    #@1a6
    move/from16 v0, v18

    #@1a8
    move/from16 v1, v19

    #@1aa
    if-eq v0, v1, :cond_3

    #@1ac
    .line 656
    move-object/from16 v0, p0

    #@1ae
    iget v0, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    #@1b0
    move/from16 v18, v0

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@1b6
    move/from16 v19, v0

    #@1b8
    move/from16 v0, v18

    #@1ba
    move/from16 v1, v19

    #@1bc
    if-le v0, v1, :cond_3

    #@1be
    .line 657
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@1c0
    const-string/jumbo v19, "minWidth > maxWidth"

    #@1c3
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c6
    throw v18

    #@1c7
    .line 660
    :cond_3
    move-object/from16 v0, p0

    #@1c9
    iget v0, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@1cb
    move/from16 v18, v0

    #@1cd
    const/16 v19, -0x1

    #@1cf
    move/from16 v0, v18

    #@1d1
    move/from16 v1, v19

    #@1d3
    if-ne v0, v1, :cond_5

    #@1d5
    const/16 v18, 0x1

    #@1d7
    :goto_1
    move/from16 v0, v18

    #@1d9
    move-object/from16 v1, p0

    #@1db
    iput-boolean v0, v1, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    #@1dd
    .line 663
    const/16 v18, 0x9

    #@1df
    .line 662
    move/from16 v0, v18

    #@1e1
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1e4
    move-result-object v18

    #@1e5
    move-object/from16 v0, v18

    #@1e7
    move-object/from16 v1, p0

    #@1e9
    iput-object v0, v1, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@1eb
    .line 665
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@1ee
    .line 667
    new-instance v18, Landroid/widget/NumberPicker$PressedStateHelper;

    #@1f0
    move-object/from16 v0, v18

    #@1f2
    move-object/from16 v1, p0

    #@1f4
    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    #@1f7
    move-object/from16 v0, v18

    #@1f9
    move-object/from16 v1, p0

    #@1fb
    iput-object v0, v1, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@1fd
    .line 674
    move-object/from16 v0, p0

    #@1ff
    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@201
    move/from16 v18, v0

    #@203
    if-eqz v18, :cond_6

    #@205
    const/16 v18, 0x0

    #@207
    :goto_2
    move-object/from16 v0, p0

    #@209
    move/from16 v1, v18

    #@20b
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    #@20e
    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    #@211
    move-result-object v18

    #@212
    .line 677
    const-string/jumbo v19, "layout_inflater"

    #@215
    .line 676
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@218
    move-result-object v12

    #@219
    check-cast v12, Landroid/view/LayoutInflater;

    #@21b
    .line 678
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/16 v18, 0x1

    #@21d
    move-object/from16 v0, p0

    #@21f
    move/from16 v1, v18

    #@221
    invoke-virtual {v12, v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@224
    .line 680
    new-instance v14, Landroid/widget/NumberPicker$1;

    #@226
    move-object/from16 v0, p0

    #@228
    invoke-direct {v14, v0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    #@22b
    .line 692
    .local v14, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v15, Landroid/widget/NumberPicker$2;

    #@22d
    move-object/from16 v0, p0

    #@22f
    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    #@232
    .line 706
    .local v15, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    #@234
    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@236
    move/from16 v18, v0

    #@238
    if-nez v18, :cond_7

    #@23a
    .line 707
    const v18, 0x1020381

    #@23d
    move-object/from16 v0, p0

    #@23f
    move/from16 v1, v18

    #@241
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@244
    move-result-object v18

    #@245
    check-cast v18, Landroid/widget/ImageButton;

    #@247
    move-object/from16 v0, v18

    #@249
    move-object/from16 v1, p0

    #@24b
    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    #@24d
    .line 708
    move-object/from16 v0, p0

    #@24f
    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    #@251
    move-object/from16 v18, v0

    #@253
    move-object/from16 v0, v18

    #@255
    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@258
    .line 709
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    #@25c
    move-object/from16 v18, v0

    #@25e
    move-object/from16 v0, v18

    #@260
    invoke-virtual {v0, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@263
    .line 715
    :goto_3
    move-object/from16 v0, p0

    #@265
    iget-boolean v0, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@267
    move/from16 v18, v0

    #@269
    if-nez v18, :cond_8

    #@26b
    .line 716
    const v18, 0x1020383

    #@26e
    move-object/from16 v0, p0

    #@270
    move/from16 v1, v18

    #@272
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@275
    move-result-object v18

    #@276
    check-cast v18, Landroid/widget/ImageButton;

    #@278
    move-object/from16 v0, v18

    #@27a
    move-object/from16 v1, p0

    #@27c
    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    #@27e
    .line 717
    move-object/from16 v0, p0

    #@280
    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    #@282
    move-object/from16 v18, v0

    #@284
    move-object/from16 v0, v18

    #@286
    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@289
    .line 718
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    #@28d
    move-object/from16 v18, v0

    #@28f
    move-object/from16 v0, v18

    #@291
    invoke-virtual {v0, v15}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@294
    .line 724
    :goto_4
    const v18, 0x1020382

    #@297
    move-object/from16 v0, p0

    #@299
    move/from16 v1, v18

    #@29b
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    #@29e
    move-result-object v18

    #@29f
    check-cast v18, Landroid/widget/EditText;

    #@2a1
    move-object/from16 v0, v18

    #@2a3
    move-object/from16 v1, p0

    #@2a5
    iput-object v0, v1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2a7
    .line 725
    move-object/from16 v0, p0

    #@2a9
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2ab
    move-object/from16 v18, v0

    #@2ad
    new-instance v19, Landroid/widget/NumberPicker$3;

    #@2af
    move-object/from16 v0, v19

    #@2b1
    move-object/from16 v1, p0

    #@2b3
    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    #@2b6
    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@2b9
    .line 735
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2bd
    move-object/from16 v18, v0

    #@2bf
    const/16 v19, 0x1

    #@2c1
    move/from16 v0, v19

    #@2c3
    new-array v0, v0, [Landroid/text/InputFilter;

    #@2c5
    move-object/from16 v19, v0

    #@2c7
    .line 736
    new-instance v20, Landroid/widget/NumberPicker$InputTextFilter;

    #@2c9
    move-object/from16 v0, v20

    #@2cb
    move-object/from16 v1, p0

    #@2cd
    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    #@2d0
    const/16 v21, 0x0

    #@2d2
    aput-object v20, v19, v21

    #@2d4
    .line 735
    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    #@2d7
    .line 739
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2db
    move-object/from16 v18, v0

    #@2dd
    const/16 v19, 0x2

    #@2df
    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setRawInputType(I)V

    #@2e2
    .line 740
    move-object/from16 v0, p0

    #@2e4
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2e6
    move-object/from16 v18, v0

    #@2e8
    const/16 v19, 0x6

    #@2ea
    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setImeOptions(I)V

    #@2ed
    .line 743
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@2f0
    move-result-object v9

    #@2f1
    .line 744
    .local v9, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@2f4
    move-result v18

    #@2f5
    move/from16 v0, v18

    #@2f7
    move-object/from16 v1, p0

    #@2f9
    iput v0, v1, Landroid/widget/NumberPicker;->mTouchSlop:I

    #@2fb
    .line 745
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@2fe
    move-result v18

    #@2ff
    move/from16 v0, v18

    #@301
    move-object/from16 v1, p0

    #@303
    iput v0, v1, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    #@305
    .line 746
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@308
    move-result v18

    #@309
    div-int/lit8 v18, v18, 0x8

    #@30b
    move/from16 v0, v18

    #@30d
    move-object/from16 v1, p0

    #@30f
    iput v0, v1, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    #@311
    .line 748
    move-object/from16 v0, p0

    #@313
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@315
    move-object/from16 v18, v0

    #@317
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTextSize()F

    #@31a
    move-result v18

    #@31b
    move/from16 v0, v18

    #@31d
    float-to-int v0, v0

    #@31e
    move/from16 v18, v0

    #@320
    move/from16 v0, v18

    #@322
    move-object/from16 v1, p0

    #@324
    iput v0, v1, Landroid/widget/NumberPicker;->mTextSize:I

    #@326
    .line 751
    new-instance v16, Landroid/graphics/Paint;

    #@328
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    #@32b
    .line 752
    .local v16, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    #@32d
    move-object/from16 v0, v16

    #@32f
    move/from16 v1, v18

    #@331
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@334
    .line 753
    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    #@336
    move-object/from16 v0, v16

    #@338
    move-object/from16 v1, v18

    #@33a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    #@33d
    .line 754
    move-object/from16 v0, p0

    #@33f
    iget v0, v0, Landroid/widget/NumberPicker;->mTextSize:I

    #@341
    move/from16 v18, v0

    #@343
    move/from16 v0, v18

    #@345
    int-to-float v0, v0

    #@346
    move/from16 v18, v0

    #@348
    move-object/from16 v0, v16

    #@34a
    move/from16 v1, v18

    #@34c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@34f
    .line 755
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@353
    move-object/from16 v18, v0

    #@355
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    #@358
    move-result-object v18

    #@359
    move-object/from16 v0, v16

    #@35b
    move-object/from16 v1, v18

    #@35d
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@360
    .line 756
    move-object/from16 v0, p0

    #@362
    iget-object v0, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@364
    move-object/from16 v18, v0

    #@366
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    #@369
    move-result-object v8

    #@36a
    .line 757
    .local v8, "colors":Landroid/content/res/ColorStateList;
    sget-object v18, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    #@36c
    const/16 v19, -0x1

    #@36e
    move-object/from16 v0, v18

    #@370
    move/from16 v1, v19

    #@372
    invoke-virtual {v8, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@375
    move-result v7

    #@376
    .line 758
    .local v7, "color":I
    move-object/from16 v0, v16

    #@378
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    #@37b
    .line 759
    move-object/from16 v0, v16

    #@37d
    move-object/from16 v1, p0

    #@37f
    iput-object v0, v1, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    #@381
    .line 762
    new-instance v18, Landroid/widget/Scroller;

    #@383
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    #@386
    move-result-object v19

    #@387
    const/16 v20, 0x0

    #@389
    const/16 v21, 0x1

    #@38b
    invoke-direct/range {v18 .. v21}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    #@38e
    move-object/from16 v0, v18

    #@390
    move-object/from16 v1, p0

    #@392
    iput-object v0, v1, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@394
    .line 763
    new-instance v18, Landroid/widget/Scroller;

    #@396
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    #@399
    move-result-object v19

    #@39a
    new-instance v20, Landroid/view/animation/DecelerateInterpolator;

    #@39c
    const/high16 v21, 0x40200000    # 2.5f

    #@39e
    invoke-direct/range {v20 .. v21}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@3a1
    invoke-direct/range {v18 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@3a4
    move-object/from16 v0, v18

    #@3a6
    move-object/from16 v1, p0

    #@3a8
    iput-object v0, v1, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@3aa
    .line 765
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@3ad
    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    #@3b0
    move-result v18

    #@3b1
    if-nez v18, :cond_4

    #@3b3
    .line 769
    const/16 v18, 0x1

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move/from16 v1, v18

    #@3b9
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    #@3bc
    .line 601
    :cond_4
    return-void

    #@3bd
    .line 660
    .end local v7    # "color":I
    .end local v8    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "configuration":Landroid/view/ViewConfiguration;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v15    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v16    # "paint":Landroid/graphics/Paint;
    :cond_5
    const/16 v18, 0x0

    #@3bf
    goto/16 :goto_1

    #@3c1
    .line 674
    :cond_6
    const/16 v18, 0x1

    #@3c3
    goto/16 :goto_2

    #@3c5
    .line 711
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    .restart local v14    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v15    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_7
    const/16 v18, 0x0

    #@3c7
    move-object/from16 v0, v18

    #@3c9
    move-object/from16 v1, p0

    #@3cb
    iput-object v0, v1, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    #@3cd
    goto/16 :goto_3

    #@3cf
    .line 720
    :cond_8
    const/16 v18, 0x0

    #@3d1
    move-object/from16 v0, v18

    #@3d3
    move-object/from16 v1, p0

    #@3d5
    iput-object v0, v1, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    #@3d7
    goto/16 :goto_4
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    #@0
    .prologue
    const/16 v5, 0x12c

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 1736
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 1737
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@a
    const/4 v2, 0x4

    #@b
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@e
    .line 1738
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@10
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1739
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@18
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    #@1b
    .line 1741
    :cond_0
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@1d
    .line 1742
    if-eqz p1, :cond_1

    #@1f
    .line 1743
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@21
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@23
    neg-int v4, v2

    #@24
    move v2, v1

    #@25
    move v3, v1

    #@26
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@29
    .line 1747
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@2c
    .line 1735
    :goto_1
    return-void

    #@2d
    .line 1745
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@2f
    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@31
    move v2, v1

    #@32
    move v3, v1

    #@33
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@36
    goto :goto_0

    #@37
    .line 1749
    :cond_2
    if-eqz p1, :cond_3

    #@39
    .line 1750
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    #@40
    goto :goto_1

    #@41
    .line 1752
    :cond_3
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@43
    add-int/lit8 v0, v0, -0x1

    #@45
    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    #@48
    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1856
    array-length v2, p1

    #@2
    add-int/lit8 v0, v2, -0x1

    #@4
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@6
    .line 1857
    add-int/lit8 v2, v0, -0x1

    #@8
    aget v2, p1, v2

    #@a
    aput v2, p1, v0

    #@c
    .line 1856
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 1859
    :cond_0
    const/4 v2, 0x1

    #@10
    aget v2, p1, v2

    #@12
    add-int/lit8 v1, v2, -0x1

    #@14
    .line 1860
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@16
    if-eqz v2, :cond_1

    #@18
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@1a
    if-ge v1, v2, :cond_1

    #@1c
    .line 1861
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1e
    .line 1863
    :cond_1
    aput v1, p1, v3

    #@20
    .line 1864
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    #@23
    .line 1855
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    #@0
    .prologue
    .line 1872
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    #@2
    .line 1873
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/lang/String;

    #@8
    .line 1874
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    .line 1875
    return-void

    #@b
    .line 1877
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@d
    if-lt p1, v3, :cond_1

    #@f
    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@11
    if-le p1, v3, :cond_2

    #@13
    .line 1878
    :cond_1
    const-string/jumbo v2, ""

    #@16
    .line 1887
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@19
    .line 1871
    return-void

    #@1a
    .line 1880
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@1c
    if-eqz v3, :cond_3

    #@1e
    .line 1881
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@20
    sub-int v1, p1, v3

    #@22
    .line 1882
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@24
    aget-object v2, v3, v1

    #@26
    goto :goto_0

    #@27
    .line 1884
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2147
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@3
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@5
    sub-int v4, v0, v2

    #@7
    .line 2148
    .local v4, "deltaY":I
    if-eqz v4, :cond_2

    #@9
    .line 2149
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@b
    .line 2150
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@e
    move-result v0

    #@f
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@11
    div-int/lit8 v2, v2, 0x2

    #@13
    if-le v0, v2, :cond_0

    #@15
    .line 2151
    if-lez v4, :cond_1

    #@17
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@19
    neg-int v0, v0

    #@1a
    :goto_0
    add-int/2addr v4, v0

    #@1b
    .line 2153
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@1d
    const/16 v5, 0x320

    #@1f
    move v2, v1

    #@20
    move v3, v1

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@24
    .line 2154
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@27
    .line 2155
    const/4 v0, 0x1

    #@28
    return v0

    #@29
    .line 2151
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@2b
    goto :goto_0

    #@2c
    .line 2157
    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    #@0
    .prologue
    const v8, 0x7fffffff

    #@3
    const/4 v1, 0x0

    #@4
    .line 1812
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@6
    .line 1814
    if-lez p1, :cond_0

    #@8
    .line 1815
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@a
    move v2, v1

    #@b
    move v3, v1

    #@c
    move v4, p1

    #@d
    move v5, v1

    #@e
    move v6, v1

    #@f
    move v7, v1

    #@10
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@13
    .line 1820
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@16
    .line 1811
    return-void

    #@17
    .line 1817
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@19
    move v2, v8

    #@1a
    move v3, v1

    #@1b
    move v4, p1

    #@1c
    move v5, v1

    #@1d
    move v6, v1

    #@1e
    move v7, v1

    #@1f
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@22
    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1891
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 2741
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "%d"

    #@7
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2006
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2008
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 2009
    :catch_0
    move-exception v0

    #@a
    .line 2032
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@c
    return v2

    #@d
    .line 2013
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@10
    array-length v2, v2

    #@11
    if-ge v1, v2, :cond_2

    #@13
    .line 2015
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    .line 2016
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@19
    aget-object v2, v2, v1

    #@1b
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 2017
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@27
    add-int/2addr v2, v1

    #@28
    return v2

    #@29
    .line 2013
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 2026
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    move-result v2

    #@30
    return v2

    #@31
    .line 2027
    :catch_1
    move-exception v0

    #@32
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    #@0
    .prologue
    .line 206
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    #@2
    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    #@0
    .prologue
    .line 1827
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 1828
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@6
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@8
    sub-int v1, p1, v1

    #@a
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@c
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@e
    sub-int/2addr v2, v3

    #@f
    rem-int/2addr v1, v2

    #@10
    add-int/2addr v0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    return v0

    #@14
    .line 1829
    :cond_0
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@16
    if-ge p1, v0, :cond_1

    #@18
    .line 1830
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1a
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@1c
    sub-int/2addr v1, p1

    #@1d
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1f
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@21
    sub-int/2addr v2, v3

    #@22
    rem-int/2addr v1, v2

    #@23
    sub-int/2addr v0, v1

    #@24
    add-int/lit8 v0, v0, 0x1

    #@26
    return v0

    #@27
    .line 1832
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    #@0
    .prologue
    .line 1279
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@3
    move-result-object v0

    #@4
    .line 1280
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1281
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@16
    .line 1282
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 1283
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@1c
    const/4 v2, 0x4

    #@1d
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@20
    .line 1278
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    #@0
    .prologue
    .line 1840
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@2
    add-int/lit8 v2, v2, -0x1

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 1841
    add-int/lit8 v2, v0, 0x1

    #@8
    aget v2, p1, v2

    #@a
    aput v2, p1, v0

    #@c
    .line 1840
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1843
    :cond_0
    array-length v2, p1

    #@10
    add-int/lit8 v2, v2, -0x2

    #@12
    aget v2, p1, v2

    #@14
    add-int/lit8 v1, v2, 0x1

    #@16
    .line 1844
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1c
    if-le v1, v2, :cond_1

    #@1e
    .line 1845
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@20
    .line 1847
    :cond_1
    array-length v2, p1

    #@21
    add-int/lit8 v2, v2, -0x1

    #@23
    aput v1, p1, v2

    #@25
    .line 1848
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    #@28
    .line 1839
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    #@0
    .prologue
    .line 1775
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    #@4
    .line 1776
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    #@6
    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    #@8
    sub-int/2addr v0, v1

    #@9
    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    #@b
    sub-int/2addr v0, v1

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    #@11
    .line 1774
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    #@0
    .prologue
    .line 1758
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    #@3
    .line 1759
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@5
    .line 1760
    .local v1, "selectorIndices":[I
    array-length v5, v1

    #@6
    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    #@8
    mul-int v4, v5, v6

    #@a
    .line 1761
    .local v4, "totalTextHeight":I
    iget v5, p0, Landroid/widget/NumberPicker;->mBottom:I

    #@c
    iget v6, p0, Landroid/widget/NumberPicker;->mTop:I

    #@e
    sub-int/2addr v5, v6

    #@f
    sub-int/2addr v5, v4

    #@10
    int-to-float v3, v5

    #@11
    .line 1762
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    #@12
    int-to-float v2, v5

    #@13
    .line 1763
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    #@15
    const/high16 v6, 0x3f000000    # 0.5f

    #@17
    add-float/2addr v5, v6

    #@18
    float-to-int v5, v5

    #@19
    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    #@1b
    .line 1764
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    #@1d
    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    #@1f
    add-int/2addr v5, v6

    #@20
    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@22
    .line 1767
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@24
    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    #@27
    move-result v5

    #@28
    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2a
    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    #@2d
    move-result v6

    #@2e
    add-int v0, v5, v6

    #@30
    .line 1769
    .local v0, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@32
    mul-int/lit8 v5, v5, 0x1

    #@34
    .line 1768
    sub-int v5, v0, v5

    #@36
    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@38
    .line 1770
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@3a
    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@3c
    .line 1771
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@3f
    .line 1757
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    #@0
    .prologue
    .line 1688
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 1689
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@7
    .line 1690
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    #@a
    move-result v0

    #@b
    .line 1691
    .local v0, "current":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@e
    array-length v4, v4

    #@f
    if-ge v1, v4, :cond_1

    #@11
    .line 1692
    add-int/lit8 v4, v1, -0x1

    #@13
    add-int v2, v0, v4

    #@15
    .line 1693
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 1694
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    #@1c
    move-result v2

    #@1d
    .line 1696
    :cond_0
    aput v2, v3, v1

    #@1f
    .line 1697
    aget v4, v3, v1

    #@21
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    #@24
    .line 1691
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1687
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    .line 1646
    const/4 v2, -0x1

    #@3
    if-ne p2, v2, :cond_0

    #@5
    .line 1647
    return p1

    #@6
    .line 1649
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v1

    #@a
    .line 1650
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v0

    #@e
    .line 1651
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    #@11
    .line 1659
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Unknown measure mode: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 1653
    :sswitch_0
    return p1

    #@2c
    .line 1655
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    #@2f
    move-result v2

    #@30
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@33
    move-result v2

    #@34
    return v2

    #@35
    .line 1657
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@38
    move-result v2

    #@39
    return v2

    #@3a
    .line 1651
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 829
    invoke-virtual {p1, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    #@5
    .line 830
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    #@8
    move-result v3

    #@9
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    #@c
    move-result v4

    #@d
    sub-int v0, v3, v4

    #@f
    .line 831
    .local v0, "amountToScroll":I
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@11
    add-int/2addr v3, v0

    #@12
    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@14
    rem-int v1, v3, v4

    #@16
    .line 832
    .local v1, "futureScrollOffset":I
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@18
    sub-int v2, v3, v1

    #@1a
    .line 833
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    #@1c
    .line 834
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@1f
    move-result v3

    #@20
    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@22
    div-int/lit8 v4, v4, 0x2

    #@24
    if-le v3, v4, :cond_0

    #@26
    .line 835
    if-lez v2, :cond_1

    #@28
    .line 836
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@2a
    sub-int/2addr v2, v3

    #@2b
    .line 841
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    #@2c
    .line 842
    invoke-virtual {p0, v5, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    #@2f
    .line 843
    return v6

    #@30
    .line 838
    :cond_1
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@32
    add-int/2addr v2, v3

    #@33
    goto :goto_0

    #@34
    .line 845
    :cond_2
    return v5
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 1935
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1936
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    #@6
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@8
    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    #@b
    .line 1934
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    #@0
    .prologue
    .line 1799
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1800
    return-void

    #@5
    .line 1802
    :cond_0
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    #@7
    .line 1803
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1804
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    #@d
    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    #@10
    .line 1798
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    #@0
    .prologue
    .line 1783
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@2
    if-ne p1, v0, :cond_2

    #@4
    .line 1784
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1785
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@d
    .line 1787
    :cond_0
    const/4 v0, 0x0

    #@e
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    #@11
    .line 1782
    :cond_1
    :goto_0
    return-void

    #@12
    .line 1789
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    #@14
    const/4 v1, 0x1

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 1790
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@1a
    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    #@0
    .prologue
    .line 1969
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1970
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    #@9
    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@b
    .line 1974
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@d
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@10
    move-result v1

    #@11
    int-to-long v2, v1

    #@12
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@15
    .line 1968
    return-void

    #@16
    .line 1972
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@18
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1b
    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    #@0
    .prologue
    .line 1946
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1947
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    #@9
    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@b
    .line 1951
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@d
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    #@10
    .line 1952
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@12
    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    #@15
    .line 1945
    return-void

    #@16
    .line 1949
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@18
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1b
    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    #@0
    .prologue
    .line 2040
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2041
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    #@9
    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@b
    .line 2045
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@d
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->-set1(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    #@10
    .line 2046
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@12
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->-set0(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    #@15
    .line 2047
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@17
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    #@1a
    .line 2039
    return-void

    #@1b
    .line 2043
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@1d
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@20
    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    #@0
    .prologue
    .line 1990
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1991
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 1993
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1994
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    #@f
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@12
    .line 1996
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1997
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@18
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1b
    .line 1999
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@1d
    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    #@20
    .line 1989
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    #@0
    .prologue
    .line 1981
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1982
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 1980
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    #@0
    .prologue
    .line 1959
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1960
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 1958
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    #@0
    .prologue
    .line 1675
    const/4 v1, -0x1

    #@1
    if-eq p1, v1, :cond_0

    #@3
    .line 1676
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@6
    move-result v0

    #@7
    .line 1677
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    #@8
    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1679
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    #@0
    .prologue
    .line 1708
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@2
    if-ne v1, p1, :cond_0

    #@4
    .line 1709
    return-void

    #@5
    .line 1712
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@7
    if-eqz v1, :cond_2

    #@9
    .line 1713
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    #@c
    move-result p1

    #@d
    .line 1718
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@f
    .line 1719
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@11
    .line 1720
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@14
    .line 1721
    if-eqz p2, :cond_1

    #@16
    .line 1722
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    #@19
    .line 1724
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    #@1c
    .line 1725
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@1f
    .line 1707
    return-void

    #@20
    .line 1715
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@22
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    #@25
    move-result p1

    #@26
    .line 1716
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@28
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@2b
    move-result p1

    #@2c
    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1265
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    #@4
    move-result-object v0

    #@5
    .line 1266
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    #@7
    .line 1267
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1268
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@d
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@10
    .line 1270
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@12
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    #@15
    .line 1271
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@1a
    .line 1264
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    #@0
    .prologue
    .line 1292
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 1293
    return-void

    #@5
    .line 1295
    :cond_0
    const/4 v4, 0x0

    #@6
    .line 1296
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@8
    if-nez v8, :cond_6

    #@a
    .line 1297
    const/4 v3, 0x0

    #@b
    .line 1298
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    const/16 v8, 0x9

    #@e
    if-gt v2, v8, :cond_2

    #@10
    .line 1299
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    #@12
    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@19
    move-result v1

    #@1a
    .line 1300
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    #@1c
    if-lez v8, :cond_1

    #@1e
    .line 1301
    move v3, v1

    #@1f
    .line 1298
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1304
    .end local v1    # "digitWidth":F
    :cond_2
    const/4 v5, 0x0

    #@23
    .line 1305
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@25
    .line 1306
    .local v0, "current":I
    :goto_1
    if-lez v0, :cond_3

    #@27
    .line 1307
    add-int/lit8 v5, v5, 0x1

    #@29
    .line 1308
    div-int/lit8 v0, v0, 0xa

    #@2b
    goto :goto_1

    #@2c
    .line 1310
    :cond_3
    int-to-float v8, v5

    #@2d
    mul-float/2addr v8, v3

    #@2e
    float-to-int v4, v8

    #@2f
    .line 1320
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_4
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@31
    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    #@34
    move-result v8

    #@35
    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@37
    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    #@3a
    move-result v9

    #@3b
    add-int/2addr v8, v9

    #@3c
    add-int/2addr v4, v8

    #@3d
    .line 1321
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@3f
    if-eq v8, v4, :cond_5

    #@41
    .line 1322
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    #@43
    if-le v4, v8, :cond_8

    #@45
    .line 1323
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@47
    .line 1327
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@4a
    .line 1291
    :cond_5
    return-void

    #@4b
    .line 1312
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@4d
    array-length v7, v8

    #@4e
    .line 1313
    .local v7, "valueCount":I
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v7, :cond_4

    #@51
    .line 1314
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    #@53
    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@55
    aget-object v9, v9, v2

    #@57
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@5a
    move-result v6

    #@5b
    .line 1315
    .local v6, "textWidth":F
    int-to-float v8, v4

    #@5c
    cmpl-float v8, v6, v8

    #@5e
    if-lez v8, :cond_7

    #@60
    .line 1316
    float-to-int v4, v6

    #@61
    .line 1313
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@63
    goto :goto_3

    #@64
    .line 1325
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    #@66
    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@68
    goto :goto_2
.end method

.method private updateInputTextView()Z
    .locals 4

    #@0
    .prologue
    .line 1920
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@2
    if-nez v1, :cond_1

    #@4
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@6
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 1922
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@12
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 1927
    :cond_0
    const/4 v1, 0x0

    #@21
    return v1

    #@22
    .line 1921
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@24
    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    #@26
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@28
    sub-int/2addr v2, v3

    #@29
    aget-object v0, v1, v2

    #@2b
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 1923
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2e
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@31
    .line 1924
    const/4 v1, 0x1

    #@32
    return v1
.end method

.method private updateWrapSelectorWheel()V
    .locals 3

    #@0
    .prologue
    .line 1374
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@2
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@4
    sub-int/2addr v1, v2

    #@5
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@7
    array-length v2, v2

    #@8
    if-lt v1, v2, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 1375
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz v0, :cond_1

    #@d
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    #@f
    :goto_1
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@11
    .line 1373
    return-void

    #@12
    .line 1374
    .end local v0    # "wrappingAllowed":Z
    :cond_0
    const/4 v0, 0x0

    #@13
    .restart local v0    # "wrappingAllowed":Z
    goto :goto_0

    #@14
    .line 1375
    :cond_1
    const/4 v1, 0x0

    #@15
    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1895
    check-cast p1, Landroid/widget/TextView;

    #@2
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1896
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1898
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@13
    .line 1894
    :goto_0
    return-void

    #@14
    .line 1901
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 1902
    .local v0, "current":I
    const/4 v2, 0x1

    #@1d
    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    #@20
    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1085
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@3
    .line 1086
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1087
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@b
    .line 1088
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1089
    return-void

    #@12
    .line 1092
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@15
    .line 1093
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    #@18
    move-result v0

    #@19
    .line 1094
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 1095
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    #@20
    move-result v2

    #@21
    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@23
    .line 1097
    :cond_1
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@25
    sub-int v2, v0, v2

    #@27
    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    #@2a
    .line 1098
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    #@2c
    .line 1099
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 1100
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    #@35
    .line 1084
    :goto_0
    return-void

    #@36
    .line 1102
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@39
    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    #@0
    .prologue
    .line 1162
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    #@0
    .prologue
    .line 1152
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@2
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    #@0
    .prologue
    .line 1157
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@4
    sub-int/2addr v0, v1

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@9
    mul-int/2addr v0, v1

    #@a
    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/16 v8, 0x100

    #@3
    const/16 v7, 0x80

    #@5
    const/16 v6, 0x40

    #@7
    const/4 v5, -0x1

    #@8
    .line 1036
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@a
    if-nez v4, :cond_0

    #@c
    .line 1037
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    #@f
    move-result v4

    #@10
    return v4

    #@11
    .line 1039
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    #@13
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@20
    move-result v4

    #@21
    float-to-int v1, v4

    #@22
    .line 1042
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@24
    if-ge v1, v4, :cond_2

    #@26
    .line 1043
    const/4 v2, 0x3

    #@27
    .line 1049
    .local v2, "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@2a
    move-result v0

    #@2b
    .line 1051
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    #@31
    .line 1052
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    #@34
    .line 1080
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    #@35
    return v4

    #@36
    .line 1044
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@38
    if-le v1, v4, :cond_3

    #@3a
    .line 1045
    const/4 v2, 0x1

    #@3b
    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    #@3c
    .line 1047
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    #@3d
    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    #@3e
    .line 1054
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@41
    .line 1056
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    #@43
    .line 1057
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    #@46
    goto :goto_1

    #@47
    .line 1061
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    #@49
    if-eq v4, v2, :cond_1

    #@4b
    .line 1062
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    #@4d
    if-eq v4, v5, :cond_1

    #@4f
    .line 1064
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    #@51
    .line 1063
    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@54
    .line 1066
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@57
    .line 1068
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    #@59
    .line 1069
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    #@5c
    goto :goto_1

    #@5d
    .line 1074
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    #@60
    .line 1076
    iput v5, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    #@62
    goto :goto_1

    #@63
    .line 1052
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v4, 0x14

    #@2
    const/4 v2, 0x1

    #@3
    .line 987
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@6
    move-result v0

    #@7
    .line 988
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    #@a
    .line 1019
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 991
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@12
    goto :goto_0

    #@13
    .line 995
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 998
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@1a
    move-result v1

    #@1b
    packed-switch v1, :pswitch_data_0

    #@1e
    goto :goto_0

    #@1f
    .line 1000
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@21
    if-nez v1, :cond_1

    #@23
    if-ne v0, v4, :cond_3

    #@25
    .line 1001
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    #@28
    move-result v1

    #@29
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    #@2c
    move-result v3

    #@2d
    if-ge v1, v3, :cond_0

    #@2f
    .line 1002
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    #@32
    .line 1003
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    #@34
    .line 1004
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@37
    .line 1005
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@39
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 1006
    if-ne v0, v4, :cond_4

    #@41
    move v1, v2

    #@42
    :goto_2
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    #@45
    .line 1008
    :cond_2
    return v2

    #@46
    .line 1001
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    #@49
    move-result v1

    #@4a
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    #@4d
    move-result v3

    #@4e
    if-le v1, v3, :cond_0

    #@50
    goto :goto_1

    #@51
    .line 1006
    :cond_4
    const/4 v1, 0x0

    #@52
    goto :goto_2

    #@53
    .line 1012
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    #@55
    if-ne v1, v0, :cond_0

    #@57
    .line 1013
    const/4 v1, -0x1

    #@58
    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    #@5a
    .line 1014
    return v2

    #@5b
    .line 988
    nop

    #@5c
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    #@6e
    .line 998
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 976
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 982
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 979
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@f
    goto :goto_0

    #@10
    .line 976
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 1025
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1031
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 1028
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@f
    goto :goto_0

    #@10
    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 1529
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    #@3
    .line 1531
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    #@6
    move-result-object v0

    #@7
    .line 1533
    .local v0, "state":[I
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1534
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@18
    .line 1528
    :cond_0
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    #@0
    .prologue
    .line 1629
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1630
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1632
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1633
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    #@f
    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    #@12
    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    #@14
    .line 1635
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    #@16
    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    #@0
    .prologue
    .line 1517
    const v0, 0x3f666666    # 0.9f

    #@3
    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1481
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    #@0
    .prologue
    .line 1444
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@2
    return v0
.end method

.method public getMinValue()I
    .locals 1

    #@0
    .prologue
    .line 1407
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@2
    return v0
.end method

.method public getSolidColor()I
    .locals 1

    #@0
    .prologue
    .line 1167
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    #@2
    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    #@0
    .prologue
    .line 1512
    const v0, 0x3f666666    # 0.9f

    #@3
    return v0
.end method

.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 1398
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@2
    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    #@0
    .prologue
    .line 1340
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@2
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 1541
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    #@3
    .line 1543
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1544
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 1540
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 1522
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@3
    .line 1523
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@6
    .line 1521
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1560
    move-object/from16 v0, p0

    #@2
    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@4
    if-nez v12, :cond_0

    #@6
    .line 1561
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    #@9
    .line 1562
    return-void

    #@a
    .line 1564
    :cond_0
    move-object/from16 v0, p0

    #@c
    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    #@e
    if-eqz v12, :cond_4

    #@10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    #@13
    move-result v7

    #@14
    .line 1565
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget v12, v0, Landroid/widget/NumberPicker;->mRight:I

    #@18
    move-object/from16 v0, p0

    #@1a
    iget v13, v0, Landroid/widget/NumberPicker;->mLeft:I

    #@1c
    sub-int/2addr v12, v13

    #@1d
    div-int/lit8 v12, v12, 0x2

    #@1f
    int-to-float v10, v12

    #@20
    .line 1566
    .local v10, "x":F
    move-object/from16 v0, p0

    #@22
    iget v12, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@24
    int-to-float v11, v12

    #@25
    .line 1569
    .local v11, "y":F
    if-eqz v7, :cond_2

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    if-eqz v12, :cond_2

    #@2d
    .line 1570
    move-object/from16 v0, p0

    #@2f
    iget v12, v0, Landroid/widget/NumberPicker;->mScrollState:I

    #@31
    if-nez v12, :cond_2

    #@33
    .line 1571
    move-object/from16 v0, p0

    #@35
    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    #@37
    if-eqz v12, :cond_1

    #@39
    .line 1572
    move-object/from16 v0, p0

    #@3b
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@3d
    sget-object v13, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    #@3f
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@42
    .line 1573
    move-object/from16 v0, p0

    #@44
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@46
    move-object/from16 v0, p0

    #@48
    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget v14, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@4e
    const/4 v15, 0x0

    #@4f
    const/16 v16, 0x0

    #@51
    move/from16 v0, v16

    #@53
    invoke-virtual {v12, v15, v0, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@56
    .line 1574
    move-object/from16 v0, p0

    #@58
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@5a
    move-object/from16 v0, p1

    #@5c
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5f
    .line 1576
    :cond_1
    move-object/from16 v0, p0

    #@61
    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    #@63
    if-eqz v12, :cond_2

    #@65
    .line 1577
    move-object/from16 v0, p0

    #@67
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@69
    sget-object v13, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    #@6b
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@6e
    .line 1578
    move-object/from16 v0, p0

    #@70
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@72
    move-object/from16 v0, p0

    #@74
    iget v13, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@76
    move-object/from16 v0, p0

    #@78
    iget v14, v0, Landroid/widget/NumberPicker;->mRight:I

    #@7a
    .line 1579
    move-object/from16 v0, p0

    #@7c
    iget v15, v0, Landroid/widget/NumberPicker;->mBottom:I

    #@7e
    .line 1578
    const/16 v16, 0x0

    #@80
    move/from16 v0, v16

    #@82
    invoke-virtual {v12, v0, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@85
    .line 1580
    move-object/from16 v0, p0

    #@87
    iget-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    #@89
    move-object/from16 v0, p1

    #@8b
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@8e
    .line 1585
    :cond_2
    move-object/from16 v0, p0

    #@90
    iget-object v6, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@92
    .line 1586
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    #@93
    .local v3, "i":I
    :goto_1
    array-length v12, v6

    #@94
    if-ge v3, v12, :cond_6

    #@96
    .line 1587
    aget v5, v6, v3

    #@98
    .line 1588
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    #@9a
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    #@9c
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9f
    move-result-object v4

    #@a0
    check-cast v4, Ljava/lang/String;

    #@a2
    .line 1594
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v7, :cond_5

    #@a4
    const/4 v12, 0x1

    #@a5
    if-eq v3, v12, :cond_5

    #@a7
    .line 1596
    :goto_2
    move-object/from16 v0, p0

    #@a9
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@b0
    .line 1598
    :cond_3
    move-object/from16 v0, p0

    #@b2
    iget v12, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@b4
    int-to-float v12, v12

    #@b5
    add-float/2addr v11, v12

    #@b6
    .line 1586
    add-int/lit8 v3, v3, 0x1

    #@b8
    goto :goto_1

    #@b9
    .line 1564
    .end local v3    # "i":I
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    .end local v6    # "selectorIndices":[I
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_4
    const/4 v7, 0x1

    #@ba
    .local v7, "showSelectorWheel":Z
    goto/16 :goto_0

    #@bc
    .line 1595
    .end local v7    # "showSelectorWheel":Z
    .restart local v3    # "i":I
    .restart local v4    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v5    # "selectorIndex":I
    .restart local v6    # "selectorIndices":[I
    .restart local v10    # "x":F
    .restart local v11    # "y":F
    :cond_5
    const/4 v12, 0x1

    #@bd
    if-ne v3, v12, :cond_3

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-object v12, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@c3
    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    #@c6
    move-result v12

    #@c7
    if-eqz v12, :cond_3

    #@c9
    goto :goto_2

    #@ca
    .line 1602
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_6
    if-eqz v7, :cond_7

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@d0
    if-eqz v12, :cond_7

    #@d2
    .line 1604
    move-object/from16 v0, p0

    #@d4
    iget v9, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@d6
    .line 1605
    .local v9, "topOfTopDivider":I
    move-object/from16 v0, p0

    #@d8
    iget v12, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    #@da
    add-int v2, v9, v12

    #@dc
    .line 1606
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    #@de
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    #@e4
    const/4 v14, 0x0

    #@e5
    invoke-virtual {v12, v14, v9, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@e8
    .line 1607
    move-object/from16 v0, p0

    #@ea
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@ec
    move-object/from16 v0, p1

    #@ee
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@f1
    .line 1610
    move-object/from16 v0, p0

    #@f3
    iget v1, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@f5
    .line 1611
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    #@f7
    iget v12, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    #@f9
    sub-int v8, v1, v12

    #@fb
    .line 1612
    .local v8, "topOfBottomDivider":I
    move-object/from16 v0, p0

    #@fd
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@ff
    move-object/from16 v0, p0

    #@101
    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    #@103
    const/4 v14, 0x0

    #@104
    invoke-virtual {v12, v14, v8, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@107
    .line 1613
    move-object/from16 v0, p0

    #@109
    iget-object v12, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@10b
    move-object/from16 v0, p1

    #@10d
    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@110
    .line 1559
    .end local v1    # "bottomOfBottomDivider":I
    .end local v2    # "bottomOfTopDivider":I
    .end local v8    # "topOfBottomDivider":I
    .end local v9    # "topOfTopDivider":I
    :cond_7
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1620
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 1621
    const-class v0, Landroid/widget/NumberPicker;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 1622
    const/4 v0, 0x1

    #@d
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@10
    .line 1623
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@12
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@14
    add-int/2addr v0, v1

    #@15
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@17
    mul-int/2addr v0, v1

    #@18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    #@1b
    .line 1624
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1d
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@22
    mul-int/2addr v0, v1

    #@23
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    #@26
    .line 1619
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 850
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@f
    move-result v0

    #@10
    .line 854
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@13
    .line 898
    return v5

    #@14
    .line 851
    .end local v0    # "action":I
    :cond_0
    return v5

    #@15
    .line 856
    .restart local v0    # "action":I
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@18
    .line 857
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@1a
    const/4 v2, 0x4

    #@1b
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    #@1e
    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@21
    move-result v1

    #@22
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@24
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    #@26
    .line 859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@29
    move-result-wide v2

    #@2a
    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    #@2c
    .line 860
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    #@2e
    .line 861
    iput-boolean v5, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    #@30
    .line 863
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@32
    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@34
    int-to-float v2, v2

    #@35
    cmpg-float v1, v1, v2

    #@37
    if-gez v1, :cond_2

    #@39
    .line 864
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    #@3b
    if-nez v1, :cond_1

    #@3d
    .line 865
    iget-object v1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@3f
    .line 866
    const/4 v2, 0x2

    #@40
    .line 865
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    #@43
    .line 875
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    #@46
    move-result-object v1

    #@47
    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@4a
    .line 876
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@4c
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_3

    #@52
    .line 877
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@54
    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    #@57
    .line 878
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@59
    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    #@5c
    .line 879
    invoke-direct {p0, v5}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    #@5f
    .line 895
    :goto_1
    return v4

    #@60
    .line 868
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@62
    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@64
    int-to-float v2, v2

    #@65
    cmpl-float v1, v1, v2

    #@67
    if-lez v1, :cond_1

    #@69
    .line 869
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    #@6b
    if-nez v1, :cond_1

    #@6d
    .line 870
    iget-object v1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@6f
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    #@72
    goto :goto_0

    #@73
    .line 880
    :cond_3
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@75
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_4

    #@7b
    .line 881
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    #@7d
    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    #@80
    .line 882
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    #@82
    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    #@85
    goto :goto_1

    #@86
    .line 883
    :cond_4
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@88
    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@8a
    int-to-float v2, v2

    #@8b
    cmpg-float v1, v1, v2

    #@8d
    if-gez v1, :cond_5

    #@8f
    .line 884
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    #@92
    .line 886
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@95
    move-result v1

    #@96
    int-to-long v2, v1

    #@97
    .line 885
    invoke-direct {p0, v5, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    #@9a
    goto :goto_1

    #@9b
    .line 887
    :cond_5
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@9d
    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@9f
    int-to-float v2, v2

    #@a0
    cmpl-float v1, v1, v2

    #@a2
    if-lez v1, :cond_6

    #@a4
    .line 888
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    #@a7
    .line 890
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@aa
    move-result v1

    #@ab
    int-to-long v2, v1

    #@ac
    .line 889
    invoke-direct {p0, v4, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    #@af
    goto :goto_1

    #@b0
    .line 892
    :cond_6
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    #@b2
    .line 893
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    #@b5
    goto :goto_1

    #@b6
    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 775
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 776
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    #@7
    .line 777
    return-void

    #@8
    .line 779
    :cond_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    #@b
    move-result v7

    #@c
    .line 780
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    #@f
    move-result v6

    #@10
    .line 783
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@12
    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    #@15
    move-result v3

    #@16
    .line 784
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@18
    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    #@1b
    move-result v2

    #@1c
    .line 785
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    #@1e
    div-int/lit8 v1, v8, 0x2

    #@20
    .line 786
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    #@22
    div-int/lit8 v5, v8, 0x2

    #@24
    .line 787
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    #@26
    .line 788
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    #@28
    .line 789
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@2a
    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    #@2d
    .line 791
    if-eqz p1, :cond_1

    #@2f
    .line 793
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    #@32
    .line 794
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    #@35
    .line 795
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    #@38
    move-result v8

    #@39
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    #@3b
    sub-int/2addr v8, v9

    #@3c
    div-int/lit8 v8, v8, 0x2

    #@3e
    .line 796
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    #@40
    .line 795
    sub-int/2addr v8, v9

    #@41
    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@43
    .line 797
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    #@45
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    #@47
    mul-int/lit8 v9, v9, 0x2

    #@49
    add-int/2addr v8, v9

    #@4a
    .line 798
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    #@4c
    .line 797
    add-int/2addr v8, v9

    #@4d
    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    #@4f
    .line 774
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 804
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@2
    if-nez v4, :cond_0

    #@4
    .line 805
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@7
    .line 806
    return-void

    #@8
    .line 809
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    #@a
    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    #@d
    move-result v2

    #@e
    .line 810
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    #@10
    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    #@13
    move-result v1

    #@14
    .line 811
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@17
    .line 813
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    #@19
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    #@1c
    move-result v5

    #@1d
    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    #@20
    move-result v3

    #@21
    .line 815
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    #@23
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    #@26
    move-result v5

    #@27
    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    #@2a
    move-result v0

    #@2b
    .line 817
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    #@2e
    .line 803
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 1551
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    #@3
    .line 1553
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1554
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 1550
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 903
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    #@3
    move-result v10

    #@4
    if-eqz v10, :cond_2

    #@6
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@8
    if-eqz v10, :cond_2

    #@a
    .line 906
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    if-nez v10, :cond_0

    #@e
    .line 907
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@11
    move-result-object v10

    #@12
    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14
    .line 909
    :cond_0
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@16
    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@19
    .line 910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@1c
    move-result v0

    #@1d
    .line 911
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@20
    .line 970
    :cond_1
    :goto_0
    const/4 v10, 0x1

    #@21
    return v10

    #@22
    .line 904
    .end local v0    # "action":I
    :cond_2
    const/4 v10, 0x0

    #@23
    return v10

    #@24
    .line 913
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    #@26
    if-nez v10, :cond_1

    #@28
    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v1

    #@2c
    .line 917
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPicker;->mScrollState:I

    #@2e
    const/4 v11, 0x1

    #@2f
    if-eq v10, v11, :cond_4

    #@31
    .line 918
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@33
    sub-float v10, v1, v10

    #@35
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@38
    move-result v10

    #@39
    float-to-int v2, v10

    #@3a
    .line 919
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    #@3c
    if-le v2, v10, :cond_3

    #@3e
    .line 920
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    #@41
    .line 921
    const/4 v10, 0x1

    #@42
    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    #@45
    .line 928
    .end local v2    # "deltaDownY":I
    :cond_3
    :goto_1
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    #@47
    goto :goto_0

    #@48
    .line 924
    :cond_4
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    #@4a
    sub-float v10, v1, v10

    #@4c
    float-to-int v3, v10

    #@4d
    .line 925
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    #@4e
    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    #@51
    .line 926
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@54
    goto :goto_1

    #@55
    .line 931
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    #@58
    .line 932
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    #@5b
    .line 933
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@5d
    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    #@60
    .line 934
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@62
    .line 935
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    iget v10, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    #@64
    int-to-float v10, v10

    #@65
    const/16 v11, 0x3e8

    #@67
    invoke-virtual {v9, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@6a
    .line 936
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@6d
    move-result v10

    #@6e
    float-to-int v7, v10

    #@6f
    .line 937
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    #@72
    move-result v10

    #@73
    iget v11, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    #@75
    if-le v10, v11, :cond_5

    #@77
    .line 938
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->fling(I)V

    #@7a
    .line 939
    const/4 v10, 0x2

    #@7b
    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    #@7e
    .line 966
    :goto_2
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@80
    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    #@83
    .line 967
    const/4 v10, 0x0

    #@84
    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@86
    goto :goto_0

    #@87
    .line 941
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8a
    move-result v10

    #@8b
    float-to-int v6, v10

    #@8c
    .line 942
    .local v6, "eventY":I
    int-to-float v10, v6

    #@8d
    iget v11, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    #@8f
    sub-float/2addr v10, v11

    #@90
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@93
    move-result v10

    #@94
    float-to-int v3, v10

    #@95
    .line 943
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@98
    move-result-wide v10

    #@99
    iget-wide v12, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    #@9b
    sub-long v4, v10, v12

    #@9d
    .line 944
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    #@9f
    if-gt v3, v10, :cond_9

    #@a1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@a4
    move-result v10

    #@a5
    int-to-long v10, v10

    #@a6
    cmp-long v10, v4, v10

    #@a8
    if-gez v10, :cond_9

    #@aa
    .line 945
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    #@ac
    if-eqz v10, :cond_7

    #@ae
    .line 946
    const/4 v10, 0x0

    #@af
    iput-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    #@b1
    .line 947
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    #@b4
    .line 964
    :cond_6
    :goto_3
    const/4 v10, 0x0

    #@b5
    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    #@b8
    goto :goto_2

    #@b9
    .line 949
    :cond_7
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@bb
    div-int v10, v6, v10

    #@bd
    add-int/lit8 v8, v10, -0x1

    #@bf
    .line 951
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_8

    #@c1
    .line 952
    const/4 v10, 0x1

    #@c2
    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    #@c5
    .line 953
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@c7
    .line 954
    const/4 v11, 0x1

    #@c8
    .line 953
    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    #@cb
    goto :goto_3

    #@cc
    .line 955
    :cond_8
    if-gez v8, :cond_6

    #@ce
    .line 956
    const/4 v10, 0x0

    #@cf
    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    #@d2
    .line 957
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    #@d4
    .line 958
    const/4 v11, 0x2

    #@d5
    .line 957
    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    #@d8
    goto :goto_3

    #@d9
    .line 962
    .end local v8    # "selectorIndexOffset":I
    :cond_9
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    #@dc
    goto :goto_3

    #@dd
    .line 911
    nop

    #@de
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    #@0
    .prologue
    .line 1242
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1243
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1244
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1245
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    #@12
    .line 1247
    :cond_1
    const/4 v0, 0x1

    #@13
    return v0
.end method

.method public performLongClick()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1252
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1253
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 1254
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1255
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    #@13
    .line 1256
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    #@15
    .line 1258
    :cond_1
    return v1
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1120
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    #@3
    .line 1121
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@5
    if-nez v1, :cond_0

    #@7
    if-lez p2, :cond_0

    #@9
    .line 1122
    aget v1, v0, v3

    #@b
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@d
    if-gt v1, v2, :cond_0

    #@f
    .line 1123
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@11
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@13
    .line 1124
    return-void

    #@14
    .line 1126
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@16
    if-nez v1, :cond_1

    #@18
    if-gez p2, :cond_1

    #@1a
    .line 1127
    aget v1, v0, v3

    #@1c
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1e
    if-lt v1, v2, :cond_1

    #@20
    .line 1128
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@22
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@24
    .line 1129
    return-void

    #@25
    .line 1131
    :cond_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@27
    add-int/2addr v1, p2

    #@28
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@2a
    .line 1132
    :cond_2
    :goto_0
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@2c
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@2e
    sub-int/2addr v1, v2

    #@2f
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    #@31
    if-le v1, v2, :cond_3

    #@33
    .line 1133
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@35
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@37
    sub-int/2addr v1, v2

    #@38
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@3a
    .line 1134
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    #@3d
    .line 1135
    aget v1, v0, v3

    #@3f
    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    #@42
    .line 1136
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@44
    if-nez v1, :cond_2

    #@46
    aget v1, v0, v3

    #@48
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@4a
    if-gt v1, v2, :cond_2

    #@4c
    .line 1137
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@4e
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@50
    goto :goto_0

    #@51
    .line 1140
    :cond_3
    :goto_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@53
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@55
    sub-int/2addr v1, v2

    #@56
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    #@58
    neg-int v2, v2

    #@59
    if-ge v1, v2, :cond_4

    #@5b
    .line 1141
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@5d
    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    #@5f
    add-int/2addr v1, v2

    #@60
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@62
    .line 1142
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    #@65
    .line 1143
    aget v1, v0, v3

    #@67
    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    #@6a
    .line 1144
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    #@6c
    if-nez v1, :cond_3

    #@6e
    aget v1, v0, v3

    #@70
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@72
    if-lt v1, v2, :cond_3

    #@74
    .line 1145
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    #@76
    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    #@78
    goto :goto_1

    #@79
    .line 1119
    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1494
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1495
    return-void

    #@5
    .line 1497
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@7
    .line 1498
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1500
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@d
    const v1, 0x80001

    #@10
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    #@13
    .line 1505
    :goto_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@16
    .line 1506
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    #@19
    .line 1507
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    #@1c
    .line 1493
    return-void

    #@1d
    .line 1503
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@1f
    const/4 v1, 0x2

    #@20
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    #@23
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1108
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    #@3
    .line 1109
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1110
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@c
    .line 1112
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1113
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    #@12
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    #@15
    .line 1115
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    #@17
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    #@1a
    .line 1107
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    #@0
    .prologue
    .line 1200
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 1201
    return-void

    #@5
    .line 1203
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    #@7
    .line 1204
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    #@a
    .line 1205
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@d
    .line 1199
    return-void
.end method

.method public setMaxValue(I)V
    .locals 2
    .param p1, "maxValue"    # I

    #@0
    .prologue
    .line 1458
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1459
    return-void

    #@5
    .line 1461
    :cond_0
    if-gez p1, :cond_1

    #@7
    .line 1462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "maxValue must be >= 0"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1464
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@12
    .line 1465
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@14
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@16
    if-ge v0, v1, :cond_2

    #@18
    .line 1466
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    #@1a
    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@1c
    .line 1468
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    #@1f
    .line 1469
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    #@22
    .line 1470
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@25
    .line 1471
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    #@28
    .line 1472
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@2b
    .line 1457
    return-void
.end method

.method public setMinValue(I)V
    .locals 2
    .param p1, "minValue"    # I

    #@0
    .prologue
    .line 1421
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 1422
    return-void

    #@5
    .line 1424
    :cond_0
    if-gez p1, :cond_1

    #@7
    .line 1425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "minValue must be >= 0"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1427
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@12
    .line 1428
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@14
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    #@16
    if-le v0, v1, :cond_2

    #@18
    .line 1429
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    #@1a
    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    #@1c
    .line 1431
    :cond_2
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    #@1f
    .line 1432
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    #@22
    .line 1433
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    #@25
    .line 1434
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    #@28
    .line 1435
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    #@2b
    .line 1420
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    #@0
    .prologue
    .line 1389
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    #@2
    .line 1388
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    #@0
    .prologue
    .line 1185
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    #@2
    .line 1184
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    #@0
    .prologue
    .line 1176
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    #@2
    .line 1175
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1237
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    #@4
    .line 1236
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0
    .param p1, "wrapSelectorWheel"    # Z

    #@0
    .prologue
    .line 1361
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    #@2
    .line 1362
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    #@5
    .line 1360
    return-void
.end method
