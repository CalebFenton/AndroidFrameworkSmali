.class public Lcom/android/internal/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ScrollingView;
.implements Lcom/android/internal/widget/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;,
        Lcom/android/internal/widget/RecyclerView$Recycler;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimator;,
        Lcom/android/internal/widget/RecyclerView$ViewFlinger;,
        Lcom/android/internal/widget/RecyclerView$State;,
        Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager;,
        Lcom/android/internal/widget/RecyclerView$Adapter;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;,
        Lcom/android/internal/widget/RecyclerView$RecyclerListener;,
        Lcom/android/internal/widget/RecyclerView$OnFlingListener;,
        Lcom/android/internal/widget/RecyclerView$SavedState;,
        Lcom/android/internal/widget/RecyclerView$ViewHolder;,
        Lcom/android/internal/widget/RecyclerView$RecycledViewPool;,
        Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;,
        Lcom/android/internal/widget/RecyclerView$ItemDecoration;,
        Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/android/internal/widget/RecyclerView$OnScrollListener;,
        Lcom/android/internal/widget/RecyclerView$LayoutParams;,
        Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;,
        Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller;,
        Lcom/android/internal/widget/RecyclerView$SimpleOnItemTouchListener;
    }
.end annotation


# static fields
.field static final blacklist ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final blacklist ALLOW_THREAD_GAP_WORK:Z

.field private static final blacklist CLIP_TO_PADDING_ATTR:[I

.field static final blacklist DEBUG:Z = false

.field static final blacklist DISPATCH_TEMP_DETACH:Z = false

.field private static final blacklist FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final blacklist FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final blacklist FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final blacklist HORIZONTAL:I = 0x0

.field private static final blacklist IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final blacklist INVALID_POINTER:I = -0x1

.field public static final blacklist INVALID_TYPE:I = -0x1

.field private static final blacklist LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist MAX_SCROLL_DURATION:I = 0x7d0

.field private static final blacklist NESTED_SCROLLING_ATTRS:[I

.field public static final blacklist NO_ID:J = -0x1L

.field public static final blacklist NO_POSITION:I = -0x1

.field static final blacklist POST_UPDATES_ON_ANIMATION:Z

.field public static final blacklist SCROLL_STATE_DRAGGING:I = 0x1

.field public static final blacklist SCROLL_STATE_IDLE:I = 0x0

.field public static final blacklist SCROLL_STATE_SETTLING:I = 0x2

.field static final blacklist TAG:Ljava/lang/String; = "RecyclerView"

.field public static final blacklist TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final blacklist TOUCH_SLOP_PAGING:I = 0x1

.field static final blacklist TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final blacklist TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final blacklist TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final blacklist TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final blacklist TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final blacklist TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final blacklist TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final blacklist TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final blacklist VERTICAL:I = 0x1

.field static final blacklist sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field blacklist mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

.field blacklist mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

.field blacklist mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

.field blacklist mAdapterUpdateDuringMeasure:Z

.field private blacklist mBottomGlow:Landroid/widget/EdgeEffect;

.field private blacklist mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

.field blacklist mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field blacklist mClipToPadding:Z

.field blacklist mDataSetHasChangedAfterLayout:Z

.field private blacklist mDispatchScrollCounter:I

.field private blacklist mEatRequestLayout:I

.field private blacklist mEatenAccessibilityChangeFlags:I

.field blacklist mFirstLayoutComplete:Z

.field blacklist mGapWorker:Lcom/android/internal/widget/GapWorker;

.field blacklist mHasFixedSize:Z

.field private blacklist mIgnoreMotionEventTillDown:Z

.field private blacklist mInitialTouchX:I

.field private blacklist mInitialTouchY:I

.field blacklist mIsAttached:Z

.field blacklist mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

.field private blacklist mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private blacklist mItemAnimatorRunner:Ljava/lang/Runnable;

.field final blacklist mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mItemsAddedOrRemoved:Z

.field blacklist mItemsChanged:Z

.field private blacklist mLastTouchX:I

.field private blacklist mLastTouchY:I

.field blacklist mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field blacklist mLayoutFrozen:Z

.field private blacklist mLayoutOrScrollCounter:I

.field blacklist mLayoutRequestEaten:Z

.field private blacklist mLeftGlow:Landroid/widget/EdgeEffect;

.field private final blacklist mMaxFlingVelocity:I

.field private final blacklist mMinFlingVelocity:I

.field private final blacklist mMinMaxLayoutPositions:[I

.field private final blacklist mNestedOffsets:[I

.field private final blacklist mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

.field private blacklist mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

.field private final blacklist mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

.field blacklist mPostedAnimatorRunner:Z

.field blacklist mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private blacklist mPreserveFocusAfterLayout:Z

.field final blacklist mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

.field blacklist mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

.field private blacklist mRightGlow:Landroid/widget/EdgeEffect;

.field private final blacklist mScrollConsumed:[I

.field private blacklist mScrollFactor:F

.field private blacklist mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

.field private blacklist mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScrollOffset:[I

.field private blacklist mScrollPointerId:I

.field private blacklist mScrollState:I

.field final blacklist mState:Lcom/android/internal/widget/RecyclerView$State;

.field final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect2:Landroid/graphics/Rect;

.field final blacklist mTempRectF:Landroid/graphics/RectF;

.field private blacklist mTopGlow:Landroid/widget/EdgeEffect;

.field private blacklist mTouchSlop:I

.field final blacklist mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field final blacklist mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

.field private final blacklist mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

.field final blacklist mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 143
    const v0, 0x1010436

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 145
    const v0, 0x10100eb

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 161
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 163
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 169
    sput-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 175
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 185
    sput-boolean v0, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 274
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v0

    const-class v0, Landroid/util/AttributeSet;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v0

    sput-object v2, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 481
    new-instance v0, Lcom/android/internal/widget/RecyclerView$3;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 529
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 533
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 536
    move/from16 v4, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    .line 279
    new-instance v0, Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerView$Recycler;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 296
    new-instance v0, Lcom/android/internal/widget/ViewInfoStore;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    .line 310
    new-instance v0, Lcom/android/internal/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerView$1;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 331
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 332
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 345
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 370
    iput-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 380
    iput v6, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 389
    iput v6, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 393
    new-instance v0, Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 420
    iput v6, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 432
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    .line 433
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 435
    new-instance v1, Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    .line 438
    nop

    .line 439
    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_71

    new-instance v1, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 441
    new-instance v1, Lcom/android/internal/widget/RecyclerView$State;

    invoke-direct {v1}, Lcom/android/internal/widget/RecyclerView$State;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 447
    iput-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 448
    iput-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    .line 449
    new-instance v1, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 451
    iput-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 457
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 459
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    .line 460
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    .line 461
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 471
    new-instance v2, Lcom/android/internal/widget/RecyclerView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/RecyclerView$2;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 492
    new-instance v2, Lcom/android/internal/widget/RecyclerView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/RecyclerView$4;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    .line 537
    if-eqz p2, :cond_c0

    .line 538
    sget-object v2, Lcom/android/internal/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v2, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 539
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 540
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    .end local v2    # "a":Landroid/content/res/TypedArray;
    goto :goto_c2

    .line 542
    :cond_c0
    iput-boolean v7, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 544
    :goto_c2
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView;->setScrollContainer(Z)V

    .line 545
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 547
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 548
    .local v8, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    .line 549
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    .line 550
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    if-ne v2, v1, :cond_e6

    move v2, v7

    goto :goto_e7

    :cond_e6
    move v2, v6

    :goto_e7
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 553
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V

    .line 555
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_100

    .line 558
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView;->setImportantForAccessibility(I)V

    .line 560
    :cond_100
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 561
    const-string v5, "accessibility"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 562
    new-instance v2, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    .line 565
    const/4 v9, 0x1

    .line 567
    .local v9, "nestedScrollingEnabled":Z
    const/high16 v2, 0x40000

    if-eqz p2, :cond_148

    .line 568
    const/4 v5, 0x0

    .line 569
    .local v5, "defStyleRes":I
    sget-object v10, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v10, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 571
    .local v10, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v10, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "layoutManagerName":Ljava/lang/String;
    invoke-virtual {v10, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 574
    .local v11, "descendantFocusability":I
    if-ne v11, v0, :cond_12f

    .line 575
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 577
    :cond_12f
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 578
    move-object v0, p0

    move-object v3, p2

    move-object v2, v1

    move-object v1, p1

    .end local v1    # "layoutManagerName":Ljava/lang/String;
    .local v2, "layoutManagerName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 580
    nop

    .line 581
    sget-object v12, Lcom/android/internal/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v12, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 583
    invoke-virtual {v10, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 584
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 586
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v10    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "descendantFocusability":I
    goto :goto_14b

    .line 587
    :cond_148
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 590
    :goto_14b
    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 592
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 595
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 596
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/widget/RecyclerView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # I

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/widget/RecyclerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private blacklist addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 8
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1241
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1242
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1243
    .local v1, "alreadyParented":Z
    :goto_c
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1244
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1246
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_33

    .line 1247
    :cond_26
    if-nez v1, :cond_2e

    .line 1248
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_33

    .line 1250
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->hide(Landroid/view/View;)V

    .line 1252
    :goto_33
    return-void
.end method

.method private blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 9
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .line 3889
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3890
    if-eqz p5, :cond_9

    .line 3891
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3893
    :cond_9
    if-eq p1, p2, :cond_1f

    .line 3894
    if-eqz p6, :cond_10

    .line 3895
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3897
    :cond_10
    iput-object p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3899
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3900
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3901
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3902
    iput-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3904
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3905
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3907
    :cond_2a
    return-void
.end method

.method private blacklist cancelTouch()V
    .registers 2

    .line 3005
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    .line 3006
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 3007
    return-void
.end method

.method static blacklist clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p0, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5245
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    .line 5246
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5247
    .local v0, "item":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_21

    .line 5248
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_13

    .line 5249
    return-void

    .line 5252
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5253
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1f

    .line 5254
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_20

    .line 5256
    :cond_1f
    const/4 v0, 0x0

    .line 5258
    .end local v1    # "parent":Landroid/view/ViewParent;
    :goto_20
    goto :goto_c

    .line 5259
    :cond_21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5261
    .end local v0    # "item":Landroid/view/View;
    :cond_24
    return-void
.end method

.method private blacklist createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 621
    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_128

    .line 622
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 623
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_128

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 627
    :try_start_12
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_25

    .line 631
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 633
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_25
    nop

    .line 634
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_30} :catch_106
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_30} :catch_e6
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_30} :catch_c6
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_30} :catch_a4
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_30} :catch_82

    .line 636
    .local v2, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    const/4 v3, 0x0

    .line 638
    .local v3, "constructorArgs":[Ljava/lang/Object;
    :try_start_31
    sget-object v4, Lcom/android/internal/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 639
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 640
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {p1, p3, v5, v6}, [Ljava/lang/Object;

    move-result-object v5
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_43} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_43} :catch_106
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_43} :catch_e6
    .catch Ljava/lang/InstantiationException; {:try_start_31 .. :try_end_43} :catch_c6
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_43} :catch_a4
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_43} :catch_82

    move-object v3, v5

    .line 649
    goto :goto_4e

    .line 641
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    :catch_45
    move-exception v4

    .line 643
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v5, 0x0

    :try_start_47
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_47 .. :try_end_4d} :catch_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_4d} :catch_106
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_47 .. :try_end_4d} :catch_e6
    .catch Ljava/lang/InstantiationException; {:try_start_47 .. :try_end_4d} :catch_c6
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_4d} :catch_a4
    .catch Ljava/lang/ClassCastException; {:try_start_47 .. :try_end_4d} :catch_82

    .line 648
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    move-object v4, v5

    .line 650
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    :goto_4e
    const/4 v5, 0x1

    :try_start_4f
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 651
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 667
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    goto/16 :goto_128

    .line 644
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .restart local v3    # "constructorArgs":[Ljava/lang/Object;
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    :catch_5d
    move-exception v5

    .line 645
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 646
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error creating LayoutManager "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/widget/RecyclerView;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "defStyleAttr":I
    .end local p5    # "defStyleRes":I
    throw v6
    :try_end_82
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4f .. :try_end_82} :catch_106
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4f .. :try_end_82} :catch_e6
    .catch Ljava/lang/InstantiationException; {:try_start_4f .. :try_end_82} :catch_c6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_82} :catch_a4
    .catch Ljava/lang/ClassCastException; {:try_start_4f .. :try_end_82} :catch_82

    .line 664
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/internal/widget/RecyclerView$LayoutManager;>;"
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Lcom/android/internal/widget/RecyclerView;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    .restart local p4    # "defStyleAttr":I
    .restart local p5    # "defStyleRes":I
    :catch_82
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 661
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_a4
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 658
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_c6
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 655
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_e6
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 652
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_106
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 670
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_128
    :goto_128
    return-void
