.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$DeviceConfigChangeListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$DifferentialFlingTarget;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final whitelist CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final whitelist CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final whitelist CHOICE_MODE_NONE:I = 0x0

.field public static final whitelist CHOICE_MODE_SINGLE:I = 0x1

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_FORCE_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_MOVE_SELECTION:I = 0x6

.field static final greylist-max-o LAYOUT_NORMAL:I = 0x0

.field static final greylist-max-o LAYOUT_SET_SELECTION:I = 0x2

.field static final greylist-max-o LAYOUT_SPECIFIC:I = 0x4

.field static final greylist-max-o LAYOUT_SYNC:I = 0x5

.field static final greylist-max-o OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final greylist-max-o PROFILE_FLINGING:Z = false

.field private static final greylist-max-o PROFILE_SCROLLING:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AbsListView"

.field static final greylist-max-o TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final greylist-max-o TOUCH_MODE_DOWN:I = 0x0

.field static final greylist-max-o TOUCH_MODE_FLING:I = 0x4

.field private static final greylist-max-o TOUCH_MODE_OFF:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_ON:I = 0x0

.field static final greylist-max-o TOUCH_MODE_OVERFLING:I = 0x6

.field static final greylist-max-o TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final greylist-max-o TOUCH_MODE_REST:I = -0x1

.field static final greylist-max-o TOUCH_MODE_SCROLL:I = 0x3

.field static final greylist-max-o TOUCH_MODE_TAP:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final whitelist TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final whitelist TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final whitelist TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static blacklist sContentCaptureReportingEnabledByDeviceConfig:Z

.field private static blacklist sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field static final greylist-max-o sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private greylist-max-o mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private greylist-max-p mActivePointerId:I

.field greylist mAdapter:Landroid/widget/ListAdapter;

.field greylist-max-o mAdapterHasStableIds:Z

.field private greylist-max-o mCacheColorHint:I

.field greylist-max-o mCachingActive:Z

.field greylist-max-o mCachingStarted:Z

.field greylist-max-o mCheckStates:Landroid/util/SparseBooleanArray;

.field greylist-max-o mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCheckedItemCount:I

.field greylist-max-r mChoiceActionMode:Landroid/view/ActionMode;

.field greylist-max-o mChoiceMode:I

.field private greylist-max-o mClearScrollingCache:Ljava/lang/Runnable;

.field private greylist mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field greylist-max-r mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private greylist-max-o mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private greylist-max-o mDeferNotifyDataSetChanged:Z

.field private greylist-max-o mDensityScale:F

.field private blacklist mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

.field private greylist-max-o mDirection:I

.field greylist-max-o mDrawSelectorOnTop:Z

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private greylist-max-p mFastScroll:Landroid/widget/FastScroller;

.field greylist-max-o mFastScrollAlwaysVisible:Z

.field greylist-max-o mFastScrollEnabled:Z

.field private greylist-max-o mFastScrollStyle:I

.field private greylist-max-o mFiltered:Z

.field private greylist-max-o mFirstPositionDistanceGuess:I

.field private greylist-max-o mFlingProfilingStarted:Z

.field private greylist-max-p mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private greylist-max-o mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private greylist-max-o mForceTranscriptScroll:Z

.field private greylist-max-o mGlobalLayoutListenerAddedFilter:Z

.field private blacklist mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

.field private greylist-max-o mHasPerformedLongPress:Z

.field private greylist mIsChildViewEnabled:Z

.field private greylist-max-o mIsDetaching:Z

