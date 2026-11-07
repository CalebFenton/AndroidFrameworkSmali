.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$TwoDigitFormatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_LAYOUT_RESOURCE_ID:I = 0x10900fc

.field private static final greylist-max-o DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final greylist-max-o DIGIT_CHARACTERS:[C

.field private static final greylist-max-o SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final greylist-max-o SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final greylist SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final greylist SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final greylist-max-o SIZE_UNSPECIFIED:I = -0x1

.field private static final greylist-max-o SNAP_SCROLL_DURATION:I = 0x12c

.field private static final greylist-max-o TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final greylist-max-o UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final greylist-max-o UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final greylist-max-o sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private greylist-max-o mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final greylist-max-o mAdjustScroller:Landroid/widget/Scroller;

.field private greylist-max-o mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private greylist-max-o mBottomSelectionDividerBottom:I

.field private greylist-max-o mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final greylist-max-o mComputeMaxWidth:Z

.field private greylist-max-o mCurrentScrollOffset:I

.field private final greylist-max-o mDecrementButton:Landroid/widget/ImageButton;

.field private greylist-max-o mDecrementVirtualButtonPressed:Z

.field private greylist-max-o mDisplayedValues:[Ljava/lang/String;

.field private final greylist-max-r mFlingScroller:Landroid/widget/Scroller;

.field private greylist-max-o mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final greylist-max-o mHasSelectorWheel:Z

.field private greylist-max-o mHideWheelUntilFocused:Z

.field private greylist-max-o mIgnoreMoveEvents:Z

.field private final greylist-max-o mIncrementButton:Landroid/widget/ImageButton;

.field private greylist-max-o mIncrementVirtualButtonPressed:Z

.field private greylist-max-o mInitialScrollOffset:I

.field private final greylist mInputText:Landroid/widget/EditText;

.field private greylist-max-o mLastDownEventTime:J

.field private greylist-max-o mLastDownEventY:F

.field private greylist-max-o mLastDownOrMoveEventY:F

.field private greylist-max-o mLastHandledDownDpadKeyCode:I

.field private greylist-max-o mLastHoveredChildVirtualViewId:I

.field private greylist-max-o mLongPressUpdateInterval:J

.field private final greylist-max-o mMaxHeight:I

.field private greylist-max-r mMaxValue:I

.field private greylist-max-o mMaxWidth:I

.field private greylist-max-r mMaximumFlingVelocity:I

.field private final greylist-max-r mMinHeight:I

.field private greylist-max-o mMinValue:I

.field private final greylist-max-r mMinWidth:I

.field private greylist-max-o mMinimumFlingVelocity:I

.field private greylist-max-o mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private greylist-max-r mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private greylist-max-o mPerformClickOnTap:Z

.field private final greylist-max-o mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private greylist-max-o mPreviousScrollerY:I

.field private greylist-max-o mScrollState:I

.field private final greylist-max-p mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-p mSelectionDividerHeight:I

.field private final greylist-max-o mSelectionDividersDistance:I

.field private greylist-max-o mSelectorElementHeight:I

.field private final greylist-max-o mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mSelectorIndices:[I

.field private greylist-max-o mSelectorTextGapHeight:I

.field private final greylist-max-p mSelectorWheelPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final greylist-max-o mSolidColor:I

.field private final greylist-max-r mTextSize:I

.field private greylist-max-o mTopSelectionDividerTop:I

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mValue:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private final greylist-max-o mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mWrapSelectorWheel:Z

.field private greylist-max-o mWrapSelectorWheelPreferred:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressUpdateInterval(Landroid/widget/NumberPicker;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetSelectionCommand(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .registers 1

    iget-object p0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectedPos(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhideSoftInput(Landroid/widget/NumberPicker;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostSetSelectionCommand(Landroid/widget/NumberPicker;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateInputTextView(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDIGIT_CHARACTERS()[C
    .registers 1

    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2198
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_12
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

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 600
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 609
    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 610
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 623
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 639
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 174
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 329
    const-wide/16 v1, 0x12c

    iput-wide v1, v0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 334
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 339
    const/4 v8, 0x3

    new-array v1, v8, [I

    iput-object v1, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 361
    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 466
    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 517
    const/4 v10, -0x1

    iput v10, v0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 642
    sget-object v1, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 644
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/NumberPicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 646
    const v1, 0x10900fc

    invoke-virtual {v4, v8, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 649
    .local v2, "layoutResId":I
    if-eq v2, v1, :cond_42

    move v1, v7

    goto :goto_43

    :cond_42
    move v1, v9

    :goto_43
    iput-boolean v1, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 651
    const/4 v1, 0x2

    invoke-virtual {v4, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 654
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 656
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 658
    .local v5, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_71

    .line 659
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 660
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 661
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 662
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 665
    :cond_71
    iput-object v5, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 667
    nop

    .line 669
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 667
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 670
    .local v6, "defSelectionDividerHeight":I
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 673
    nop

    .line 675
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 673
    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v7, v11, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .line 676
    .local v8, "defSelectionDividerDistance":I
    const/16 v11, 0x9

    invoke-virtual {v4, v11, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 679
    const/4 v11, 0x6

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 682
    const/4 v12, 0x4

    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 684
    iget v12, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    if-eq v12, v10, :cond_c6

    iget v12, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-eq v12, v10, :cond_c6

    iget v12, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    iget v13, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-gt v12, v13, :cond_be

    goto :goto_c6

    .line 686
    :cond_be
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "minHeight > maxHeight"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_c6
    :goto_c6
    const/4 v12, 0x7

    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 692
    const/4 v12, 0x5

    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    iput v12, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 694
    iget v12, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-eq v12, v10, :cond_eb

    iget v12, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v12, v10, :cond_eb

    iget v12, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    iget v13, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-gt v12, v13, :cond_e3

    goto :goto_eb

    .line 696
    :cond_e3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "minWidth > maxWidth"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_eb
    :goto_eb
    iget v12, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-ne v12, v10, :cond_f1

    move v12, v7

    goto :goto_f2

    :cond_f1
    move v12, v9

    :goto_f2
    iput-boolean v12, v0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 701
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 704
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 706
    new-instance v12, Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v12, v0}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v12, v0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 713
    iget-boolean v12, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v12, v7

    invoke-virtual {v0, v12}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 715
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 717
    .local v12, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v12, v2, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 719
    new-instance v13, Landroid/widget/NumberPicker$1;

    invoke-direct {v13, v0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 731
    .local v13, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v14, Landroid/widget/NumberPicker$2;

    invoke-direct {v14, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 745
    .local v14, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    iget-boolean v15, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v16, v3

    const/4 v3, 0x0

    if-nez v15, :cond_142

    .line 746
    const v15, 0x102037c

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    iput-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 747
    iget-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v15, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v14}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_144

    .line 750
    :cond_142
    iput-object v3, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 754
    :goto_144
    iget-boolean v15, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v15, :cond_15e

    .line 755
    const v15, 0x10202cd

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    iput-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 756
    iget-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v15, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v14}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_160

    .line 759
    :cond_15e
    iput-object v3, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 763
    :goto_160
    const v15, 0x1020440

    invoke-virtual {v0, v15}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    iput-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 764
    iget-object v15, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move/from16 v17, v9

    new-instance v9, Landroid/widget/NumberPicker$3;

    invoke-direct {v9, v0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v15, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 774
    iget-object v9, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v15, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct {v3, v0}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v3, v15, v17

    invoke-virtual {v9, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 778
    iget-object v3, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 779
    iget-object v1, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 782
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 783
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 784
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 785
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    iput v3, v0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 787
    iget-object v3, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 790
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 791
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 792
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 793
    iget v9, v0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 794
    invoke-static {}, Landroid/widget/flags/Flags;->fixUnboldedTypefaceForNumberpicker()Z

    move-result v9

    if-eqz v9, :cond_1d7

    .line 795
    iget-object v9, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1e0

    .line 797
    :cond_1d7
    iget-object v9, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 799
    :goto_1e0
    iget-object v9, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 800
    .local v9, "colors":Landroid/content/res/ColorStateList;
    sget-object v11, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v9, v11, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    .line 801
    .local v10, "color":I
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    iput-object v3, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 805
    new-instance v11, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v16, v1

    const/4 v1, 0x0

    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    .local v16, "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v11, v15, v1, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v11, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 806
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-direct {v15, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v1, v11, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 808
    invoke-direct {v0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 811
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_21f

    .line 812
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    goto :goto_220

    .line 811
    :cond_21f
    const/4 v1, 0x1

    .line 816
    :goto_220
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getFocusable()I

    move-result v7

    const/16 v11, 0x10

    if-ne v7, v11, :cond_22e

    .line 817
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFocusable(I)V

    .line 818
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 820
    :cond_22e
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$1400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$1600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic blacklist access$1700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$2200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$2600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$3100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic blacklist access$3300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$4000(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4100(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4400(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4500(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 112
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method private greylist changeValueByOne(Z)V
    .registers 15
    .param p1, "increment"    # Z

    .line 1870
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_37

    .line 1871
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 1872
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1873
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1875
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1876
    if-eqz p1, :cond_27

    .line 1877
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_33

    .line 1879
    :cond_27
    iget-object v7, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v11, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1881
    :goto_33
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_47

    .line 1883
    :cond_37
    const/4 v0, 0x1

    if-eqz p1, :cond_41

    .line 1884
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_47

    .line 1886
    :cond_41
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1889
    :goto_47
    return-void
.end method

.method private greylist-max-o decrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .line 1989
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_3
    if-lez v0, :cond_e

    .line 1990
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1989
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1992
    .end local v0    # "i":I
    :cond_e
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1993
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1b

    .line 1994
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1996
    :cond_1b
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1997
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1998
    return-void
.end method

.method private greylist-max-o ensureCachedScrollSelectorValue(I)V
    .registers 6
    .param p1, "selectorIndex"    # I

    .line 2005
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2006
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2007
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 2008
    return-void

    .line 2010
    :cond_b
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_26

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_14

    goto :goto_26

    .line 2013
    :cond_14
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 2014
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v2, p1, v2

    .line 2015
    .local v2, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 2016
    .end local v2    # "displayedValueIndex":I
    goto :goto_28

    .line 2017
    :cond_21
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 2011
    :cond_26
    :goto_26
    const-string v1, ""

    .line 2020
    :goto_28
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2021
    return-void
.end method

.method private greylist-max-o ensureScrollWheelAdjusted()Z
    .registers 8

    .line 2298
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 2299
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 2300
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2301
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1c

    .line 2302
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    if-lez v0, :cond_19

    neg-int v1, v1

    :cond_19
    add-int/2addr v0, v1

    move v5, v0

    goto :goto_1d

    .line 2301
    :cond_1c
    move v5, v0

    .line 2304
    .end local v0    # "deltaY":I
    .local v5, "deltaY":I
    :goto_1d
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2305
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2306
    const/4 v0, 0x1

    return v0

    .line 2308
    .end local v5    # "deltaY":I
    .restart local v0    # "deltaY":I
    :cond_2c
    return v1
.end method

.method private greylist-max-o fling(I)V
    .registers 22
    .param p1, "velocityY"    # I

    .line 1945
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1947
    if-lez p1, :cond_18

    .line 1948
    iget-object v2, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_2d

    .line 1950
    :cond_18
    iget-object v11, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/16 v18, 0x0

    const v19, 0x7fffffff

    const/4 v12, 0x0

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v15, p1

    invoke-virtual/range {v11 .. v19}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1953
    :goto_2d
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1954
    return-void
.end method

.method private greylist-max-o formatNumber(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 2024
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method private static greylist-max-o formatNumberWithLocale(I)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # I

    .line 2927
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 2155
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 2157
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 2158
    :catch_9
    move-exception v0

    .line 2160
    goto :goto_30

    .line 2162
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 2164
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2165
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2166
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    .line 2162
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2175
    .end local v0    # "i":I
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    return v0

    .line 2176
    :catch_2f
    move-exception v0

    .line 2181
    :goto_30
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public static final greylist getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .registers 1

    .line 227
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private greylist-max-o getWrappedSelectorIndex(I)I
    .registers 6
    .param p1, "selectorIndex"    # I

    .line 1960
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_14

    .line 1961
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1962
    :cond_14
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_27

    .line 1963
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1965
    :cond_27
    return p1
.end method

.method private greylist-max-o hideSoftInput()V
    .registers 4

    .line 1334
    nop

    .line 1335
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1336
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_15

    .line 1337
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 1339
    :cond_15
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_1f

    .line 1340
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1342
    :cond_1f
    return-void
.end method

.method private greylist-max-o incrementSelectorIndices([I)V
    .registers 4
    .param p1, "selectorIndices"    # [I

    .line 1973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f

    .line 1974
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1973
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1976
    .end local v0    # "i":I
    :cond_f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1977
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_20

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_20

    .line 1978
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1980
    :cond_20
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1981
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1982
    return-void
.end method

.method private greylist-max-o initializeFadingEdges()V
    .registers 3

    .line 1909
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1910
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1911
    return-void
.end method

.method private greylist-max-o initializeSelectorWheel()V
    .registers 7

    .line 1892
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1893
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1894
    .local v0, "selectorIndices":[I
    array-length v1, v0

    iget v2, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1895
    .local v1, "totalTextHeight":I
    iget v2, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v3, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1896
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    int-to-float v3, v3

    .line 1897
    .local v3, "textGapCount":F
    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1898
    iget v4, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1901
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1902
    .local v4, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v4, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1904
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1905
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1906
    return-void
.end method

.method private greylist initializeSelectorWheelIndices()V
    .registers 6

    .line 1818
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1819
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1820
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1821
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 1822
    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1823
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1c

    .line 1824
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1826
    :cond_1c
    aput v3, v0, v2

    .line 1827
    aget v4, v0, v2

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1821
    .end local v3    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1829
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private greylist-max-o makeMeasureSpec(II)I
    .registers 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1775
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1776
    return p1

    .line 1778
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1779
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1780
    .local v1, "mode":I
    const/high16 v2, 0x40000000    # 2.0f

    sparse-switch v1, :sswitch_data_3a

    .line 1788
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1782
    :sswitch_2a
    return p1

    .line 1786
    :sswitch_2b
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1784
    :sswitch_30
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x80000000 -> :sswitch_30
        0x0 -> :sswitch_2b
        0x40000000 -> :sswitch_2a
    .end sparse-switch
.end method

.method private greylist-max-o moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 9
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 878
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 879
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 880
    .local v1, "amountToScroll":I
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 881
    .local v2, "futureScrollOffset":I
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 882
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_31

    .line 883
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2c

    .line 884
    if-lez v3, :cond_29

    .line 885
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v5

    goto :goto_2c

    .line 887
    :cond_29
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v3, v5

    .line 890
    :cond_2c
    :goto_2c
    add-int/2addr v1, v3

    .line 891
    invoke-virtual {p0, v4, v1}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 892
    return v0

    .line 894
    :cond_31
    return v4
.end method

.method private greylist-max-o notifyChange(II)V
    .registers 5
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 2084
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 2085
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 2087
    :cond_b
    return-void
.end method

.method private greylist-max-o onScrollStateChange(I)V
    .registers 3
    .param p1, "scrollState"    # I

    .line 1932
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1933
    return-void

    .line 1935
    :cond_5
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1936
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_10

    .line 1937
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 1939
    :cond_10
    return-void
.end method

.method private greylist-max-o onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 4
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1917
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_f

    .line 1918
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1919
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1920
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_17

    .line 1922
    :cond_f
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 1923
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1926
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o postBeginSoftInputOnLongPressCommand()V
    .registers 4

    .line 2118
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_c

    .line 2119
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_11

    .line 2121
    :cond_c
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2123
    :goto_11
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2124
    return-void
.end method

.method private greylist-max-o postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 5
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 2095
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    .line 2096
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_11

    .line 2098
    :cond_c
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2100
    :goto_11
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-$$Nest$msetStep(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2101
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2102
    return-void
.end method

.method private greylist-max-o postSetSelectionCommand(II)V
    .registers 5
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2189
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_d

    .line 2190
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2192
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 2193
    return-void
.end method

.method private greylist-max-o removeAllCallbacks()V
    .registers 2

    .line 2139
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2140
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2142
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_12

    .line 2143
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2145
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1b

    .line 2146
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2148
    :cond_1b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2149
    return-void
.end method

.method private greylist-max-o removeBeginSoftInputCommand()V
    .registers 2

    .line 2130
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_9

    .line 2131
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2133
    :cond_9
    return-void
.end method

.method private greylist-max-o removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .line 2108
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2109
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2111
    :cond_9
    return-void
.end method

.method private greylist-max-o resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1804
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1805
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1806
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1808
    .end local v0    # "desiredWidth":I
    :cond_d
    return p2
.end method

.method private greylist-max-o setValueInternal(IZ)V
    .registers 6
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1838
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_5

    .line 1839
    return-void

    .line 1842
    :cond_5
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_e

    .line 1843
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_1a

    .line 1845
    :cond_e
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1846
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1848
    :goto_1a
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1849
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1851
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    .line 1852
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1854
    :cond_26
    if-eqz p2, :cond_2b

    .line 1855
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1857
    :cond_2b
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1858
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1859
    return-void
.end method

.method private greylist-max-o showSoftInput()V
    .registers 4

    .line 1319
    nop

    .line 1320
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1321
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_23

    .line 1322
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 1323
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1325
    :cond_19
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1326
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1328
    :cond_23
    return-void
.end method

.method private greylist-max-o tryComputeMaxWidth()V
    .registers 6

    .line 1348
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_5

    .line 1349
    return-void

    .line 1351
    :cond_5
    const/4 v0, 0x0

    .line 1352
    .local v0, "maxTextWidth":I
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_30

    .line 1353
    const/4 v1, 0x0

    .line 1354
    .local v1, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v3, 0x9

    if-gt v2, v3, :cond_22

    .line 1355
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1356
    .local v3, "digitWidth":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1f

    .line 1357
    move v1, v3

    .line 1354
    .end local v3    # "digitWidth":F
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1360
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    .line 1361
    .local v2, "numberOfDigits":I
    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1362
    .local v3, "current":I
    :goto_25
    if-lez v3, :cond_2c

    .line 1363
    add-int/lit8 v2, v2, 0x1

    .line 1364
    div-int/lit8 v3, v3, 0xa

    goto :goto_25

    .line 1366
    :cond_2c
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 1367
    .end local v1    # "maxDigitWidth":F
    .end local v2    # "numberOfDigits":I
    .end local v3    # "current":I
    goto :goto_49

    .line 1368
    :cond_30
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    .line 1369
    .local v1, "valueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v1, :cond_49

    .line 1370
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1371
    .local v3, "textWidth":F
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_46

    .line 1372
    float-to-int v0, v3

    .line 1369
    .end local v3    # "textWidth":F
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1376
    .end local v1    # "valueCount":I
    .end local v2    # "i":I
    :cond_49
    :goto_49
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1377
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_69

    .line 1378
    iget v1, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_62

    .line 1379
    iput v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_66

    .line 1381
    :cond_62
    iget v1, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1383
    :goto_66
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1385
    :cond_69
    return-void
.end method

.method private greylist-max-o updateInputTextView()Z
    .registers 6

    .line 2053
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 2054
    :cond_b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_14
    nop

    .line 2055
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6a

    .line 2056
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2057
    .local v1, "beforeText":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 2058
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2059
    iget-object v3, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 2060
    const/16 v3, 0x10

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 2062
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2063
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2064
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2065
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2066
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2067
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 2068
    const/4 v2, 0x2

    invoke-virtual {v3, p0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2070
    invoke-virtual {p0, p0, v3}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2072
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_68
    const/4 v2, 0x1

    return v2

    .line 2076
    .end local v1    # "beforeText":Ljava/lang/CharSequence;
    :cond_6a
    return v2
.end method

.method private greylist-max-o updateWrapSelectorWheel()V
    .registers 5

    .line 1430
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 1431
    .local v0, "wrappingAllowed":Z
    :goto_f
    if-eqz v0, :cond_16

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1432
    return-void
.end method

.method private greylist-max-o validateInputTextView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 2028
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2031
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_21

    .line 2034
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    .line 2035
    .local v1, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 2037
    .end local v1    # "current":I
    :goto_21
    return-void
.end method


# virtual methods
.method public whitelist computeScroll()V
    .registers 5

    .line 1135
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1136
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1137
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1138
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1139
    return-void

    .line 1142
    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1143
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1144
    .local v1, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 1145
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1147
    :cond_22
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1148
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1149
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1150
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_39

    .line 1152
    :cond_36
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1154
    :goto_39
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 2

    .line 1216
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 2

    .line 1206
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 3

    .line 1211
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1086
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1087
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1089
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1090
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1092
    .local v0, "eventY":I
    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_20

    .line 1093
    const/4 v1, 0x3

    .local v1, "hoveredVirtualViewId":I
    goto :goto_27

    .line 1094
    .end local v1    # "hoveredVirtualViewId":I
    :cond_20
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_26

    .line 1095
    const/4 v1, 0x1

    .restart local v1    # "hoveredVirtualViewId":I
    goto :goto_27

    .line 1097
    .end local v1    # "hoveredVirtualViewId":I
    :cond_26
    const/4 v1, 0x2

    .line 1099
    .restart local v1    # "hoveredVirtualViewId":I
    :goto_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1100
    .local v2, "action":I
    nop

    .line 1101
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1102
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    const/4 v4, -0x1

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/16 v8, 0x80

    packed-switch v2, :pswitch_data_64

    :pswitch_3d
    goto :goto_62

    .line 1124
    :pswitch_3e
    invoke-virtual {v3, v1, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1126
    iput v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_62

    .line 1104
    :pswitch_44
    invoke-virtual {v3, v1, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1106
    iput v1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1107
    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1109
    goto :goto_62

    .line 1111
    :pswitch_4d
    iget v9, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v9, v1, :cond_62

    iget v9, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v9, v4, :cond_62

    .line 1113
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1116
    invoke-virtual {v3, v1, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1118
    iput v1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1119
    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1130
    .end local v0    # "eventY":I
    .end local v1    # "hoveredVirtualViewId":I
    .end local v2    # "action":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0

    :pswitch_data_64
    .packed-switch 0x7
        :pswitch_4d
        :pswitch_3d
        :pswitch_44
        :pswitch_3e
    .end packed-switch
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1036
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1037
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_5e

    goto :goto_58

    .line 1041
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1042
    goto :goto_58

    .line 1045
    :sswitch_c
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_11

    .line 1046
    goto :goto_58

    .line 1048
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_74

    goto :goto_58

    .line 1062
    :pswitch_1a
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_58

    .line 1063
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1064
    return v2

    .line 1050
    :pswitch_22
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_3f

    if-ne v0, v3, :cond_35

    .line 1051
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_58

    goto :goto_3f

    :cond_35
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_58

    .line 1052
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 1053
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1054
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1055
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1056
    if-ne v0, v3, :cond_53

    move v1, v2

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1058
    :cond_57
    return v2

    .line 1069
    :cond_58
    :goto_58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_5e
    .sparse-switch
        0x13 -> :sswitch_c
        0x14 -> :sswitch_c
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
        0xa0 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1025
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    :pswitch_7
    goto :goto_b

    .line 1028
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1031
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1075
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    :pswitch_7
    goto :goto_b

    .line 1078
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1081
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 1620
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1622
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1623
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1624
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1625
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1627
    :cond_1a
    return-void
.end method

.method public whitelist getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .line 1720
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1721
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1723
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_14

    .line 1724
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1726
    :cond_14
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 2

    .line 1608
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public blacklist getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .registers 3

    .line 1579
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .line 1537
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxValue()I
    .registers 2

    .line 1500
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public whitelist getMinValue()I
    .registers 2

    .line 1463
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public whitelist getSelectionDividerHeight()I
    .registers 2

    .line 1598
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method public whitelist getSolidColor()I
    .registers 2

    .line 1221
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method public whitelist getTextColor()I
    .registers 2

    .line 1745
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .registers 2

    .line 1764
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 2

    .line 1603
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public whitelist getValue()I
    .registers 2

    .line 1454
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public whitelist getWrapSelectorWheel()Z
    .registers 2

    .line 1396
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 1632
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1634
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1635
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1637
    :cond_c
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 1613
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1614
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1615
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1651
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 1652
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1653
    return-void

    .line 1655
    :cond_8
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v1

    .line 1656
    .local v0, "showSelectorWheel":Z
    :goto_13
    iget v2, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v3, p0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1657
    .local v2, "x":F
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1660
    .local v3, "y":F
    const/4 v4, 0x0

    if-eqz v0, :cond_5d

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5d

    iget v5, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v5, :cond_5d

    .line 1662
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v5, :cond_42

    .line 1663
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1664
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v7, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1665
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1667
    :cond_42
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v5, :cond_5d

    .line 1668
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1669
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    iget v7, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v8, p0, Landroid/widget/NumberPicker;->mBottom:I

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1671
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1676
    :cond_5d
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1677
    .local v5, "selectorIndices":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_60
    array-length v7, v5

    if-ge v6, v7, :cond_87

    .line 1678
    aget v7, v5, v6

    .line 1679
    .local v7, "selectorIndex":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1685
    .local v8, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v0, :cond_71

    if-ne v6, v1, :cond_7b

    :cond_71
    if-ne v6, v1, :cond_80

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1686
    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_80

    .line 1687
    :cond_7b
    iget-object v9, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1689
    :cond_80
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 1677
    .end local v7    # "selectorIndex":I
    .end local v8    # "scrollSelectorValue":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 1693
    .end local v6    # "i":I
    :cond_87
    if-eqz v0, :cond_b0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b0

    .line 1695
    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1696
    .local v1, "topOfTopDivider":I
    iget v6, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v6, v1

    .line 1697
    .local v6, "bottomOfTopDivider":I
    iget-object v7, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v7, v4, v1, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1698
    iget-object v7, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1701
    iget v7, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1702
    .local v7, "bottomOfBottomDivider":I
    iget v8, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v8, v7, v8

    .line 1703
    .local v8, "topOfBottomDivider":I
    iget-object v9, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v9, v4, v8, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1704
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1706
    .end local v1    # "topOfTopDivider":I
    .end local v6    # "bottomOfTopDivider":I
    .end local v7    # "bottomOfBottomDivider":I
    .end local v8    # "topOfBottomDivider":I
    :cond_b0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1711
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1712
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1713
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1714
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1715
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1716
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 899
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ba

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_ba

    .line 902
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 903
    .local v0, "action":I
    packed-switch v0, :pswitch_data_bc

    .line 947
    return v1

    .line 905
    :pswitch_15
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 906
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 908
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 909
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 910
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 912
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    if-gez v2, :cond_42

    .line 913
    iget v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_54

    .line 914
    iget-object v2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_54

    .line 917
    :cond_42
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_54

    .line 918
    iget v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_54

    .line 919
    iget-object v2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 924
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 925
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_76

    .line 926
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 927
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 928
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 929
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_b9

    .line 930
    :cond_76
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 931
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 932
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 933
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_b9

    .line 934
    :cond_8e
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_a1

    .line 935
    nop

    .line 936
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v4, v2

    .line 935
    invoke-direct {p0, v1, v4, v5}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_b9

    .line 937
    :cond_a1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b4

    .line 938
    nop

    .line 939
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 938
    invoke-direct {p0, v3, v1, v2}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_b9

    .line 941
    :cond_b4
    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 942
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 944
    :goto_b9
    return v3

    .line 900
    .end local v0    # "action":I
    :cond_ba
    :goto_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 824
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 825
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 826
    return-void

    .line 828
    :cond_8
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v0

    .line 829
    .local v0, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    .line 832
    .local v1, "msrdHght":I
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    .line 833
    .local v2, "inptTxtMsrdWdth":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    .line 834
    .local v3, "inptTxtMsrdHght":I
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    .line 835
    .local v4, "inptTxtLeft":I
    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    .line 836
    .local v5, "inptTxtTop":I
    add-int v6, v4, v2

    .line 837
    .local v6, "inptTxtRight":I
    add-int v7, v5, v3

    .line 838
    .local v7, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/widget/EditText;->layout(IIII)V

    .line 840
    if-eqz p1, :cond_4f

    .line 842
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 843
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 844
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 846
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 849
    :cond_4f
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 853
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 854
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 855
    return-void

    .line 858
    :cond_8
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 859
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 860
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 862
    iget v2, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    .line 864
    .local v2, "widthSize":I
    iget v3, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 866
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 867
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1642
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    .line 1644
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1645
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1647
    :cond_c
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 952
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d7

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_d

    goto/16 :goto_d7

    .line 955
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    .line 956
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 958
    :cond_17
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 960
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_d8

    goto/16 :goto_d6

    .line 962
    :pswitch_26
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_2c

    .line 963
    goto/16 :goto_d6

    .line 965
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 966
    .local v3, "currentMoveY":F
    iget v4, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_48

    .line 967
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 968
    .local v1, "deltaDownY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_47

    .line 969
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 970
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 972
    .end local v1    # "deltaDownY":I
    :cond_47
    goto :goto_53

    .line 973
    :cond_48
    iget v4, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    .line 974
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 975
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 977
    .end local v4    # "deltaMoveY":I
    :goto_53
    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 978
    .end local v3    # "currentMoveY":F
    goto/16 :goto_d6

    .line 980
    :pswitch_57
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 981
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 982
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 983
    iget-object v3, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 984
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    iget v4, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 985
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 986
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_81

    .line 987
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->fling(I)V

    .line 988
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_ce

    .line 990
    :cond_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 991
    .local v5, "eventY":I
    int-to-float v6, v5

    iget v8, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 992
    .local v6, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 993
    .local v8, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_c8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_c8

    .line 994
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_ad

    .line 995
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 996
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    goto :goto_cb

    .line 998
    :cond_ad
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    sub-int/2addr v10, v2

    .line 1000
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_bd

    .line 1001
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1002
    iget-object v7, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_c7

    .line 1004
    :cond_bd
    if-gez v10, :cond_c7

    .line 1005
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1006
    iget-object v11, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 1009
    .end local v10    # "selectorIndexOffset":I
    :cond_c7
    :goto_c7
    goto :goto_cb

    .line 1011
    :cond_c8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1013
    :goto_cb
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1015
    .end local v5    # "eventY":I
    .end local v6    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_ce
    iget-object v1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1016
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1019
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :goto_d6
    return v2

    .line 953
    .end local v0    # "action":I
    :cond_d7
    :goto_d7
    return v1

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_57
        :pswitch_26
    .end packed-switch
.end method

.method public whitelist performClick()Z
    .registers 2

    .line 1296
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1297
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1298
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1299
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1301
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performLongClick()Z
    .registers 3

    .line 1306
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1307
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1308
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 1309
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1310
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1312
    :cond_15
    return v1
.end method

.method public whitelist scrollBy(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1170
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1171
    .local v0, "selectorIndices":[I
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1172
    .local v1, "startScrollOffset":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v3, 0x1

    if-nez v2, :cond_16

    if-lez p2, :cond_16

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_16

    .line 1174
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1175
    return-void

    .line 1177
    :cond_16
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_27

    if-gez p2, :cond_27

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_27

    .line 1179
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1180
    return-void

    .line 1182
    :cond_27
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1183
    :cond_2c
    :goto_2c
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v2, v4, :cond_53

    .line 1184
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1185
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1186
    aget v2, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1187
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_2c

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_2c

    .line 1188
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2c

    .line 1191
    :cond_53
    :goto_53
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v4, v4

    if-ge v2, v4, :cond_7b

    .line 1192
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1193
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1194
    aget v2, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1195
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_53

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_53

    .line 1196
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_53

    .line 1199
    :cond_7b
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    if-eq v1, v2, :cond_85

    .line 1200
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Landroid/widget/NumberPicker;->onScrollChanged(IIII)V

    .line 1202
    :cond_85
    return-void
.end method

.method public whitelist setDisplayedValues([Ljava/lang/String;)V
    .registers 4
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1550
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1551
    return-void

    .line 1553
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1554
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1556
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1a

    .line 1559
    :cond_14
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1561
    :goto_1a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1562
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1563
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1564
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1158
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1159
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_c

    .line 1160
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1162
    :cond_c
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_15

    .line 1163
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1165
    :cond_15
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1166
    return-void
.end method

.method public whitelist setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 3
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .line 1254
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1255
    return-void

    .line 1257
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1258
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1259
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1260
    return-void
.end method

.method public whitelist setMaxValue(I)V
    .registers 4
    .param p1, "maxValue"    # I

    .line 1514
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_5

    .line 1515
    return-void

    .line 1517
    :cond_5
    if-ltz p1, :cond_23

    .line 1520
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1521
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v0, v1, :cond_13

    .line 1522
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1524
    :cond_13
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1525
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1526
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1527
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1528
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1529
    return-void

    .line 1518
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMinValue(I)V
    .registers 4
    .param p1, "minValue"    # I

    .line 1477
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_5

    .line 1478
    return-void

    .line 1480
    :cond_5
    if-ltz p1, :cond_23

    .line 1483
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1484
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v0, v1, :cond_13

    .line 1485
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1487
    :cond_13
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1488
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1489
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1490
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1491
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1492
    return-void

    .line 1481
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnLongPressUpdateInterval(J)V
    .registers 3
    .param p1, "intervalMillis"    # J

    .line 1445
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1446
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .registers 2
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .line 1239
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1240
    return-void
.end method

.method public whitelist setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1230
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1231
    return-void
.end method

.method public whitelist setSelectionDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 1587
    iput p1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 1588
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1589
    return-void
.end method

.method public whitelist setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 1735
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1736
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1737
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1738
    return-void
.end method

.method public whitelist setTextSize(F)V
    .registers 4
    .param p1, "size"    # F

    .line 1754
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1755
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1756
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1757
    return-void
.end method

.method public whitelist setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 1291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1292
    return-void
.end method

.method public whitelist setWrapSelectorWheel(Z)V
    .registers 2
    .param p1, "wrapSelectorWheel"    # Z

    .line 1417
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1418
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1420
    return-void
.end method