.end method

.method private blacklist didChildRangeChange(II)Z
    .registers 6
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .line 3841
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3842
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v2

    if-eq v0, p2, :cond_14

    :cond_13
    move v1, v2

    :cond_14
    return v1
.end method

.method private blacklist dispatchContentChangedIfNecessary()V
    .registers 4

    .line 3213
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3214
    .local v0, "flags":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3215
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3216
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3217
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3218
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 3219
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3221
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1c
    return-void
.end method

.method private blacklist dispatchLayoutStep1()V
    .registers 11

    .line 3551
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3552
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3553
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3554
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    .line 3555
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3556
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3557
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->saveFocusInfo()V

    .line 3558
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3559
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3560
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3561
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3562
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3564
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_b4

    .line 3566
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3567
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_54
    if-ge v1, v0, :cond_b4

    .line 3568
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3569
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_75

    .line 3570
    goto :goto_b1

    .line 3572
    :cond_75
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3574
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 3575
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3573
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3576
    .local v4, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3577
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v5, :cond_b1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_b1

    .line 3578
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_b1

    .line 3579
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    .line 3587
    .local v5, "key":J
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v7, v5, v6, v3}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3567
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "key":J
    :cond_b1
    :goto_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 3591
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_b4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_121

    .line 3598
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->saveOldPositions()V

    .line 3599
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3600
    .local v0, "didStructureChange":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3602
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3603
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3605
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d3
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_11d

    .line 3606
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3607
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3608
    .local v4, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 3609
    goto :goto_11a

    .line 3611
    :cond_ec
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ViewInfoStore;->isInPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_11a

    .line 3612
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v5

    .line 3613
    .local v5, "flags":I
    nop

    .line 3614
    const/16 v6, 0x2000

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    .line 3615
    .local v6, "wasHidden":Z
    if-nez v6, :cond_103

    .line 3616
    or-int/lit16 v5, v5, 0x1000

    .line 3618
    :cond_103
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3619
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 3618
    invoke-virtual {v7, v8, v4, v5, v9}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3620
    .local v7, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v6, :cond_115

    .line 3621
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_11a

    .line 3623
    :cond_115
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v8, v4, v7}, Lcom/android/internal/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3605
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v5    # "flags":I
    .end local v6    # "wasHidden":Z
    .end local v7    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_11a
    :goto_11a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 3628
    .end local v1    # "i":I
    :cond_11d
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    .line 3629
    .end local v0    # "didStructureChange":Z
    goto :goto_124

    .line 3630
    :cond_121
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->clearOldPositions()V

    .line 3632
    :goto_124
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3633
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3634
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3635
    return-void
.end method

.method private blacklist dispatchLayoutStep2()V
    .registers 5

    .line 3642
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3643
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3644
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3645
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3646
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3647
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3650
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3651
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3653
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 3657
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    move v2, v1

    :goto_43
    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3658
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3659
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3660
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3661
    return-void
.end method

.method private blacklist dispatchLayoutStep3()V
    .registers 13

    .line 3668
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3669
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3670
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3671
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    .line 3672
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_92

    .line 3676
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1e
    if-ltz v0, :cond_89

    .line 3677
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3678
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 3679
    move-object v3, p0

    goto :goto_86

    .line 3681
    :cond_32
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 3682
    .local v10, "key":J
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 3683
    invoke-virtual {v2, v3, v5}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v2

    .line 3684
    .local v2, "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v10, v11}, Lcom/android/internal/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3685
    .local v4, "oldChangeViewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v4, :cond_80

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_80

    .line 3696
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    .line 3698
    .local v8, "oldDisappearing":Z
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ViewInfoStore;->isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    .line 3699
    .local v9, "newDisappearing":Z
    if-eqz v8, :cond_63

    if-ne v4, v5, :cond_63

    .line 3701
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    move-object v3, p0

    goto :goto_7f

    .line 3703
    :cond_63
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ViewInfoStore;->popFromPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v6

    .line 3706
    .local v6, "preInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3707
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ViewInfoStore;->popFromPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3708
    .local v7, "postInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v6, :cond_7b

    .line 3709
    invoke-direct {p0, v10, v11, v5, v4}, Lcom/android/internal/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    move-object v3, p0

    goto :goto_7f

    .line 3711
    :cond_7b
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/widget/RecyclerView;->animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    .line 3715
    .end local v6    # "preInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v7    # "postInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v8    # "oldDisappearing":Z
    .end local v9    # "newDisappearing":Z
    :goto_7f
    goto :goto_86

    .line 3685
    :cond_80
    move-object v3, p0

    .line 3716
    iget-object v6, v3, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v6, v5, v2}, Lcom/android/internal/widget/ViewInfoStore;->addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3676
    .end local v2    # "animationInfo":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v4    # "oldChangeViewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v10    # "key":J
    :goto_86
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_89
    move-object v3, p0

    .line 3721
    .end local v0    # "i":I
    iget-object v0, v3, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mViewInfoProcessCallback:Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ViewInfoStore;->process(Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;)V

    goto :goto_93

    .line 3672
    :cond_92
    move-object v3, p0

    .line 3724
    :goto_93
    iget-object v0, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 3725
    iget-object v0, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 3726
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3727
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3729
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v0, v2, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3730
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3731
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_be

    .line 3732
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3734
    :cond_be
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v2, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v2, :cond_d1

    .line 3737
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput v0, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 3738
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3739
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 3742
    :cond_d1
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3743
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3744
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3745
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewInfoStore;->clear()V

    .line 3746
    iget-object v2, v3, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v4, v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 3747
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3749
    :cond_f4
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->recoverFocusFromState()V

    .line 3750
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    .line 3751
    return-void
.end method