.field final greylist-max-o mIsScrap:[Z

.field private greylist-max-o mLastHandledItemCount:I

.field private greylist-max-o mLastPositionDistanceGuess:I

.field private greylist-max-o mLastScrollState:I

.field private greylist-max-o mLastTouchMode:I

.field greylist-max-o mLastY:I

.field greylist mLayoutMode:I

.field greylist-max-o mListPadding:Landroid/graphics/Rect;

.field private greylist-max-p mMaximumVelocity:I

.field private greylist-max-o mMinimumVelocity:I

.field greylist-max-o mMotionCorrection:I

.field greylist mMotionPosition:I

.field greylist-max-o mMotionViewNewTop:I

.field greylist-max-o mMotionViewOriginalTop:I

.field greylist-max-o mMotionX:I

.field greylist mMotionY:I

.field greylist-max-o mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private greylist-max-o mNestedYOffset:I

.field private greylist-max-p mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field greylist-max-p mOverflingDistance:I

.field greylist mOverscrollDistance:I

.field greylist-max-o mOverscrollMax:I

.field private final greylist-max-o mOwnerThread:Ljava/lang/Thread;

.field private greylist-max-o mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private greylist mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private greylist mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private greylist-max-o mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private greylist-max-o mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field greylist mPopup:Landroid/widget/PopupWindow;

.field private greylist-max-o mPopupHidden:Z

.field greylist-max-o mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field greylist-max-r mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private greylist-max-o mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final greylist-max-p mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private greylist-max-o mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field private blacklist mReportChildrenToContentCaptureOnNextUpdate:Z

.field greylist-max-o mResurrectToPosition:I

.field private final greylist-max-o mScrollConsumed:[I

.field greylist-max-o mScrollDown:Landroid/view/View;

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollProfilingStarted:Z

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field greylist-max-o mScrollUp:Landroid/view/View;

.field greylist-max-o mScrollingCacheEnabled:Z

.field greylist-max-o mSelectedTop:I

.field greylist mSelectionBottomPadding:I

.field greylist-max-o mSelectionLeftPadding:I

.field greylist-max-o mSelectionRightPadding:I

.field greylist mSelectionTopPadding:I

.field greylist-max-p mSelector:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectorPosition:I

.field greylist-max-p mSelectorRect:Landroid/graphics/Rect;

.field private greylist-max-o mSelectorState:[I

.field private greylist-max-o mSmoothScrollbarEnabled:Z

.field greylist-max-o mStackFromBottom:Z

.field greylist-max-o mTextFilter:Landroid/widget/EditText;

.field private greylist-max-o mTextFilterEnabled:Z

.field private final greylist-max-o mTmpPoint:[F

.field private greylist-max-o mTouchFrame:Landroid/graphics/Rect;

.field greylist-max-p mTouchMode:I

.field private greylist-max-o mTouchModeReset:Ljava/lang/Runnable;

.field private greylist mTouchSlop:I

.field private greylist-max-o mTranscriptMode:I

.field private greylist-max-o mVelocityScale:F

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F

.field greylist-max-o mWidthMeasureSpec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivePointerId(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefInputConnection(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDetaching(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaximumVelocity(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumVelocity(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpPoint(Landroid/widget/AbsListView;)[F
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityTracker(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalScrollFactor(Landroid/widget/AbsListView;)F
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCheckForLongPress(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchModeReset(Landroid/widget/AbsListView;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearScrollingCache(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconsumeFlingInStretch(Landroid/widget/AbsListView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->consumeFlingInStretch(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcontentFits(Landroid/widget/AbsListView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTextFilterInput(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misItemClickable(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreportActiveViewsToContentCapture(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->reportActiveViewsToContentCapture()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerAlwaysVisibleUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerEnabledUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsContentCaptureReportingEnabledByDeviceConfig(Z)V
    .registers 1

    sput-boolean p0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 659
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    .line 664
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 809
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 929
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 305
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 333
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 338
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 349
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 355
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 362
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 368
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 373
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 379
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 384
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 390
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 395
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 445
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 482
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 527
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 547
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 549
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 576
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 579
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 582
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 590
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 591
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 653
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 670
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 700
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 702
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 704
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 705
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 707
    new-array v3, v3, [F

    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 713
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 723
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 788
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 930
    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    .line 931
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 932
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 933
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 937
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 938
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 939
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 940
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 941
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 944
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 945
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 949
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 952
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 305
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 333
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 338
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 349
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 355
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 362
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 368
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 373
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 379
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 384
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 390
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 395
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 445
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 482
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 527
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 547
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 549
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 576
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 579
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 582
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 590
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 591
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 653
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 670
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 700
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 702
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 704
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 705
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 707
    new-array v4, v3, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 713
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 723
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 788
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 953
    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    .line 954
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 955
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 956
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 958
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 960
    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 962
    .local v8, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v5, "context":Landroid/content/Context;
    .local v7, "attrs":Landroid/util/AttributeSet;
    .local v9, "defStyleAttr":I
    .local v10, "defStyleRes":I
    invoke-virtual/range {v4 .. v10}, Landroid/widget/AbsListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 965
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 966
    .local p1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_96

    .line 967
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_96
    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v4, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 972
    invoke-virtual {v8, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 974
    const/4 p2, 0x3

    invoke-virtual {v8, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 976
    const/4 p2, 0x4

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 978
    const/4 p2, 0x5

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 980
    const/4 p2, 0x6

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 982
    const/16 p3, 0x9

    invoke-virtual {v8, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 984
    const/4 p3, 0x7

    invoke-virtual {v8, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 987
    const/16 p3, 0x8

    invoke-virtual {v8, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 989
    const/16 p3, 0xb

    invoke-virtual {v8, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 991
    const/16 p3, 0xa

    invoke-virtual {v8, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 994
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 996
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    if-ne p3, p2, :cond_101

    .line 997
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    .line 999
    :cond_101
    return-void
.end method

.method private greylist-max-o acceptFilter()Z
    .registers 2

    .line 2038
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    .line 2039
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2038
    :goto_1b
    return v0
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 123
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 123
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 123
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method private blacklist addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "enabled"    # Z
    .param p3, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2655
    if-eqz p2, :cond_5

    .line 2656
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2658
    :cond_5
    return-void
.end method

.method private greylist-max-r canScrollDown()Z
    .registers 9

    .line 2358
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2361
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_f

    move v1, v4

    goto :goto_10

    :cond_f
    move v1, v3

    .line 2364
    .local v1, "canScrollDown":Z
    :goto_10
    if-nez v1, :cond_29

    if-lez v0, :cond_29

    .line 2365
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2366
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_28

    move v3, v4

    :cond_28
    move v1, v3

    .line 2369
    .end local v2    # "child":Landroid/view/View;
    :cond_29
    return v1
.end method

.method private greylist-max-r canScrollUp()Z
    .registers 7

    .line 2342
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2345
    .local v0, "canScrollUp":Z
    :goto_9
    if-nez v0, :cond_22

    .line 2346
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_22

    .line 2347
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2348
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    move v0, v1

    .line 2352
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    return v0
.end method

.method private greylist-max-o clearScrollingCache()V
    .registers 2

    .line 5405
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5406
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 5407
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5423
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5425
    :cond_16
    return-void
.end method

.method private blacklist consumeFlingInStretch(I)I
    .registers 7
    .param p1, "unconsumed"    # I

    .line 4439
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-gez p1, :cond_34

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_34

    .line 4440
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 4441
    .local v1, "size":I
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 4442
    .local v3, "deltaDistance":F
    int-to-float v4, v1

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4443
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    .line 4442
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4444
    .local v0, "consumed":I
    if-eq v0, p1, :cond_31

    .line 4445
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 4447
    :cond_31
    sub-int v2, p1, v0

    return v2

    .line 4449
    .end local v0    # "consumed":I
    .end local v1    # "size":I
    .end local v3    # "deltaDistance":F
    :cond_34
    if-lez p1, :cond_65

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_65

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_65

    .line 4450
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 4451
    .restart local v1    # "size":I
    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 4452
    .restart local v3    # "deltaDistance":F
    neg-int v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 4453
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v4, v0

    .line 4452
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4454
    .restart local v0    # "consumed":I
    if-eq v0, p1, :cond_62

    .line 4455
    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 4457
    :cond_62
    sub-int v2, p1, v0

    return v2

    .line 4459
    .end local v0    # "consumed":I
    .end local v1    # "size":I
    .end local v3    # "deltaDistance":F
    :cond_65
    return p1
.end method

.method private greylist-max-o contentFits()Z
    .registers 7

    .line 1367
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1368
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1369
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    return v3

    .line 1371
    :cond_e
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_32

    add-int/lit8 v2, v0, -0x1

    .line 1372
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    .line 1371
    :goto_33
    return v1
.end method

.method private greylist-max-o createScrollingCache()V
    .registers 2

    .line 5397
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 5398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5399
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5400
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5402
    :cond_19
    return-void
.end method

.method private greylist-max-o createTextFilter(Z)V
    .registers 4
    .param p1, "animateEntrance"    # Z

    .line 6455
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_36

    .line 6456
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6457
    .local v0, "p":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6458
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6459
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6460
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6461
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6462
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6463
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6464
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6465
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6466
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6468
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_36
    if-eqz p1, :cond_41

    .line 6469
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x1030319

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_49

    .line 6471
    :cond_41
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103031a

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6473
    :goto_49
    return-void
.end method

.method private greylist-max-o dismissPopup()V
    .registers 2

    .line 6079
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 6080
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6082
    :cond_9
    return-void
.end method

.method private blacklist doesTouchStopStretch()Z
    .registers 3

    .line 3922
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 3923
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 3922
    :goto_24
    return v0
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2885
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2886
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2887
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2888
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2890
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_10
    return-void
.end method

.method private greylist-max-o finishGlows()V
    .registers 2

    .line 6704
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6705
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6706
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6708
    :cond_10
    return-void
.end method

.method static greylist-max-o getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 6125
    sparse-switch p2, :sswitch_data_96

    .line 6158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6133
    :sswitch_b
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6134
    .local v0, "sX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 6135
    .local v1, "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6136
    .local v2, "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 6137
    .local v3, "dY":I
    goto :goto_8c

    .line 6127
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_22
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 6128
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6129
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 6130
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6131
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 6145
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_39
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6146
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 6147
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6148
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 6149
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 6139
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_50
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 6140
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6141
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 6142
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6143
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 6152
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_67
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6153
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6154
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6155
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6156
    .restart local v3    # "dY":I
    nop

    .line 6162
    :goto_8c
    sub-int v4, v2, v0

    .line 6163
    .local v4, "deltaX":I
    sub-int v5, v3, v1

    .line 6164
    .local v5, "deltaY":I
    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    return v6

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_67
        0x11 -> :sswitch_50
        0x21 -> :sswitch_39
        0x42 -> :sswitch_22
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o getDrawableStateForSelector()[I
    .registers 7

    .line 3032
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_9

    .line 3034
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    .line 3040
    :cond_9
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3046
    .local v0, "enabledState":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 3048
    .local v2, "state":[I
    const/4 v3, -0x1

    .line 3049
    .local v3, "enabledPos":I
    array-length v4, v2

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_16
    if-ltz v4, :cond_21

    .line 3050
    aget v5, v2, v4

    if-ne v5, v0, :cond_1e

    .line 3051
    move v3, v4

    .line 3052
    goto :goto_21

    .line 3049
    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 3057
    .end local v4    # "i":I
    :cond_21
    :goto_21
    if-ltz v3, :cond_2b

    .line 3058
    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3062
    :cond_2b
    return-object v2
.end method

.method private greylist-max-o getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .line 6476
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_2b

    .line 6477
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6478
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090177

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6483
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6485
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6486
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6488
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_2b
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private greylist-max-o initAbsListView()V
    .registers 3

    .line 1003
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1004
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1005
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1006
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1007
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1009
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1010
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1011
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 1012
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1013
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1014
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1015
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1017
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1018
    return-void
.end method

.method private blacklist initDifferentialFlingHelperIfNotExists()V
    .registers 5

    .line 4718
    iget-object v0, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    if-nez v0, :cond_13

    .line 4719
    new-instance v0, Landroid/widget/DifferentialMotionFlingHelper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/AbsListView$DifferentialFlingTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/AbsListView$DifferentialFlingTarget;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    .line 4723
    :cond_13
    return-void
.end method

.method private blacklist initHapticScrollFeedbackProviderIfNotExists()V
    .registers 2

    .line 4726
    iget-object v0, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    if-nez v0, :cond_b

    .line 4727
    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 4729
    :cond_b
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .registers 2

    .line 4704
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 4705
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 4707
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4709
    :goto_10
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .registers 2

    .line 4712
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 4713
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4715
    :cond_a
    return-void
.end method

.method private blacklist invalidateEdgeEffects()V
    .registers 2

    .line 3927
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3928
    return-void

    .line 3930
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3931
    return-void
.end method

.method private greylist-max-o isItemClickable(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2661
    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o isOwnerThread()Z
    .registers 3

    .line 1481
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 4866
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4867
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_2e

    .line 4871
    const/4 v2, 0x0

    if-nez v0, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    move v3, v2

    .line 4872
    .local v3, "newPointerIndex":I
    :goto_18
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4873
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4874
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4875
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4877
    .end local v3    # "newPointerIndex":I
    :cond_2e
    return-void
.end method

.method private greylist-max-o onTouchCancel()V
    .registers 5

    .line 4467
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_4c

    .line 4480
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4482
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4483
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2d

    .line 4484
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2d

    .line 4477
    .end local v2    # "motionView":Landroid/view/View;
    :pswitch_1b
    goto :goto_38

    .line 4469
    :pswitch_1c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_27

    .line 4470
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4472
    :cond_27
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4473
    goto :goto_38

    .line 4486
    .restart local v2    # "motionView":Landroid/view/View;
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4487
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4488
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4491
    .end local v2    # "motionView":Landroid/view/View;
    :goto_38
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4492
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4493
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4495
    :cond_48
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4496
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x5
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method private greylist-max-o onTouchDown(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4073
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 4074
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4075
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4077
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_45

    .line 4079
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1a

    .line 4080
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4082
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_23

    .line 4083
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4085
    :cond_23
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4087
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4088
    iget v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4089
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4090
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto/16 :goto_c6

    .line 4093
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4094
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 4095
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 4097
    .local v3, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_ac

    .line 4098
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_76

    .line 4100
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4101
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4102
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4103
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 4104
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_71

    .line 4105
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4107
    :cond_71
    int-to-float v0, v1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto :goto_ac

    .line 4108
    :cond_76
    if-ltz v3, :cond_ac

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 4112
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4115
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_92

    .line 4116
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4119
    :cond_92
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4120
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4121
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4125
    :cond_ac
    :goto_ac
    if-ltz v3, :cond_bc

    .line 4127
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4128
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4131
    .end local v0    # "v":Landroid/view/View;
    :cond_bc
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4132
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4133
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4134
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4137
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :goto_c6
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_da

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_da

    .line 4138
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 4139
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4141
    :cond_da
    return-void
.end method

.method private greylist-max-o onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .line 4153
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_5

    .line 4155
    return-void

    .line 4158
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4159
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 4160
    const/4 v0, 0x0

    .line 4161
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4164
    :cond_15
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1c

    .line 4167
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4170
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4172
    .local v1, "y":I
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_86

    :pswitch_26
    goto :goto_84

    .line 4205
    :pswitch_27
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_84

    .line 4178
    :pswitch_30
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4179
    goto :goto_84

    .line 4183
    :cond_3c
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4184
    .local v2, "motionView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4185
    .local v3, "x":F
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6f

    .line 4186
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4187
    if-eqz v2, :cond_5c

    .line 4188
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 4190
    :cond_5c
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_63

    .line 4191
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_65

    :cond_63
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4190
    :goto_65
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4192
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4193
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_84

    .line 4194
    :cond_6f
    if-eqz v2, :cond_84

    .line 4196
    iget-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4197
    .local v4, "point":[F
    aput v3, v4, v5

    .line 4198
    int-to-float v6, v1

    const/4 v7, 0x1

    aput v6, v4, v7

    .line 4199
    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4200
    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4201
    .end local v4    # "point":[F
    nop

    .line 4208
    .end local v2    # "motionView":Landroid/view/View;
    .end local v3    # "x":F
    :cond_84
    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_27
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method private greylist-max-o onTouchUp(Landroid/view/MotionEvent;)V
    .registers 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4211
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    const/16 v4, 0x3e8

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_272

    :pswitch_d
    goto/16 :goto_245

    .line 4364
    :pswitch_f
    iget-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_1a

    .line 4365
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4367
    :cond_1a
    iget-object v1, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4368
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v6, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4369
    iget v4, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 4371
    .local v4, "initialVelocity":I
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4372
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v3, v6, :cond_3c

    .line 4373
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_245

    .line 4375
    :cond_3c
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_245

    .line 4286
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :pswitch_43
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4287
    .local v1, "childCount":I
    if-lez v1, :cond_162

    .line 4288
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4289
    .local v8, "firstChildTop":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 4290
    .local v9, "lastChildBottom":I
    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 4291
    .local v10, "contentTop":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    .line 4292
    .local v11, "contentBottom":I
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_83

    if-lt v8, v10, :cond_83

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v1

    iget v13, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v13, :cond_83

    .line 4294
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    if-gt v9, v12, :cond_83

    .line 4295
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4296
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_160

    .line 4298
    :cond_83
    iget-object v12, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4299
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    iget v13, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v12, v4, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4301
    iget v4, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4302
    invoke-virtual {v12, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    iget v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v4, v13

    float-to-int v4, v4

    .line 4307
    .restart local v4    # "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v13, v14, :cond_9f

    move v13, v6

    goto :goto_a0

    :cond_9f
    move v13, v7

    .line 4308
    .local v13, "flingVelocity":Z
    :goto_a0
    if-eqz v13, :cond_cc

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_cc

    .line 4309
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-direct {v0, v3, v4}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 4310
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_160

    .line 4312
    :cond_b9
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v3, :cond_c4

    .line 4313
    new-instance v3, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v3, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4315
    :cond_c4
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_160

    .line 4317
    :cond_cc
    if-eqz v13, :cond_f9

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_f9

    .line 4318
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v4

    invoke-direct {v0, v3, v6}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 4319
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_160

    .line 4321
    :cond_e7
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v3, :cond_f2

    .line 4322
    new-instance v3, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v3, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4324
    :cond_f2
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto :goto_160

    .line 4326
    :cond_f9
    const/4 v14, 0x0

    if-eqz v13, :cond_13a

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_106

    iget v15, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int v15, v10, v15

    if-eq v8, v15, :cond_13a

    :cond_106
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v15, v1

    iget v2, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v15, v2, :cond_112

    iget v2, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v2, v11

    if-eq v9, v2, :cond_13a

    .line 4332
    :cond_112
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_134

    .line 4333
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_125

    .line 4334
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4336
    :cond_125
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4337
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4338
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v6}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto :goto_160

    .line 4340
    :cond_134
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4341
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_160

    .line 4344
    :cond_13a
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4345
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4346
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_148

    .line 4347
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4349
    :cond_148
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_151

    .line 4350
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4352
    :cond_151
    if-eqz v13, :cond_160

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_160

    .line 4353
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v7}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    .line 4357
    .end local v4    # "initialVelocity":I
    .end local v8    # "firstChildTop":I
    .end local v9    # "lastChildBottom":I
    .end local v10    # "contentTop":I
    .end local v11    # "contentBottom":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "flingVelocity":Z
    :cond_160
    :goto_160
    goto/16 :goto_245

    .line 4358
    :cond_162
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4359
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4361
    goto/16 :goto_245

    .line 4215
    .end local v1    # "childCount":I
    :pswitch_169
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4216
    .local v1, "motionPosition":I
    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4217
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_23f

    .line 4218
    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_17c

    .line 4219
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4222
    :cond_17c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 4223
    .local v3, "x":F
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_199

    .line 4224
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_199

    move v4, v6

    goto :goto_19a

    :cond_199
    move v4, v7

    .line 4225
    .local v4, "inList":Z
    :goto_19a
    if-eqz v4, :cond_23f

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-nez v8, :cond_23f

    .line 4226
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v8, :cond_1ae

    .line 4227
    new-instance v8, Landroid/widget/AbsListView$PerformClick;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    iput-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4230
    :cond_1ae
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4231
    .local v8, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v1, v8, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4232
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4234
    iput v1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4236
    iget v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v9, :cond_1d0

    iget v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v9, v6, :cond_1c0

    goto :goto_1d0

    .line 4277
    :cond_1c0
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_23f

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_23f

    .line 4278
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_23f

    .line 4237
    :cond_1d0
    :goto_1d0
    iget v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v9, :cond_1d7

    .line 4238
    iget-object v9, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_1d9

    :cond_1d7
    iget-object v9, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4237
    :goto_1d9
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4239
    iput v7, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4240
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v7, :cond_239

    iget-object v7, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_239

    .line 4241
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4242
    iget v5, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4243
    invoke-virtual {v0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4244
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4245
    iget v5, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4246
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4247
    iget-object v5, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_21e

    .line 4248
    iget-object v5, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4249
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_215

    instance-of v6, v5, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_215

    .line 4250
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4252
    :cond_215
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4254
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_21e
    iget-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v5, :cond_227

    .line 4255
    iget-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4257
    :cond_227
    new-instance v5, Landroid/widget/AbsListView$3;

    invoke-direct {v5, v0, v2, v8}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4270
    iget-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4271
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    .line 4270
    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23e

    .line 4273
    :cond_239
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4274
    invoke-virtual {v0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4276
    :goto_23e
    return-void

    .line 4282
    .end local v3    # "x":F
    .end local v4    # "inList":Z
    .end local v8    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_23f
    :goto_23f
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4283
    invoke-virtual {v0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4284
    nop

    .line 4381
    .end local v1    # "motionPosition":I
    .end local v2    # "child":Landroid/view/View;
    :goto_245
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4383
    invoke-direct {v0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_258

    .line 4384
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4385
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4389
    :cond_258
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4390
    iget-object v1, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4391
    invoke-direct {v0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4393
    iput v5, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4402
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_271

    .line 4403
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4404
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4406
    :cond_271
    return-void

    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_169
        :pswitch_169
        :pswitch_169
        :pswitch_43
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private greylist-max-o performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3357
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_30

    .line 3358
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3359
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_30

    .line 3360
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3361
    .local v1, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3362
    .local v3, "longPressId":J
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3363
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3364
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3365
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3366
    const/4 v2, 0x1

    return v2

    .line 3370
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v3    # "longPressId":J
    :cond_30
    return v2
.end method

.method private greylist-max-o positionPopup()V
    .registers 7

    .line 6098
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6099
    .local v0, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6100
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6103
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 6104
    .local v2, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_34

    .line 6105
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3c

    .line 6108
    :cond_34
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6110
    :goto_3c
    return-void
.end method

.method private greylist positionSelector(ILandroid/view/View;ZFF)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 2691
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2692
    .local v0, "positionChanged":Z
    :goto_9
    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    .line 2693
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2696
    :cond_e
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2697
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2698
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_2d

    .line 2699
    move-object v4, p2

    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2703
    :cond_2d
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2704
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2705
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2706
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2709
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 2710
    .local v4, "isChildViewEnabled":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v4, :cond_53

    .line 2711
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2715
    :cond_53
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2716
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_77

    .line 2717
    if-eqz v0, :cond_61

    .line 2720
    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2721
    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2723
    :cond_61
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2724
    if-eqz v0, :cond_72

    .line 2725
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6f

    .line 2726
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2728
    :cond_6f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2730
    :cond_72
    if-eqz p3, :cond_77

    .line 2731
    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2734
    :cond_77
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .registers 2

    .line 4732
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 4733
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4734
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4736
    :cond_c
    return-void
.end method

.method private blacklist releaseGlow(II)I
    .registers 8
    .param p1, "deltaY"    # I
    .param p2, "x"    # I

    .line 3895
    const/4 v0, 0x0

    .line 3896
    .local v0, "consumed":F
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    .line 3897
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3898
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2c

    .line 3900
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    .line 3901
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3900
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 3903
    :goto_2c
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_62

    .line 3904
    :cond_30
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_62

    .line 3905
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3906
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5f

    .line 3908
    :cond_46
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    .line 3909
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 3908
    invoke-virtual {v1, v2, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    neg-float v0, v1

    .line 3911
    :goto_5f
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 3913
    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3914
    .local v1, "pixelsConsumed":I
    sub-int v2, p1, v1

    return v2
.end method

.method private blacklist reportActiveViewsToContentCapture()V
    .registers 4

    .line 6948
    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_5

    .line 6949
    return-void

    .line 6952
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 6953
    .local v0, "session":Landroid/view/contentcapture/ContentCaptureSession;
    if-eqz v0, :cond_16

    .line 6954
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v1

    .line 6955
    .local v1, "structure":Landroid/view/ViewStructure;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 6956
    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    .line 6958
    .end local v1    # "structure":Landroid/view/ViewStructure;
    :cond_16
    return-void
.end method

.method private greylist-max-o scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .registers 33
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 3672
    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    iget v1, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, v11, v1

    .line 3673
    .local v1, "rawDeltaY":I
    const/4 v2, 0x0

    .line 3674
    .local v2, "scrollOffsetCorrection":I
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_16

    .line 3675
    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v1, v3

    .line 3678
    :cond_16
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    if-eq v3, v4, :cond_1f

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v11, v3

    goto :goto_20

    :cond_1f
    move v3, v1

    .line 3681
    .local v3, "incrementalDeltaY":I
    :goto_20
    invoke-direct {v0, v3, v10}, Landroid/widget/AbsListView;->releaseGlow(II)I

    move-result v3

    .line 3683
    neg-int v4, v3

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v6, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v4, v5, v6}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_59

    .line 3684
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v4, v4, v14

    add-int/2addr v1, v4

    .line 3685
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v14

    neg-int v2, v4

    .line 3686
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v4, v4, v14

    add-int/2addr v3, v4

    .line 3687
    if-eqz v12, :cond_54

    .line 3688
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v14

    int-to-float v4, v4

    invoke-virtual {v12, v6, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3689
    iget v4, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v5, v5, v14

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3692
    :cond_54
    move v15, v1

    move/from16 v16, v2

    move v7, v3

    goto :goto_5d

    .line 3683
    :cond_59
    move v15, v1

    move/from16 v16, v2

    move v7, v3

    .line 3692
    .end local v1    # "rawDeltaY":I
    .end local v2    # "scrollOffsetCorrection":I
    .end local v3    # "incrementalDeltaY":I
    .local v7, "incrementalDeltaY":I
    .local v15, "rawDeltaY":I
    .local v16, "scrollOffsetCorrection":I
    :goto_5d
    move v8, v15

    .line 3693
    .local v8, "deltaY":I
    const/16 v17, 0x0

    .line 3695
    .local v17, "lastYCorrection":I
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1dd

    .line 3703
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_73

    .line 3705
    const-string v1, "AbsListView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3707
    :cond_73
    iget v1, v0, Landroid/widget/AbsListView;->mLastY:I

    if-eq v11, v1, :cond_1d9

    .line 3711
    iget v1, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_8f

    .line 3712
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v2, :cond_8f

    .line 3713
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3714
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_8f

    .line 3715
    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3720
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_8f
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v1, :cond_99

    .line 3721
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .local v1, "motionIndex":I
    goto :goto_9f

    .line 3725
    .end local v1    # "motionIndex":I
    :cond_99
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3728
    .restart local v1    # "motionIndex":I
    :goto_9f
    const/4 v2, 0x0

    .line 3729
    .local v2, "motionViewPrevTop":I
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3730
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_ad

    .line 3731
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v19, v2

    goto :goto_af

    .line 3730
    :cond_ad
    move/from16 v19, v2

    .line 3735
    .end local v2    # "motionViewPrevTop":I
    .local v19, "motionViewPrevTop":I
    :goto_af
    const/4 v2, 0x0

    .line 3736
    .local v2, "atEdge":Z
    if-eqz v7, :cond_d1

    .line 3737
    invoke-virtual {v0, v8, v7}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    .line 3740
    if-eqz v12, :cond_ce

    invoke-static {}, Landroid/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 3741
    invoke-direct {v0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 3742
    iget-object v4, v0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 3743
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    .line 3742
    invoke-virtual {v4, v5, v9, v14, v7}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    .line 3748
    :cond_ce
    move/from16 v21, v2

    goto :goto_d3

    .line 3736
    :cond_d1
    move/from16 v21, v2

    .line 3748
    .end local v2    # "atEdge":Z
    .local v21, "atEdge":Z
    :goto_d3
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3749
    .end local v3    # "motionView":Landroid/view/View;
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_1cd

    .line 3752
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3753
    .local v23, "motionViewRealTop":I
    if-eqz v21, :cond_1c2

    .line 3755
    neg-int v2, v7

    sub-int v3, v23, v19

    sub-int/2addr v2, v3

    .line 3757
    .local v2, "overscroll":I
    move v4, v2

    .end local v2    # "overscroll":I
    .local v4, "overscroll":I
    sub-int v2, v4, v7

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    move v9, v1

    .end local v1    # "motionIndex":I
    .local v9, "motionIndex":I
    const/4 v1, 0x0

    move/from16 v24, v9

    .end local v9    # "motionIndex":I
    .local v24, "motionIndex":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 3759
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int v17, v17, v1

    .line 3760
    if-eqz v12, :cond_10c

    .line 3761
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v14

    int-to-float v1, v1

    invoke-virtual {v12, v6, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3762
    iget v1, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v2, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v2, v2, v14

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3808
    .end local v4    # "overscroll":I
    :cond_10c
    move/from16 v25, v8

    goto/16 :goto_1c6

    .line 3765
    .restart local v4    # "overscroll":I
    :cond_110
    move v2, v4

    .end local v4    # "overscroll":I
    .restart local v2    # "overscroll":I
    iget v4, v0, Landroid/widget/AbsListView;->mScrollY:I

    move v1, v8

    .end local v8    # "deltaY":I
    .local v1, "deltaY":I
    iget v8, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move v3, v1

    .end local v1    # "deltaY":I
    .local v3, "deltaY":I
    const/4 v1, 0x0

    move v5, v3

    .end local v3    # "deltaY":I
    .local v5, "deltaY":I
    const/4 v3, 0x0

    move v6, v5

    .end local v5    # "deltaY":I
    .local v6, "deltaY":I
    const/4 v5, 0x0

    move/from16 v25, v6

    .end local v6    # "deltaY":I
    .local v25, "deltaY":I
    const/4 v6, 0x0

    move/from16 v26, v7

    .end local v7    # "incrementalDeltaY":I
    .local v26, "incrementalDeltaY":I
    const/4 v7, 0x0

    move/from16 v27, v26

    .end local v26    # "incrementalDeltaY":I
    .local v27, "incrementalDeltaY":I
    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    .line 3768
    move v4, v2

    .end local v2    # "overscroll":I
    .local v1, "atOverscrollEdge":Z
    .restart local v4    # "overscroll":I
    if-eqz v1, :cond_135

    iget-object v2, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_135

    .line 3770
    iget-object v2, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 3773
    :cond_135
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v2

    .line 3774
    .local v2, "overscrollMode":I
    if-eqz v2, :cond_14c

    if-ne v2, v14, :cond_148

    .line 3776
    invoke-direct {v0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_144

    goto :goto_14c

    :cond_144
    move/from16 v7, v27

    goto/16 :goto_1c6

    .line 3774
    :cond_148
    move/from16 v7, v27

    goto/16 :goto_1c6

    .line 3777
    :cond_14c
    :goto_14c
    if-nez v1, :cond_153

    .line 3778
    iput v13, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3779
    const/4 v3, 0x5

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3782
    :cond_153
    if-eqz v12, :cond_171

    invoke-static {}, Landroid/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v3

    if-eqz v3, :cond_171

    .line 3783
    invoke-direct {v0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 3784
    iget-object v3, v0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 3785
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    move/from16 v7, v27

    .end local v27    # "incrementalDeltaY":I
    .restart local v7    # "incrementalDeltaY":I
    if-lez v7, :cond_16d

    move v13, v14

    .line 3784
    :cond_16d
    invoke-virtual {v3, v5, v6, v14, v13}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    goto :goto_173

    .line 3782
    .end local v7    # "incrementalDeltaY":I
    .restart local v27    # "incrementalDeltaY":I
    :cond_171
    move/from16 v7, v27

    .line 3790
    .end local v27    # "incrementalDeltaY":I
    .restart local v7    # "incrementalDeltaY":I
    :goto_173
    if-lez v7, :cond_19a

    .line 3791
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v10

    .line 3792
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    .line 3791
    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3793
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_196

    .line 3794
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3796
    :cond_196
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_1c6

    .line 3797
    :cond_19a
    if-gez v7, :cond_1c6

    .line 3798
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v10

    .line 3799
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float v6, v18, v6

    .line 3798
    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3800
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1be

    .line 3801
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3803
    :cond_1be
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_1c6

    .line 3753
    .end local v2    # "overscrollMode":I
    .end local v4    # "overscroll":I
    .end local v24    # "motionIndex":I
    .end local v25    # "deltaY":I
    .local v1, "motionIndex":I
    .restart local v8    # "deltaY":I
    :cond_1c2
    move/from16 v24, v1

    move/from16 v25, v8

    .line 3808
    .end local v1    # "motionIndex":I
    .end local v8    # "deltaY":I
    .restart local v24    # "motionIndex":I
    .restart local v25    # "deltaY":I
    :cond_1c6
    :goto_1c6
    add-int v1, v11, v17

    add-int v1, v1, v16

    iput v1, v0, Landroid/widget/AbsListView;->mMotionY:I

    goto :goto_1d1

    .line 3749
    .end local v23    # "motionViewRealTop":I
    .end local v24    # "motionIndex":I
    .end local v25    # "deltaY":I
    .restart local v1    # "motionIndex":I
    .restart local v8    # "deltaY":I
    :cond_1cd
    move/from16 v24, v1

    move/from16 v25, v8

    .line 3810
    .end local v1    # "motionIndex":I
    .end local v8    # "deltaY":I
    .restart local v24    # "motionIndex":I
    .restart local v25    # "deltaY":I
    :goto_1d1
    add-int v1, v11, v17

    add-int v1, v1, v16

    iput v1, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3811
    .end local v19    # "motionViewPrevTop":I
    .end local v21    # "atEdge":Z
    .end local v22    # "motionView":Landroid/view/View;
    .end local v24    # "motionIndex":I
    goto/16 :goto_2c2

    .line 3707
    .end local v25    # "deltaY":I
    .restart local v8    # "deltaY":I
    :cond_1d9
    move/from16 v25, v8

    .end local v8    # "deltaY":I
    .restart local v25    # "deltaY":I
    goto/16 :goto_2c2

    .line 3812
    .end local v25    # "deltaY":I
    .restart local v8    # "deltaY":I
    :cond_1dd
    move/from16 v25, v8

    const/4 v3, 0x5

    .end local v8    # "deltaY":I
    .restart local v25    # "deltaY":I
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v1, v3, :cond_2c2

    .line 3813
    iget v1, v0, Landroid/widget/AbsListView;->mLastY:I

    if-eq v11, v1, :cond_2c2

    .line 3814
    iget v1, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3815
    .local v1, "oldScroll":I
    sub-int v19, v1, v7

    .line 3816
    .local v19, "newScroll":I
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    if-le v11, v3, :cond_1f2

    move v3, v14

    goto :goto_1f3

    :cond_1f2
    const/4 v3, -0x1

    .line 3818
    .local v3, "newDirection":I
    :goto_1f3
    iget v4, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v4, :cond_1f9

    .line 3819
    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3822
    :cond_1f9
    neg-int v4, v7

    .line 3823
    .local v4, "overScrollDistance":I
    if-gez v19, :cond_1fe

    if-gez v1, :cond_202

    :cond_1fe
    if-lez v19, :cond_205

    if-gtz v1, :cond_205

    .line 3824
    :cond_202
    neg-int v4, v1

    .line 3825
    add-int/2addr v7, v4

    goto :goto_207

    .line 3827
    :cond_205
    const/4 v5, 0x0

    move v7, v5

    .line 3830
    :goto_207
    if-eqz v4, :cond_282

    .line 3831
    move v5, v2

    move v2, v4

    .end local v4    # "overScrollDistance":I
    .local v2, "overScrollDistance":I
    iget v4, v0, Landroid/widget/AbsListView;->mScrollY:I

    iget v8, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move v6, v1

    .end local v1    # "oldScroll":I
    .local v6, "oldScroll":I
    const/4 v1, 0x0

    move/from16 v20, v3

    .end local v3    # "newDirection":I
    .local v20, "newDirection":I
    const/4 v3, 0x0

    move/from16 v21, v5

    const/4 v5, 0x0

    move/from16 v22, v6

    .end local v6    # "oldScroll":I
    .local v22, "oldScroll":I
    const/4 v6, 0x0

    move/from16 v23, v7

    .end local v7    # "incrementalDeltaY":I
    .local v23, "incrementalDeltaY":I
    const/4 v7, 0x0

    move/from16 v28, v20

    move/from16 v13, v23

    .end local v20    # "newDirection":I
    .end local v23    # "incrementalDeltaY":I
    .local v13, "incrementalDeltaY":I
    .local v28, "newDirection":I
    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3833
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 3834
    .local v1, "overscrollMode":I
    if-eqz v1, :cond_233

    if-ne v1, v14, :cond_288

    .line 3836
    invoke-direct {v0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_288

    .line 3837
    :cond_233
    if-lez v15, :cond_259

    .line 3838
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v10

    .line 3839
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3838
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3840
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_255

    .line 3841
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3843
    :cond_255
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_288

    .line 3844
    :cond_259
    if-gez v15, :cond_288

    .line 3845
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v4, v2

    int-to-float v4, v4

    .line 3846
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v10

    .line 3847
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v5, v18, v5

    .line 3845
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3848
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_27e

    .line 3849
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3851
    :cond_27e
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_288

    .line 3830
    .end local v2    # "overScrollDistance":I
    .end local v13    # "incrementalDeltaY":I
    .end local v22    # "oldScroll":I
    .end local v28    # "newDirection":I
    .local v1, "oldScroll":I
    .restart local v3    # "newDirection":I
    .restart local v4    # "overScrollDistance":I
    .restart local v7    # "incrementalDeltaY":I
    :cond_282
    move/from16 v22, v1

    move/from16 v28, v3

    move v2, v4

    move v13, v7

    .line 3856
    .end local v1    # "oldScroll":I
    .end local v3    # "newDirection":I
    .end local v4    # "overScrollDistance":I
    .end local v7    # "incrementalDeltaY":I
    .restart local v2    # "overScrollDistance":I
    .restart local v13    # "incrementalDeltaY":I
    .restart local v22    # "oldScroll":I
    .restart local v28    # "newDirection":I
    :cond_288
    :goto_288
    if-eqz v13, :cond_2b7

    .line 3858
    iget v1, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_294

    .line 3859
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3860
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3863
    :cond_294
    invoke-virtual {v0, v13, v13}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3865
    const/4 v5, 0x3

    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3869
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v1

    .line 3871
    .local v1, "motionPosition":I
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3872
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3873
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_2af

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    :cond_2af
    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3874
    add-int v3, v11, v16

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3875
    iput v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3877
    .end local v1    # "motionPosition":I
    .end local v4    # "motionView":Landroid/view/View;
    :cond_2b7
    add-int v1, v11, v17

    add-int v1, v1, v16

    iput v1, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3878
    move/from16 v3, v28

    .end local v28    # "newDirection":I
    .restart local v3    # "newDirection":I
    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    move v7, v13

    .line 3881
    .end local v2    # "overScrollDistance":I
    .end local v3    # "newDirection":I
    .end local v13    # "incrementalDeltaY":I
    .end local v19    # "newScroll":I
    .end local v22    # "oldScroll":I
    .restart local v7    # "incrementalDeltaY":I
    :cond_2c2
    :goto_2c2
    return-void
.end method

.method private greylist-max-o setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 1472
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_9

    .line 1473
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1475
    :cond_9
    return-void
.end method

.method private greylist-max-o setFastScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1408
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_a

    .line 1409
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_1b

    .line 1410
    :cond_a
    if-eqz p1, :cond_1b

    .line 1411
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1412
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1415
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1417
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_27

    .line 1418
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1420
    :cond_27
    return-void
.end method

.method private greylist-max-o setItemViewLayoutParams(Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2513
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2515
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_d

    .line 2516
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1d

    .line 2517
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2518
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1d

    .line 2520
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1a
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2523
    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1d
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_29

    .line 2524
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2526
    :cond_29
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2527
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2528
    if-eq v1, v0, :cond_3e

    .line 2529
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2531
    :cond_3e
    return-void
.end method

.method private static blacklist setupDeviceConfigProperties()V
    .registers 3

    .line 911
    sget-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-nez v0, :cond_26

    .line 912
    const-string/jumbo v0, "report_list_view_children"

    const/4 v1, 0x0

    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    .line 916
    new-instance v0, Landroid/widget/AbsListView$DeviceConfigChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$DeviceConfigChangeListener;-><init>(Landroid/widget/AbsListView-IA;)V

    sput-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 917
    nop

    .line 919
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 917
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 922
    :cond_26
    return-void
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 7
    .param p1, "edgeEffect"    # Landroid/widget/EdgeEffect;
    .param p2, "velocity"    # I

    .line 4418
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 4419
    return v0

    .line 4421
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 4424
    .local v1, "distance":F
    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_19

    .line 4425
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4427
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->getSplineFlingDistance(I)F

    move-result v2

    .line 4429
    .local v2, "flingDistance":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .registers 3

    .line 4463
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private greylist-max-o showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .registers 12
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .line 3467
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3468
    .local v3, "longPressPosition":I
    if-gez v3, :cond_8

    .line 3469
    const/4 v0, 0x0

    return v0

    .line 3472
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3473
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3475
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1c

    .line 3476
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "originalView":Landroid/view/View;
    .local v2, "originalView":Landroid/view/View;
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    goto :goto_1e

    .line 3475
    .end local v2    # "originalView":Landroid/view/View;
    .restart local p1    # "originalView":Landroid/view/View;
    :cond_1c
    move-object v1, p0

    move-object v2, p1

    .line 3480
    .end local p1    # "originalView":Landroid/view/View;
    .restart local v2    # "originalView":Landroid/view/View;
    :goto_1e
    if-nez v6, :cond_39

    .line 3481
    iget p1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int p1, v3, p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3482
    .local p1, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3484
    if-eqz p4, :cond_35

    .line 3485
    invoke-super {p0, v2, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v6

    goto :goto_39

    .line 3487
    :cond_35
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3491
    .end local p1    # "child":Landroid/view/View;
    :cond_39
    :goto_39
    return v6
.end method

.method private greylist-max-o showContextMenuInternal(FFZ)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .line 3432
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3433
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 3434
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3435
    .local v1, "id":J
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3436
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2b

    .line 3437
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3438
    if-eqz p3, :cond_26

    .line 3439
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 3441
    :cond_26
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3445
    .end local v1    # "id":J
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    if-eqz p3, :cond_32

    .line 3446
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v1

    return v1

    .line 3448
    :cond_32
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o showPopup()V
    .registers 2

    .line 6089
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 6090
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6091
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6093
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6095
    :cond_10
    return-void
.end method

.method private greylist-max-o startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 3638
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    .line 3639
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3640
    .local v1, "distance":I
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 3641
    .local v2, "overscroll":Z
    :goto_11
    if-nez v2, :cond_17

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_5b

    .line 3642
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5b

    .line 3643
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3644
    if-eqz v2, :cond_2a

    .line 3645
    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3646
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_35

    .line 3648
    :cond_2a
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3649
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-lez v0, :cond_32

    goto :goto_33

    :cond_32
    neg-int v5, v5

    :goto_33
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3651
    :goto_35
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3652
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3653
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3654
    .local v5, "motionView":Landroid/view/View;
    if-eqz v5, :cond_4b

    .line 3655
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3657
    :cond_4b
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3660
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 3661
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_57

    .line 3662
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3664
    :cond_57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3665
    return v3

    .line 3668
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v5    # "motionView":Landroid/view/View;
    :cond_5b
    return v4
.end method

.method private blacklist stopEdgeGlowRecede(F)V
    .registers 5
    .param p1, "x"    # F

    .line 4144
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 4145
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4147
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    .line 4148
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4150
    :cond_2d
    return-void
.end method

.method private greylist-max-o updateOnScreenCheckedViews()V
    .registers 9

    .line 1286
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1287
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1288
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1290
    .local v2, "useActivated":Z
    :goto_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_3f

    .line 1291
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1292
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 1294
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_31

    .line 1295
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3c

    .line 1296
    :cond_31
    if-eqz v2, :cond_3c

    .line 1297
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1290
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1300
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o useDefaultSelector()V
    .registers 3

    .line 1759
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1761
    return-void
.end method


# virtual methods
.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 4884
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4885
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4886
    .local v1, "firstPosition":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4888
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_b

    .line 4889
    return-void

    .line 4892
    :cond_b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_23

    .line 4893
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4894
    .local v4, "child":Landroid/view/View;
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4895
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4897
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4892
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4899
    .end local v3    # "i":I
    :cond_23
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 6574
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 6533
    return-void
.end method

.method public whitelist canScrollList(I)Z
    .registers 11
    .param p1, "direction"    # I

    .line 5450
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5451
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5452
    return v1

    .line 5455
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5456
    .local v2, "firstPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5457
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_2a

    .line 5458
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 5459
    .local v5, "lastBottom":I
    add-int v6, v2, v0

    .line 5460
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v6, v7, :cond_28

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_29

    :cond_28
    move v1, v4

    :cond_29
    return v1

    .line 5462
    .end local v5    # "lastBottom":I
    .end local v6    # "lastPosition":I
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 5463
    .local v5, "firstTop":I
    if-gtz v2, :cond_38

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_39

    :cond_38
    move v1, v4

    :cond_39
    return v1
.end method

.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 6446
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6602
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public whitelist clearChoices()V
    .registers 2

    .line 1132
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 1133
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1135
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 1136
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1138
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1139
    return-void
.end method

.method public whitelist clearTextFilter()V
    .registers 3

    .line 6495
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1f

    .line 6496
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6497
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6498
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6499
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6502
    :cond_1f
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 8

    .line 2125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2126
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_3c

    .line 2127
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_3a

    .line 2128
    mul-int/lit8 v2, v0, 0x64

    .line 2130
    .local v2, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2131
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2132
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2133
    .local v4, "height":I
    if-lez v4, :cond_1f

    .line 2134
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 2137
    :cond_1f
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2138
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2139
    .local v5, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2140
    if-lez v4, :cond_39

    .line 2141
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 2144
    :cond_39
    return v2

    .line 2146
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "extent":I
    .end local v3    # "top":I
    .end local v4    # "height":I
    .end local v5    # "bottom":I
    :cond_3a
    const/4 v1, 0x1

    return v1

    .line 2149
    :cond_3c
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 10

    .line 2154
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2155
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2156
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_53

    if-lez v1, :cond_53

    .line 2157
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_3b

    .line 2158
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2159
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2160
    .local v4, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2161
    .local v5, "height":I
    if-lez v5, :cond_3a

    .line 2162
    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v4, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v7, v7

    .line 2163
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 2162
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 2165
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    .end local v5    # "height":I
    :cond_3a
    goto :goto_53

    .line 2167
    :cond_3b
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2168
    .local v2, "count":I
    if-nez v0, :cond_41

    .line 2169
    const/4 v3, 0x0

    .local v3, "index":I
    goto :goto_4a

    .line 2170
    .end local v3    # "index":I
    :cond_41
    add-int v3, v0, v1

    if-ne v3, v2, :cond_47

    .line 2171
    move v3, v2

    .restart local v3    # "index":I
    goto :goto_4a

    .line 2173
    .end local v3    # "index":I
    :cond_47
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    .line 2175
    .restart local v3    # "index":I
    :goto_4a
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 2178
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_53
    :goto_53
    return v2
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 4

    .line 2184
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_28

    .line 2185
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2186
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_2a

    .line 2188
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2a

    .line 2191
    .end local v0    # "result":I
    :cond_28
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2193
    .restart local v0    # "result":I
    :cond_2a
    :goto_2a
    return v0
.end method

.method greylist-max-o confirmCheckedPositionsById()V
    .registers 18

    .line 5872
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5874
    const/4 v1, 0x0

    .line 5875
    .local v1, "checkedCountChanged":Z
    const/4 v2, 0x0

    .local v2, "checkedIndex":I
    :goto_9
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_95

    .line 5876
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 5877
    .local v7, "id":J
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5879
    .local v6, "lastPos":I
    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 5880
    .local v10, "lastPosId":J
    cmp-long v3, v7, v10

    const/4 v12, 0x1

    if-eqz v3, :cond_89

    .line 5882
    add-int/lit8 v3, v6, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5883
    .local v3, "start":I
    add-int/lit8 v4, v6, 0x14

    iget v5, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 5884
    .local v13, "end":I
    const/4 v4, 0x0

    .line 5885
    .local v4, "found":Z
    move v5, v3

    .local v5, "searchPos":I
    :goto_3f
    if-ge v5, v13, :cond_63

    .line 5886
    iget-object v9, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 5887
    .local v14, "searchId":J
    cmp-long v9, v7, v14

    if-nez v9, :cond_5e

    .line 5888
    const/4 v4, 0x1

    .line 5889
    iget-object v9, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v5, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5890
    iget-object v9, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move/from16 v16, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v2, v12}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5891
    move v12, v4

    goto :goto_66

    .line 5887
    :cond_5e
    move/from16 v16, v12

    .line 5885
    .end local v14    # "searchId":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_63
    move/from16 v16, v12

    move v12, v4

    .line 5895
    .end local v4    # "found":Z
    .end local v5    # "searchPos":I
    .local v12, "found":Z
    :goto_66
    if-nez v12, :cond_86

    .line 5896
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5897
    add-int/lit8 v2, v2, -0x1

    .line 5898
    iget v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5899
    const/4 v1, 0x1

    .line 5900
    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_86

    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_86

    .line 5901
    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v5, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5905
    .end local v3    # "start":I
    .end local v12    # "found":Z
    .end local v13    # "end":I
    :cond_86
    move/from16 v4, v16

    goto :goto_92

    .line 5906
    :cond_89
    move/from16 v16, v12

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move/from16 v4, v16

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5875
    .end local v6    # "lastPos":I
    .end local v7    # "id":J
    .end local v10    # "lastPosId":J
    :goto_92
    add-int/2addr v2, v4

    goto/16 :goto_9

    .line 5910
    .end local v2    # "checkedIndex":I
    :cond_95
    if-eqz v1, :cond_a0

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_a0

    .line 5911
    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 5913
    :cond_a0
    return-void
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 3231
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method greylist-max-o createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .registers 2

    .line 5254
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .registers 2

    .line 6766
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6767
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2759
    const/4 v0, 0x0

    .line 2760
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 2761
    .local v1, "clipToPadding":Z
    :goto_b
    if-eqz v1, :cond_36

    .line 2762
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2763
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2764
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2765
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2768
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2771
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_36
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2772
    .local v3, "drawSelectorOnTop":Z
    if-nez v3, :cond_3d

    .line 2773
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2776
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2778
    if-eqz v3, :cond_45

    .line 2779
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2782
    :cond_45
    if-eqz v1, :cond_4f

    .line 2783
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2784
    iget v4, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2786
    :cond_4f
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3531
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .line 3525
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4653
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4654
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 4655
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4656
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 4662
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_2a

    .line 4663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 4664
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 4665
    .local v3, "height":I
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4666
    .local v4, "translateX":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .local v5, "translateY":I
    goto :goto_34

    .line 4668
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "translateX":I
    .end local v5    # "translateY":I
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .line 4669
    .restart local v2    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 4670
    .restart local v3    # "height":I
    const/4 v4, 0x0

    .line 4671
    .restart local v4    # "translateX":I
    const/4 v5, 0x0

    .line 4673
    .restart local v5    # "translateY":I
    :goto_34
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4674
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4675
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_72

    .line 4676
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4677
    .local v6, "restoreCount":I
    add-int v8, v4, v2

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4678
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    add-int/2addr v9, v5

    .line 4677
    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4679
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    .line 4680
    .local v8, "edgeY":I
    int-to-float v9, v4

    int-to-float v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4681
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 4682
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4684
    :cond_6f
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4686
    .end local v6    # "restoreCount":I
    .end local v8    # "edgeY":I
    :cond_72
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_ba

    .line 4687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4688
    .restart local v6    # "restoreCount":I
    add-int v8, v5, v3

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v4, v2

    add-int v10, v5, v3

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4690
    neg-int v8, v2

    add-int/2addr v8, v4

    .line 4691
    .local v8, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 4692
    if-eqz v1, :cond_9f

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :cond_9f
    sub-int/2addr v9, v7

    .line 4693
    .local v9, "edgeY":I
    int-to-float v7, v8

    int-to-float v10, v9

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4694
    int-to-float v7, v2

    const/4 v10, 0x0

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {p1, v11, v7, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4695
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 4696
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4698
    :cond_b7
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4701
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "translateX":I
    .end local v5    # "translateY":I
    .end local v6    # "restoreCount":I
    .end local v8    # "edgeX":I
    .end local v9    # "edgeY":I
    :cond_ba
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 1

    .line 3026
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3027
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3028
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 7761
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7763
    const-string v0, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7764
    const-string v0, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7765
    const-string v0, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7766
    const-string v0, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7767
    const-string v0, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7768
    const-string v0, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7770
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7771
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_48

    .line 7772
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7773
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7775
    :cond_48
    return-void
.end method

.method abstract greylist-max-o fillGap(Z)V
.end method

.method greylist-max-o findClosestMotionRow(I)I
    .registers 5
    .param p1, "y"    # I

    .line 5723
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5724
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 5725
    return v1

    .line 5728
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 5729
    .local v2, "motionRow":I
    if-eq v2, v1, :cond_10

    move v1, v2

    goto :goto_15

    :cond_10
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_15
    return v1
.end method

.method abstract greylist findMotionRow(I)I
.end method

.method public whitelist fling(I)V
    .registers 3
    .param p1, "velocityY"    # I

    .line 4599
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 4600
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4602
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4603
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4604
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 6586
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6592
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 6597
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1615
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;

    .line 2315
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2316
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_12

    if-eq v0, p0, :cond_12

    .line 2317
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2318
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2321
    :cond_12
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_18

    .line 2322
    const/4 v1, 0x0

    return-object v1

    .line 2325
    :cond_18
    return-object p1
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .registers 2

    .line 6877
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 8

    .line 2215
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2216
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    .line 2217
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2218
    return v1

    .line 2220
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_19

    .line 2221
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2224
    :cond_19
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2225
    .local v2, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 2226
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 2227
    .local v4, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_3a

    .line 2228
    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_3b

    :cond_3a
    move v5, v1

    .line 2227
    :goto_3b
    return v5
.end method

.method protected whitelist getBottomPaddingOffset()I
    .registers 3

    .line 2810
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :goto_b
    return v0
.end method

.method public whitelist getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6670
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getCheckedItemCount()I
    .registers 2

    .line 1049
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public whitelist getCheckedItemIds()[J
    .registers 7

    .line 1113
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_d

    goto :goto_22

    .line 1117
    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1118
    .local v0, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1119
    .local v1, "count":I
    new-array v2, v1, [J

    .line 1121
    .local v2, "ids":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_21

    .line 1122
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1121
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1125
    .end local v3    # "i":I
    :cond_21
    return-object v2

    .line 1114
    .end local v0    # "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v1    # "count":I
    .end local v2    # "ids":[J
    :cond_22
    :goto_22
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public whitelist getCheckedItemPosition()I
    .registers 3

    .line 1081
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 1082
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1085
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 1098
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1099
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1101
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChoiceMode()I
    .registers 2

    .line 1314
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 3418
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1746
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1747
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1750
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1751
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_16

    .line 1754
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1756
    :goto_16
    return-void
.end method

.method greylist-max-o getFooterViewsCount()I
    .registers 2

    .line 5663
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeaderViewsCount()I
    .registers 2

    .line 5653
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeightForPosition(I)I
    .registers 8
    .param p1, "position"    # I

    .line 7702
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 7703
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7704
    .local v1, "childCount":I
    sub-int v2, p1, v0

    .line 7705
    .local v2, "index":I
    if-ltz v2, :cond_17

    if-ge v2, v1, :cond_17

    .line 7707
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7708
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    return v4

    .line 7711
    .end local v3    # "view":Landroid/view/View;
    :cond_17
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 7712
    .restart local v3    # "view":Landroid/view/View;
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 7713
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 7714
    .local v4, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7715
    return v4
.end method

.method protected whitelist getLeftPaddingOffset()I
    .registers 3

    .line 2795
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_c
    return v0
.end method

.method public whitelist getListPaddingBottom()I
    .registers 2

    .line 2403
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getListPaddingLeft()I
    .registers 2

    .line 2415
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getListPaddingRight()I
    .registers 2

    .line 2427
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getListPaddingTop()I
    .registers 2

    .line 2391
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected whitelist getRightPaddingOffset()I
    .registers 3

    .line 2805
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    :goto_b
    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2375
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2376
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2378
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getSelectionModeForAccessibility()I
    .registers 3

    .line 1640
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1641
    .local v0, "choiceMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_e

    .line 1650
    return v1

    .line 1648
    :pswitch_9
    const/4 v1, 0x2

    return v1

    .line 1645
    :pswitch_b
    const/4 v1, 0x1

    return v1

    .line 1643
    :pswitch_d
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2960
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getSolidColor()I
    .registers 2

    .line 6636
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .line 2075
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 2076
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2078
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .registers 2

    .line 6863
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 6

    .line 2198
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2199
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2200
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2201
    return v1

    .line 2203
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_12

    .line 2204
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2207
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2208
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2209
    .local v3, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v2, v4, :cond_2c

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v1

    :goto_2d
    return v4
.end method

.method protected whitelist getTopPaddingOffset()I
    .registers 3

    .line 2800
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_c
    return v0
.end method

.method public whitelist getTranscriptMode()I
    .registers 2

    .line 6631
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public whitelist getVerticalScrollbarWidth()I
    .registers 3

    .line 1500
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1501
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1503
    :cond_1b
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method greylist-max-o handleBoundsChange()V
    .registers 7

    .line 2840
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_5

    .line 2841
    return-void

    .line 2843
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2844
    .local v0, "childCount":I
    if-lez v0, :cond_2c

    .line 2845
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2846
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_2c

    .line 2848
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2849
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2851
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v5, v1, :cond_29

    .line 2852
    :cond_26
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2847
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2856
    .end local v2    # "i":I
    :cond_2c
    return-void
.end method

.method protected whitelist handleDataChanged()V
    .registers 13

    .line 5917
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5918
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5919
    .local v1, "lastHandledItemCount":I
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5921
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5922
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5926
    :cond_1b
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5928
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_e6

    .line 5933
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_bc

    .line 5935
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5936
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5938
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_36

    .line 5939
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5940
    return-void

    .line 5941
    :cond_36
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_6b

    .line 5942
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_43

    .line 5943
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5944
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5945
    return-void

    .line 5947
    :cond_43
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 5948
    .local v6, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 5949
    .local v8, "listBottom":I
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5950
    .local v9, "lastChild":Landroid/view/View;
    if-eqz v9, :cond_5d

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_5e

    :cond_5d
    move v10, v8

    .line 5951
    .local v10, "lastBottom":I
    :goto_5e
    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_68

    if-gt v10, v8, :cond_68

    .line 5953
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5954
    return-void

    .line 5958
    :cond_68
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5961
    .end local v6    # "childCount":I
    .end local v8    # "listBottom":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v10    # "lastBottom":I
    :cond_6b
    iget v6, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_104

    goto :goto_bc

    .line 6002
    :pswitch_72
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6003
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6005
    return-void

    .line 5963
    :pswitch_83
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 5968
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5969
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5971
    return-void

    .line 5975
    :cond_9a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5976
    .local v6, "newPos":I
    if-ltz v6, :cond_bc

    .line 5978
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 5979
    .local v9, "selectablePos":I
    if-ne v9, v6, :cond_bc

    .line 5981
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5983
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b6

    .line 5986
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_b8

    .line 5990
    :cond_b6
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5994
    :goto_b8
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5995
    return-void

    .line 6009
    .end local v6    # "newPos":I
    .end local v9    # "selectablePos":I
    :cond_bc
    :goto_bc
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_e1

    .line 6011
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6014
    .restart local v6    # "newPos":I
    if-lt v6, v0, :cond_ca

    .line 6015
    add-int/lit8 v6, v0, -0x1

    .line 6017
    :cond_ca
    if-gez v6, :cond_cd

    .line 6018
    const/4 v6, 0x0

    .line 6022
    :cond_cd
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6024
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d7

    .line 6025
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6026
    return-void

    .line 6029
    :cond_d7
    invoke-virtual {p0, v6, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6030
    if-ltz v7, :cond_e6

    .line 6031
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6032
    return-void

    .line 6038
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e1
    iget v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_e6

    .line 6039
    return-void

    .line 6046
    :cond_e6
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_eb

    goto :goto_ec

    :cond_eb
    move v3, v5

    :goto_ec
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6047
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6048
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 6049
    iput v3, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 6050
    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 6051
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6052
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6053
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6054
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 6055
    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_83
        :pswitch_72
    .end packed-switch
.end method

.method protected greylist-max-o handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3971
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasTextFilter()Z
    .registers 2

    .line 6508
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method greylist-max-o hideSelector()V
    .registers 4

    .line 5678
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 5679
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    .line 5680
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5682
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1c

    .line 5683
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5685
    :cond_1c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5686
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5687
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5689
    :cond_25
    return-void
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2818
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 2819
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2820
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2822
    :cond_c
    return-void
.end method

.method public whitelist invalidateViews()V
    .registers 2

    .line 5736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5737
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5738
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5739
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5740
    return-void
.end method

.method greylist invokeOnItemScrollListener()V
    .registers 5

    .line 1598
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_11

    .line 1599
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1601
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_22

    .line 1602
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1605
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1606
    return-void
.end method

.method public whitelist isDrawSelectorOnTop()Z
    .registers 2

    .line 2922
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public whitelist isFastScrollAlwaysVisible()Z
    .registers 4

    .line 1491
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 1492
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 1494
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1
.end method

.method public whitelist isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1515
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1516
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1518
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist isInFilterMode()Z
    .registers 2

    .line 6169
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public whitelist isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 1064
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 1065
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1068
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .registers 3

    .line 2790
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1693
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public whitelist isSelectedChildViewEnabled()Z
    .registers 2

    .line 2742
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return v0
.end method

.method public whitelist isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1580
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public whitelist isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1772
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public whitelist isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1741
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected greylist-max-r isVerticalScrollBarHidden()Z
    .registers 2

    .line 1545
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 3072
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3073
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3074
    :cond_c
    return-void
.end method

.method greylist-max-o keyPressed()V
    .registers 9

    .line 2968
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_82

    .line 2972
    :cond_e
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2973
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2974
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_81

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2975
    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 2977
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2979
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    .line 2980
    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_39

    return-void

    .line 2981
    :cond_39
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2983
    :cond_3c
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2985
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 2986
    .local v3, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2987
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_60

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_60

    .line 2988
    if-eqz v3, :cond_5a

    .line 2989
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 2990
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 2989
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_60

    .line 2992
    :cond_5a
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2995
    :cond_60
    :goto_60
    if-eqz v3, :cond_81

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_81

    .line 2996
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_72

    .line 2997
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2999
    :cond_72
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3000
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3003
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "longClickable":Z
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_81
    return-void

    .line 2969
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_82
    :goto_82
    return-void
.end method

.method protected whitelist layoutChildren()V
    .registers 1

    .line 2307
    return-void
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .line 2446
    const-string v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2448
    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    .line 2452
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2453
    .local v3, "transientView":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 2454
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2457
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v2, v5, :cond_33

    .line 2458
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2461
    .local v2, "updatedView":Landroid/view/View;
    if-eq v2, v3, :cond_33

    .line 2462
    invoke-direct {p0, v2, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2463
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2467
    .end local v2    # "updatedView":Landroid/view/View;
    :cond_33
    aput-boolean v4, p2, v0

    .line 2470
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2471
    return-object v3

    .line 2474
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_39
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    .line 2475
    .local v5, "scrapView":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2476
    .local v6, "child":Landroid/view/View;
    if-eqz v5, :cond_5a

    .line 2477
    if-eq v6, v5, :cond_4f

    .line 2479
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v5, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_5a

    .line 2480
    :cond_4f
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 2481
    aput-boolean v4, p2, v0

    .line 2484
    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2488
    :cond_5a
    :goto_5a
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v0, :cond_63

    .line 2489
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2492
    :cond_63
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_6c

    .line 2493
    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2496
    :cond_6c
    invoke-direct {p0, v6, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2498
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2499
    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v0, :cond_86

    .line 2500
    new-instance v0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2502
    :cond_86
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_91

    .line 2503
    iget-object v0, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2507
    :cond_91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2509
    return-object v6
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 3078
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3080
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3081
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3082
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_19

    .line 3083
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3086
    :cond_19
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_3e

    .line 3087
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3088
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3091
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3092
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3093
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3095
    :cond_3e
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .registers 2

    .line 3236
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3237
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_c

    .line 3238
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3240
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_15

    .line 3241
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3243
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_1e

    .line 3244
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3246
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_27

    .line 3247
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3249
    :cond_27
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 6252
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6253
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_19

    .line 6254
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6255
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6257
    :cond_19
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6258
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6259
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 6261
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 6

    .line 3099
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3104
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3107
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3109
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3110
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3111
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_23

    .line 3112
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3113
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3116
    :cond_23
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_35

    .line 3117
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3118
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3121
    :cond_35
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_40

    .line 3122
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3123
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3126
    :cond_40
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_4b

    .line 3127
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3128
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3131
    :cond_4b
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_54

    .line 3132
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3135
    :cond_54
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5d

    .line 3136
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3139
    :cond_5d
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_66

    .line 3140
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3143
    :cond_66
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_6f

    .line 3144
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3147
    :cond_6f
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_7d

    .line 3148
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3149
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3152
    :cond_7d
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3153
    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .line 6059
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6060
    sparse-switch p1, :sswitch_data_34

    goto :goto_2a

    .line 6062
    :sswitch_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6063
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_2a

    .line 6067
    :sswitch_17
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 6068
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6072
    :cond_2a
    :goto_2a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6073
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_17
        0x4 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist onFilterComplete(I)V
    .registers 3
    .param p1, "count"    # I

    .line 6578
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 6579
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6580
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6582
    :cond_c
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2083
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2084
    if-eqz p1, :cond_2b

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2085
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2089
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2090
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2092
    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2094
    :cond_2b
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_fa

    goto/16 :goto_f5

    .line 4572
    :sswitch_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 4573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4574
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1b

    if-ne v0, v1, :cond_f5

    :cond_1b
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v1, :cond_23

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v1, v2, :cond_f5

    .line 4577
    :cond_23
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 4578
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4579
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_f5

    .line 4514
    .end local v0    # "actionButton":I
    :sswitch_35
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4515
    const/16 v0, 0x9

    .local v0, "axis":I
    goto :goto_4a

    .line 4516
    .end local v0    # "axis":I
    :cond_3e
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 4517
    const/16 v0, 0x1a

    .restart local v0    # "axis":I
    goto :goto_4a

    .line 4519
    .end local v0    # "axis":I
    :cond_49
    const/4 v0, -0x1

    .line 4522
    .restart local v0    # "axis":I
    :goto_4a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4f

    const/4 v1, 0x0

    goto :goto_53

    :cond_4f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4523
    .local v1, "axisValue":F
    :goto_53
    iget v3, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 4524
    .local v3, "delta":I
    if-eqz v3, :cond_f5

    .line 4526
    const/4 v4, 0x0

    if-lez v3, :cond_61

    move v5, v4

    goto :goto_66

    :cond_61
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    .line 4528
    .local v5, "motionIndex":I
    :goto_66
    const/4 v6, 0x0

    .line 4529
    .local v6, "motionViewPrevTop":I
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4530
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_71

    .line 4531
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 4534
    :cond_71
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 4536
    .local v8, "overscrollMode":I
    invoke-virtual {p0, v3, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v9

    if-nez v9, :cond_9a

    .line 4537
    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 4538
    invoke-direct {p0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 4539
    iget-object v4, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 4540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    .line 4539
    invoke-virtual {v4, v9, v10, v0, v3}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    .line 4542
    :cond_91
    invoke-direct {p0}, Landroid/widget/AbsListView;->initDifferentialFlingHelperIfNotExists()V

    .line 4543
    iget-object v4, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    invoke-virtual {v4, p1, v0}, Landroid/widget/DifferentialMotionFlingHelper;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 4544
    return v2

    .line 4545
    :cond_9a
    const/16 v9, 0x2002

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v9

    if-nez v9, :cond_f4

    if-eqz v7, :cond_f4

    if-eqz v8, :cond_ae

    if-ne v8, v2, :cond_f4

    .line 4548
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_f4

    .line 4549
    :cond_ae
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    .line 4550
    .local v9, "motionViewRealTop":I
    sub-int v10, v9, v6

    sub-int v10, v3, v10

    int-to-float v10, v10

    .line 4551
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 4552
    .local v10, "overscroll":F
    if-lez v3, :cond_c0

    move v4, v2

    .line 4553
    .local v4, "hitTopLimit":Z
    :cond_c0
    invoke-static {}, Landroid/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v11

    if-eqz v11, :cond_d6

    .line 4554
    invoke-direct {p0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 4555
    iget-object v11, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 4556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    .line 4555
    invoke-virtual {v11, v12, v13, v0, v4}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    .line 4559
    :cond_d6
    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v4, :cond_e5

    .line 4560
    iget-object v12, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v12, v10, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4561
    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_f0

    .line 4563
    :cond_e5
    iget-object v12, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-float v13, v10

    invoke-virtual {v12, v13, v11}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4564
    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4566
    :goto_f0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4567
    return v2

    .line 4569
    .end local v4    # "hitTopLimit":Z
    .end local v5    # "motionIndex":I
    .end local v6    # "motionViewPrevTop":I
    .end local v7    # "motionView":Landroid/view/View;
    .end local v8    # "overscrollMode":I
    .end local v9    # "motionViewRealTop":I
    .end local v10    # "overscroll":F
    :cond_f4
    nop

    .line 4586
    .end local v0    # "axis":I
    .end local v1    # "axisValue":F
    .end local v3    # "delta":I
    :cond_f5
    :goto_f5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_data_fa
    .sparse-switch
        0x8 -> :sswitch_35
        0xb -> :sswitch_b
    .end sparse-switch
.end method

.method public whitelist onGlobalLayout()V
    .registers 2

    .line 6513
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6515
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_2d

    .line 6516
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_2d

    .line 6520
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6521
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6525
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2618
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 2620
    return-void

    .line 2623
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    .line 2624
    .local v0, "isItemActionable":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2625
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_16

    .line 2626
    move-object v2, v1

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v2, v2, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    and-int/2addr v0, v2

    .line 2629
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_26

    .line 2630
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2631
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2b

    .line 2634
    :cond_26
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2638
    :goto_2b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2639
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2642
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2645
    :cond_39
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2646
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2648
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2650
    :cond_47
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1621
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1622
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1623
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1624
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1625
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1626
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1628
    :cond_1d
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1629
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1630
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1631
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1635
    :cond_30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1636
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1637
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4748
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4749
    const/4 v0, 0x1

    return v0

    .line 4752
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4771
    .local v0, "actionMasked":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_d

    .line 4772
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4775
    :cond_d
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_cf

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_cf

    .line 4783
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4784
    return v3

    .line 4787
    :cond_28
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_d0

    :pswitch_2c
    goto/16 :goto_ce

    .line 4855
    :pswitch_2e
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_ce

    .line 4826
    :pswitch_33
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_e2

    goto :goto_62

    .line 4828
    :pswitch_39
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 4829
    .local v4, "pointerIndex":I
    if-ne v4, v1, :cond_48

    .line 4830
    const/4 v4, 0x0

    .line 4831
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4833
    :cond_48
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4834
    .local v1, "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4835
    iget-object v5, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4836
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 4837
    return v3

    .line 4841
    .end local v1    # "y":I
    .end local v4    # "pointerIndex":I
    :cond_62
    :goto_62
    goto :goto_ce

    .line 4846
    :pswitch_63
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4847
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4848
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4849
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4850
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    .line 4851
    goto :goto_ce

    .line 4789
    :pswitch_71
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4790
    .local v1, "touchMode":I
    const/4 v4, 0x6

    if-eq v1, v4, :cond_cb

    const/4 v4, 0x5

    if-ne v1, v4, :cond_7a

    goto :goto_cb

    .line 4795
    :cond_7a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 4796
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 4797
    .local v5, "y":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4799
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v6

    .line 4800
    .local v6, "motionPosition":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->doesTouchStopStretch()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_99

    .line 4802
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    move v1, v8

    goto :goto_b6

    .line 4803
    :cond_99
    if-eq v1, v8, :cond_b6

    if-ltz v6, :cond_b6

    .line 4806
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4807
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4808
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4809
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4810
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4811
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4812
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4814
    .end local v7    # "v":Landroid/view/View;
    :cond_b6
    :goto_b6
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4815
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4816
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4817
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4818
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4819
    if-ne v1, v8, :cond_ce

    .line 4820
    return v3

    .line 4791
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :cond_cb
    :goto_cb
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4792
    return v3

    .line 4860
    .end local v1    # "touchMode":I
    :cond_ce
    :goto_ce
    return v2

    .line 4780
    :cond_cf
    :goto_cf
    return v2

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_71
        :pswitch_63
        :pswitch_33
        :pswitch_63
        :pswitch_2c
        :pswitch_2c
        :pswitch_2e
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_39
    .end packed-switch
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3496
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3501
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3502
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 3503
    return v1

    .line 3505
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_46

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3507
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 3509
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3510
    .local v0, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 3511
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3512
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3514
    :cond_42
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3515
    return v1

    .line 3518
    .end local v0    # "view":Landroid/view/View;
    :cond_46
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2260
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2262
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2264
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2265
    .local v1, "childCount":I
    if-eqz p2, :cond_24

    .line 2266
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_1f

    .line 2267
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2266
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2269
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p1, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2272
    :cond_24
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2274
    sub-int v2, v0, p4

    div-int/lit8 v2, v2, 0x3

    iput v2, p1, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2277
    iget-object v2, p1, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_3c

    .line 2278
    iget-object v2, p1, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p1, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2280
    :cond_3c
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2281
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2234
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 2235
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2237
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2238
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2239
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2240
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2241
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2244
    iget v1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 2245
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2246
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2247
    .local v3, "listBottom":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2248
    .local v4, "lastChild":Landroid/view/View;
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_45

    :cond_44
    move v5, v3

    .line 2249
    .local v5, "lastBottom":I
    :goto_45
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_4f

    if-gt v5, v3, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2252
    .end local v1    # "childCount":I
    .end local v3    # "listBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastBottom":I
    :cond_52
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 4636
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4637
    .local v0, "childCount":I
    if-nez p4, :cond_38

    if-lez v0, :cond_38

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4638
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 4639
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4640
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_29

    .line 4641
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4643
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_36

    .line 4644
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4646
    :cond_36
    const/4 v1, 0x1

    return v1

    .line 4648
    :cond_38
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 15
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 4620
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    .line 4621
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4622
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    move v8, v1

    .line 4623
    .local v8, "oldTop":I
    if-eqz v7, :cond_1d

    neg-int v1, p5

    neg-int v2, p5

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4624
    :cond_1d
    move v1, p5

    .line 4625
    .local v1, "myUnconsumed":I
    const/4 v2, 0x0

    .line 4626
    .local v2, "myConsumed":I
    if-eqz v7, :cond_2a

    .line 4627
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, v8

    .line 4628
    sub-int/2addr v1, v2

    move v4, v1

    goto :goto_2b

    .line 4626
    :cond_2a
    move v4, v1

    .line 4630
    .end local v1    # "myUnconsumed":I
    .local v4, "myUnconsumed":I
    :goto_2b
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4632
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_32
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 4613
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4614
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4615
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 4500
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_15

    .line 4501
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4502
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4503
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4505
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4507
    :cond_15
    return-void
.end method

.method public whitelist onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .registers 9
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 6916
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 6917
    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_8

    .line 6918
    return-void

    .line 6921
    :cond_8
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 6923
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_16

    .line 6924
    const-string v1, "AbsListView"

    const-string v2, "Unexpected null extras Bundle in ViewStructure"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6925
    return-void

    .line 6928
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6929
    .local v1, "childCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6931
    .local v2, "idsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v1, :cond_33

    .line 6932
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6933
    .local v4, "activeView":Landroid/view/View;
    if-nez v4, :cond_29

    .line 6934
    goto :goto_30

    .line 6937
    :cond_29
    invoke-virtual {v4}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6931
    .end local v4    # "activeView":Landroid/view/View;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 6940
    .end local v3    # "i":I
    :cond_33
    const-string v3, "android.view.ViewStructure.extra.ACTIVE_CHILDREN_IDS"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6943
    nop

    .line 6944
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 6943
    const-string v4, "android.view.ViewStructure.extra.FIRST_ACTIVE_POSITION"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6945
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .registers 4

    .line 6774
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    .line 6775
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6776
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_17

    .line 6777
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6778
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6780
    :cond_17
    return v2

    .line 6781
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_23

    .line 6782
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6783
    const/4 v0, 0x1

    return v0

    .line 6785
    :cond_23
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .registers 1

    .line 6798
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 4757
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4758
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 4759
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_15

    .line 4760
    return-object v0

    .line 4763
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1990
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1992
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1993
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1995
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1997
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2e

    .line 1998
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1999
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2000
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2001
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2002
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2003
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_4f

    .line 2004
    :cond_2e
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4f

    .line 2005
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2007
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2008
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2009
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2010
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2011
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2012
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2013
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2014
    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2017
    :cond_4f
    :goto_4f
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2019
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5c

    .line 2020
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2023
    :cond_5c
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_64

    .line 2024
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2027
    :cond_64
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2029
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_7d

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7d

    .line 2031
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2034
    :cond_7d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2035
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 3213
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3214
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_10

    .line 3215
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3217
    :cond_10
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 12

    .line 1898
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1900
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1902
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1904
    .local v1, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v2, :cond_4d

    .line 1906
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1907
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1908
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1909
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1910
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1911
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1912
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1913
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1914
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1915
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1916
    return-object v1

    .line 1919
    :cond_4d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_5b

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_5b

    move v2, v3

    goto :goto_5c

    :cond_5b
    move v2, v4

    .line 1920
    .local v2, "haveChildren":Z
    :goto_5c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v5

    .line 1921
    .local v5, "selectedId":J
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1922
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1924
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_7d

    .line 1926
    iget v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1927
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1928
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_a8

    .line 1930
    :cond_7d
    if-eqz v2, :cond_a2

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_a2

    .line 1940
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1941
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1942
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1943
    .local v8, "firstPos":I
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v8, v9, :cond_97

    .line 1944
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    .line 1946
    :cond_97
    iput v8, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1947
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1948
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "firstPos":I
    goto :goto_a8

    .line 1949
    :cond_a2
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1950
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1951
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1955
    :goto_a8
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1956
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v7, :cond_bf

    .line 1957
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1958
    .local v7, "textFilter":Landroid/widget/EditText;
    if-eqz v7, :cond_bf

    .line 1959
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1960
    .local v8, "filterText":Landroid/text/Editable;
    if-eqz v8, :cond_bf

    .line 1961
    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1966
    .end local v7    # "textFilter":Landroid/widget/EditText;
    .end local v8    # "filterText":Landroid/text/Editable;
    :cond_bf
    iget v7, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c9

    iget-object v7, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_c9

    goto :goto_ca

    :cond_c9
    move v3, v4

    :goto_ca
    iput-boolean v3, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1968
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_d8

    .line 1969
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1971
    :cond_d8
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_100

    .line 1972
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 1973
    .local v3, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1974
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e8
    if-ge v7, v4, :cond_fe

    .line 1975
    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1974
    add-int/lit8 v7, v7, 0x1

    goto :goto_e8

    .line 1977
    .end local v7    # "i":I
    :cond_fe
    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1979
    .end local v3    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v4    # "count":I
    :cond_100
    iget v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1981
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_10d

    .line 1982
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 1985
    :cond_10d
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2826
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2827
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 2828
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2830
    :cond_c
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 4608
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 6542
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 6543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6544
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6545
    .local v1, "length":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6546
    .local v2, "showing":Z
    if-nez v2, :cond_1e

    if-lez v1, :cond_1e

    .line 6548
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6549
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_28

    .line 6550
    :cond_1e
    if-eqz v2, :cond_28

    if-nez v1, :cond_28

    .line 6552
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6555
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_44

    .line 6556
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6558
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3c

    .line 6559
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_44

    .line 6561
    :cond_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6566
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_44
    :goto_44
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3976
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 3979
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :cond_16
    :goto_16
    return v1

    .line 3982
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_20

    .line 3983
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3986
    :cond_20
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_c7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_c7

    .line 3994
    :cond_2c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3996
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3997
    return v1

    .line 3999
    :cond_3d
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4000
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4002
    .local v0, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 4003
    .local v3, "actionMasked":I
    if-nez v3, :cond_4c

    .line 4004
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4006
    :cond_4c
    iget v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4007
    packed-switch v3, :pswitch_data_c8

    :pswitch_56
    goto :goto_ba

    .line 4029
    :pswitch_57
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4030
    iget v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4031
    .local v2, "x":I
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4032
    .local v4, "y":I
    invoke-virtual {p0, v2, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4033
    .local v5, "motionPosition":I
    if-ltz v5, :cond_74

    .line 4035
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4036
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4037
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4039
    .end local v6    # "child":Landroid/view/View;
    :cond_74
    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4040
    goto :goto_ba

    .line 4045
    .end local v2    # "x":I
    .end local v4    # "y":I
    .end local v5    # "motionPosition":I
    :pswitch_77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 4046
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 4047
    .local v5, "id":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 4048
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 4049
    .local v7, "y":I
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4050
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4051
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4052
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4053
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    .line 4054
    .local v2, "motionPosition":I
    if-ltz v2, :cond_a7

    .line 4056
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v8, v2, v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4057
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4058
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4060
    .end local v8    # "child":Landroid/view/View;
    :cond_a7
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4061
    goto :goto_ba

    .line 4024
    .end local v2    # "motionPosition":I
    .end local v4    # "index":I
    .end local v5    # "id":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_aa
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 4025
    goto :goto_ba

    .line 4014
    :pswitch_ae
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 4015
    goto :goto_ba

    .line 4019
    :pswitch_b2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 4020
    goto :goto_ba

    .line 4009
    :pswitch_b6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 4010
    nop

    .line 4065
    :goto_ba
    iget-object v2, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c3

    .line 4066
    iget-object v2, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4068
    :cond_c3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4069
    return v1

    .line 3991
    .end local v0    # "vtev":Landroid/view/MotionEvent;
    .end local v3    # "actionMasked":I
    :cond_c7
    :goto_c7
    return v2

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_56
        :pswitch_77
        :pswitch_57
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .registers 4
    .param p1, "isInTouchMode"    # Z

    .line 3935
    if-eqz p1, :cond_18

    .line 3937
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3941
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 3944
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3946
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_42

    .line 3948
    :cond_18
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3949
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_42

    .line 3950
    :cond_20
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_29

    .line 3951
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3953
    :cond_29
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_32

    .line 3954
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3957
    :cond_32
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_42

    .line 3958
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3959
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3960
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3961
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3965
    .end local v0    # "touchMode":I
    :cond_42
    :goto_42
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z

    .line 3157
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3159
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3161
    .local v0, "touchMode":I
    const/4 v2, 0x0

    if-nez p1, :cond_44

    .line 3162
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3163
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_3a

    .line 3164
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3167
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v3, v2}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V

    .line 3168
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3169
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_2b

    .line 3170
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3172
    :cond_2b
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_3a

    .line 3173
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3174
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3175
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3176
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3180
    :cond_3a
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3182
    if-ne v0, v1, :cond_66

    .line 3184
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_66

    .line 3187
    :cond_44
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_4f

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_4f

    .line 3189
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3193
    :cond_4f
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_66

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_66

    .line 3195
    if-ne v0, v1, :cond_5e

    .line 3197
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_66

    .line 3201
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3202
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3203
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3208
    :cond_66
    :goto_66
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3209
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1657
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1658
    return v1

    .line 1660
    :cond_8
    const/16 v0, 0xc8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_4e

    .line 1678
    return v2

    .line 1671
    :sswitch_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1672
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1673
    .local v2, "viewportHeight":I
    neg-int v3, v2

    invoke-virtual {p0, v3, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1674
    return v1

    .line 1676
    .end local v2    # "viewportHeight":I
    :cond_2e
    return v2

    .line 1663
    :sswitch_2f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1664
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1665
    .restart local v2    # "viewportHeight":I
    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1666
    return v1

    .line 1668
    .end local v2    # "viewportHeight":I
    :cond_4d
    return v2

    :sswitch_data_4e
    .sparse-switch
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_f
        0x1020038 -> :sswitch_f
        0x102003a -> :sswitch_2f
    .end sparse-switch
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, "handled":Z
    const/4 v6, 0x1

    .line 1226
    .local v6, "dispatchItemClick":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_c1

    .line 1227
    const/4 v7, 0x1

    .line 1228
    .end local v0    # "handled":Z
    .local v7, "handled":Z
    const/4 v8, 0x0

    .line 1230
    .local v8, "checkedStateChanged":Z
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_68

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_19

    goto :goto_68

    .line 1252
    :cond_19
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_67

    .line 1253
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 1254
    .local v0, "checked":Z
    if-eqz v0, :cond_53

    .line 1255
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1256
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1257
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_50

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1258
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1259
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v9, v10, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1261
    :cond_50
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_65

    .line 1262
    :cond_53
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1263
    :cond_63
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1265
    :cond_65
    :goto_65
    const/4 v8, 0x1

    goto :goto_bb

    .line 1252
    .end local v0    # "checked":Z
    :cond_67
    :goto_67
    goto :goto_bb

    .line 1232
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 1233
    .local v5, "checked":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1234
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1235
    if-eqz v5, :cond_93

    .line 1236
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v10, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9e

    .line 1238
    :cond_93
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1241
    :cond_9e
    :goto_9e
    if-eqz v5, :cond_a6

    .line 1242
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_ab

    .line 1244
    :cond_a6
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1246
    :goto_ab
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_b9

    .line 1247
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1249
    const/4 v6, 0x0

    .line 1251
    :cond_b9
    const/4 v8, 0x1

    .end local v5    # "checked":Z
    goto :goto_67

    .line 1268
    :goto_bb
    if-eqz v8, :cond_c0

    .line 1269
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1273
    .end local v8    # "checkedStateChanged":Z
    :cond_c0
    move v0, v7

    .end local v7    # "handled":Z
    .local v0, "handled":Z
    :cond_c1
    if-eqz v6, :cond_c8

    .line 1274
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1277
    :cond_c8
    return v0
.end method

.method greylist performLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 3376
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .end local p1    # "child":Landroid/view/View;
    .end local p2    # "longPressPosition":I
    .end local p3    # "longPressId":J
    .local v1, "child":Landroid/view/View;
    .local v2, "longPressPosition":I
    .local v3, "longPressId":J
    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result p1

    return p1
.end method

.method greylist-max-r performLongPress(Landroid/view/View;IJFF)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 3388
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    .line 3389
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3390
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1b

    .line 3391
    invoke-virtual {p0, p2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3392
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3394
    :cond_1b
    return v1

    .line 3397
    :cond_1c
    const/4 v0, 0x0

    .line 3398
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_2c

    .line 3399
    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .end local p1    # "child":Landroid/view/View;
    .end local p2    # "longPressPosition":I
    .end local p3    # "longPressId":J
    .local v5, "child":Landroid/view/View;
    .local v6, "longPressPosition":I
    .local v7, "longPressId":J
    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_30

    .line 3398
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "longPressPosition":I
    .end local v7    # "longPressId":J
    .restart local p1    # "child":Landroid/view/View;
    .restart local p2    # "longPressPosition":I
    .restart local p3    # "longPressId":J
    :cond_2c
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    .line 3402
    .end local p1    # "child":Landroid/view/View;
    .end local p2    # "longPressPosition":I
    .end local p3    # "longPressId":J
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "longPressPosition":I
    .restart local v7    # "longPressId":J
    :goto_30
    if-nez v0, :cond_4b

    .line 3403
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, v4, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3404
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p2, p5, p1

    if-eqz p2, :cond_47

    cmpl-float p1, p6, p1

    if-eqz p1, :cond_47

    .line 3405
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_4b

    .line 3407
    :cond_47
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3410
    :cond_4b
    :goto_4b
    if-eqz v0, :cond_50

    .line 3411
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3413
    :cond_50
    return v0
.end method

.method public whitelist pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3542
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3543
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_d

    .line 3544
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3545
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3548
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3549
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2f

    .line 3550
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3551
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 3552
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3553
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3554
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 3549
    .end local v3    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3558
    .end local v2    # "i":I
    :cond_2f
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist pointToRowId(II)J
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3571
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3572
    .local v0, "position":I
    if-ltz v0, :cond_d

    .line 3573
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 3575
    :cond_d
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method greylist-max-o positionSelector(ILandroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2686
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .end local p1    # "position":I
    .end local p2    # "sel":Landroid/view/View;
    .local v1, "position":I
    .local v2, "sel":Landroid/view/View;
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2687
    return-void
.end method

.method greylist-max-o positionSelectorLikeFocus(ILandroid/view/View;)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2675
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_1d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    .line 2676
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2677
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 2678
    .local v5, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 2679
    .local v6, "y":F
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .end local p1    # "position":I
    .end local p2    # "sel":Landroid/view/View;
    .local v2, "position":I
    .local v3, "sel":Landroid/view/View;
    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2680
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "x":F
    .end local v6    # "y":F
    goto :goto_22

    .line 2675
    .end local v2    # "position":I
    .end local v3    # "sel":Landroid/view/View;
    .restart local p1    # "position":I
    .restart local p2    # "sel":Landroid/view/View;
    :cond_1d
    move v2, p1

    move-object v3, p2

    .line 2681
    .end local p1    # "position":I
    .end local p2    # "sel":Landroid/view/View;
    .restart local v2    # "position":I
    .restart local v3    # "sel":Landroid/view/View;
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2683
    :goto_22
    return-void
.end method

.method greylist-max-o positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 2668
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "position":I
    .end local p2    # "sel":Landroid/view/View;
    .end local p3    # "x":F
    .end local p4    # "y":F
    .local v1, "position":I
    .local v2, "sel":Landroid/view/View;
    .local v4, "x":F
    .local v5, "y":F
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2669
    return-void
.end method

.method public whitelist reclaimViews(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6681
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6682
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    .line 6685
    .local v1, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_35

    .line 6686
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6687
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6689
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_32

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 6690
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6691
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6692
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 6693
    if-eqz v1, :cond_32

    .line 6695
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6685
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6699
    .end local v2    # "i":I
    :cond_35
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6700
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6701
    return-void
.end method

.method greylist-max-o reconcileSelectedPosition()I
    .registers 3

    .line 5697
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5698
    .local v0, "position":I
    if-gez v0, :cond_6

    .line 5699
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5701
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5702
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5703
    return v0
.end method

.method greylist-max-p reportScrollStateChange(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 4910
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 4911
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 4912
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4913
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4920
    :cond_f
    if-eqz p1, :cond_14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 4922
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 4924
    :cond_17
    return-void
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 4740
    if-eqz p1, :cond_5

    .line 4741
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4743
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4744
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 2098
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 2099
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2101
    :cond_b
    return-void
.end method

.method greylist-max-o requestLayoutIfNecessary()V
    .registers 2

    .line 1790
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1791
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1792
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1793
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1795
    :cond_f
    return-void
.end method

.method greylist-max-o resetList()V
    .registers 5

    .line 2107
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2108
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2109
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2110
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2111
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2112
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2113
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2114
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2115
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2116
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2117
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2118
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2119
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2120
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2121
    return-void
.end method

.method greylist-max-o resurrectSelection()Z
    .registers 17

    .line 5769
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5771
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-gtz v1, :cond_a

    .line 5772
    return v2

    .line 5775
    :cond_a
    const/4 v3, 0x0

    .line 5777
    .local v3, "selectedTop":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 5778
    .local v4, "childrenTop":I
    iget v5, v0, Landroid/widget/AbsListView;->mBottom:I

    iget v6, v0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 5779
    .local v5, "childrenBottom":I
    iget v6, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5780
    .local v6, "firstPosition":I
    iget v7, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5781
    .local v7, "toPosition":I
    const/4 v8, 0x1

    .line 5783
    .local v8, "down":Z
    const/4 v9, 0x1

    if-lt v7, v6, :cond_4e

    add-int v10, v6, v1

    if-ge v7, v10, :cond_4e

    .line 5784
    move v10, v7

    .line 5786
    .local v10, "selectedPos":I
    iget v11, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v11, v10, v11

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5787
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 5788
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5791
    .local v12, "selectedBottom":I
    if-ge v3, v4, :cond_3f

    .line 5792
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v13

    add-int v3, v4, v13

    goto :goto_4d

    .line 5793
    :cond_3f
    if-le v12, v5, :cond_4d

    .line 5794
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    .line 5795
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    .line 5797
    .end local v11    # "selected":Landroid/view/View;
    .end local v12    # "selectedBottom":I
    :cond_4d
    :goto_4d
    goto :goto_a4

    .line 5798
    .end local v10    # "selectedPos":I
    :cond_4e
    if-ge v7, v6, :cond_72

    .line 5800
    move v10, v6

    .line 5801
    .restart local v10    # "selectedPos":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_52
    if-ge v11, v1, :cond_71

    .line 5802
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5803
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5805
    .local v13, "top":I
    if-nez v11, :cond_68

    .line 5807
    move v3, v13

    .line 5809
    if-gtz v6, :cond_63

    if-ge v13, v4, :cond_68

    .line 5812
    :cond_63
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    add-int/2addr v4, v14

    .line 5815
    :cond_68
    if-lt v13, v4, :cond_6e

    .line 5817
    add-int v10, v6, v11

    .line 5818
    move v3, v13

    .line 5819
    goto :goto_71

    .line 5801
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "top":I
    :cond_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    .end local v11    # "i":I
    :cond_71
    :goto_71
    goto :goto_a4

    .line 5823
    .end local v10    # "selectedPos":I
    :cond_72
    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5824
    .local v10, "itemCount":I
    const/4 v8, 0x0

    .line 5825
    add-int v11, v6, v1

    sub-int/2addr v11, v9

    .line 5827
    .local v11, "selectedPos":I
    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_7a
    if-ltz v12, :cond_a3

    .line 5828
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5829
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 5830
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 5832
    .local v15, "bottom":I
    add-int/lit8 v9, v1, -0x1

    if-ne v12, v9, :cond_98

    .line 5833
    move v3, v14

    .line 5834
    add-int v9, v6, v1

    if-lt v9, v10, :cond_93

    if-le v15, v5, :cond_98

    .line 5835
    :cond_93
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v9

    sub-int/2addr v5, v9

    .line 5839
    :cond_98
    if-gt v15, v5, :cond_9f

    .line 5840
    add-int v9, v6, v12

    .line 5841
    .end local v11    # "selectedPos":I
    .local v9, "selectedPos":I
    move v3, v14

    .line 5842
    move v10, v9

    goto :goto_a4

    .line 5827
    .end local v9    # "selectedPos":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "top":I
    .end local v15    # "bottom":I
    .restart local v11    # "selectedPos":I
    :cond_9f
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_7a

    :cond_a3
    move v10, v11

    .line 5848
    .end local v11    # "selectedPos":I
    .end local v12    # "i":I
    .local v10, "selectedPos":I
    :goto_a4
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5849
    iget-object v11, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5850
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_b5

    .line 5851
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5853
    :cond_b5
    iput v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5854
    invoke-direct {v0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5855
    iput v3, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5856
    invoke-virtual {v0, v10, v8}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 5857
    .end local v10    # "selectedPos":I
    .restart local v9    # "selectedPos":I
    if-lt v9, v6, :cond_d5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_d5

    .line 5858
    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5859
    invoke-virtual {v0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5860
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5861
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_d6

    .line 5863
    :cond_d5
    const/4 v9, -0x1

    .line 5865
    :goto_d6
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5867
    if-ltz v9, :cond_dc

    const/4 v2, 0x1

    :cond_dc
    return v2
.end method

.method greylist resurrectSelectionIfNeeded()Z
    .registers 2

    .line 5748
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5749
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5750
    const/4 v0, 0x1

    return v0

    .line 5752
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scrollListBy(I)V
    .registers 4
    .param p1, "y"    # I

    .line 5437
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5438
    return-void
.end method

.method greylist-max-o sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 6181
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6182
    return v1

    .line 6185
    :cond_8
    const/4 v0, 0x0

    .line 6186
    .local v0, "handled":Z
    const/4 v2, 0x1

    .line 6187
    .local v2, "okToSend":Z
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_8a

    goto :goto_57

    .line 6217
    :sswitch_f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_57

    .line 6195
    :sswitch_12
    const/4 v2, 0x0

    .line 6196
    goto :goto_57

    .line 6199
    :sswitch_14
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_55

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_55

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 6200
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3b

    .line 6201
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3b

    .line 6202
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6203
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_39

    .line 6204
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6206
    :cond_39
    const/4 v0, 0x1

    .line 6207
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3a
    goto :goto_55

    :cond_3b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3a

    .line 6208
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_55

    .line 6209
    const/4 v0, 0x1

    .line 6210
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6213
    :cond_55
    :goto_55
    const/4 v2, 0x0

    .line 6214
    nop

    .line 6221
    :goto_57
    if-eqz v2, :cond_88

    .line 6222
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6224
    move-object v3, p3

    .line 6225
    .local v3, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_6b

    .line 6226
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    .line 6229
    :cond_6b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 6230
    .local v1, "action":I
    packed-switch v1, :pswitch_data_b4

    goto :goto_88

    .line 6240
    :pswitch_73
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_88

    .line 6236
    :pswitch_7a
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6237
    goto :goto_88

    .line 6232
    :pswitch_81
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6233
    nop

    .line 6244
    .end local v1    # "action":I
    .end local v3    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_88
    :goto_88
    return v0

    nop

    :sswitch_data_8a
    .sparse-switch
        0x4 -> :sswitch_14
        0x13 -> :sswitch_12
        0x14 -> :sswitch_12
        0x15 -> :sswitch_12
        0x16 -> :sswitch_12
        0x17 -> :sswitch_12
        0x3e -> :sswitch_f
        0x42 -> :sswitch_12
        0x6f -> :sswitch_14
        0xa0 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7a
        :pswitch_73
    .end packed-switch
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1025
    if-eqz p1, :cond_1d

    .line 1026
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1027
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1d

    .line 1029
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1032
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1033
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 6834
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 6835
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 6836
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .line 6650
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1c

    .line 6651
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6652
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6653
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 6654
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6653
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6656
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6658
    .end local v0    # "count":I
    :cond_1c
    return-void
.end method

.method public whitelist setChoiceMode(I)V
    .registers 4
    .param p1, "choiceMode"    # I

    .line 1327
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1328
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    .line 1329
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1332
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_41

    .line 1333
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 1334
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1336
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1337
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1340
    :cond_35
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 1341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1345
    :cond_41
    return-void
.end method

.method public whitelist setDrawSelectorOnTop(Z)V
    .registers 2
    .param p1, "onTop"    # Z

    .line 2910
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2911
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 6820
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTopEdgeEffectColor(I)V

    .line 6821
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setBottomEdgeEffectColor(I)V

    .line 6822
    return-void
.end method

.method public whitelist setFastScrollAlwaysVisible(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 1451
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_22

    .line 1452
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1456
    :cond_e
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1458
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1459
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_22

    .line 1461
    :cond_1a
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1469
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist setFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1391
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_18

    .line 1392
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1394
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1395
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_18

    .line 1397
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1405
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setFastScrollStyle(I)V
    .registers 3
    .param p1, "styleResId"    # I

    .line 1429
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1430
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_c

    .line 1432
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 1434
    :goto_c
    return-void
.end method

.method public whitelist setFilterText(Ljava/lang/String;)V
    .registers 4
    .param p1, "filterText"    # Ljava/lang/String;

    .line 2050
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2054
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2056
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_39

    .line 2058
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_31

    .line 2059
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2060
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2064
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2065
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2068
    :cond_39
    return-void
.end method

.method protected greylist-max-o setFrame(IIII)Z
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2290
    .local v0, "changed":Z
    if-eqz v0, :cond_24

    .line 2294
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 2295
    .local v1, "visible":Z
    :goto_f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2296
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2300
    .end local v1    # "visible":Z
    :cond_24
    return v0
.end method

.method public whitelist setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 5234
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5235
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5237
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5238
    return-void
.end method

.method public whitelist setItemChecked(IZ)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 1150
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_5

    .line 1151
    return-void

    .line 1155
    :cond_5
    const/4 v0, 0x3

    if-eqz p2, :cond_2d

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_2d

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2d

    .line 1156
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1157
    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1162
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_2d

    .line 1158
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_2d
    :goto_2d
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_95

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_39

    goto :goto_95

    .line 1190
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v4

    goto :goto_48

    :cond_47
    move v0, v3

    .line 1193
    .local v0, "updateIds":Z
    :goto_48
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_50

    move v1, v4

    goto :goto_51

    :cond_50
    move v1, v3

    .line 1194
    .local v1, "itemCheckChanged":Z
    :goto_51
    if-nez p2, :cond_59

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1195
    :cond_59
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1196
    if-eqz v0, :cond_65

    .line 1197
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1202
    :cond_65
    if-eqz p2, :cond_80

    .line 1203
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1204
    if-eqz v0, :cond_7d

    .line 1205
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1207
    :cond_7d
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_92

    .line 1208
    :cond_80
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_92

    .line 1209
    :cond_90
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1214
    .end local v0    # "updateIds":Z
    :cond_92
    :goto_92
    move v7, p1

    move v10, p2

    goto :goto_f3

    .line 1167
    .end local v1    # "itemCheckChanged":Z
    :cond_95
    :goto_95
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1168
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1169
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c9

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1170
    if-eqz p2, :cond_be

    .line 1171
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_c9

    .line 1173
    :cond_be
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1176
    :cond_c9
    :goto_c9
    if-eq v0, p2, :cond_cc

    move v3, v4

    :cond_cc
    move v1, v3

    .line 1177
    .restart local v1    # "itemCheckChanged":Z
    if-eqz v1, :cond_dc

    .line 1178
    if-eqz p2, :cond_d7

    .line 1179
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_dc

    .line 1181
    :cond_d7
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1184
    :cond_dc
    :goto_dc
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_f0

    .line 1185
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 1186
    .local v8, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move v10, p2

    .end local p1    # "position":I
    .end local p2    # "value":Z
    .local v7, "position":I
    .local v10, "value":Z
    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_f2

    .line 1184
    .end local v7    # "position":I
    .end local v8    # "id":J
    .end local v10    # "value":Z
    .restart local p1    # "position":I
    .restart local p2    # "value":Z
    :cond_f0
    move v7, p1

    move v10, p2

    .line 1189
    .end local v0    # "oldValue":Z
    .end local p1    # "position":I
    .end local p2    # "value":Z
    .restart local v7    # "position":I
    .restart local v10    # "value":Z
    :goto_f2
    nop

    .line 1214
    :goto_f3
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez p1, :cond_105

    iget-boolean p1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez p1, :cond_105

    if-eqz v1, :cond_105

    .line 1215
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1217
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1219
    :cond_105
    return-void
.end method

.method public whitelist setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 1357
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1358
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1360
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1361
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 1589
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1590
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1591
    return-void
.end method

.method public whitelist setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .line 6891
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V

    .line 6892
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6716
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 6717
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 6729
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1b

    .line 6730
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6731
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6732
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6733
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6734
    return-void

    .line 6737
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6739
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6740
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 6741
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6743
    :cond_36
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6721
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6755
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 6756
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 6758
    :cond_9
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 1532
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1533
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1534
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1536
    :cond_c
    return-void
.end method

.method public whitelist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .line 3006
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3007
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3008
    return-void
.end method

.method public whitelist setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1710
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1711
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1713
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1714
    return-void
.end method

.method public whitelist setSelectedChildViewEnabled(Z)V
    .registers 2
    .param p1, "selectedChildViewEnabled"    # Z

    .line 2754
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2755
    return-void
.end method

.method public whitelist setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "y"    # I

    .line 7729
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 7730
    return-void

    .line 7733
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7734
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7735
    if-ltz p1, :cond_18

    .line 7736
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_18

    .line 7739
    :cond_16
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7742
    :cond_18
    :goto_18
    if-ltz p1, :cond_3e

    .line 7743
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7744
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7746
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_32

    .line 7747
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7748
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7751
    :cond_32
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3b

    .line 7752
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7754
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7756
    :cond_3e
    return-void
.end method

.method abstract greylist-max-o setSelectionInt(I)V
.end method

.method public whitelist setSelector(I)V
    .registers 3
    .param p1, "resID"    # I

    .line 2933
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2934
    return-void
.end method

.method public whitelist setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 2937
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 2938
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2939
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2941
    :cond_f
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2942
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2943
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2944
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2945
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2946
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2947
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2948
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2949
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2950
    return-void
.end method

.method public whitelist setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1567
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1568
    return-void
.end method

.method public whitelist setStackFromBottom(Z)V
    .registers 3
    .param p1, "stackFromBottom"    # Z

    .line 1783
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 1784
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1785
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1787
    :cond_9
    return-void
.end method

.method public whitelist setTextFilterEnabled(Z)V
    .registers 2
    .param p1, "textFilterEnabled"    # Z

    .line 1727
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1728
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 6848
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 6849
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 6850
    return-void
.end method

.method public whitelist setTranscriptMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 6616
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6617
    return-void
.end method

.method public whitelist setVelocityScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 5247
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5248
    return-void
.end method

.method public whitelist setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1524
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1525
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1526
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1528
    :cond_c
    return-void
.end method

.method greylist-max-o setVisibleRangeHint(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 6805
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 6806
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6808
    :cond_9
    return-void
.end method

.method public final blacklist shouldDrawSelector()Z
    .registers 2

    .line 2897
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist-max-o shouldShowSelector()Z
    .registers 2

    .line 2881
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist showContextMenu()Z
    .registers 3

    .line 3423
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenu(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3428
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;

    .line 3454
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3455
    return v1

    .line 3457
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3462
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist smoothScrollBy(II)V
    .registers 4
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .line 5329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 5330
    return-void
.end method

.method greylist smoothScrollBy(IIZZ)V
    .registers 11
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 5335
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5336
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5340
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5341
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5342
    .local v1, "childCount":I
    add-int v2, v0, v1

    .line 5343
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    .line 5344
    .local v3, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5346
    .local v4, "bottomLimit":I
    if-eqz p1, :cond_54

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_54

    if-eqz v1, :cond_54

    if-nez v0, :cond_37

    .line 5347
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v3, :cond_37

    if-ltz p1, :cond_54

    :cond_37
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v2, v5, :cond_4a

    add-int/lit8 v5, v1, -0x1

    .line 5349
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v4, :cond_4a

    if-lez p1, :cond_4a

    goto :goto_54

    .line 5355
    :cond_4a
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5356
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_62

    .line 5350
    :cond_54
    :goto_54
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5351
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_62

    .line 5352
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5358
    :cond_62
    :goto_62
    return-void
.end method

.method greylist-max-o smoothScrollByOffset(I)V
    .registers 11
    .param p1, "position"    # I

    .line 5364
    const/4 v0, -0x1

    .line 5365
    .local v0, "index":I
    if-gez p1, :cond_8

    .line 5366
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_e

    .line 5367
    :cond_8
    if-lez p1, :cond_e

    .line 5368
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 5371
    :cond_e
    :goto_e
    const/4 v1, -0x1

    if-le v0, v1, :cond_64

    .line 5372
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5373
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_64

    .line 5374
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5375
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 5377
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 5378
    .local v3, "childRectArea":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 5379
    .local v4, "visibleRectArea":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 5380
    .local v5, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5381
    .local v6, "visibleThreshold":F
    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_4a

    cmpg-float v8, v5, v7

    if-gez v8, :cond_4a

    .line 5384
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 5385
    :cond_4a
    if-lez p1, :cond_52

    cmpg-float v7, v5, v7

    if-gez v7, :cond_52

    .line 5388
    add-int/lit8 v0, v0, -0x1

    .line 5391
    .end local v3    # "childRectArea":I
    .end local v4    # "visibleRectArea":I
    .end local v5    # "visibleArea":F
    .end local v6    # "visibleThreshold":F
    :cond_52
    :goto_52
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    add-int v4, v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5394
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :cond_64
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 5263
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5264
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5266
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5267
    return-void
.end method

.method public whitelist smoothScrollToPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 5317
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5318
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5320
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5321
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 5300
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5301
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5303
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5304
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 5282
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5283
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5285
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5286
    return-void
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .registers 2

    .line 2864
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 2869
    const/4 v0, 0x0

    return v0

    .line 2867
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method greylist-max-p trackMotionScroll(II)Z
    .registers 29
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 5477
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5478
    .local v3, "childCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_e

    .line 5479
    return v4

    .line 5482
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5483
    .local v6, "firstTop":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 5485
    .local v7, "lastBottom":I
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5490
    .local v8, "listPadding":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 5491
    .local v9, "effectivePaddingTop":I
    const/4 v10, 0x0

    .line 5492
    .local v10, "effectivePaddingBottom":I
    iget v11, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v12, 0x22

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_30

    .line 5493
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 5494
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 5498
    :cond_30
    sub-int v11, v9, v6

    .line 5499
    .local v11, "spaceAbove":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    .line 5500
    .local v13, "end":I
    sub-int v14, v7, v13

    .line 5502
    .local v14, "spaceBelow":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v15, v5

    .line 5503
    .local v15, "height":I
    if-gez v1, :cond_4d

    .line 5504
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "deltaY":I
    .local v1, "deltaY":I
    goto :goto_53

    .line 5506
    .end local v1    # "deltaY":I
    .restart local p1    # "deltaY":I
    :cond_4d
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5509
    .end local p1    # "deltaY":I
    .restart local v1    # "deltaY":I
    :goto_53
    if-gez v2, :cond_5d

    .line 5510
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local p2    # "incrementalDeltaY":I
    .local v2, "incrementalDeltaY":I
    goto :goto_63

    .line 5512
    .end local v2    # "incrementalDeltaY":I
    .restart local p2    # "incrementalDeltaY":I
    :cond_5d
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5515
    .end local p2    # "incrementalDeltaY":I
    .restart local v2    # "incrementalDeltaY":I
    :goto_63
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5518
    .local v5, "firstPosition":I
    if-nez v5, :cond_6e

    .line 5519
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_73

    .line 5521
    :cond_6e
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5523
    :goto_73
    add-int v4, v5, v3

    move/from16 v17, v12

    iget v12, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v4, v12, :cond_81

    .line 5524
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_86

    .line 5526
    :cond_81
    iget v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5529
    :goto_86
    if-nez v5, :cond_90

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_90

    if-ltz v2, :cond_90

    const/4 v4, 0x1

    goto :goto_91

    :cond_90
    const/4 v4, 0x0

    .line 5531
    .local v4, "cannotScrollDown":Z
    :goto_91
    add-int v12, v5, v3

    move/from16 p1, v1

    .end local v1    # "deltaY":I
    .restart local p1    # "deltaY":I
    iget v1, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v12, v1, :cond_a6

    .line 5532
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v12

    if-gt v7, v1, :cond_a6

    if-gtz v2, :cond_a6

    const/4 v1, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    .line 5534
    .local v1, "cannotScrollUp":Z
    :goto_a7
    if-nez v4, :cond_20c

    if-eqz v1, :cond_bb

    move/from16 p2, v1

    move/from16 v17, v2

    move/from16 v23, v3

    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v24, v6

    const/4 v1, 0x0

    const/4 v5, 0x1

    goto/16 :goto_21a

    .line 5538
    :cond_bb
    if-gez v2, :cond_bf

    const/4 v12, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v12, 0x0

    .line 5540
    .local v12, "down":Z
    :goto_c0
    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v18

    .line 5541
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_c9

    .line 5542
    invoke-virtual {v0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5545
    :cond_c9
    move/from16 p2, v1

    .end local v1    # "cannotScrollUp":Z
    .local p2, "cannotScrollUp":Z
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v1

    .line 5546
    .local v1, "headerViewsCount":I
    move/from16 v19, v4

    .end local v4    # "cannotScrollDown":Z
    .local v19, "cannotScrollDown":Z
    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v20

    sub-int v4, v4, v20

    .line 5548
    .local v4, "footerViewsStart":I
    const/16 v20, 0x0

    .line 5549
    .local v20, "start":I
    const/16 v21, 0x0

    .line 5551
    .local v21, "count":I
    if-eqz v12, :cond_130

    .line 5552
    move/from16 v22, v5

    .end local v5    # "firstPosition":I
    .local v22, "firstPosition":I
    neg-int v5, v2

    .line 5553
    .local v5, "top":I
    move/from16 v23, v5

    .end local v5    # "top":I
    .local v23, "top":I
    iget v5, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    move/from16 v24, v6

    move/from16 v6, v17

    .end local v6    # "firstTop":I
    .local v24, "firstTop":I
    if-ne v5, v6, :cond_f3

    .line 5554
    iget v5, v8, Landroid/graphics/Rect;->top:I

    add-int v5, v23, v5

    .end local v23    # "top":I
    .restart local v5    # "top":I
    goto :goto_f5

    .line 5553
    .end local v5    # "top":I
    .restart local v23    # "top":I
    :cond_f3
    move/from16 v5, v23

    .line 5556
    .end local v23    # "top":I
    .restart local v5    # "top":I
    :goto_f5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f6
    if-ge v6, v3, :cond_123

    .line 5557
    move/from16 v23, v3

    .end local v3    # "childCount":I
    .local v23, "childCount":I
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5558
    .local v3, "child":Landroid/view/View;
    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-lt v6, v5, :cond_107

    .line 5559
    goto :goto_129

    .line 5561
    :cond_107
    add-int/lit8 v21, v21, 0x1

    .line 5562
    add-int v6, v22, v17

    .line 5563
    .local v6, "position":I
    if-lt v6, v1, :cond_11a

    if-ge v6, v4, :cond_11a

    .line 5566
    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5567
    move/from16 v25, v5

    .end local v5    # "top":I
    .local v25, "top":I
    iget-object v5, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, v6}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_11c

    .line 5563
    .end local v25    # "top":I
    .restart local v5    # "top":I
    :cond_11a
    move/from16 v25, v5

    .line 5556
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "top":I
    .end local v6    # "position":I
    .restart local v25    # "top":I
    :goto_11c
    add-int/lit8 v6, v17, 0x1

    move/from16 v3, v23

    move/from16 v5, v25

    .end local v17    # "i":I
    .local v6, "i":I
    goto :goto_f6

    .end local v23    # "childCount":I
    .end local v25    # "top":I
    .local v3, "childCount":I
    .restart local v5    # "top":I
    :cond_123
    move/from16 v23, v3

    move/from16 v25, v5

    move/from16 v17, v6

    .line 5571
    .end local v3    # "childCount":I
    .end local v5    # "top":I
    .end local v6    # "i":I
    .restart local v23    # "childCount":I
    :goto_129
    move/from16 v25, v1

    move/from16 v1, v20

    move/from16 v3, v21

    goto :goto_17c

    .line 5572
    .end local v22    # "firstPosition":I
    .end local v23    # "childCount":I
    .end local v24    # "firstTop":I
    .restart local v3    # "childCount":I
    .local v5, "firstPosition":I
    .local v6, "firstTop":I
    :cond_130
    move/from16 v23, v3

    move/from16 v22, v5

    move/from16 v24, v6

    .end local v3    # "childCount":I
    .end local v5    # "firstPosition":I
    .end local v6    # "firstTop":I
    .restart local v22    # "firstPosition":I
    .restart local v23    # "childCount":I
    .restart local v24    # "firstTop":I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    .line 5573
    .local v3, "bottom":I
    iget v5, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v6, 0x22

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_145

    .line 5574
    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    .line 5576
    :cond_145
    add-int/lit8 v5, v23, -0x1

    .local v5, "i":I
    :goto_147
    if-ltz v5, :cond_174

    .line 5577
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5578
    .local v6, "child":Landroid/view/View;
    move/from16 v17, v5

    .end local v5    # "i":I
    .restart local v17    # "i":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    if-gt v5, v3, :cond_158

    .line 5579
    move/from16 v25, v1

    goto :goto_178

    .line 5581
    :cond_158
    move/from16 v20, v17

    .line 5582
    add-int/lit8 v21, v21, 0x1

    .line 5583
    add-int v5, v22, v17

    .line 5584
    .local v5, "position":I
    if-lt v5, v1, :cond_16d

    if-ge v5, v4, :cond_16d

    .line 5587
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5588
    move/from16 v25, v1

    .end local v1    # "headerViewsCount":I
    .local v25, "headerViewsCount":I
    iget-object v1, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, v6, v5}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_16f

    .line 5584
    .end local v25    # "headerViewsCount":I
    .restart local v1    # "headerViewsCount":I
    :cond_16d
    move/from16 v25, v1

    .line 5576
    .end local v1    # "headerViewsCount":I
    .end local v5    # "position":I
    .end local v6    # "child":Landroid/view/View;
    .restart local v25    # "headerViewsCount":I
    :goto_16f
    add-int/lit8 v5, v17, -0x1

    move/from16 v1, v25

    .end local v17    # "i":I
    .local v5, "i":I
    goto :goto_147

    .end local v25    # "headerViewsCount":I
    .restart local v1    # "headerViewsCount":I
    :cond_174
    move/from16 v25, v1

    move/from16 v17, v5

    .line 5594
    .end local v1    # "headerViewsCount":I
    .end local v3    # "bottom":I
    .end local v5    # "i":I
    .restart local v25    # "headerViewsCount":I
    :goto_178
    move/from16 v1, v20

    move/from16 v3, v21

    .end local v20    # "start":I
    .end local v21    # "count":I
    .local v1, "start":I
    .local v3, "count":I
    :goto_17c
    iget v5, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int v5, v5, p1

    iput v5, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5596
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5598
    if-lez v3, :cond_18f

    .line 5599
    invoke-virtual {v0, v1, v3}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5600
    iget-object v5, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5605
    :cond_18f
    invoke-virtual {v0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_198

    .line 5606
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5609
    :cond_198
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5611
    if-eqz v12, :cond_1a2

    .line 5612
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v3

    iput v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5615
    :cond_1a2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 5616
    .local v5, "absIncrementalDeltaY":I
    if-lt v11, v5, :cond_1aa

    if-ge v14, v5, :cond_1ad

    .line 5617
    :cond_1aa
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5620
    :cond_1ad
    iget-object v6, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 5621
    const/4 v6, 0x0

    .line 5622
    .local v6, "selectorOnScreen":Z
    move/from16 v16, v1

    .end local v1    # "start":I
    .local v16, "start":I
    const/4 v1, -0x1

    if-nez v18, :cond_1df

    move/from16 v17, v2

    .end local v2    # "incrementalDeltaY":I
    .local v17, "incrementalDeltaY":I
    iget v2, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_1dc

    .line 5623
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 5624
    .local v1, "childIndex":I
    if-ltz v1, :cond_1d9

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d9

    .line 5625
    iget v2, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v20, v3

    .end local v3    # "count":I
    .local v20, "count":I
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5626
    const/4 v2, 0x1

    move v6, v2

    .end local v6    # "selectorOnScreen":Z
    .local v2, "selectorOnScreen":Z
    goto :goto_1db

    .line 5624
    .end local v2    # "selectorOnScreen":Z
    .end local v20    # "count":I
    .restart local v3    # "count":I
    .restart local v6    # "selectorOnScreen":Z
    :cond_1d9
    move/from16 v20, v3

    .line 5628
    .end local v1    # "childIndex":I
    .end local v3    # "count":I
    .restart local v20    # "count":I
    :cond_1db
    :goto_1db
    goto :goto_1fe

    .line 5622
    .end local v20    # "count":I
    .restart local v3    # "count":I
    :cond_1dc
    move/from16 v20, v3

    .end local v3    # "count":I
    .restart local v20    # "count":I
    goto :goto_1e3

    .end local v17    # "incrementalDeltaY":I
    .end local v20    # "count":I
    .local v2, "incrementalDeltaY":I
    .restart local v3    # "count":I
    :cond_1df
    move/from16 v17, v2

    move/from16 v20, v3

    .line 5628
    .end local v2    # "incrementalDeltaY":I
    .end local v3    # "count":I
    .restart local v17    # "incrementalDeltaY":I
    .restart local v20    # "count":I
    :goto_1e3
    iget v2, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v2, v1, :cond_1db

    .line 5629
    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 5630
    .restart local v1    # "childIndex":I
    if-ltz v1, :cond_1fe

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1fe

    .line 5631
    iget v2, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5632
    const/4 v6, 0x1

    .line 5635
    .end local v1    # "childIndex":I
    :cond_1fe
    :goto_1fe
    if-nez v6, :cond_205

    .line 5636
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 5639
    :cond_205
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5641
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5643
    return v1

    .line 5534
    .end local v12    # "down":Z
    .end local v16    # "start":I
    .end local v17    # "incrementalDeltaY":I
    .end local v18    # "inTouchMode":Z
    .end local v19    # "cannotScrollDown":Z
    .end local v20    # "count":I
    .end local v22    # "firstPosition":I
    .end local v23    # "childCount":I
    .end local v24    # "firstTop":I
    .end local v25    # "headerViewsCount":I
    .end local p2    # "cannotScrollUp":Z
    .local v1, "cannotScrollUp":Z
    .restart local v2    # "incrementalDeltaY":I
    .local v3, "childCount":I
    .local v4, "cannotScrollDown":Z
    .local v5, "firstPosition":I
    .local v6, "firstTop":I
    :cond_20c
    move/from16 p2, v1

    move/from16 v17, v2

    move/from16 v23, v3

    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v24, v6

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 5535
    .end local v1    # "cannotScrollUp":Z
    .end local v2    # "incrementalDeltaY":I
    .end local v3    # "childCount":I
    .end local v4    # "cannotScrollDown":Z
    .end local v5    # "firstPosition":I
    .end local v6    # "firstTop":I
    .restart local v17    # "incrementalDeltaY":I
    .restart local v19    # "cannotScrollDown":Z
    .restart local v22    # "firstPosition":I
    .restart local v23    # "childCount":I
    .restart local v24    # "firstTop":I
    .restart local p2    # "cannotScrollUp":Z
    :goto_21a
    if-eqz v17, :cond_21e

    move v4, v5

    goto :goto_21f

    :cond_21e
    move v4, v1

    :goto_21f
    return v4
.end method

.method greylist-max-o updateScrollIndicators()V
    .registers 5

    .line 2329
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_14

    .line 2330
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2333
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 2334
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2336
    :cond_25
    return-void
.end method

.method greylist updateSelectorState()V
    .registers 3

    .line 3012
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3013
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3014
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3015
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3016
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 3019
    :cond_1e
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3022
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 3067
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