.method private blacklist dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2607
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    .line 2608
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2610
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1c

    .line 2612
    :cond_f
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v3, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2613
    const/4 v3, 0x3

    if-eq v0, v3, :cond_19

    if-ne v0, v2, :cond_1b

    .line 2615
    :cond_19
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2617
    :cond_1b
    return v2

    .line 2623
    :cond_1c
    :goto_1c
    if-eqz v0, :cond_3b

    .line 2624
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2625
    .local v1, "listenerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v1, :cond_3b

    .line 2626
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2627
    .local v4, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v4, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2628
    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2629
    return v2

    .line 2625
    .end local v4    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2633
    .end local v1    # "listenerCount":I
    .end local v3    # "i":I
    :cond_3b
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2590
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_c

    .line 2591
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2594
    :cond_c
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2595
    .local v2, "listenerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_2c

    .line 2596
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2597
    .local v4, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v4, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eq v0, v1, :cond_29

    .line 2598
    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2599
    const/4 v1, 0x1

    return v1

    .line 2595
    .end local v4    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2602
    .end local v3    # "i":I
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findMinMaxChildLayoutPositions([I)V
    .registers 10
    .param p1, "into"    # [I

    .line 3815
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3816
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 3817
    const/4 v3, -0x1

    aput v3, p1, v1

    .line 3818
    aput v3, p1, v2

    .line 3819
    return-void

    .line 3821
    :cond_10
    const v3, 0x7fffffff

    .line 3822
    .local v3, "minPositionPreLayout":I
    const/high16 v4, -0x80000000

    .line 3823
    .local v4, "maxPositionPreLayout":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v0, :cond_36

    .line 3824
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 3825
    .local v6, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 3826
    goto :goto_33

    .line 3828
    :cond_29
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    .line 3829
    .local v7, "pos":I
    if-ge v7, v3, :cond_30

    .line 3830
    move v3, v7

    .line 3832
    :cond_30
    if-le v7, v4, :cond_33

    .line 3833
    move v4, v7

    .line 3823
    .end local v6    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v7    # "pos":I
    :cond_33
    :goto_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 3836
    .end local v5    # "i":I
    :cond_36
    aput v3, p1, v1

    .line 3837
    aput v4, p1, v2

    .line 3838
    return-void
.end method

.method static blacklist findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 5223
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5224
    return-object v1

    .line 5226
    :cond_6
    instance-of v0, p0, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_e

    .line 5227
    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    return-object v0

    .line 5229
    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5230
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5231
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_26

    .line 5232
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5233
    .local v4, "child":Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v5

    .line 5234
    .local v5, "descendant":Lcom/android/internal/widget/RecyclerView;
    if-eqz v5, :cond_23

    .line 5235
    return-object v5

    .line 5231
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "descendant":Lcom/android/internal/widget/RecyclerView;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 5238
    .end local v3    # "i":I
    :cond_26
    return-object v1
.end method

.method private blacklist findNextViewToFocus()Landroid/view/View;
    .registers 7

    .line 3431
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_d

    .line 3432
    :cond_c
    const/4 v0, 0x0

    :goto_d
    nop

    .line 3434
    .local v0, "startFocusSearchIndex":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 3435
    .local v1, "itemCount":I
    move v2, v0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2c

    .line 3436
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3437
    .local v3, "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_1e

    .line 3438
    goto :goto_2c

    .line 3440
    :cond_1e
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3441
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 3435
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3444
    .end local v2    # "i":I
    .end local v3    # "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2c
    :goto_2c
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3445
    .local v2, "limit":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_32
    const/4 v4, 0x0

    if-ltz v3, :cond_4a

    .line 3446
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3447
    .local v5, "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v5, :cond_3c

    .line 3448
    return-object v4

    .line 3450
    :cond_3c
    iget-object v4, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3451
    iget-object v4, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 3445
    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 3454
    .end local v3    # "i":I
    .end local v5    # "nextFocus":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_4a
    return-object v4
.end method

.method static blacklist getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p0, "child"    # Landroid/view/View;

    .line 4337
    if-nez p0, :cond_4

    .line 4338
    const/4 v0, 0x0

    return-object v0

    .line 4340
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static blacklist getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 4612
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 4613
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4614
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4615
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4616
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4617
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 4614
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4618
    return-void
.end method

.method private blacklist getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 3532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3533
    .local v0, "lastKnownId":I
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_27

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3534
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3535
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3536
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 3537
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3539
    .end local v1    # "id":I
    :cond_26
    goto :goto_4

    .line 3540
    :cond_27
    return v0
.end method

.method private blacklist getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 673
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1f

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 676
    :cond_1f
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 677
    return-object p2

    .line 679
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getScrollFactor()F
    .registers 5

    .line 3058
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    .line 3059
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3060
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3062
    nop

    .line 3063
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3062
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    goto :goto_34

    .line 3065
    :cond_32
    const/4 v1, 0x0

    return v1

    .line 3068
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_34
    :goto_34
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollFactor:F

    return v0
.end method

.method private blacklist handleMissingPreInfoForChangeError(JLcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 15
    .param p1, "key"    # J
    .param p3, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3771
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3772
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_71

    .line 3773
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3774
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 3775
    .local v3, "other":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-ne v3, p3, :cond_16

    .line 3776
    goto :goto_6e

    .line 3778
    :cond_16
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3779
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_6e

    .line 3780
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-string v7, " \n View Holder 2:"

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 3781
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3785
    :cond_4d
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3772
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "other":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "otherKey":J
    :cond_6e
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3793
    .end local v1    # "i":I
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be found but it is necessary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    return-void
.end method

.method private blacklist hasUpdatedView()Z
    .registers 5

    .line 1629
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1630
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 1631
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1632
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1633
    goto :goto_24

    .line 1635
    :cond_1c
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1636
    const/4 v3, 0x1

    return v3

    .line 1630
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1639
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist initChildrenHelper()V
    .registers 3

    .line 683
    new-instance v0, Lcom/android/internal/widget/ChildHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$5;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ChildHelper;-><init>(Lcom/android/internal/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 780
    return-void
.end method

.method private blacklist isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 9
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2349
    const/4 v0, 0x0

    if-eqz p2, :cond_42

    if-ne p2, p0, :cond_6

    goto :goto_42

    .line 2352
    :cond_6
    const/4 v1, 0x1

    if-nez p1, :cond_a

    .line 2353
    return v1

    .line 2356
    :cond_a
    const/4 v2, 0x2

    if-eq p3, v2, :cond_15

    if-ne p3, v1, :cond_10

    goto :goto_15

    .line 2369
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2357
    :cond_15
    :goto_15
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v0

    .line 2358
    .local v3, "rtl":Z
    :goto_20
    if-ne p3, v2, :cond_23

    move v0, v1

    :cond_23
    xor-int/2addr v0, v3

    if-eqz v0, :cond_29

    .line 2359
    const/16 v0, 0x42

    goto :goto_2b

    :cond_29
    const/16 v0, 0x11

    .line 2360
    .local v0, "absHorizontal":I
    :goto_2b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2361
    return v1

    .line 2363
    :cond_32
    if-ne p3, v2, :cond_3b

    .line 2364
    const/16 v1, 0x82

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2366
    :cond_3b
    const/16 v1, 0x21

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 2350
    .end local v0    # "absHorizontal":I
    .end local v3    # "rtl":Z
    :cond_42
    :goto_42
    return v0
.end method

.method private blacklist isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .registers 8
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2378
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2379
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2380
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2381
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2382
    const/4 v0, 0x1

    sparse-switch p3, :sswitch_data_c2

    .line 2400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2396
    :sswitch_42
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v1, v2, :cond_56

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gt v1, v2, :cond_61

    :cond_56
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_61

    move v3, v0

    :cond_61
    return v3

    .line 2388
    :sswitch_62
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_76

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gt v1, v2, :cond_81

    :cond_76
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_81

    move v3, v0

    :cond_81
    return v3

    .line 2392
    :sswitch_82
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_96

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_a1

    :cond_96
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_a1

    move v3, v0

    :cond_a1
    return v3

    .line 2384
    :sswitch_a2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_b6

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_c1

    :cond_b6
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_c1

    move v3, v0

    :cond_c1
    return v3

    :sswitch_data_c2
    .sparse-switch
        0x11 -> :sswitch_a2
        0x21 -> :sswitch_82
        0x42 -> :sswitch_62
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private blacklist onPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3011
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_2d

    .line 3013
    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 3014
    .local v1, "newIndex":I
    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 3015
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 3016
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 3018
    .end local v1    # "newIndex":I
    :cond_2d
    return-void
.end method

.method private blacklist predictiveItemAnimationsEnabled()Z
    .registers 2

    .line 3302
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist processAdapterUpdatesAndSetAnimationFlags()V
    .registers 6

    .line 3312
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_e

    .line 3315
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    .line 3316
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V

    .line 3321
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3322
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    goto :goto_1f

    .line 3324
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3326
    :goto_1f
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v0, v2

    .line 3327
    .local v0, "animationTypeSupported":Z
    :goto_2d
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_51

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_43

    if-nez v0, :cond_43

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_51

    :cond_43
    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 3333
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_4f
    move v4, v2

    goto :goto_52

    :cond_51
    move v4, v1

    :goto_52
    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3334
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_6a

    if-eqz v0, :cond_6a

    iget-boolean v4, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_6a

    .line 3337
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6a

    move v1, v2

    goto :goto_6b

    :cond_6a
    nop

    :goto_6b
    iput-boolean v1, v3, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3338
    return-void
.end method

.method private blacklist pullGlows(FFFF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .line 2093
    const/4 v0, 0x0

    .line 2094
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_22

    .line 2095
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    .line 2096
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2097
    const/4 v0, 0x1

    goto :goto_3d

    .line 2098
    :cond_22
    cmpl-float v2, p2, v1

    if-lez v2, :cond_3d

    .line 2099
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    .line 2100
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2101
    const/4 v0, 0x1

    .line 2104
    :cond_3d
    :goto_3d
    cmpg-float v2, p4, v1

    if-gez v2, :cond_59

    .line 2105
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    .line 2106
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2107
    const/4 v0, 0x1

    goto :goto_75

    .line 2108
    :cond_59
    cmpl-float v2, p4, v1

    if-lez v2, :cond_75

    .line 2109
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    .line 2110
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 2111
    const/4 v0, 0x1

    .line 2114
    :cond_75
    :goto_75
    if-nez v0, :cond_7f

    cmpl-float v2, p2, v1

    if-nez v2, :cond_7f

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_82

    .line 2115
    :cond_7f
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2117
    :cond_82
    return-void
.end method

.method private blacklist recoverFocusFromState()V
    .registers 8

    .line 3458
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 3459
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_b5

    .line 3460
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_b5

    .line 3468
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_55

    .line 3469
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3470
    .local v0, "focusedChild":Landroid/view/View;
    sget-boolean v1, Lcom/android/internal/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_4c

    .line 3471
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 3483
    :cond_40
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_55

    .line 3486
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestFocus()Z

    .line 3487
    return-void

    .line 3489
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 3492
    return-void

    .line 3495
    .end local v0    # "focusedChild":Landroid/view/View;
    :cond_55
    const/4 v0, 0x0

    .line 3499
    .local v0, "focusTarget":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3500
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-wide v1, v1, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3502
    :cond_70
    const/4 v1, 0x0

    .line 3503
    .local v1, "viewToFocus":Landroid/view/View;
    if-eqz v0, :cond_89

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3504
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_86

    goto :goto_89

    .line 3517
    :cond_86
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_95

    .line 3505
    :cond_89
    :goto_89
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_95

    .line 3512
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    .line 3520
    :cond_95
    :goto_95
    if-eqz v1, :cond_b4

    .line 3521
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v5, v2

    cmp-long v2, v5, v3

    if-eqz v2, :cond_b1

    .line 3522
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v2, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3523
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 3524
    move-object v1, v2

    .line 3527
    .end local v2    # "child":Landroid/view/View;
    :cond_b1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3529
    :cond_b4
    return-void

    .line 3465
    .end local v0    # "focusTarget":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v1    # "viewToFocus":Landroid/view/View;
    :cond_b5
    :goto_b5
    return-void
.end method

.method private blacklist releaseGlows()V
    .registers 3

    .line 2120
    const/4 v0, 0x0

    .line 2121
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_b

    .line 2122
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2123
    const/4 v0, 0x1

    .line 2125
    :cond_b
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_15

    .line 2126
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2127
    const/4 v0, 0x1

    .line 2129
    :cond_15
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1f

    .line 2130
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2131
    const/4 v0, 0x1

    .line 2133
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_29

    .line 2134
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2135
    const/4 v0, 0x1

    .line 2137
    :cond_29
    if-eqz v0, :cond_2e

    .line 2138
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2140
    :cond_2e
    return-void
.end method

.method private blacklist releaseHorizontalGlow(IF)I
    .registers 10
    .param p1, "deltaX"    # I
    .param p2, "y"    # F

    .line 2942
    const/4 v0, 0x0

    .line 2943
    .local v0, "consumed":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 2944
    .local v1, "displacement":F
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2945
    .local v2, "pullDistance":F
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_39

    .line 2946
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    neg-float v0, v3

    .line 2947
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5c

    .line 2948
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5c

    .line 2950
    :cond_39
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5c

    .line 2951
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 2952
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5c

    .line 2953
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2956
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2957
    .local v3, "pixelsConsumed":I
    if-eqz v3, :cond_6b

    .line 2958
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 2960
    :cond_6b
    return v3
.end method

.method private blacklist releaseVerticalGlow(IF)I
    .registers 9
    .param p1, "deltaY"    # I
    .param p2, "x"    # F

    .line 2975
    const/4 v0, 0x0

    .line 2976
    .local v0, "consumed":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 2977
    .local v1, "displacement":F
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2978
    .local v2, "pullDistance":F
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_36

    .line 2979
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v5, v2

    invoke-virtual {v3, v5, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    neg-float v0, v3

    .line 2980
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5c

    .line 2981
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5c

    .line 2983
    :cond_36
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5c

    .line 2984
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    invoke-virtual {v3, v2, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 2985
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5c

    .line 2986
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2989
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2990
    .local v3, "pixelsConsumed":I
    if-eqz v3, :cond_6b

    .line 2991
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 2993
    :cond_6b
    return v3
.end method

.method private blacklist resetFocusInfo()V
    .registers 4

    .line 3416
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3417
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3418
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3419
    return-void
.end method

.method private blacklist resetTouch()V
    .registers 2

    .line 2997
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 2998
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3000
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 3001
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->releaseGlows()V

    .line 3002
    return-void
.end method

.method private blacklist saveFocusInfo()V
    .registers 6

    .line 3395
    const/4 v0, 0x0

    .line 3396
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_13

    .line 3397
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3400
    :cond_13
    if-nez v0, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3401
    .local v1, "focusedVh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_1b
    if-nez v1, :cond_21

    .line 3402
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_55

    .line 3404
    :cond_21
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    goto :goto_32

    :cond_30
    const-wide/16 v3, -0x1

    :goto_32
    iput-wide v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3408
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3c

    const/4 v3, -0x1

    goto :goto_49

    .line 3409
    :cond_3c
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_49

    .line 3410
    :cond_45
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    :goto_49
    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3411
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3413
    :goto_55
    return-void
.end method

.method private blacklist setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V
    .registers 7
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .line 1010
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_10

    .line 1011
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    .line 1012
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1014
    :cond_10
    if-eqz p2, :cond_14

    if-eqz p3, :cond_17

    .line 1015
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1017
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->reset()V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 1019
    .local v0, "oldAdapter":Lcom/android/internal/widget/RecyclerView$Adapter;
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 1020
    if-eqz p1, :cond_2a

    .line 1021
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mObserver:Lcom/android/internal/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V

    .line 1022
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1024
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_35

    .line 1025
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 1027
    :cond_35
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    .line 1028
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1029
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1030
    return-void
.end method

.method private blacklist stopGlowAnimations(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2752
    const/4 v0, 0x0

    .line 2753
    .local v0, "stopped":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_24

    .line 2754
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2755
    const/4 v0, 0x1

    .line 2757
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_42

    .line 2758
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2759
    const/4 v0, 0x1

    .line 2761
    :cond_42
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_60

    .line 2762
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2763
    const/4 v0, 0x1

    .line 2765
    :cond_60
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7f

    .line 2766
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2767
    const/4 v0, 0x1

    .line 2769
    :cond_7f
    return v0
.end method

.method private blacklist stopScrollersInternal()V
    .registers 2

    .line 2064
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2065
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    .line 2066
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2068
    :cond_e
    return-void
.end method


# virtual methods
.method blacklist absorbGlows(II)V
    .registers 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 2166
    if-gez p1, :cond_c

    .line 2167
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureLeftGlow()V

    .line 2168
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_16

    .line 2169
    :cond_c
    if-lez p1, :cond_16

    .line 2170
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureRightGlow()V

    .line 2171
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2174
    :cond_16
    :goto_16
    if-gez p2, :cond_22

    .line 2175
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureTopGlow()V

    .line 2176
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2c

    .line 2177
    :cond_22
    if-lez p2, :cond_2c

    .line 2178
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->ensureBottomGlow()V

    .line 2179
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2182
    :cond_2c
    :goto_2c
    if-nez p1, :cond_30

    if-eqz p2, :cond_33

    .line 2183
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2185
    :cond_33
    return-void
.end method

.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2438
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2439
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2441
    :cond_f
    return-void
.end method

.method public blacklist addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .registers 3
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    .line 1405
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V

    .line 1406
    return-void
.end method

.method public blacklist addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;I)V
    .registers 5
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .line 1376
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 1377
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1380
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1383
    :cond_17
    if-gez p2, :cond_1f

    .line 1384
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1386
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1388
    :goto_24
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1389
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1390
    return-void
.end method

.method public blacklist addOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1085
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1088
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    return-void
.end method

.method public blacklist addOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2573
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2574
    return-void
.end method

.method public blacklist addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1473
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1476
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    return-void
.end method

.method blacklist animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "itemHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3871
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3872
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateAppearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3873
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3875
    :cond_f
    return-void
.end method

.method blacklist animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3879
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addAnimatingView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3880
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3881
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3882
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postAnimationRunner()V

    .line 3884
    :cond_12
    return-void
.end method

.method blacklist assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 2525
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2526
    if-nez p1, :cond_10

    .line 2527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2530
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2533
    :cond_16
    return-void
.end method

.method blacklist assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 2543
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2544
    if-nez p1, :cond_10

    .line 2545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2548
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2550
    :cond_16
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_28

    .line 2551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "RecyclerView"

    const-string v2, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2557
    :cond_28
    return-void
.end method

.method blacklist canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 4182
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 4183
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4182
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4008
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method blacklist clearOldPositions()V
    .registers 5

    .line 4062
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4063
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4064
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4065
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4066
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 4063
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4069
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 4070
    return-void
.end method

.method public blacklist clearOnChildAttachStateChangeListeners()V
    .registers 2

    .line 1108
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1109
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1111
    :cond_9
    return-void
.end method

.method public blacklist clearOnScrollListeners()V
    .registers 2

    .line 1494
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1495
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1497
    :cond_9
    return-void
.end method

.method public whitelist computeHorizontalScrollExtent()I
    .registers 3

    .line 1748
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1749
    return v1

    .line 1751
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_16
    return v1
.end method

.method public whitelist computeHorizontalScrollOffset()I
    .registers 3

    .line 1723
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1724
    return v1

    .line 1726
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_16
    return v1
.end method

.method public whitelist computeHorizontalScrollRange()I
    .registers 3

    .line 1771
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1772
    return v1

    .line 1774
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_16
    return v1
.end method

.method public whitelist computeVerticalScrollExtent()I
    .registers 3

    .line 1820
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1821
    return v1

    .line 1823
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_16
    return v1
.end method

.method public whitelist computeVerticalScrollOffset()I
    .registers 3

    .line 1796
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1797
    return v1

    .line 1799
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_16
    return v1
.end method

.method public whitelist computeVerticalScrollRange()I
    .registers 3

    .line 1843
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1844
    return v1

    .line 1846
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    :cond_16
    return v1
.end method

.method blacklist considerReleasingGlowsOnScroll(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2143
    const/4 v0, 0x0

    .line 2144
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    if-lez p1, :cond_15

    .line 2145
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2146
    const/4 v0, 0x1

    .line 2148
    :cond_15
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_29

    if-gez p1, :cond_29

    .line 2149
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2150
    const/4 v0, 0x1

    .line 2152
    :cond_29
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3d

    if-lez p2, :cond_3d

    .line 2153
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2154
    const/4 v0, 0x1

    .line 2156
    :cond_3d
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_51

    if-gez p2, :cond_51

    .line 2157
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2158
    const/4 v0, 0x1

    .line 2160
    :cond_51
    if-eqz v0, :cond_56

    .line 2161
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 2163
    :cond_56
    return-void
.end method

.method blacklist consumePendingUpdateOperations()V
    .registers 4

    .line 1588
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_b

    goto :goto_67

    .line 1594
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1595
    return-void

    .line 1600
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 1601
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1603
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1605
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1606
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->preProcess()V

    .line 1607
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_4a

    .line 1608
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1609
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    goto :goto_4a

    .line 1612
    :cond_45
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 1615
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1616
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1617
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_66

    .line 1618
    :cond_55
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1619
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1621
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1623
    :cond_66
    :goto_66
    return-void

    .line 1589
    :cond_67
    :goto_67
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1591
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1592
    return-void
.end method

.method blacklist defaultOnMeasure(II)V
    .registers 6
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3150
    nop

    .line 3151
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3152
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v1

    .line 3150
    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 3153
    .local v0, "width":I
    nop

    .line 3154
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3155
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v2

    .line 3153
    invoke-static {p2, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 3157
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3158
    return-void
.end method

.method blacklist dispatchChildAttached(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 6902
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6903
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6904
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 6905
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6907
    :cond_12
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_2e

    .line 6908
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6909
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_2e

    .line 6910
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6909
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 6913
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method blacklist dispatchChildDetached(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 6888
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6889
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6890
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 6891
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6893
    :cond_12
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_2e

    .line 6894
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6895
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_2e

    .line 6896
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6895
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 6899
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method blacklist dispatchLayout()V
    .registers 3

    .line 3366
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-string v1, "RecyclerView"

    if-nez v0, :cond_c

    .line 3367
    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    return-void

    .line 3371
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    .line 3372
    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    return-void

    .line 3376
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3377
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 3378
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3379
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    .line 3380
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_5d

    .line 3381
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 3382
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4f

    goto :goto_55

    .line 3389
    :cond_4f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_5d

    .line 3385
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V

    .line 3386
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3391
    :goto_5d
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3392
    return-void
.end method

.method blacklist dispatchOnScrollStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 4710
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 4711
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4716
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4719
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_15

    .line 4720
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 4722
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_31

    .line 4723
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_31

    .line 4724
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 4723
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 4727
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method blacklist dispatchOnScrolled(II)V
    .registers 7
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .line 4670
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4673
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4674
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4675
    .local v1, "scrollY":I
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4678
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->onScrolled(II)V

    .line 4682
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_1d

    .line 4683
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4685
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_39

    .line 4686
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_39

    .line 4687
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrolled(Lcom/android/internal/widget/RecyclerView;II)V

    .line 4686
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 4690
    .end local v2    # "i":I
    :cond_39
    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4691
    return-void
.end method

.method blacklist dispatchPendingImportantForAccessibilityChanges()V
    .registers 6

    .line 10549
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_30

    .line 10550
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10551
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2d

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 10552
    goto :goto_2d

    .line 10554
    :cond_21
    iget v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10555
    .local v2, "state":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    .line 10557
    iget-object v4, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 10558
    iput v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10549
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v2    # "state":I
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 10562
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10563
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1229
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1230
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1221
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1222
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 3937
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3939
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3940
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 3941
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 3940
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3945
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .line 3946
    .local v1, "needsInvalidate":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 3947
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3948
    .local v2, "restore":I
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_38

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    goto :goto_39

    :cond_38
    move v5, v4

    .line 3949
    .local v5, "padding":I
    :goto_39
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3950
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3951
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_57

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_57

    move v6, v3

    goto :goto_58

    :cond_57
    move v6, v4

    :goto_58
    move v1, v6

    .line 3952
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3954
    .end local v2    # "restore":I
    .end local v5    # "padding":I
    :cond_5c
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_90

    .line 3955
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3956
    .restart local v2    # "restore":I
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7d

    .line 3957
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3959
    :cond_7d
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_8b

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_8b

    move v5, v3

    goto :goto_8c

    :cond_8b
    move v5, v4

    :goto_8c
    or-int/2addr v1, v5

    .line 3960
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3962
    .end local v2    # "restore":I
    :cond_90
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_cd

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 3963
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3964
    .restart local v2    # "restore":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3965
    .local v5, "width":I
    iget-boolean v6, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_ad

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    goto :goto_ae

    :cond_ad
    move v6, v4

    .line 3966
    .local v6, "padding":I
    :goto_ae
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3967
    neg-int v7, v6

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3968
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_c8

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_c8

    move v7, v3

    goto :goto_c9

    :cond_c8
    move v7, v4

    :goto_c9
    or-int/2addr v1, v7

    .line 3969
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3971
    .end local v2    # "restore":I
    .end local v5    # "width":I
    .end local v6    # "padding":I
    :cond_cd
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_121

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_121

    .line 3972
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3973
    .restart local v2    # "restore":I
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3974
    iget-boolean v5, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_100

    .line 3975
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_10f

    .line 3977
    :cond_100
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3979
    :goto_10f
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_11c

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_11c

    goto :goto_11d

    :cond_11c
    move v3, v4

    :goto_11d
    or-int/2addr v1, v3

    .line 3980
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3986
    .end local v2    # "restore":I
    :cond_121
    if-nez v1, :cond_138

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_138

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_138

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3987
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_138

    .line 3988
    const/4 v1, 0x1

    .line 3991
    :cond_138
    if-eqz v1, :cond_13d

    .line 3992
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->postInvalidateOnAnimation()V

    .line 3994
    :cond_13d
    return-void
.end method

.method public whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 4546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method blacklist eatRequestLayout()V
    .registers 3

    .line 1851
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1852
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_11

    .line 1853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1855
    :cond_11
    return-void
.end method

.method blacklist ensureBottomGlow()V
    .registers 5

    .line 2228
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2229
    return-void

    .line 2231
    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2232
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2233
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2234
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2233
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_43

    .line 2236
    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2238
    :goto_43
    return-void
.end method

.method blacklist ensureLeftGlow()V
    .registers 5

    .line 2188
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2189
    return-void

    .line 2191
    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2192
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2193
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2194
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2193
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_43

    .line 2196
    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2198
    :goto_43
    return-void
.end method

.method blacklist ensureRightGlow()V
    .registers 5

    .line 2201
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2202
    return-void

    .line 2204
    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2205
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2206
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2207
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2206
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_43

    .line 2209
    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2211
    :goto_43
    return-void
.end method

.method blacklist ensureTopGlow()V
    .registers 5

    .line 2214
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2215
    return-void

    .line 2217
    :cond_5
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2218
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_36

    .line 2219
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2220
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2219
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_43

    .line 2222
    :cond_36
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2225
    :goto_43
    return-void
.end method

.method public blacklist findChildViewUnder(FF)Landroid/view/View;
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 4529
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4530
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_44

    .line 4531
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4532
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 4533
    .local v3, "translationX":F
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 4534
    .local v4, "translationY":F
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_41

    .line 4535
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_41

    .line 4536
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_41

    .line 4537
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_41

    .line 4538
    return-object v2

    .line 4530
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 4541
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 4313
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4314
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_14

    .line 4315
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4316
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 4318
    :cond_14
    if-ne v0, p0, :cond_18

    move-object v1, p1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1
.end method

.method public blacklist findContainingViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 4331
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4332
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public blacklist findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "position"    # I

    .line 4442
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_6

    .line 4443
    const/4 v0, 0x0

    return-object v0

    .line 4445
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4447
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4448
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_38

    .line 4449
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4450
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_35

    .line 4451
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_35

    .line 4452
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 4453
    move-object v1, v3

    goto :goto_35

    .line 4455
    :cond_34
    return-object v3

    .line 4448
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4459
    .end local v2    # "i":I
    :cond_38
    return-object v1
.end method

.method public blacklist findViewHolderForItemId(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "id"    # J

    .line 4503
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_42

    .line 4506
    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4507
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4508
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_41

    .line 4509
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4510
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3e

    .line 4511
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 4512
    move-object v1, v3

    goto :goto_3e

    .line 4514
    :cond_3d
    return-object v3

    .line 4508
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4518
    .end local v2    # "i":I
    :cond_41
    return-object v1

    .line 4504
    .end local v0    # "childCount":I
    .end local v1    # "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findViewHolderForLayoutPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "position"    # I

    .line 4421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist findViewHolderForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method blacklist findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .line 4463
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4464
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4465
    .local v1, "hidden":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_3a

    .line 4466
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4467
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_37

    .line 4468
    if-eqz p2, :cond_23

    .line 4469
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2a

    .line 4470
    goto :goto_37

    .line 4472
    :cond_23
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2a

    .line 4473
    goto :goto_37

    .line 4475
    :cond_2a
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v5, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 4476
    move-object v1, v3

    goto :goto_37

    .line 4478
    :cond_36
    return-object v3

    .line 4465
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4485
    .end local v2    # "i":I
    :cond_3a
    return-object v1
.end method

.method public blacklist fling(II)Z
    .registers 13
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 1994
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1995
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return v1

    .line 1999
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_12

    .line 2000
    return v1

    .line 2003
    :cond_12
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2004
    .local v0, "canScrollHorizontal":Z
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 2006
    .local v2, "canScrollVertical":Z
    if-eqz v0, :cond_28

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_29

    .line 2007
    :cond_28
    const/4 p1, 0x0

    .line 2009
    :cond_29
    if-eqz v2, :cond_33

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_34

    .line 2010
    :cond_33
    const/4 p2, 0x0

    .line 2012
    :cond_34
    if-nez p1, :cond_39

    if-nez p2, :cond_39

    .line 2014
    return v1

    .line 2017
    :cond_39
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 2018
    const/4 v3, 0x0

    .line 2019
    .local v3, "consumed":Z
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_98

    .line 2020
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2021
    .local v4, "firstChild":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2022
    .local v6, "lastChild":Landroid/view/View;
    if-gez p2, :cond_75

    .line 2023
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    if-gtz v7, :cond_73

    .line 2024
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    if-ge v7, v8, :cond_71

    goto :goto_73

    :cond_71
    move v7, v1

    goto :goto_74

    :cond_73
    :goto_73
    move v7, v5

    :goto_74
    move v3, v7

    .line 2027
    :cond_75
    if-lez p2, :cond_98

    .line 2028
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v5

    if-lt v7, v8, :cond_96

    .line 2029
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_94

    goto :goto_96

    :cond_94
    move v7, v1

    goto :goto_97

    :cond_96
    :goto_96
    move v7, v5

    :goto_97
    move v3, v7

    .line 2033
    .end local v4    # "firstChild":Landroid/view/View;
    .end local v6    # "lastChild":Landroid/view/View;
    :cond_98
    int-to-float v4, p1

    int-to-float v6, p2

    invoke-virtual {p0, v4, v6, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2035
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    if-eqz v4, :cond_aa

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 2036
    return v5

    .line 2039
    :cond_aa
    if-nez v0, :cond_b1

    if-eqz v2, :cond_af

    goto :goto_b1

    :cond_af
    move v4, v1

    goto :goto_b2

    :cond_b1
    :goto_b1
    move v4, v5

    .line 2041
    .local v4, "canScroll":Z
    :goto_b2
    if-eqz v4, :cond_d4

    .line 2042
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v6, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2043
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v6, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2044
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 2045
    return v5

    .line 2048
    .end local v3    # "consumed":Z
    .end local v4    # "canScroll":Z
    :cond_d4
    return v1
.end method

.method public whitelist focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 2276
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2277
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 2278
    return-object v0

    .line 2280
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1f

    .line 2281
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    .line 2283
    .local v1, "canRunFocusFailure":Z
    :goto_20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2284
    .local v4, "ff":Landroid/view/FocusFinder;
    const/4 v5, 0x0

    if-eqz v1, :cond_9b

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2c

    if-ne p2, v2, :cond_9b

    .line 2288
    :cond_2c
    const/4 v7, 0x0

    .line 2289
    .local v7, "needsFocusFailureLayout":Z
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 2291
    if-ne p2, v6, :cond_3a

    const/16 v8, 0x82

    goto :goto_3c

    :cond_3a
    const/16 v8, 0x21

    .line 2292
    .local v8, "absDir":I
    :goto_3c
    invoke-virtual {v4, p0, p1, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2293
    .local v9, "found":Landroid/view/View;
    if-nez v9, :cond_44

    move v10, v2

    goto :goto_45

    :cond_44
    move v10, v3

    :goto_45
    move v7, v10

    .line 2294
    sget-boolean v10, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_4b

    .line 2296
    move p2, v8

    .line 2299
    .end local v8    # "absDir":I
    .end local v9    # "found":Landroid/view/View;
    :cond_4b
    if-nez v7, :cond_7b

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 2300
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v8

    if-ne v8, v2, :cond_5f

    move v8, v2

    goto :goto_60

    :cond_5f
    move v8, v3

    .line 2301
    .local v8, "rtl":Z
    :goto_60
    if-ne p2, v6, :cond_64

    move v6, v2

    goto :goto_65

    :cond_64
    move v6, v3

    :goto_65
    xor-int/2addr v6, v8

    if-eqz v6, :cond_6b

    .line 2302
    const/16 v6, 0x42

    goto :goto_6d

    :cond_6b
    const/16 v6, 0x11

    .line 2303
    .local v6, "absDir":I
    :goto_6d
    invoke-virtual {v4, p0, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2304
    .restart local v9    # "found":Landroid/view/View;
    if-nez v9, :cond_74

    goto :goto_75

    :cond_74
    move v2, v3

    :goto_75
    move v7, v2

    .line 2305
    sget-boolean v2, Lcom/android/internal/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v2, :cond_7b

    .line 2307
    move p2, v6

    .line 2310
    .end local v6    # "absDir":I
    .end local v8    # "rtl":Z
    .end local v9    # "found":Landroid/view/View;
    :cond_7b
    if-eqz v7, :cond_96

    .line 2311
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2312
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2313
    .local v2, "focusedItemView":Landroid/view/View;
    if-nez v2, :cond_87

    .line 2315
    return-object v5

    .line 2317
    :cond_87
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2318
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v8}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 2319
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2321
    .end local v2    # "focusedItemView":Landroid/view/View;
    :cond_96
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2322
    .end local v7    # "needsFocusFailureLayout":Z
    goto :goto_bd

    .line 2323
    :cond_9b
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2324
    if-nez v0, :cond_bd

    if-eqz v1, :cond_bd

    .line 2325
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2326
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2327
    .restart local v2    # "focusedItemView":Landroid/view/View;
    if-nez v2, :cond_ad

    .line 2329
    return-object v5

    .line 2331
    :cond_ad
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 2332
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2333
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2336
    .end local v2    # "focusedItemView":Landroid/view/View;
    :cond_bd
    :goto_bd
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 2337
    move-object v2, v0

    goto :goto_c9

    :cond_c5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2336
    :goto_c9
    return-object v2
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 4013
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 4016
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4014
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 4021
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_f

    .line 4024
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4022
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4029
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 4032
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4030
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method blacklist getAdapterPositionFor(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10566
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 10568
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 10571
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    iget v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    .line 10569
    :cond_18
    :goto_18
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 1066
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 1067
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    .line 1069
    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method blacklist getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J
    .registers 4
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 3866
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_10

    :cond_d
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    :goto_10
    return-wide v0
.end method

.method public blacklist getChildAdapterPosition(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 4359
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4360
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 12343
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    .line 12344
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 12346
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public blacklist getChildItemId(Landroid/view/View;)J
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 4385
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1a

    .line 4388
    :cond_f
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4389
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_19
    return-wide v1

    .line 4386
    .end local v0    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1a
    :goto_1a
    return-wide v1
.end method

.method public blacklist getChildLayoutPosition(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 4374
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4375
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method public blacklist getChildPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4349
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public blacklist getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 4290
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4291
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_2c

    if-ne v0, p0, :cond_9

    goto :goto_2c

    .line 4292
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4295
    :cond_2c
    :goto_2c
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getClipToPadding()Z
    .registers 2

    .line 913
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public blacklist getCompatAccessibilityDelegate()Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public blacklist getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 4608
    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4609
    return-void
.end method

.method public blacklist getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;
    .registers 2

    .line 3287
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method blacklist getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .line 4621
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 4622
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_d

    .line 4623
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 4626
    :cond_d
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4628
    :cond_21
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 4630
    :cond_24
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4631
    .local v1, "insets":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4632
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4633
    .local v3, "decorCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_6e

    .line 4634
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4635
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 4636
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 4637
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 4638
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 4639
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 4633
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 4641
    .end local v4    # "i":I
    :cond_6e
    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4642
    return-object v1
.end method

.method public blacklist getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 1283
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public blacklist getMaxFlingVelocity()I
    .registers 2

    .line 2086
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public blacklist getMinFlingVelocity()I
    .registers 2

    .line 2076
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method blacklist getNanoTime()J
    .registers 3

    .line 5270
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_9

    .line 5271
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 5273
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getOnFlingListener()Lcom/android/internal/widget/RecyclerView$OnFlingListener;
    .registers 2

    .line 1185
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public blacklist getPreserveFocusAfterLayout()Z
    .registers 2

    .line 4262
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public blacklist getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .line 1295
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScrollState()I
    .registers 2

    .line 1343
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public blacklist hasFixedSize()Z
    .registers 2

    .line 884
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public blacklist hasPendingAdapterUpdates()Z
    .registers 2

    .line 4743
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 4744
    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 4743
    :goto_14
    return v0
.end method

.method blacklist initAdapterManager()V
    .registers 3

    .line 783
    new-instance v0, Lcom/android/internal/widget/AdapterHelper;

    new-instance v1, Lcom/android/internal/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/RecyclerView$6;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    .line 862
    return-void
.end method

.method blacklist invalidateGlows()V
    .registers 2

    .line 2241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2242
    return-void
.end method

.method public blacklist invalidateItemDecorations()V
    .registers 3

    .line 4239
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4240
    return-void

    .line 4242
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_14

    .line 4243
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4246
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4247
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4248
    return-void
.end method

.method blacklist isAccessibilityEnabled()Z
    .registers 2

    .line 3209
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isAnimating()Z
    .registers 2

    .line 4044
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isAttachedToWindow()Z
    .registers 2

    .line 2514
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public blacklist isComputingLayout()Z
    .registers 2

    .line 3243
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isLayoutFrozen()Z
    .registers 2

    .line 1939
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method blacklist jumpToPositionForSmoothScroller(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1522
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    .line 1523
    return-void

    .line 1525
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1526
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    .line 1527
    return-void
.end method

.method blacklist markItemDecorInsetsDirty()V
    .registers 6

    .line 3927
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3928
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 3929
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3930
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3928
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3932
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3933
    return-void
.end method

.method blacklist markKnownViewsInvalid()V
    .registers 5

    .line 4223
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4224
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 4225
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4226
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4227
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4224
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4230
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4231
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4232
    return-void
.end method

.method public blacklist offsetChildrenHorizontal(I)V
    .registers 5
    .param p1, "dx"    # I

    .line 4594
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4595
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 4596
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4595
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4598
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public blacklist offsetChildrenVertical(I)V
    .registers 5
    .param p1, "dy"    # I

    .line 4556
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4557
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 4558
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4557
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4560
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method blacklist offsetPositionRecordsForInsert(II)V
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4107
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4108
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 4109
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4110
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    iget v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_28

    .line 4115
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4116
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4108
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4119
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4120
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4121
    return-void
.end method

.method blacklist offsetPositionRecordsForMove(II)V
    .registers 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4073
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4075
    .local v0, "childCount":I
    if-ge p1, p2, :cond_c

    .line 4076
    move v1, p1

    .line 4077
    .local v1, "start":I
    move v2, p2

    .line 4078
    .local v2, "end":I
    const/4 v3, -0x1

    .local v3, "inBetweenOffset":I
    goto :goto_f

    .line 4080
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "inBetweenOffset":I
    :cond_c
    move v1, p2

    .line 4081
    .restart local v1    # "start":I
    move v2, p1

    .line 4082
    .restart local v2    # "end":I
    const/4 v3, 0x1

    .line 4085
    .restart local v3    # "inBetweenOffset":I
    :goto_f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v0, :cond_3d

    .line 4086
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 4087
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3a

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v1, :cond_3a

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v2, :cond_27

    .line 4088
    goto :goto_3a

    .line 4094
    :cond_27
    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_32

    .line 4095
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_35

    .line 4097
    :cond_32
    invoke-virtual {v5, v3, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4100
    :goto_35
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4085
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 4102
    .end local v4    # "i":I
    :cond_3d
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4103
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4104
    return-void
.end method

.method blacklist offsetPositionRecordsForRemove(IIZ)V
    .registers 11
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 4125
    add-int v0, p1, p2

    .line 4126
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4127
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_3c

    .line 4128
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4129
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_39

    .line 4130
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_2b

    .line 4136
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4137
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_39

    .line 4138
    :cond_2b
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_39

    .line 4143
    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4145
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v5, v4, Lcom/android/internal/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4127
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4149
    .end local v2    # "i":I
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4150
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 4151
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 6

    .line 2455
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2456
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 2458
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2459
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_20

    .line 2460
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 2462
    :cond_20
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2464
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_69

    .line 2466
    sget-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GapWorker;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2467
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-nez v0, :cond_64

    .line 2468
    new-instance v0, Lcom/android/internal/widget/GapWorker;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2472
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2473
    .local v0, "display":Landroid/view/Display;
    const/high16 v1, 0x42700000    # 60.0f

    .line 2474
    .local v1, "refreshRate":F
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_54

    if-eqz v0, :cond_54

    .line 2475
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    .line 2476
    .local v2, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_54

    .line 2477
    move v1, v2

    .line 2480
    .end local v2    # "displayRefreshRate":F
    :cond_54
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v1

    float-to-long v3, v3

    iput-wide v3, v2, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    .line 2481
    sget-object v2, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2483
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "refreshRate":F
    :cond_64
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->add(Lcom/android/internal/widget/RecyclerView;)V

    .line 2485
    :cond_69
    return-void
.end method

.method public blacklist onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 4573
    return-void
.end method

.method public blacklist onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 4585
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 3

    .line 2489
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2490
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_c

    .line 2491
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2493
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 2494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    .line 2495
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1d

    .line 2496
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 2498
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2499
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2500
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewInfoStore;->onDetach()V

    .line 2502
    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_38

    .line 2504
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/GapWorker;->remove(Lcom/android/internal/widget/RecyclerView;)V

    .line 2505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    .line 2507
    :cond_38
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 3998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4000
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4001
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 4002
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 4001
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4004
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method blacklist onEnterLayoutOrScroll()V
    .registers 2

    .line 3192
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3193
    return-void
.end method

.method blacklist onExitLayoutOrScroll()V
    .registers 3

    .line 3196
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3197
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_13

    .line 3202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3203
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3204
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3206
    :cond_13
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3022
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3023
    return v1

    .line 3025
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_b

    .line 3026
    return v1

    .line 3028
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_52

    .line 3029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_52

    .line 3031
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3034
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .local v0, "vScroll":F
    goto :goto_2c

    .line 3036
    .end local v0    # "vScroll":F
    :cond_2b
    const/4 v0, 0x0

    .line 3038
    .restart local v0    # "vScroll":F
    :goto_2c
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3039
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .local v2, "hScroll":F
    goto :goto_3c

    .line 3041
    .end local v2    # "hScroll":F
    :cond_3b
    const/4 v2, 0x0

    .line 3044
    .restart local v2    # "hScroll":F
    :goto_3c
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_45

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_52

    .line 3045
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->getScrollFactor()F

    move-result v3

    .line 3046
    .local v3, "scrollFactor":F
    mul-float v4, v2, v3

    float-to-int v4, v4

    mul-float v5, v0, v3

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 3051
    .end local v0    # "vScroll":F
    .end local v2    # "hScroll":F
    .end local v3    # "scrollFactor":F
    :cond_52
    return v1
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2638
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 2641
    return v3

    .line 2643
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_15

    .line 2644
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    .line 2645
    return v4

    .line 2648
    :cond_15
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1a

    .line 2649
    return v3

    .line 2652
    :cond_1a
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2653
    .local v2, "canScrollHorizontally":Z
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 2655
    .local v5, "canScrollVertically":Z
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_30

    .line 2656
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2658
    :cond_30
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2660
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 2661
    .local v6, "action":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 2663
    .local v7, "actionIndex":I
    const/high16 v8, 0x3f000000    # 0.5f

    packed-switch v6, :pswitch_data_142

    :pswitch_42
    goto/16 :goto_13b

    .line 2725
    :pswitch_44
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2726
    goto/16 :goto_13b

    .line 2691
    :pswitch_49
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2692
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2693
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2694
    goto/16 :goto_13b

    .line 2734
    :pswitch_65
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_13b

    .line 2697
    :pswitch_6a
    iget v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 2698
    .local v9, "index":I
    if-gez v9, :cond_93

    .line 2699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "RecyclerView"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    return v3

    .line 2704
    :cond_93
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v10, v8

    float-to-int v10, v10

    .line 2705
    .local v10, "x":I
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v11, v8

    float-to-int v8, v11

    .line 2706
    .local v8, "y":I
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-eq v11, v4, :cond_e7

    .line 2707
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    sub-int v11, v10, v11

    .line 2708
    .local v11, "dx":I
    iget v12, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    sub-int v12, v8, v12

    .line 2709
    .local v12, "dy":I
    const/4 v13, 0x0

    .line 2710
    .local v13, "startScroll":Z
    if-eqz v2, :cond_c7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v15, v14, :cond_c7

    .line 2711
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-gez v11, :cond_bf

    const/16 v17, -0x1

    goto :goto_c1

    :cond_bf
    move/from16 v17, v4

    :goto_c1
    mul-int v15, v15, v17

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 2712
    const/4 v13, 0x1

    .line 2714
    :cond_c7
    if-eqz v5, :cond_e2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v14, v15, :cond_e2

    .line 2715
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-gez v12, :cond_da

    const/16 v16, -0x1

    goto :goto_dc

    :cond_da
    move/from16 v16, v4

    :goto_dc
    mul-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 2716
    const/4 v13, 0x1

    .line 2718
    :cond_e2
    if-eqz v13, :cond_e7

    .line 2719
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2722
    .end local v8    # "y":I
    .end local v9    # "index":I
    .end local v10    # "x":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v13    # "startScroll":Z
    :cond_e7
    goto :goto_13b

    .line 2729
    :pswitch_e8
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 2730
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->stopNestedScroll()V

    .line 2731
    goto :goto_13b

    .line 2665
    :pswitch_f1
    iget-boolean v9, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v9, :cond_f7

    .line 2666
    iput-boolean v3, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2668
    :cond_f7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2669
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v9, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2670
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v8, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2672
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_11c

    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_126

    .line 2673
    :cond_11c
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2674
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2678
    :cond_126
    iget-object v8, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v9, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v9, v4

    aput v3, v8, v3

    .line 2680
    const/4 v8, 0x0

    .line 2681
    .local v8, "nestedScrollAxis":I
    if-eqz v2, :cond_133

    .line 2682
    or-int/lit8 v8, v8, 0x1

    .line 2684
    :cond_133
    if-eqz v5, :cond_137

    .line 2685
    or-int/lit8 v8, v8, 0x2

    .line 2687
    :cond_137
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2688
    nop

    .line 2737
    .end local v8    # "nestedScrollAxis":I
    :goto_13b
    iget v8, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne v8, v4, :cond_140

    move v3, v4

    :cond_140
    return v3

    nop

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_e8
        :pswitch_6a
        :pswitch_65
        :pswitch_42
        :pswitch_49
        :pswitch_44
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 3911
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 3913
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3915
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3073
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_8

    .line 3074
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3075
    return-void

    .line 3077
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_74

    .line 3078
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3079
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3080
    .local v3, "heightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1f

    if-ne v3, v4, :cond_1f

    move v2, v1

    .line 3082
    .local v2, "skipMeasure":Z
    :cond_1f
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3083
    if-nez v2, :cond_73

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v5, :cond_2f

    goto :goto_73

    .line 3086
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v5, v5, Lcom/android/internal/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v5, v1, :cond_38

    .line 3087
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3091
    :cond_38
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3092
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v5, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3093
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3096
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3100
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 3101
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 3102
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 3103
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3101
    invoke-virtual {v5, v6, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3104
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v4, Lcom/android/internal/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3105
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3107
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3109
    .end local v0    # "widthMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "heightMode":I
    :cond_72
    goto :goto_d1

    .line 3084
    .restart local v0    # "widthMode":I
    .restart local v2    # "skipMeasure":Z
    .restart local v3    # "heightMode":I
    :cond_73
    :goto_73
    return-void

    .line 3110
    .end local v0    # "widthMode":I
    .end local v2    # "skipMeasure":Z
    .end local v3    # "heightMode":I
    :cond_74
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_82

    .line 3111
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3112
    return-void

    .line 3115
    :cond_82
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_ab

    .line 3116
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3117
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3118
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3119
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3121
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9d

    .line 3122
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_a6

    .line 3125
    :cond_9d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3126
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3128
    :goto_a6
    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3129
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3132
    :cond_ab
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_ba

    .line 3133
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    goto :goto_be

    .line 3135
    :cond_ba
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mItemCount:I

    .line 3137
    :goto_be
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 3138
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 3139
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3140
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3142
    :goto_d1
    return-void
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2445
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2448
    const/4 v0, 0x0

    return v0

    .line 2450
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1204
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    .line 1205
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1206
    return-void

    .line 1209
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    .line 1210
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1211
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_29

    .line 1212
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1214
    :cond_29
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1190
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1191
    .local v0, "state":Lcom/android/internal/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_13

    .line 1192
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mPendingSavedState:Lcom/android/internal/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$SavedState;->copyFrom(Lcom/android/internal/widget/RecyclerView$SavedState;)V

    goto :goto_23

    .line 1193
    :cond_13
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_20

    .line 1194
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_23

    .line 1196
    :cond_20
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 1199
    :goto_23
    return-object v0
.end method

.method public blacklist onScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 4705
    return-void
.end method

.method public blacklist onScrolled(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 4667
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 3162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3163
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 3164
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    .line 3167
    :cond_a
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2784
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v3, 0x0

    if-nez v2, :cond_203

    iget-boolean v2, v0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v2, :cond_f

    goto/16 :goto_203

    .line 2787
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    .line 2788
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    .line 2789
    return v4

    .line 2792
    :cond_1a
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1f

    .line 2793
    return v3

    .line 2796
    :cond_1f
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 2797
    .local v2, "canScrollHorizontally":Z
    iget-object v5, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 2799
    .local v5, "canScrollVertically":Z
    iget-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_35

    .line 2800
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2802
    :cond_35
    const/4 v6, 0x0

    .line 2804
    .local v6, "eventAddedToVelocityTracker":Z
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2805
    .local v7, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 2806
    .local v8, "action":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2808
    .local v9, "actionIndex":I
    if-nez v8, :cond_4c

    .line 2809
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v11, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aput v3, v11, v4

    aput v3, v10, v3

    .line 2811
    :cond_4c
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v10, v10, v3

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v11, v11, v4

    int-to-float v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2813
    const/high16 v10, 0x3f000000    # 0.5f

    packed-switch v8, :pswitch_data_206

    :pswitch_5e
    goto/16 :goto_1f6

    .line 2900
    :pswitch_60
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 2901
    goto/16 :goto_1f6

    .line 2830
    :pswitch_65
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2831
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2832
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2833
    goto/16 :goto_1f6

    .line 2918
    :pswitch_81
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1f6

    .line 2836
    :pswitch_86
    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 2837
    .local v11, "index":I
    if-gez v11, :cond_b2

    .line 2838
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "RecyclerView"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 2841
    return v3

    .line 2844
    :cond_b2
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v12, v10

    float-to-int v12, v12

    .line 2845
    .local v12, "x":I
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 2846
    .local v10, "y":I
    iget v13, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v13, v12

    .line 2847
    .local v13, "dx":I
    iget v14, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v14, v10

    .line 2848
    .local v14, "dy":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-direct {v0, v13, v15}, Lcom/android/internal/widget/RecyclerView;->releaseHorizontalGlow(IF)I

    move-result v15

    sub-int/2addr v13, v15

    .line 2849
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-direct {v0, v14, v15}, Lcom/android/internal/widget/RecyclerView;->releaseVerticalGlow(IF)I

    move-result v15

    sub-int/2addr v14, v15

    .line 2851
    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    invoke-virtual {v0, v13, v14, v15, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 2852
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    aget v3, v3, v16

    sub-int/2addr v13, v3

    .line 2853
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollConsumed:[I

    aget v3, v3, v4

    sub-int/2addr v14, v3

    .line 2854
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v16

    int-to-float v3, v3

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v15, v15, v4

    int-to-float v15, v15

    invoke-virtual {v7, v3, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2856
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v15, v3, v16

    move/from16 v17, v4

    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v16

    add-int/2addr v15, v4

    aput v15, v3, v16

    .line 2857
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v4, v3, v17

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v15, v15, v17

    add-int/2addr v4, v15

    aput v4, v3, v17

    goto :goto_114

    .line 2851
    :cond_112
    move/from16 v17, v4

    .line 2860
    :goto_114
    iget v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    move/from16 v4, v17

    if-eq v3, v4, :cond_14b

    .line 2861
    const/4 v3, 0x0

    .line 2862
    .local v3, "startScroll":Z
    if-eqz v2, :cond_12f

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v15, :cond_12f

    .line 2863
    if-lez v13, :cond_12b

    .line 2864
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v13, v4

    goto :goto_12e

    .line 2866
    :cond_12b
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v13, v4

    .line 2868
    :goto_12e
    const/4 v3, 0x1

    .line 2870
    :cond_12f
    if-eqz v5, :cond_143

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v15, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    if-le v4, v15, :cond_143

    .line 2871
    if-lez v14, :cond_13f

    .line 2872
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v14, v4

    goto :goto_142

    .line 2874
    :cond_13f
    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v14, v4

    .line 2876
    :goto_142
    const/4 v3, 0x1

    .line 2878
    :cond_143
    if-eqz v3, :cond_14a

    .line 2879
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    goto :goto_14b

    .line 2878
    :cond_14a
    const/4 v4, 0x1

    .line 2883
    .end local v3    # "startScroll":Z
    :cond_14b
    :goto_14b
    iget v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne v3, v4, :cond_187

    .line 2884
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v16

    sub-int v3, v12, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 2885
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v4

    sub-int v3, v10, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 2887
    nop

    .line 2888
    if-eqz v2, :cond_164

    move v3, v13

    goto :goto_166

    :cond_164
    move/from16 v3, v16

    .line 2889
    :goto_166
    if-eqz v5, :cond_16a

    move v4, v14

    goto :goto_16c

    :cond_16a
    move/from16 v4, v16

    .line 2887
    :goto_16c
    invoke-virtual {v0, v3, v4, v7}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 2891
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2893
    :cond_17a
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-eqz v3, :cond_187

    if-nez v13, :cond_182

    if-eqz v14, :cond_187

    .line 2894
    :cond_182
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    invoke-virtual {v3, v0, v13, v14}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    .line 2897
    .end local v10    # "y":I
    .end local v11    # "index":I
    .end local v12    # "x":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    :cond_187
    goto/16 :goto_1f6

    .line 2904
    :pswitch_189
    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2905
    const/4 v6, 0x1

    .line 2906
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, v0, Lcom/android/internal/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v4, v4

    const/16 v10, 0x3e8

    invoke-virtual {v3, v10, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2907
    const/4 v3, 0x0

    if-eqz v2, :cond_1a8

    .line 2908
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v4, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v4, v4

    goto :goto_1a9

    :cond_1a8
    move v4, v3

    .line 2909
    .local v4, "xvel":F
    :goto_1a9
    if-eqz v5, :cond_1b5

    .line 2910
    iget-object v10, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    neg-float v10, v10

    goto :goto_1b6

    :cond_1b5
    move v10, v3

    .line 2911
    .local v10, "yvel":F
    :goto_1b6
    cmpl-float v11, v4, v3

    if-nez v11, :cond_1be

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_1c6

    :cond_1be
    float-to-int v3, v4

    float-to-int v11, v10

    invoke-virtual {v0, v3, v11}, Lcom/android/internal/widget/RecyclerView;->fling(II)Z

    move-result v3

    if-nez v3, :cond_1cb

    .line 2912
    :cond_1c6
    move/from16 v3, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2914
    :cond_1cb
    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView;->resetTouch()V

    .line 2915
    .end local v4    # "xvel":F
    .end local v10    # "yvel":F
    goto :goto_1f6

    .line 2815
    :pswitch_1cf
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mScrollPointerId:I

    .line 2816
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchX:I

    .line 2817
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iput v3, v0, Lcom/android/internal/widget/RecyclerView;->mInitialTouchY:I

    .line 2819
    const/4 v3, 0x0

    .line 2820
    .local v3, "nestedScrollAxis":I
    if-eqz v2, :cond_1ee

    .line 2821
    or-int/lit8 v3, v3, 0x1

    .line 2823
    :cond_1ee
    if-eqz v5, :cond_1f2

    .line 2824
    or-int/lit8 v3, v3, 0x2

    .line 2826
    :cond_1f2
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->startNestedScroll(I)Z

    .line 2827
    .end local v3    # "nestedScrollAxis":I
    nop

    .line 2922
    :goto_1f6
    if-nez v6, :cond_1fd

    .line 2923
    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2925
    :cond_1fd
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 2927
    const/16 v17, 0x1

    return v17

    .line 2785
    .end local v2    # "canScrollHorizontally":Z
    .end local v5    # "canScrollVertically":Z
    .end local v6    # "eventAddedToVelocityTracker":Z
    .end local v7    # "vtev":Landroid/view/MotionEvent;
    .end local v8    # "action":I
    .end local v9    # "actionIndex":I
    :cond_203
    :goto_203
    const/16 v16, 0x0

    return v16

    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_1cf
        :pswitch_189
        :pswitch_86
        :pswitch_81
        :pswitch_5e
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method blacklist postAnimationRunner()V
    .registers 2

    .line 3295
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    .line 3296
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 3297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3299
    :cond_10
    return-void
.end method

.method blacklist recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 6
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 3805
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3806
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3807
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3808
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->getChangedHolderKey(Lcom/android/internal/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3809
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 3811
    .end local v0    # "key":J
    :cond_27
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ViewInfoStore;->addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3812
    return-void
.end method

.method blacklist removeAndRecycleViews()V
    .registers 3

    .line 984
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_9

    .line 985
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 991
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1b

    .line 992
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 996
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 997
    return-void
.end method

.method blacklist removeAnimatingView(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1261
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1262
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1263
    .local v0, "removed":Z
    if-eqz v0, :cond_19

    .line 1264
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1265
    .local v1, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1266
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 1272
    .end local v1    # "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_19
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1273
    return v0
.end method

.method protected whitelist removeDetachedView(Landroid/view/View;Z)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 3848
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3849
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_30

    .line 3850
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3851
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_30

    .line 3852
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_30

    .line 3853
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3857
    :cond_30
    :goto_30
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3858
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3859
    return-void
.end method

.method public blacklist removeItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V
    .registers 4
    .param p1, "decor"    # Lcom/android/internal/widget/RecyclerView$ItemDecoration;

    .line 1418
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_b

    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1422
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1423
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1426
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1427
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1428
    return-void
.end method

.method public blacklist removeOnChildAttachStateChangeListener(Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1097
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1098
    return-void

    .line 1100
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1101
    return-void
.end method

.method public blacklist removeOnItemTouchListener(Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2582
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2583
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    .line 2584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mActiveOnItemTouchListener:Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2586
    :cond_c
    return-void
.end method

.method public blacklist removeOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1485
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1486
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1488
    :cond_9
    return-void
.end method

.method blacklist repositionShadowingViews()V
    .registers 10

    .line 4977
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4978
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_42

    .line 4979
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4980
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4981
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3f

    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_3f

    .line 4982
    iget-object v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4983
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 4984
    .local v5, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 4985
    .local v6, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v5, v7, :cond_31

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_3f

    .line 4986
    :cond_31
    nop

    .line 4987
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 4988
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 4986
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4978
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "left":I
    .end local v6    # "top":I
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4992
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 2405
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_62

    if-eqz p2, :cond_62

    .line 2406
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2411
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2412
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_4f

    .line 2414
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 2415
    .local v1, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v2, :cond_4f

    .line 2416
    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2417
    .local v2, "insets":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2418
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2419
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2420
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2424
    .end local v1    # "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2425
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2426
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2428
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_62
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2429
    return-void
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 2433
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .line 2774
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2775
    .local v0, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 2776
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;

    .line 2777
    .local v2, "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p1}, Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2775
    .end local v2    # "listener":Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2779
    .end local v1    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2780
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 3919
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_c

    .line 3920
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_f

    .line 3922
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 3924
    :goto_f
    return-void
.end method

.method blacklist resumeRequestLayout(Z)V
    .registers 5
    .param p1, "performLayoutChildren"    # Z

    .line 1858
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 1863
    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1865
    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 1874
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1876
    :cond_c
    iget v2, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v2, v1, :cond_2b

    .line 1878
    if-eqz p1, :cond_25

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_25

    .line 1880
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->dispatchLayout()V

    .line 1882
    :cond_25
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_2b

    .line 1883
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1886
    :cond_2b
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView;->mEatRequestLayout:I

    .line 1887
    return-void
.end method

.method blacklist saveOldPositions()V
    .registers 5

    .line 4048
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4049
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4050
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4055
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4056
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 4049
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4059
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public whitelist scrollBy(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1564
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 1565
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return-void

    .line 1569
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_11

    .line 1570
    return-void

    .line 1572
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1573
    .local v0, "canScrollHorizontal":Z
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1574
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_21

    if-eqz v1, :cond_2e

    .line 1575
    :cond_21
    const/4 v2, 0x0

    if-eqz v0, :cond_26

    move v3, p1

    goto :goto_27

    :cond_26
    move v3, v2

    :goto_27
    if-eqz v1, :cond_2a

    move v2, p2

    :cond_2a
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/internal/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1577
    :cond_2e
    return-void
.end method

.method blacklist scrollByInternal(IILandroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .line 1654
    const/4 v0, 0x0

    .local v0, "unconsumedX":I
    const/4 v1, 0x0

    .line 1655
    .local v1, "unconsumedY":I
    const/4 v2, 0x0

    .local v2, "consumedX":I
    const/4 v3, 0x0

    .line 1657
    .local v3, "consumedY":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1658
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    const/4 v5, 0x0

    if-eqz v4, :cond_44

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    .line 1660
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1661
    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1662
    if-eqz p1, :cond_25

    .line 1663
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, p1, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v2

    .line 1664
    sub-int v0, p1, v2

    .line 1666
    :cond_25
    if-eqz p2, :cond_33

    .line 1667
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v4, p2, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v3

    .line 1668
    sub-int v1, p2, v3

    .line 1670
    :cond_33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1671
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1673
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    move v9, v0

    move v10, v1

    move v7, v2

    move v8, v3

    goto :goto_48

    .line 1658
    :cond_44
    move v9, v0

    move v10, v1

    move v7, v2

    move v8, v3

    .line 1675
    .end local v0    # "unconsumedX":I
    .end local v1    # "unconsumedY":I
    .end local v2    # "consumedX":I
    .end local v3    # "consumedY":I
    .local v7, "consumedX":I
    .local v8, "consumedY":I
    .local v9, "unconsumedX":I
    .local v10, "unconsumedY":I
    :goto_48
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1676
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1679
    :cond_53
    iget-object v11, p0, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_95

    .line 1681
    iget v0, v6, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    iput v0, v6, Lcom/android/internal/widget/RecyclerView;->mLastTouchX:I

    .line 1682
    iget v0, v6, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    iput v0, v6, Lcom/android/internal/widget/RecyclerView;->mLastTouchY:I

    .line 1683
    if-eqz p3, :cond_7e

    .line 1684
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v5

    int-to-float v0, v0

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p3, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1686
    :cond_7e
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v2, v0, v5

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    aput v2, v0, v5

    .line 1687
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView;->mNestedOffsets:[I

    aget v2, v0, v1

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_ae

    .line 1688
    :cond_95
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ae

    .line 1689
    if-eqz p3, :cond_ab

    .line 1690
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v9

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v10

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1692
    :cond_ab
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 1694
    :cond_ae
    :goto_ae
    if-nez v7, :cond_b2

    if-eqz v8, :cond_b5

    .line 1695
    :cond_b2
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1697
    :cond_b5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_be

    .line 1698
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1700
    :cond_be
    if-nez v7, :cond_c2

    if-eqz v8, :cond_c3

    :cond_c2
    move v5, v1

    :cond_c3
    return v5
.end method

.method public whitelist scrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1558
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void
.end method

.method public blacklist scrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1508
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    .line 1509
    return-void

    .line 1511
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1512
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_14

    .line 1513
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1517
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1518
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->awakenScrollBars()Z

    .line 1519
    return-void
.end method

.method public whitelist sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3271
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3272
    return-void

    .line 3274
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3275
    return-void
.end method

.method public blacklist setAccessibilityDelegateCompat(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 3
    .param p1, "accessibilityDelegate"    # Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    .line 612
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    .line 613
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 614
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 974
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 975
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    .line 976
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 977
    return-void
.end method

.method public blacklist setChildDrawingOrderCallback(Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3
    .param p1, "childDrawingOrderCallback"    # Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1443
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_5

    .line 1444
    return-void

    .line 1446
    :cond_5
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1447
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildDrawingOrderCallback:Lcom/android/internal/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1448
    return-void
.end method

.method blacklist setChildImportantForAccessibilityInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Z
    .registers 4
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I

    .line 10539
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10540
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 10541
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10542
    const/4 v0, 0x0

    return v0

    .line 10544
    :cond_f
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 10545
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setClipToPadding(Z)V
    .registers 3
    .param p1, "clipToPadding"    # Z

    .line 889
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->invalidateGlows()V

    .line 892
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    .line 893
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 894
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    .line 895
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 897
    :cond_13
    return-void
.end method

.method blacklist setDataSetChangedAfterLayout()V
    .registers 5

    .line 4200
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_5

    .line 4201
    return-void

    .line 4203
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4204
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4205
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_2b

    .line 4206
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4207
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    .line 4208
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4205
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4211
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 4215
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4216
    return-void
.end method

.method public blacklist setHasFixedSize(Z)V
    .registers 2
    .param p1, "hasFixedSize"    # Z

    .line 876
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mHasFixedSize:Z

    .line 877
    return-void
.end method

.method public blacklist setItemAnimator(Lcom/android/internal/widget/RecyclerView$ItemAnimator;)V
    .registers 4
    .param p1, "animator"    # Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3181
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_f

    .line 3182
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3183
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3185
    :cond_f
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    .line 3186
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1c

    .line 3187
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimatorListener:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->setListener(Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3189
    :cond_1c
    return-void
.end method

.method public blacklist setItemViewCacheSize(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1333
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1334
    return-void
.end method

.method public blacklist setLayoutFrozen(Z)V
    .registers 12
    .param p1, "frozen"    # Z

    .line 1912
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_38

    .line 1913
    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1914
    if-nez p1, :cond_20

    .line 1915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1916
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1d

    .line 1917
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1919
    :cond_1d
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_38

    .line 1921
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1922
    .local v2, "now":J
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1924
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1925
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1926
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1927
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1930
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v2    # "now":J
    :cond_38
    :goto_38
    return-void
.end method

.method public blacklist setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .registers 5
    .param p1, "layout"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 1126
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_5

    .line 1127
    return-void

    .line 1129
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->stopScroll()V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3c

    .line 1134
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_15

    .line 1135
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1137
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1138
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 1141
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_33

    .line 1142
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 1144
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1145
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    goto :goto_41

    .line 1147
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 1150
    :goto_41
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1151
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 1152
    if-eqz p1, :cond_82

    .line 1153
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_5d

    .line 1157
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 1158
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_82

    .line 1159
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_82

    .line 1154
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1163
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 1164
    return-void
.end method

.method public blacklist setOnFlingListener(Lcom/android/internal/widget/RecyclerView$OnFlingListener;)V
    .registers 2
    .param p1, "onFlingListener"    # Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    .line 1175
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mOnFlingListener:Lcom/android/internal/widget/RecyclerView$OnFlingListener;

    .line 1176
    return-void
.end method

.method public blacklist setOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1460
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollListener:Lcom/android/internal/widget/RecyclerView$OnScrollListener;

    .line 1461
    return-void
.end method

.method public blacklist setPreserveFocusAfterLayout(Z)V
    .registers 2
    .param p1, "preserveFocusAfterLayout"    # Z

    .line 4280
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4281
    return-void
.end method

.method public blacklist setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .registers 3
    .param p1, "pool"    # Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 1307
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V

    .line 1308
    return-void
.end method

.method public blacklist setRecyclerListener(Lcom/android/internal/widget/RecyclerView$RecyclerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    .line 1053
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    .line 1054
    return-void
.end method

.method blacklist setScrollState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1347
    iget v0, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    .line 1348
    return-void

    .line 1354
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/RecyclerView;->mScrollState:I

    .line 1355
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 1356
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    .line 1358
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1359
    return-void
.end method

.method public blacklist setScrollingTouchSlop(I)V
    .registers 5
    .param p1, "slopConstant"    # I

    .line 926
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 927
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_3a

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 937
    :pswitch_2b
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    goto :goto_39

    .line 933
    :goto_32
    :pswitch_32
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mTouchSlop:I

    .line 934
    nop

    .line 940
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method public blacklist setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .registers 3
    .param p1, "extension"    # Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 1318
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V

    .line 1319
    return-void
.end method

.method blacklist shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3255
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3256
    const/4 v0, 0x0

    .line 3257
    .local v0, "type":I
    if-eqz p1, :cond_d

    .line 3258
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 3260
    :cond_d
    if-nez v0, :cond_10

    .line 3261
    const/4 v0, 0x0

    .line 3263
    :cond_10
    iget v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3264
    const/4 v1, 0x1

    return v1

    .line 3266
    .end local v0    # "type":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist smoothScrollBy(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1949
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1950
    return-void
.end method

.method public blacklist smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1961
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 1962
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return-void

    .line 1966
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_11

    .line 1967
    return-void

    .line 1969
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1970
    const/4 p1, 0x0

    .line 1972
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1973
    const/4 p2, 0x0

    .line 1975
    :cond_23
    if-nez p1, :cond_27

    if-eqz p2, :cond_2c

    .line 1976
    :cond_27
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1978
    :cond_2c
    return-void
.end method

.method public blacklist smoothScrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1545
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_5

    .line 1546
    return-void

    .line 1548
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_11

    .line 1549
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    return-void

    .line 1553
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V

    .line 1554
    return-void
.end method

.method public blacklist stopScroll()V
    .registers 2

    .line 2056
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    .line 2057
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView;->stopScrollersInternal()V

    .line 2058
    return-void
.end method

.method public blacklist swapAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .registers 4
    .param p1, "adapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/RecyclerView;->setAdapterInternal(Lcom/android/internal/widget/RecyclerView$Adapter;ZZ)V

    .line 960
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 961
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 962
    return-void
.end method

.method blacklist viewRangeUpdate(IILjava/lang/Object;)V
    .registers 11
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 4160
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4161
    .local v0, "childCount":I
    add-int v1, p1, p2

    .line 4163
    .local v1, "positionEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_39

    .line 4164
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4165
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 4166
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 4167
    goto :goto_36

    .line 4169
    :cond_1e
    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_36

    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_36

    .line 4172
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4173
    invoke-virtual {v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4175
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4163
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4178
    .end local v2    # "i":I
    :cond_39
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 4179
    return-void
.end method
