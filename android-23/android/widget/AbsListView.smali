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
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$PositionScroller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
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
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mNestedYOffset:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -get0(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    #@2
    return v0
.end method

.method static synthetic -get14(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@2
    return v0
.end method

.method static synthetic -get15(Landroid/widget/AbsListView;)[F
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    #@2
    return-object v0
.end method

.method static synthetic -get16(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/AbsListView;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AbsListView;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    #@0
    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/AbsListView;)I
    .locals 1

    #@0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/AbsListView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    #@0
    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 713
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    #@7
    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, -0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 794
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    #@8
    .line 241
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@a
    .line 274
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@c
    .line 299
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    #@e
    .line 304
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    #@10
    .line 314
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@12
    .line 319
    new-instance v1, Landroid/graphics/Rect;

    #@14
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@17
    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@19
    .line 325
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    #@1b
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    #@1e
    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@20
    .line 330
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    #@22
    .line 335
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    #@24
    .line 340
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    #@26
    .line 345
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    #@28
    .line 350
    new-instance v1, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2d
    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2f
    .line 355
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    #@31
    .line 403
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@33
    .line 434
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    #@35
    .line 477
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@37
    .line 497
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@39
    .line 499
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@3b
    .line 525
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    #@3d
    .line 528
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    #@3f
    .line 531
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    #@41
    .line 539
    iput-object v6, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@43
    .line 540
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@45
    .line 593
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    #@47
    .line 618
    const/high16 v1, 0x3f800000    # 1.0f

    #@49
    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    #@4b
    .line 620
    new-array v1, v4, [Z

    #@4d
    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    #@4f
    .line 622
    new-array v1, v5, [I

    #@51
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@53
    .line 623
    new-array v1, v5, [I

    #@55
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    #@57
    .line 625
    new-array v1, v5, [F

    #@59
    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    #@5b
    .line 631
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@5d
    .line 641
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@5f
    .line 689
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    #@61
    .line 795
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    #@64
    .line 797
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@67
    move-result-object v1

    #@68
    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    #@6a
    .line 799
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    #@6d
    .line 800
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    #@6f
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@72
    move-result-object v0

    #@73
    .line 801
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    #@76
    .line 802
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@79
    .line 793
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 806
    const v0, 0x101006a

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 805
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 810
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 809
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, -0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 814
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 241
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@a
    .line 274
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@c
    .line 299
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    #@e
    .line 304
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    #@10
    .line 314
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@12
    .line 319
    new-instance v2, Landroid/graphics/Rect;

    #@14
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@17
    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@19
    .line 325
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    #@1b
    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    #@1e
    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@20
    .line 330
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    #@22
    .line 335
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    #@24
    .line 340
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    #@26
    .line 345
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    #@28
    .line 350
    new-instance v2, Landroid/graphics/Rect;

    #@2a
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@2d
    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2f
    .line 355
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    #@31
    .line 403
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@33
    .line 434
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    #@35
    .line 477
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@37
    .line 497
    iput v4, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@39
    .line 499
    iput-object v7, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@3b
    .line 525
    iput v4, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    #@3d
    .line 528
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    #@3f
    .line 531
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    #@41
    .line 539
    iput-object v7, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@43
    .line 540
    iput-object v7, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@45
    .line 593
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    #@47
    .line 618
    const/high16 v2, 0x3f800000    # 1.0f

    #@49
    iput v2, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    #@4b
    .line 620
    new-array v2, v5, [Z

    #@4d
    iput-object v2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    #@4f
    .line 622
    new-array v2, v6, [I

    #@51
    iput-object v2, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@53
    .line 623
    new-array v2, v6, [I

    #@55
    iput-object v2, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    #@57
    .line 625
    new-array v2, v6, [F

    #@59
    iput-object v2, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    #@5b
    .line 631
    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@5d
    .line 641
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@5f
    .line 689
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    #@61
    .line 815
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    #@64
    .line 817
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@67
    move-result-object v2

    #@68
    iput-object v2, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    #@6a
    .line 820
    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    #@6c
    .line 819
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@6f
    move-result-object v0

    #@70
    .line 822
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@73
    move-result-object v1

    #@74
    .line 823
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@76
    .line 824
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@79
    .line 827
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@7c
    move-result v2

    #@7d
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    #@7f
    .line 829
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@82
    move-result v2

    #@83
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    #@86
    .line 832
    const/4 v2, 0x3

    #@87
    .line 831
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@8a
    move-result v2

    #@8b
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    #@8e
    .line 834
    const/4 v2, 0x4

    #@8f
    .line 833
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@92
    move-result v2

    #@93
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    #@96
    .line 836
    const/4 v2, 0x5

    #@97
    .line 835
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@9a
    move-result v2

    #@9b
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    #@9e
    .line 838
    const/4 v2, 0x6

    #@9f
    .line 837
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    #@a2
    move-result v2

    #@a3
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    #@a6
    .line 840
    const/16 v2, 0x9

    #@a8
    .line 839
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ab
    move-result v2

    #@ac
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    #@af
    .line 842
    const/4 v2, 0x7

    #@b0
    .line 841
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b3
    move-result v2

    #@b4
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    #@b7
    .line 845
    const/16 v2, 0x8

    #@b9
    .line 844
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@bc
    move-result v2

    #@bd
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    #@c0
    .line 847
    const/16 v2, 0xb

    #@c2
    .line 846
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c5
    move-result v2

    #@c6
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    #@c9
    .line 849
    const/16 v2, 0xa

    #@cb
    .line 848
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@ce
    move-result v2

    #@cf
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    #@d2
    .line 851
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@d5
    .line 813
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1914
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@8
    move-result-object v0

    #@9
    instance-of v0, v0, Landroid/widget/Filterable;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1915
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/widget/Filterable;

    #@13
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1914
    :goto_0
    return v0

    #@1b
    :cond_0
    move v0, v1

    #@1c
    .line 1915
    goto :goto_0

    #@1d
    :cond_1
    move v0, v1

    #@1e
    .line 1914
    goto :goto_0
.end method

.method private canScrollDown()Z
    .locals 6

    #@0
    .prologue
    .line 2232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v2

    #@4
    .line 2235
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@6
    add-int/2addr v3, v2

    #@7
    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@9
    if-ge v3, v4, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    .line 2238
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    #@e
    if-lez v2, :cond_0

    #@10
    .line 2239
    add-int/lit8 v3, v2, -0x1

    #@12
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 2240
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@19
    move-result v3

    #@1a
    iget v4, p0, Landroid/widget/AbsListView;->mBottom:I

    #@1c
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@1e
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@20
    sub-int/2addr v4, v5

    #@21
    if-le v3, v4, :cond_2

    #@23
    const/4 v0, 0x1

    #@24
    .line 2243
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    #@25
    .line 2235
    .end local v0    # "canScrollDown":Z
    :cond_1
    const/4 v0, 0x0

    #@26
    .restart local v0    # "canScrollDown":Z
    goto :goto_0

    #@27
    .line 2240
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    #@28
    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2217
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@3
    if-lez v2, :cond_1

    #@5
    const/4 v0, 0x1

    #@6
    .line 2220
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    #@8
    .line 2221
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@b
    move-result v2

    #@c
    if-lez v2, :cond_0

    #@e
    .line 2222
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 2223
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@18
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@1a
    if-ge v2, v3, :cond_2

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 2227
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    #@1e
    .line 2217
    .end local v0    # "canScrollUp":Z
    :cond_1
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "canScrollUp":Z
    goto :goto_0

    #@20
    .line 2223
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    #@21
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    #@0
    .prologue
    .line 4821
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 4822
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 4823
    new-instance v0, Landroid/widget/AbsListView$4;

    #@c
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    #@f
    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    #@11
    .line 4839
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    #@13
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 4820
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 1233
    .local v0, "childCount":I
    if-nez v0, :cond_0

    #@8
    return v1

    #@9
    .line 1234
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@b
    if-eq v0, v3, :cond_1

    #@d
    return v2

    #@e
    .line 1236
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@15
    move-result v3

    #@16
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@18
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1a
    if-lt v3, v4, :cond_3

    #@1c
    .line 1237
    add-int/lit8 v3, v0, -0x1

    #@1e
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@25
    move-result v3

    #@26
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@29
    move-result v4

    #@2a
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@2e
    sub-int/2addr v4, v5

    #@2f
    if-gt v3, v4, :cond_2

    #@31
    .line 1236
    :goto_0
    return v1

    #@32
    :cond_2
    move v1, v2

    #@33
    .line 1237
    goto :goto_0

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 1236
    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4813
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 4812
    :cond_0
    :goto_0
    return-void

    #@a
    .line 4813
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 4814
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    #@13
    .line 4815
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    #@16
    .line 4816
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    #@18
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    #@1a
    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x2

    #@3
    .line 5824
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 5825
    new-instance v0, Landroid/widget/PopupWindow;

    #@9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    #@10
    .line 5826
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@13
    .line 5827
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    #@16
    .line 5828
    const/4 v1, 0x2

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@1a
    .line 5829
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    #@21
    .line 5830
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@24
    .line 5831
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    #@27
    .line 5832
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2a
    .line 5833
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@2c
    .line 5834
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@33
    .line 5835
    const/4 v1, 0x1

    #@34
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    #@36
    .line 5837
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    #@38
    .line 5838
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@3a
    const v2, 0x10302e1

    #@3d
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    #@40
    .line 5823
    :goto_0
    return-void

    #@41
    .line 5840
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@43
    const v2, 0x10302e2

    #@46
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    #@49
    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    #@0
    .prologue
    .line 5481
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5482
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@6
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    #@9
    .line 5480
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2667
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2668
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@a
    .line 2669
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@f
    .line 2670
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@12
    .line 2666
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    #@0
    .prologue
    .line 6066
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6067
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@6
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    #@9
    .line 6068
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@b
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    #@e
    .line 6065
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    #@0
    .prologue
    .line 5527
    sparse-switch p2, :sswitch_data_0

    #@3
    .line 5560
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    #@8
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v6

    #@c
    .line 5529
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    #@e
    .line 5530
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    #@10
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@13
    move-result v7

    #@14
    div-int/lit8 v7, v7, 0x2

    #@16
    add-int v5, v6, v7

    #@18
    .line 5531
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@1a
    .line 5532
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@1c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@1f
    move-result v7

    #@20
    div-int/lit8 v7, v7, 0x2

    #@22
    add-int v1, v6, v7

    #@24
    .line 5564
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    #@26
    .line 5565
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    #@28
    .line 5566
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    #@2a
    mul-int v7, v2, v2

    #@2c
    add-int/2addr v6, v7

    #@2d
    return v6

    #@2e
    .line 5535
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    #@30
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@33
    move-result v7

    #@34
    div-int/lit8 v7, v7, 0x2

    #@36
    add-int v4, v6, v7

    #@38
    .line 5536
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    #@3a
    .line 5537
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    #@3c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@3f
    move-result v7

    #@40
    div-int/lit8 v7, v7, 0x2

    #@42
    add-int v0, v6, v7

    #@44
    .line 5538
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@46
    .restart local v1    # "dY":I
    goto :goto_0

    #@47
    .line 5541
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    #@49
    .line 5542
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    #@4b
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@4e
    move-result v7

    #@4f
    div-int/lit8 v7, v7, 0x2

    #@51
    add-int v5, v6, v7

    #@53
    .line 5543
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@55
    .line 5544
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@57
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@5a
    move-result v7

    #@5b
    div-int/lit8 v7, v7, 0x2

    #@5d
    add-int v1, v6, v7

    #@5f
    .line 5545
    .restart local v1    # "dY":I
    goto :goto_0

    #@60
    .line 5547
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    #@62
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@65
    move-result v7

    #@66
    div-int/lit8 v7, v7, 0x2

    #@68
    add-int v4, v6, v7

    #@6a
    .line 5548
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    #@6c
    .line 5549
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    #@6e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@71
    move-result v7

    #@72
    div-int/lit8 v7, v7, 0x2

    #@74
    add-int v0, v6, v7

    #@76
    .line 5550
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@78
    .restart local v1    # "dY":I
    goto :goto_0

    #@79
    .line 5554
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    #@7b
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    #@7e
    move-result v7

    #@7f
    div-int/lit8 v7, v7, 0x2

    #@81
    add-int v4, v6, v7

    #@83
    .line 5555
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    #@85
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    #@88
    move-result v7

    #@89
    div-int/lit8 v7, v7, 0x2

    #@8b
    add-int v5, v6, v7

    #@8d
    .line 5556
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    #@8f
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@92
    move-result v7

    #@93
    div-int/lit8 v7, v7, 0x2

    #@95
    add-int v0, v6, v7

    #@97
    .line 5557
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@9c
    move-result v7

    #@9d
    div-int/lit8 v7, v7, 0x2

    #@9f
    add-int v1, v6, v7

    #@a1
    .line 5558
    .restart local v1    # "dY":I
    goto :goto_0

    #@a2
    .line 5527
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2789
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 2791
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    #@8
    move-result-object v4

    #@9
    return-object v4

    #@a
    .line 2797
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    #@c
    aget v1, v4, v5

    #@e
    .line 2803
    .local v1, "enabledState":I
    const/4 v4, 0x1

    #@f
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    #@12
    move-result-object v3

    #@13
    .line 2805
    .local v3, "state":[I
    const/4 v0, -0x1

    #@14
    .line 2806
    .local v0, "enabledPos":I
    array-length v4, v3

    #@15
    add-int/lit8 v2, v4, -0x1

    #@17
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@19
    .line 2807
    aget v4, v3, v2

    #@1b
    if-ne v4, v1, :cond_3

    #@1d
    .line 2808
    move v0, v2

    #@1e
    .line 2814
    :cond_1
    if-ltz v0, :cond_2

    #@20
    .line 2815
    add-int/lit8 v4, v0, 0x1

    #@22
    .line 2816
    array-length v5, v3

    #@23
    sub-int/2addr v5, v0

    #@24
    add-int/lit8 v5, v5, -0x1

    #@26
    .line 2815
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@29
    .line 2819
    :cond_2
    return-object v3

    #@2a
    .line 2806
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@2c
    goto :goto_0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5845
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 5846
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@c
    move-result-object v0

    #@d
    .line 5848
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x10900f7

    #@10
    .line 5847
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/widget/EditText;

    #@16
    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@18
    .line 5852
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@1a
    const/16 v2, 0xb1

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    #@1f
    .line 5854
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@21
    const/high16 v2, 0x10000000

    #@23
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    #@26
    .line 5855
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@28
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@2b
    .line 5857
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@2d
    return-object v1
.end method

.method private initAbsListView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 856
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    #@5
    .line 857
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    #@8
    .line 858
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    #@b
    .line 859
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    #@e
    .line 860
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    #@11
    .line 862
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    #@13
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@16
    move-result-object v0

    #@17
    .line 863
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@1a
    move-result v1

    #@1b
    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    #@1d
    .line 864
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    #@23
    .line 865
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@26
    move-result v1

    #@27
    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    #@29
    .line 866
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    #@2f
    .line 867
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    #@32
    move-result v1

    #@33
    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    #@35
    .line 869
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@40
    move-result-object v1

    #@41
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    #@43
    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    #@45
    .line 854
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    #@0
    .prologue
    .line 4193
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4194
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 4192
    :goto_0
    return-void

    #@b
    .line 4196
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@10
    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    #@0
    .prologue
    .line 4201
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4202
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 4200
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    #@0
    .prologue
    .line 3566
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3567
    return-void

    #@5
    .line 3569
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    #@8
    move-result v1

    #@9
    .line 3570
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    #@b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@e
    move-result v4

    #@f
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@11
    sub-int v0, v4, v5

    #@13
    .line 3571
    .local v0, "bottom":I
    :goto_0
    if-eqz v1, :cond_2

    #@15
    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@17
    .line 3572
    .local v2, "left":I
    :goto_1
    if-eqz v1, :cond_3

    #@19
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    #@1c
    move-result v4

    #@1d
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    #@1f
    sub-int v3, v4, v5

    #@21
    .line 3573
    .local v3, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@23
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    #@26
    move-result v4

    #@27
    sub-int v4, v0, v4

    #@29
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    #@2c
    .line 3565
    return-void

    #@2d
    .line 3570
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@30
    move-result v0

    #@31
    .restart local v0    # "bottom":I
    goto :goto_0

    #@32
    .line 3571
    :cond_2
    const/4 v2, 0x0

    #@33
    .restart local v2    # "left":I
    goto :goto_1

    #@34
    .line 3572
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    #@37
    move-result v3

    #@38
    .restart local v3    # "right":I
    goto :goto_2
.end method

.method private invalidateTopGlow()V
    .locals 6

    #@0
    .prologue
    .line 3555
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 3556
    return-void

    #@5
    .line 3558
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    #@8
    move-result v0

    #@9
    .line 3559
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_1

    #@b
    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@d
    .line 3560
    .local v3, "top":I
    :goto_0
    if-eqz v0, :cond_2

    #@f
    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@11
    .line 3561
    .local v1, "left":I
    :goto_1
    if-eqz v0, :cond_3

    #@13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    #@16
    move-result v4

    #@17
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    #@19
    sub-int v2, v4, v5

    #@1b
    .line 3562
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1d
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    #@20
    move-result v4

    #@21
    add-int/2addr v4, v3

    #@22
    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    #@25
    .line 3554
    return-void

    #@26
    .line 3559
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    const/4 v3, 0x0

    #@27
    .restart local v3    # "top":I
    goto :goto_0

    #@28
    .line 3560
    :cond_2
    const/4 v1, 0x0

    #@29
    .restart local v1    # "left":I
    goto :goto_1

    #@2a
    .line 3561
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    #@2d
    move-result v2

    #@2e
    .restart local v2    # "right":I
    goto :goto_2
.end method

.method private isOwnerThread()Z
    .locals 2

    #@0
    .prologue
    .line 1346
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v3

    #@5
    const v4, 0xff00

    #@8
    and-int/2addr v3, v4

    #@9
    shr-int/lit8 v2, v3, 0x8

    #@b
    .line 4327
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@e
    move-result v1

    #@f
    .line 4328
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@11
    if-ne v1, v3, :cond_0

    #@13
    .line 4332
    if-nez v2, :cond_1

    #@15
    const/4 v0, 0x1

    #@16
    .line 4333
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@19
    move-result v3

    #@1a
    float-to-int v3, v3

    #@1b
    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    #@1d
    .line 4334
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@20
    move-result v3

    #@21
    float-to-int v3, v3

    #@22
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@24
    .line 4335
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@26
    .line 4336
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@29
    move-result v3

    #@2a
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@2c
    .line 4324
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@2d
    .line 4332
    :cond_1
    const/4 v0, 0x0

    #@2e
    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 4003
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 4016
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@9
    .line 4017
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@c
    .line 4018
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@e
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@10
    sub-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    .line 4019
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@17
    .line 4020
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    #@1a
    .line 4022
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    #@1d
    .line 4023
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@1f
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@22
    .line 4024
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    #@25
    .line 4027
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 4028
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2b
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@2e
    .line 4029
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@33
    .line 4031
    :cond_1
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@35
    .line 4002
    return-void

    #@36
    .line 4005
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 4006
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    #@3c
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@3f
    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@41
    .line 4008
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@43
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    #@46
    goto :goto_0

    #@47
    .line 4003
    nop

    #@48
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 3710
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@5
    move-result v4

    #@6
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@8
    .line 3712
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@a
    const/4 v5, 0x6

    #@b
    if-ne v4, v5, :cond_2

    #@d
    .line 3714
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@f
    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@12
    .line 3715
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 3716
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@18
    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@1b
    .line 3718
    :cond_0
    const/4 v4, 0x5

    #@1c
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@1e
    .line 3719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result v4

    #@22
    float-to-int v4, v4

    #@23
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    #@25
    .line 3720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@28
    move-result v4

    #@29
    float-to-int v4, v4

    #@2a
    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@2c
    .line 3721
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@2e
    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    #@30
    .line 3722
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@32
    .line 3723
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    #@34
    .line 3766
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@36
    if-nez v4, :cond_1

    #@38
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@3a
    const/4 v5, -0x1

    #@3b
    if-eq v4, v5, :cond_1

    #@3d
    .line 3767
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    #@40
    move-result v4

    #@41
    .line 3766
    if-eqz v4, :cond_1

    #@43
    .line 3768
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@45
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@48
    .line 3709
    :cond_1
    return-void

    #@49
    .line 3725
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@4c
    move-result v4

    #@4d
    float-to-int v2, v4

    #@4e
    .line 3726
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@51
    move-result v4

    #@52
    float-to-int v3, v4

    #@53
    .line 3727
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    #@56
    move-result v0

    #@57
    .line 3729
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@59
    if-nez v4, :cond_3

    #@5b
    .line 3730
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@5d
    const/4 v5, 0x4

    #@5e
    if-ne v4, v5, :cond_5

    #@60
    .line 3732
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    #@63
    .line 3733
    const/4 v4, 0x3

    #@64
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@66
    .line 3734
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@68
    .line 3735
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    #@6b
    move-result v0

    #@6c
    .line 3736
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@6e
    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    #@71
    .line 3754
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    #@73
    .line 3756
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@75
    sub-int v4, v0, v4

    #@77
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@7a
    move-result-object v1

    #@7b
    .line 3757
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@7e
    move-result v4

    #@7f
    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@81
    .line 3760
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    #@83
    .line 3761
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@85
    .line 3762
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@87
    .line 3763
    const/high16 v4, -0x80000000

    #@89
    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    #@8b
    goto :goto_0

    #@8c
    .line 3737
    :cond_5
    if-ltz v0, :cond_3

    #@8e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@91
    move-result-object v4

    #@92
    check-cast v4, Landroid/widget/ListAdapter;

    #@94
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@97
    move-result v4

    #@98
    if-eqz v4, :cond_3

    #@9a
    .line 3741
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@9c
    .line 3744
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@9e
    if-nez v4, :cond_6

    #@a0
    .line 3745
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    #@a2
    invoke-direct {v4, p0, v7}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V

    #@a5
    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@a7
    .line 3748
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@a9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@ac
    move-result v5

    #@ad
    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    #@af
    .line 3749
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@b1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@b4
    move-result v5

    #@b5
    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    #@b7
    .line 3750
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@b9
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@bc
    move-result v5

    #@bd
    int-to-long v6, v5

    #@be
    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@c1
    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3773
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@7
    move-result v2

    #@8
    .line 3774
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    #@9
    if-ne v2, v5, :cond_0

    #@b
    .line 3775
    const/4 v2, 0x0

    #@c
    .line 3776
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@f
    move-result v5

    #@10
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@12
    .line 3779
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@14
    if-eqz v5, :cond_1

    #@16
    .line 3782
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@19
    .line 3785
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@1c
    move-result v5

    #@1d
    float-to-int v4, v5

    #@1e
    .line 3787
    .local v4, "y":I
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@20
    packed-switch v5, :pswitch_data_0

    #@23
    .line 3772
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    #@24
    .line 3793
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@27
    move-result v5

    #@28
    float-to-int v5, v5

    #@29
    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_2

    #@2f
    .line 3798
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@31
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@33
    sub-int/2addr v5, v6

    #@34
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@37
    move-result-object v0

    #@38
    .line 3799
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@3b
    move-result v3

    #@3c
    .line 3800
    .local v3, "x":F
    int-to-float v5, v4

    #@3d
    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    #@3f
    int-to-float v6, v6

    #@40
    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    #@43
    move-result v5

    #@44
    if-nez v5, :cond_5

    #@46
    .line 3801
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@49
    .line 3802
    if-eqz v0, :cond_3

    #@4b
    .line 3803
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    #@4e
    .line 3805
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@50
    if-nez v5, :cond_4

    #@52
    .line 3806
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@54
    .line 3805
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@57
    .line 3807
    const/4 v5, 0x2

    #@58
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@5a
    .line 3808
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@5d
    goto :goto_0

    #@5e
    .line 3806
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@60
    goto :goto_1

    #@61
    .line 3809
    :cond_5
    if-eqz v0, :cond_2

    #@63
    .line 3811
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    #@65
    .line 3812
    .local v1, "point":[F
    aput v3, v1, v7

    #@67
    .line 3813
    int-to-float v5, v4

    #@68
    aput v5, v1, v8

    #@6a
    .line 3814
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    #@6d
    .line 3815
    aget v5, v1, v7

    #@6f
    aget v6, v1, v8

    #@71
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@74
    goto :goto_0

    #@75
    .line 3820
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@78
    move-result v5

    #@79
    float-to-int v5, v5

    #@7a
    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    #@7d
    goto :goto_0

    #@7e
    .line 3787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 3826
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@4
    move/from16 v18, v0

    #@6
    packed-switch v18, :pswitch_data_0

    #@9
    .line 3975
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    move/from16 v1, v18

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@12
    .line 3977
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@16
    move-object/from16 v18, v0

    #@18
    if-eqz v18, :cond_1

    #@1a
    .line 3978
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1e
    move-object/from16 v18, v0

    #@20
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    #@23
    .line 3979
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@27
    move-object/from16 v18, v0

    #@29
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    #@2c
    .line 3983
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    #@2f
    .line 3984
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@33
    move-object/from16 v18, v0

    #@35
    move-object/from16 v0, p0

    #@37
    move-object/from16 v1, v18

    #@39
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@3c
    .line 3985
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    #@3f
    .line 3987
    const/16 v18, -0x1

    #@41
    move/from16 v0, v18

    #@43
    move-object/from16 v1, p0

    #@45
    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    #@47
    .line 3996
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@4b
    move-object/from16 v18, v0

    #@4d
    if-eqz v18, :cond_2

    #@4f
    .line 3997
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@53
    move-object/from16 v18, v0

    #@55
    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$Span;->finish()V

    #@58
    .line 3998
    const/16 v18, 0x0

    #@5a
    move-object/from16 v0, v18

    #@5c
    move-object/from16 v1, p0

    #@5e
    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@60
    .line 3825
    :cond_2
    return-void

    #@61
    .line 3830
    :pswitch_1
    move-object/from16 v0, p0

    #@63
    iget v14, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@65
    .line 3831
    .local v14, "motionPosition":I
    move-object/from16 v0, p0

    #@67
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@69
    move/from16 v18, v0

    #@6b
    sub-int v18, v14, v18

    #@6d
    move-object/from16 v0, p0

    #@6f
    move/from16 v1, v18

    #@71
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@74
    move-result-object v4

    #@75
    .line 3832
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_4

    #@77
    .line 3833
    move-object/from16 v0, p0

    #@79
    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@7b
    move/from16 v18, v0

    #@7d
    if-eqz v18, :cond_3

    #@7f
    .line 3834
    const/16 v18, 0x0

    #@81
    move/from16 v0, v18

    #@83
    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    #@86
    .line 3837
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@89
    move-result v17

    #@8a
    .line 3838
    .local v17, "x":F
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@8e
    move-object/from16 v18, v0

    #@90
    move-object/from16 v0, v18

    #@92
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@94
    move/from16 v18, v0

    #@96
    move/from16 v0, v18

    #@98
    int-to-float v0, v0

    #@99
    move/from16 v18, v0

    #@9b
    cmpl-float v18, v17, v18

    #@9d
    if-lez v18, :cond_5

    #@9f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    #@a2
    move-result v18

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@a7
    move-object/from16 v19, v0

    #@a9
    move-object/from16 v0, v19

    #@ab
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@ad
    move/from16 v19, v0

    #@af
    sub-int v18, v18, v19

    #@b1
    move/from16 v0, v18

    #@b3
    int-to-float v0, v0

    #@b4
    move/from16 v18, v0

    #@b6
    cmpg-float v18, v17, v18

    #@b8
    if-gez v18, :cond_5

    #@ba
    const/4 v11, 0x1

    #@bb
    .line 3839
    .local v11, "inList":Z
    :goto_1
    if-eqz v11, :cond_4

    #@bd
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    #@c0
    move-result v18

    #@c1
    if-eqz v18, :cond_6

    #@c3
    .line 3895
    .end local v11    # "inList":Z
    .end local v17    # "x":F
    :cond_4
    :goto_2
    const/16 v18, -0x1

    #@c5
    move/from16 v0, v18

    #@c7
    move-object/from16 v1, p0

    #@c9
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@cb
    .line 3896
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@ce
    goto/16 :goto_0

    #@d0
    .line 3838
    .restart local v17    # "x":F
    :cond_5
    const/4 v11, 0x0

    #@d1
    .restart local v11    # "inList":Z
    goto :goto_1

    #@d2
    .line 3840
    :cond_6
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@d6
    move-object/from16 v18, v0

    #@d8
    if-nez v18, :cond_7

    #@da
    .line 3841
    new-instance v18, Landroid/widget/AbsListView$PerformClick;

    #@dc
    const/16 v19, 0x0

    #@de
    move-object/from16 v0, v18

    #@e0
    move-object/from16 v1, p0

    #@e2
    move-object/from16 v2, v19

    #@e4
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V

    #@e7
    move-object/from16 v0, v18

    #@e9
    move-object/from16 v1, p0

    #@eb
    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@ed
    .line 3844
    :cond_7
    move-object/from16 v0, p0

    #@ef
    iget-object v15, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@f1
    .line 3845
    .local v15, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v14, v15, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    #@f3
    .line 3846
    invoke-virtual {v15}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    #@f6
    .line 3848
    move-object/from16 v0, p0

    #@f8
    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@fa
    .line 3850
    move-object/from16 v0, p0

    #@fc
    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@fe
    move/from16 v18, v0

    #@100
    if-eqz v18, :cond_8

    #@102
    move-object/from16 v0, p0

    #@104
    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@106
    move/from16 v18, v0

    #@108
    const/16 v19, 0x1

    #@10a
    move/from16 v0, v18

    #@10c
    move/from16 v1, v19

    #@10e
    if-ne v0, v1, :cond_e

    #@110
    .line 3851
    :cond_8
    move-object/from16 v0, p0

    #@112
    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@114
    move/from16 v18, v0

    #@116
    if-nez v18, :cond_c

    #@118
    .line 3852
    move-object/from16 v0, p0

    #@11a
    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@11c
    move-object/from16 v18, v0

    #@11e
    .line 3851
    :goto_3
    move-object/from16 v0, p0

    #@120
    move-object/from16 v1, v18

    #@122
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@125
    .line 3853
    const/16 v18, 0x0

    #@127
    move/from16 v0, v18

    #@129
    move-object/from16 v1, p0

    #@12b
    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    #@12d
    .line 3854
    move-object/from16 v0, p0

    #@12f
    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@131
    move/from16 v18, v0

    #@133
    if-nez v18, :cond_d

    #@135
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@139
    move-object/from16 v18, v0

    #@13b
    move-object/from16 v0, v18

    #@13d
    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@140
    move-result v18

    #@141
    if-eqz v18, :cond_d

    #@143
    .line 3855
    const/16 v18, 0x1

    #@145
    move/from16 v0, v18

    #@147
    move-object/from16 v1, p0

    #@149
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@14b
    .line 3856
    move-object/from16 v0, p0

    #@14d
    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@14f
    move/from16 v18, v0

    #@151
    move-object/from16 v0, p0

    #@153
    move/from16 v1, v18

    #@155
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    #@158
    .line 3857
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@15b
    .line 3858
    const/16 v18, 0x1

    #@15d
    move/from16 v0, v18

    #@15f
    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    #@162
    .line 3859
    move-object/from16 v0, p0

    #@164
    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@166
    move/from16 v18, v0

    #@168
    move-object/from16 v0, p0

    #@16a
    move/from16 v1, v18

    #@16c
    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    #@16f
    .line 3860
    const/16 v18, 0x1

    #@171
    move-object/from16 v0, p0

    #@173
    move/from16 v1, v18

    #@175
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@178
    .line 3861
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@17c
    move-object/from16 v18, v0

    #@17e
    if-eqz v18, :cond_a

    #@180
    .line 3862
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@184
    move-object/from16 v18, v0

    #@186
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@189
    move-result-object v8

    #@18a
    .line 3863
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    #@18c
    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    #@18e
    move/from16 v18, v0

    #@190
    if-eqz v18, :cond_9

    #@192
    .line 3864
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    #@194
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    #@197
    .line 3866
    :cond_9
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@19b
    move-object/from16 v18, v0

    #@19d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@1a0
    move-result v19

    #@1a1
    move-object/from16 v0, v18

    #@1a3
    move/from16 v1, v17

    #@1a5
    move/from16 v2, v19

    #@1a7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@1aa
    .line 3868
    :cond_a
    move-object/from16 v0, p0

    #@1ac
    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@1ae
    move-object/from16 v18, v0

    #@1b0
    if-eqz v18, :cond_b

    #@1b2
    .line 3869
    move-object/from16 v0, p0

    #@1b4
    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@1b6
    move-object/from16 v18, v0

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    move-object/from16 v1, v18

    #@1bc
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1bf
    .line 3871
    :cond_b
    new-instance v18, Landroid/widget/AbsListView$3;

    #@1c1
    move-object/from16 v0, v18

    #@1c3
    move-object/from16 v1, p0

    #@1c5
    invoke-direct {v0, v1, v4, v15}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    #@1c8
    move-object/from16 v0, v18

    #@1ca
    move-object/from16 v1, p0

    #@1cc
    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@1ce
    .line 3883
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@1d2
    move-object/from16 v18, v0

    #@1d4
    .line 3884
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    #@1d7
    move-result v19

    #@1d8
    move/from16 v0, v19

    #@1da
    int-to-long v0, v0

    #@1db
    move-wide/from16 v20, v0

    #@1dd
    .line 3883
    move-object/from16 v0, p0

    #@1df
    move-object/from16 v1, v18

    #@1e1
    move-wide/from16 v2, v20

    #@1e3
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1e6
    .line 3889
    :goto_4
    return-void

    #@1e7
    .line 3852
    :cond_c
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@1eb
    move-object/from16 v18, v0

    #@1ed
    goto/16 :goto_3

    #@1ef
    .line 3886
    :cond_d
    const/16 v18, -0x1

    #@1f1
    move/from16 v0, v18

    #@1f3
    move-object/from16 v1, p0

    #@1f5
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@1f7
    .line 3887
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@1fa
    goto :goto_4

    #@1fb
    .line 3890
    :cond_e
    move-object/from16 v0, p0

    #@1fd
    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@1ff
    move/from16 v18, v0

    #@201
    if-nez v18, :cond_4

    #@203
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@207
    move-object/from16 v18, v0

    #@209
    move-object/from16 v0, v18

    #@20b
    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@20e
    move-result v18

    #@20f
    if-eqz v18, :cond_4

    #@211
    .line 3891
    invoke-virtual {v15}, Landroid/widget/AbsListView$PerformClick;->run()V

    #@214
    goto/16 :goto_2

    #@216
    .line 3899
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "inList":Z
    .end local v14    # "motionPosition":I
    .end local v15    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v17    # "x":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@219
    move-result v5

    #@21a
    .line 3900
    .local v5, "childCount":I
    if-lez v5, :cond_18

    #@21c
    .line 3901
    const/16 v18, 0x0

    #@21e
    move-object/from16 v0, p0

    #@220
    move/from16 v1, v18

    #@222
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@225
    move-result-object v18

    #@226
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    #@229
    move-result v9

    #@22a
    .line 3902
    .local v9, "firstChildTop":I
    add-int/lit8 v18, v5, -0x1

    #@22c
    move-object/from16 v0, p0

    #@22e
    move/from16 v1, v18

    #@230
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@233
    move-result-object v18

    #@234
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    #@237
    move-result v13

    #@238
    .line 3903
    .local v13, "lastChildBottom":I
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@23c
    move-object/from16 v18, v0

    #@23e
    move-object/from16 v0, v18

    #@240
    iget v7, v0, Landroid/graphics/Rect;->top:I

    #@242
    .line 3904
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@245
    move-result v18

    #@246
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@24a
    move-object/from16 v19, v0

    #@24c
    move-object/from16 v0, v19

    #@24e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@250
    move/from16 v19, v0

    #@252
    sub-int v6, v18, v19

    #@254
    .line 3905
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    #@256
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@258
    move/from16 v18, v0

    #@25a
    if-nez v18, :cond_f

    #@25c
    if-lt v9, v7, :cond_f

    #@25e
    .line 3906
    move-object/from16 v0, p0

    #@260
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@262
    move/from16 v18, v0

    #@264
    add-int v18, v18, v5

    #@266
    move-object/from16 v0, p0

    #@268
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@26a
    move/from16 v19, v0

    #@26c
    move/from16 v0, v18

    #@26e
    move/from16 v1, v19

    #@270
    if-ge v0, v1, :cond_f

    #@272
    .line 3907
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@275
    move-result v18

    #@276
    sub-int v18, v18, v6

    #@278
    move/from16 v0, v18

    #@27a
    if-gt v13, v0, :cond_f

    #@27c
    .line 3908
    const/16 v18, -0x1

    #@27e
    move/from16 v0, v18

    #@280
    move-object/from16 v1, p0

    #@282
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@284
    .line 3909
    const/16 v18, 0x0

    #@286
    move-object/from16 v0, p0

    #@288
    move/from16 v1, v18

    #@28a
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@28d
    goto/16 :goto_0

    #@28f
    .line 3911
    :cond_f
    move-object/from16 v0, p0

    #@291
    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@293
    move-object/from16 v16, v0

    #@295
    .line 3912
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@297
    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    #@299
    move/from16 v18, v0

    #@29b
    move/from16 v0, v18

    #@29d
    int-to-float v0, v0

    #@29e
    move/from16 v18, v0

    #@2a0
    const/16 v19, 0x3e8

    #@2a2
    move-object/from16 v0, v16

    #@2a4
    move/from16 v1, v19

    #@2a6
    move/from16 v2, v18

    #@2a8
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@2ab
    .line 3915
    move-object/from16 v0, p0

    #@2ad
    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@2af
    move/from16 v18, v0

    #@2b1
    move-object/from16 v0, v16

    #@2b3
    move/from16 v1, v18

    #@2b5
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@2b8
    move-result v18

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    #@2bd
    move/from16 v19, v0

    #@2bf
    mul-float v18, v18, v19

    #@2c1
    .line 3914
    move/from16 v0, v18

    #@2c3
    float-to-int v12, v0

    #@2c4
    .line 3920
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@2c7
    move-result v18

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    #@2cc
    move/from16 v19, v0

    #@2ce
    move/from16 v0, v18

    #@2d0
    move/from16 v1, v19

    #@2d2
    if-le v0, v1, :cond_13

    #@2d4
    const/4 v10, 0x1

    #@2d5
    .line 3921
    .local v10, "flingVelocity":Z
    :goto_5
    if-eqz v10, :cond_15

    #@2d7
    .line 3922
    move-object/from16 v0, p0

    #@2d9
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2db
    move/from16 v18, v0

    #@2dd
    if-nez v18, :cond_10

    #@2df
    .line 3923
    move-object/from16 v0, p0

    #@2e1
    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    #@2e3
    move/from16 v18, v0

    #@2e5
    sub-int v18, v7, v18

    #@2e7
    move/from16 v0, v18

    #@2e9
    if-eq v9, v0, :cond_15

    #@2eb
    .line 3924
    :cond_10
    move-object/from16 v0, p0

    #@2ed
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2ef
    move/from16 v18, v0

    #@2f1
    add-int v18, v18, v5

    #@2f3
    move-object/from16 v0, p0

    #@2f5
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@2f7
    move/from16 v19, v0

    #@2f9
    move/from16 v0, v18

    #@2fb
    move/from16 v1, v19

    #@2fd
    if-ne v0, v1, :cond_11

    #@2ff
    .line 3925
    move-object/from16 v0, p0

    #@301
    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    #@303
    move/from16 v18, v0

    #@305
    add-int v18, v18, v6

    #@307
    move/from16 v0, v18

    #@309
    if-eq v13, v0, :cond_15

    #@30b
    .line 3926
    :cond_11
    const/16 v18, 0x0

    #@30d
    neg-int v0, v12

    #@30e
    move/from16 v19, v0

    #@310
    move/from16 v0, v19

    #@312
    int-to-float v0, v0

    #@313
    move/from16 v19, v0

    #@315
    move-object/from16 v0, p0

    #@317
    move/from16 v1, v18

    #@319
    move/from16 v2, v19

    #@31b
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    #@31e
    move-result v18

    #@31f
    if-nez v18, :cond_14

    #@321
    .line 3927
    move-object/from16 v0, p0

    #@323
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@325
    move-object/from16 v18, v0

    #@327
    if-nez v18, :cond_12

    #@329
    .line 3928
    new-instance v18, Landroid/widget/AbsListView$FlingRunnable;

    #@32b
    move-object/from16 v0, v18

    #@32d
    move-object/from16 v1, p0

    #@32f
    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@332
    move-object/from16 v0, v18

    #@334
    move-object/from16 v1, p0

    #@336
    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@338
    .line 3930
    :cond_12
    const/16 v18, 0x2

    #@33a
    move-object/from16 v0, p0

    #@33c
    move/from16 v1, v18

    #@33e
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@341
    .line 3931
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@345
    move-object/from16 v18, v0

    #@347
    neg-int v0, v12

    #@348
    move/from16 v19, v0

    #@34a
    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    #@34d
    .line 3932
    const/16 v18, 0x0

    #@34f
    neg-int v0, v12

    #@350
    move/from16 v19, v0

    #@352
    move/from16 v0, v19

    #@354
    int-to-float v0, v0

    #@355
    move/from16 v19, v0

    #@357
    const/16 v20, 0x1

    #@359
    move-object/from16 v0, p0

    #@35b
    move/from16 v1, v18

    #@35d
    move/from16 v2, v19

    #@35f
    move/from16 v3, v20

    #@361
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    #@364
    goto/16 :goto_0

    #@366
    .line 3920
    .end local v10    # "flingVelocity":Z
    :cond_13
    const/4 v10, 0x0

    #@367
    .restart local v10    # "flingVelocity":Z
    goto/16 :goto_5

    #@369
    .line 3934
    :cond_14
    const/16 v18, -0x1

    #@36b
    move/from16 v0, v18

    #@36d
    move-object/from16 v1, p0

    #@36f
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@371
    .line 3935
    const/16 v18, 0x0

    #@373
    move-object/from16 v0, p0

    #@375
    move/from16 v1, v18

    #@377
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@37a
    goto/16 :goto_0

    #@37c
    .line 3938
    :cond_15
    const/16 v18, -0x1

    #@37e
    move/from16 v0, v18

    #@380
    move-object/from16 v1, p0

    #@382
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@384
    .line 3939
    const/16 v18, 0x0

    #@386
    move-object/from16 v0, p0

    #@388
    move/from16 v1, v18

    #@38a
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@38d
    .line 3940
    move-object/from16 v0, p0

    #@38f
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@391
    move-object/from16 v18, v0

    #@393
    if-eqz v18, :cond_16

    #@395
    .line 3941
    move-object/from16 v0, p0

    #@397
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@399
    move-object/from16 v18, v0

    #@39b
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@39e
    .line 3943
    :cond_16
    move-object/from16 v0, p0

    #@3a0
    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@3a2
    move-object/from16 v18, v0

    #@3a4
    if-eqz v18, :cond_17

    #@3a6
    .line 3944
    move-object/from16 v0, p0

    #@3a8
    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@3aa
    move-object/from16 v18, v0

    #@3ac
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@3af
    .line 3946
    :cond_17
    if-eqz v10, :cond_0

    #@3b1
    const/16 v18, 0x0

    #@3b3
    neg-int v0, v12

    #@3b4
    move/from16 v19, v0

    #@3b6
    move/from16 v0, v19

    #@3b8
    int-to-float v0, v0

    #@3b9
    move/from16 v19, v0

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    move/from16 v1, v18

    #@3bf
    move/from16 v2, v19

    #@3c1
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    #@3c4
    move-result v18

    #@3c5
    if-nez v18, :cond_0

    #@3c7
    .line 3947
    const/16 v18, 0x0

    #@3c9
    neg-int v0, v12

    #@3ca
    move/from16 v19, v0

    #@3cc
    move/from16 v0, v19

    #@3ce
    int-to-float v0, v0

    #@3cf
    move/from16 v19, v0

    #@3d1
    const/16 v20, 0x0

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    move/from16 v1, v18

    #@3d7
    move/from16 v2, v19

    #@3d9
    move/from16 v3, v20

    #@3db
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    #@3de
    goto/16 :goto_0

    #@3e0
    .line 3952
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v10    # "flingVelocity":Z
    .end local v12    # "initialVelocity":I
    .end local v13    # "lastChildBottom":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_18
    const/16 v18, -0x1

    #@3e2
    move/from16 v0, v18

    #@3e4
    move-object/from16 v1, p0

    #@3e6
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@3e8
    .line 3953
    const/16 v18, 0x0

    #@3ea
    move-object/from16 v0, p0

    #@3ec
    move/from16 v1, v18

    #@3ee
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@3f1
    goto/16 :goto_0

    #@3f3
    .line 3958
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    #@3f5
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@3f7
    move-object/from16 v18, v0

    #@3f9
    if-nez v18, :cond_19

    #@3fb
    .line 3959
    new-instance v18, Landroid/widget/AbsListView$FlingRunnable;

    #@3fd
    move-object/from16 v0, v18

    #@3ff
    move-object/from16 v1, p0

    #@401
    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@404
    move-object/from16 v0, v18

    #@406
    move-object/from16 v1, p0

    #@408
    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@40a
    .line 3961
    :cond_19
    move-object/from16 v0, p0

    #@40c
    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@40e
    move-object/from16 v16, v0

    #@410
    .line 3962
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@412
    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    #@414
    move/from16 v18, v0

    #@416
    move/from16 v0, v18

    #@418
    int-to-float v0, v0

    #@419
    move/from16 v18, v0

    #@41b
    const/16 v19, 0x3e8

    #@41d
    move-object/from16 v0, v16

    #@41f
    move/from16 v1, v19

    #@421
    move/from16 v2, v18

    #@423
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@426
    .line 3963
    move-object/from16 v0, p0

    #@428
    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@42a
    move/from16 v18, v0

    #@42c
    move-object/from16 v0, v16

    #@42e
    move/from16 v1, v18

    #@430
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@433
    move-result v18

    #@434
    move/from16 v0, v18

    #@436
    float-to-int v12, v0

    #@437
    .line 3965
    .restart local v12    # "initialVelocity":I
    const/16 v18, 0x2

    #@439
    move-object/from16 v0, p0

    #@43b
    move/from16 v1, v18

    #@43d
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@440
    .line 3966
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@443
    move-result v18

    #@444
    move-object/from16 v0, p0

    #@446
    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    #@448
    move/from16 v19, v0

    #@44a
    move/from16 v0, v18

    #@44c
    move/from16 v1, v19

    #@44e
    if-le v0, v1, :cond_1a

    #@450
    .line 3967
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@454
    move-object/from16 v18, v0

    #@456
    neg-int v0, v12

    #@457
    move/from16 v19, v0

    #@459
    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    #@45c
    goto/16 :goto_0

    #@45e
    .line 3969
    :cond_1a
    move-object/from16 v0, p0

    #@460
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@462
    move-object/from16 v18, v0

    #@464
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    #@467
    goto/16 :goto_0

    #@469
    .line 3826
    nop

    #@46a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3097
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@3
    const/4 v5, 0x3

    #@4
    if-ne v4, v5, :cond_0

    #@6
    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@8
    if-nez v4, :cond_0

    #@a
    .line 3098
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@c
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@e
    sub-int/2addr v4, v5

    #@f
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 3099
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@15
    .line 3100
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@17
    .line 3101
    .local v1, "longPressPosition":I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@19
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@1b
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@1e
    move-result-wide v2

    #@1f
    .line 3102
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 3103
    const/4 v4, -0x1

    #@26
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@28
    .line 3104
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@2b
    .line 3105
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    #@2e
    .line 3106
    const/4 v4, 0x1

    #@2f
    return v4

    #@30
    .line 3110
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v6
.end method

.method private positionPopup()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 5500
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9
    move-result-object v3

    #@a
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    #@c
    .line 5501
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    #@d
    new-array v2, v3, [I

    #@f
    .line 5502
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    #@12
    .line 5505
    const/4 v3, 0x1

    #@13
    aget v3, v2, v3

    #@15
    sub-int v3, v1, v3

    #@17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@1a
    move-result v4

    #@1b
    sub-int/2addr v3, v4

    #@1c
    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    #@1e
    const/high16 v5, 0x41a00000    # 20.0f

    #@20
    mul-float/2addr v4, v5

    #@21
    float-to-int v4, v4

    #@22
    add-int v0, v3, v4

    #@24
    .line 5506
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@26
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 5507
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@2e
    .line 5508
    aget v4, v2, v7

    #@30
    .line 5507
    const/16 v5, 0x51

    #@32
    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    #@35
    .line 5499
    :goto_0
    return-void

    #@36
    .line 5510
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@38
    aget v4, v2, v7

    #@3a
    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    #@3d
    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2527
    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@3
    if-eq p1, v4, :cond_7

    #@5
    const/4 v1, 0x1

    #@6
    .line 2528
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    #@7
    if-eq p1, v4, :cond_0

    #@9
    .line 2529
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@b
    .line 2532
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@d
    .line 2533
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@10
    move-result v4

    #@11
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@14
    move-result v5

    #@15
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@18
    move-result v6

    #@19
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v7

    #@1d
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@20
    .line 2534
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    #@22
    if-eqz v4, :cond_1

    #@24
    move-object v4, p2

    #@25
    .line 2535
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    #@27
    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    #@2a
    .line 2539
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@2c
    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    #@2e
    sub-int/2addr v4, v5

    #@2f
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@31
    .line 2540
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@33
    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    #@35
    sub-int/2addr v4, v5

    #@36
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@38
    .line 2541
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@3a
    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    #@3c
    add-int/2addr v4, v5

    #@3d
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@3f
    .line 2542
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@41
    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    #@43
    add-int/2addr v4, v5

    #@44
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@46
    .line 2545
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    #@49
    move-result v0

    #@4a
    .line 2546
    .local v0, "isChildViewEnabled":Z
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    #@4c
    if-eq v4, v0, :cond_2

    #@4e
    .line 2547
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    #@50
    .line 2551
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@52
    .line 2552
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    #@54
    .line 2553
    if-eqz v1, :cond_3

    #@56
    .line 2556
    invoke-virtual {v2, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@59
    .line 2557
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    #@5b
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@5e
    .line 2559
    :cond_3
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@61
    .line 2560
    if-eqz v1, :cond_5

    #@63
    .line 2561
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    #@66
    move-result v4

    #@67
    if-nez v4, :cond_4

    #@69
    .line 2562
    const/4 v4, 0x1

    #@6a
    invoke-virtual {v2, v4, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@6d
    .line 2564
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@70
    .line 2566
    :cond_5
    if-eqz p3, :cond_6

    #@72
    .line 2567
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@75
    .line 2526
    :cond_6
    return-void

    #@76
    .line 2527
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    #@77
    .restart local v1    # "positionChanged":Z
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4207
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 4208
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@a
    .line 4209
    iput-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    .line 4206
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 3360
    move-object/from16 v0, p0

    #@2
    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    #@4
    sub-int v33, p2, v3

    #@6
    .line 3361
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    #@8
    .line 3362
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    #@a
    .line 3363
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    #@c
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@e
    const/high16 v4, -0x80000000

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 3364
    move-object/from16 v0, p0

    #@14
    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@16
    sub-int v33, v33, v3

    #@18
    .line 3366
    :cond_0
    move-object/from16 v0, p0

    #@1a
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@1c
    const/high16 v4, -0x80000000

    #@1e
    if-eq v3, v4, :cond_9

    #@20
    move-object/from16 v0, p0

    #@22
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@24
    sub-int v3, v3, p2

    #@26
    .line 3367
    :goto_0
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@2e
    .line 3366
    const/4 v6, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 3368
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    #@3b
    const/4 v4, 0x1

    #@3c
    aget v3, v3, v4

    #@3e
    add-int v33, v33, v3

    #@40
    .line 3369
    move-object/from16 v0, p0

    #@42
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@44
    const/4 v4, 0x1

    #@45
    aget v3, v3, v4

    #@47
    neg-int v0, v3

    #@48
    move/from16 v35, v0

    #@4a
    .line 3370
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    #@4e
    const/4 v4, 0x1

    #@4f
    aget v34, v3, v4

    #@51
    .line 3371
    if-eqz p3, :cond_1

    #@53
    .line 3372
    const/4 v3, 0x0

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@58
    const/4 v5, 0x1

    #@59
    aget v4, v4, v5

    #@5b
    int-to-float v4, v4

    #@5c
    move-object/from16 v0, p3

    #@5e
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@61
    .line 3373
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@69
    const/4 v5, 0x1

    #@6a
    aget v4, v4, v5

    #@6c
    add-int/2addr v3, v4

    #@6d
    move-object/from16 v0, p0

    #@6f
    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@71
    .line 3376
    :cond_1
    move/from16 v20, v33

    #@73
    .line 3378
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    #@75
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@77
    const/high16 v4, -0x80000000

    #@79
    if-eq v3, v4, :cond_a

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@7f
    sub-int v3, p2, v3

    #@81
    add-int v21, v3, v34

    #@83
    .line 3379
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    #@85
    .line 3381
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    #@87
    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@89
    const/4 v4, 0x3

    #@8a
    if-ne v3, v4, :cond_13

    #@8c
    .line 3389
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@90
    if-nez v3, :cond_2

    #@92
    .line 3391
    const-string/jumbo v3, "AbsListView-scroll"

    #@95
    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    #@98
    move-result-object v3

    #@99
    move-object/from16 v0, p0

    #@9b
    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@9d
    .line 3394
    :cond_2
    move-object/from16 v0, p0

    #@9f
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@a1
    move/from16 v0, p2

    #@a3
    if-eq v0, v3, :cond_8

    #@a5
    .line 3398
    move-object/from16 v0, p0

    #@a7
    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@a9
    const/high16 v4, 0x80000

    #@ab
    and-int/2addr v3, v4

    #@ac
    if-nez v3, :cond_3

    #@ae
    .line 3399
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    #@b1
    move-result v3

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    #@b6
    if-le v3, v4, :cond_3

    #@b8
    .line 3400
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    #@bb
    move-result-object v32

    #@bc
    .line 3401
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    #@be
    .line 3402
    const/4 v3, 0x1

    #@bf
    move-object/from16 v0, v32

    #@c1
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@c4
    .line 3407
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    #@c6
    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@c8
    if-ltz v3, :cond_b

    #@ca
    .line 3408
    move-object/from16 v0, p0

    #@cc
    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@d2
    sub-int v23, v3, v4

    #@d4
    .line 3415
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    #@d6
    .line 3416
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    #@d8
    move/from16 v1, v23

    #@da
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@dd
    move-result-object v25

    #@de
    .line 3417
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    #@e0
    .line 3418
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    #@e3
    move-result v26

    #@e4
    .line 3422
    :cond_4
    const/16 v18, 0x0

    #@e6
    .line 3423
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    #@e8
    .line 3424
    move-object/from16 v0, p0

    #@ea
    move/from16 v1, v20

    #@ec
    move/from16 v2, v21

    #@ee
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@f1
    move-result v18

    #@f2
    .line 3428
    .end local v18    # "atEdge":Z
    :cond_5
    move-object/from16 v0, p0

    #@f4
    move/from16 v1, v23

    #@f6
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@f9
    move-result-object v25

    #@fa
    .line 3429
    if-eqz v25, :cond_7

    #@fc
    .line 3432
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    #@ff
    move-result v27

    #@100
    .line 3433
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_6

    #@102
    .line 3436
    move/from16 v0, v21

    #@104
    neg-int v3, v0

    #@105
    .line 3437
    sub-int v4, v27, v26

    #@107
    .line 3436
    sub-int v7, v3, v4

    #@109
    .line 3438
    .local v7, "overscroll":I
    sub-int v5, v7, v21

    #@10b
    .line 3439
    move-object/from16 v0, p0

    #@10d
    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@10f
    .line 3438
    const/4 v4, 0x0

    #@110
    const/4 v6, 0x0

    #@111
    move-object/from16 v3, p0

    #@113
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    #@116
    move-result v3

    #@117
    if-eqz v3, :cond_c

    #@119
    .line 3440
    move-object/from16 v0, p0

    #@11b
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@11d
    const/4 v4, 0x1

    #@11e
    aget v3, v3, v4

    #@120
    rsub-int/lit8 v22, v3, 0x0

    #@122
    .line 3441
    if-eqz p3, :cond_6

    #@124
    .line 3442
    const/4 v3, 0x0

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@129
    const/4 v5, 0x1

    #@12a
    aget v4, v4, v5

    #@12c
    int-to-float v4, v4

    #@12d
    move-object/from16 v0, p3

    #@12f
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@132
    .line 3443
    move-object/from16 v0, p0

    #@134
    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@136
    move-object/from16 v0, p0

    #@138
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    #@13a
    const/4 v5, 0x1

    #@13b
    aget v4, v4, v5

    #@13d
    add-int/2addr v3, v4

    #@13e
    move-object/from16 v0, p0

    #@140
    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@142
    .line 3480
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p2, v22

    #@144
    add-int v3, v3, v35

    #@146
    move-object/from16 v0, p0

    #@148
    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    #@14a
    .line 3482
    .end local v27    # "motionViewRealTop":I
    :cond_7
    add-int v3, p2, v22

    #@14c
    add-int v3, v3, v35

    #@14e
    move-object/from16 v0, p0

    #@150
    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@152
    .line 3359
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_8
    :goto_4
    return-void

    #@153
    .line 3366
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_9
    move/from16 v0, v33

    #@155
    neg-int v3, v0

    #@156
    goto/16 :goto_0

    #@158
    .line 3378
    .restart local v20    # "deltaY":I
    :cond_a
    move/from16 v21, v20

    #@15a
    .restart local v21    # "incrementalDeltaY":I
    goto/16 :goto_1

    #@15c
    .line 3412
    .restart local v22    # "lastYCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@15f
    move-result v3

    #@160
    div-int/lit8 v23, v3, 0x2

    #@162
    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    #@164
    .line 3447
    .restart local v7    # "overscroll":I
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_c
    move-object/from16 v0, p0

    #@166
    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    #@168
    move-object/from16 v0, p0

    #@16a
    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    #@16c
    .line 3446
    const/4 v6, 0x0

    #@16d
    .line 3447
    const/4 v8, 0x0

    #@16e
    const/4 v10, 0x0

    #@16f
    const/4 v11, 0x0

    #@170
    const/4 v12, 0x0

    #@171
    const/4 v14, 0x1

    #@172
    move-object/from16 v5, p0

    #@174
    .line 3446
    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    #@177
    move-result v19

    #@178
    .line 3449
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    #@17a
    move-object/from16 v0, p0

    #@17c
    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17e
    if-eqz v3, :cond_d

    #@180
    .line 3451
    move-object/from16 v0, p0

    #@182
    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@184
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    #@187
    .line 3454
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    #@18a
    move-result v31

    #@18b
    .line 3455
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    #@18d
    .line 3456
    const/4 v3, 0x1

    #@18e
    move/from16 v0, v31

    #@190
    if-ne v0, v3, :cond_6

    #@192
    .line 3457
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    #@195
    move-result v3

    #@196
    if-nez v3, :cond_6

    #@198
    .line 3458
    :cond_e
    if-nez v19, :cond_f

    #@19a
    .line 3459
    const/4 v3, 0x0

    #@19b
    move-object/from16 v0, p0

    #@19d
    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    #@19f
    .line 3460
    const/4 v3, 0x5

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@1a4
    .line 3462
    :cond_f
    if-lez v21, :cond_11

    #@1a6
    .line 3463
    move-object/from16 v0, p0

    #@1a8
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1aa
    neg-int v4, v7

    #@1ab
    int-to-float v4, v4

    #@1ac
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@1af
    move-result v5

    #@1b0
    int-to-float v5, v5

    #@1b1
    div-float/2addr v4, v5

    #@1b2
    .line 3464
    move/from16 v0, p1

    #@1b4
    int-to-float v5, v0

    #@1b5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    #@1b8
    move-result v6

    #@1b9
    int-to-float v6, v6

    #@1ba
    div-float/2addr v5, v6

    #@1bb
    .line 3463
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@1be
    .line 3465
    move-object/from16 v0, p0

    #@1c0
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@1c2
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1c5
    move-result v3

    #@1c6
    if-nez v3, :cond_10

    #@1c8
    .line 3466
    move-object/from16 v0, p0

    #@1ca
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@1cc
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    #@1cf
    .line 3468
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    #@1d2
    goto/16 :goto_3

    #@1d4
    .line 3469
    :cond_11
    if-gez v21, :cond_6

    #@1d6
    .line 3470
    move-object/from16 v0, p0

    #@1d8
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@1da
    int-to-float v4, v7

    #@1db
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@1de
    move-result v5

    #@1df
    int-to-float v5, v5

    #@1e0
    div-float/2addr v4, v5

    #@1e1
    .line 3471
    move/from16 v0, p1

    #@1e3
    int-to-float v5, v0

    #@1e4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    #@1e7
    move-result v6

    #@1e8
    int-to-float v6, v6

    #@1e9
    div-float/2addr v5, v6

    #@1ea
    const/high16 v6, 0x3f800000    # 1.0f

    #@1ec
    sub-float v5, v6, v5

    #@1ee
    .line 3470
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@1f1
    .line 3472
    move-object/from16 v0, p0

    #@1f3
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1f5
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1f8
    move-result v3

    #@1f9
    if-nez v3, :cond_12

    #@1fb
    .line 3473
    move-object/from16 v0, p0

    #@1fd
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1ff
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    #@202
    .line 3475
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    #@205
    goto/16 :goto_3

    #@207
    .line 3484
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    #@209
    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@20b
    const/4 v4, 0x5

    #@20c
    if-ne v3, v4, :cond_8

    #@20e
    .line 3485
    move-object/from16 v0, p0

    #@210
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@212
    move/from16 v0, p2

    #@214
    if-eq v0, v3, :cond_8

    #@216
    .line 3486
    move-object/from16 v0, p0

    #@218
    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    #@21a
    move/from16 v30, v0

    #@21c
    .line 3487
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    #@21e
    .line 3488
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    #@220
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@222
    move/from16 v0, p2

    #@224
    if-le v0, v3, :cond_19

    #@226
    const/16 v28, 0x1

    #@228
    .line 3490
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    #@22a
    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    #@22c
    if-nez v3, :cond_14

    #@22e
    .line 3491
    move/from16 v0, v28

    #@230
    move-object/from16 v1, p0

    #@232
    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    #@234
    .line 3494
    :cond_14
    move/from16 v0, v21

    #@236
    neg-int v10, v0

    #@237
    .line 3495
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_1a

    #@239
    if-ltz v30, :cond_1a

    #@23b
    .line 3496
    :cond_15
    move/from16 v0, v30

    #@23d
    neg-int v10, v0

    #@23e
    .line 3497
    add-int v21, v21, v10

    #@240
    .line 3502
    :goto_6
    if-eqz v10, :cond_16

    #@242
    .line 3503
    move-object/from16 v0, p0

    #@244
    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    #@246
    .line 3504
    move-object/from16 v0, p0

    #@248
    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    #@24a
    move/from16 v16, v0

    #@24c
    .line 3503
    const/4 v9, 0x0

    #@24d
    const/4 v11, 0x0

    #@24e
    const/4 v13, 0x0

    #@24f
    const/4 v14, 0x0

    #@250
    .line 3504
    const/4 v15, 0x0

    #@251
    const/16 v17, 0x1

    #@253
    move-object/from16 v8, p0

    #@255
    .line 3503
    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    #@258
    .line 3505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    #@25b
    move-result v31

    #@25c
    .line 3506
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_1c

    #@25e
    .line 3507
    const/4 v3, 0x1

    #@25f
    move/from16 v0, v31

    #@261
    if-ne v0, v3, :cond_16

    #@263
    .line 3508
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    #@266
    move-result v3

    #@267
    if-eqz v3, :cond_1c

    #@269
    .line 3527
    .end local v31    # "overscrollMode":I
    :cond_16
    :goto_7
    if-eqz v21, :cond_18

    #@26b
    .line 3529
    move-object/from16 v0, p0

    #@26d
    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    #@26f
    if-eqz v3, :cond_17

    #@271
    .line 3530
    const/4 v3, 0x0

    #@272
    move-object/from16 v0, p0

    #@274
    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    #@276
    .line 3531
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    #@279
    .line 3534
    :cond_17
    move-object/from16 v0, p0

    #@27b
    move/from16 v1, v21

    #@27d
    move/from16 v2, v21

    #@27f
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@282
    .line 3536
    const/4 v3, 0x3

    #@283
    move-object/from16 v0, p0

    #@285
    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    #@287
    .line 3540
    move-object/from16 v0, p0

    #@289
    move/from16 v1, p2

    #@28b
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    #@28e
    move-result v24

    #@28f
    .line 3542
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    #@290
    move-object/from16 v0, p0

    #@292
    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@294
    .line 3543
    move-object/from16 v0, p0

    #@296
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@298
    sub-int v3, v24, v3

    #@29a
    move-object/from16 v0, p0

    #@29c
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@29f
    move-result-object v25

    #@2a0
    .line 3544
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    #@2a2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    #@2a5
    move-result v3

    #@2a6
    :goto_8
    move-object/from16 v0, p0

    #@2a8
    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@2aa
    .line 3545
    add-int v3, p2, v35

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    #@2b0
    .line 3546
    move/from16 v0, v24

    #@2b2
    move-object/from16 v1, p0

    #@2b4
    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    #@2b6
    .line 3548
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_18
    add-int/lit8 v3, p2, 0x0

    #@2b8
    add-int v3, v3, v35

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    #@2be
    .line 3549
    move/from16 v0, v28

    #@2c0
    move-object/from16 v1, p0

    #@2c2
    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    #@2c4
    goto/16 :goto_4

    #@2c6
    .line 3488
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_19
    const/16 v28, -0x1

    #@2c8
    .restart local v28    # "newDirection":I
    goto/16 :goto_5

    #@2ca
    .line 3495
    .restart local v10    # "overScrollDistance":I
    :cond_1a
    if-lez v29, :cond_1b

    #@2cc
    if-lez v30, :cond_15

    #@2ce
    .line 3499
    :cond_1b
    const/16 v21, 0x0

    #@2d0
    goto/16 :goto_6

    #@2d2
    .line 3509
    .restart local v31    # "overscrollMode":I
    :cond_1c
    if-lez v33, :cond_1e

    #@2d4
    .line 3510
    move-object/from16 v0, p0

    #@2d6
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2d8
    int-to-float v4, v10

    #@2d9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@2dc
    move-result v5

    #@2dd
    int-to-float v5, v5

    #@2de
    div-float/2addr v4, v5

    #@2df
    .line 3511
    move/from16 v0, p1

    #@2e1
    int-to-float v5, v0

    #@2e2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    #@2e5
    move-result v6

    #@2e6
    int-to-float v6, v6

    #@2e7
    div-float/2addr v5, v6

    #@2e8
    .line 3510
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@2eb
    .line 3512
    move-object/from16 v0, p0

    #@2ed
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2ef
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@2f2
    move-result v3

    #@2f3
    if-nez v3, :cond_1d

    #@2f5
    .line 3513
    move-object/from16 v0, p0

    #@2f7
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2f9
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    #@2fc
    .line 3515
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    #@2ff
    goto/16 :goto_7

    #@301
    .line 3516
    :cond_1e
    if-gez v33, :cond_16

    #@303
    .line 3517
    move-object/from16 v0, p0

    #@305
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@307
    int-to-float v4, v10

    #@308
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@30b
    move-result v5

    #@30c
    int-to-float v5, v5

    #@30d
    div-float/2addr v4, v5

    #@30e
    .line 3518
    move/from16 v0, p1

    #@310
    int-to-float v5, v0

    #@311
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    #@314
    move-result v6

    #@315
    int-to-float v6, v6

    #@316
    div-float/2addr v5, v6

    #@317
    const/high16 v6, 0x3f800000    # 1.0f

    #@319
    sub-float v5, v6, v5

    #@31b
    .line 3517
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@31e
    .line 3519
    move-object/from16 v0, p0

    #@320
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@322
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@325
    move-result v3

    #@326
    if-nez v3, :cond_1f

    #@328
    .line 3520
    move-object/from16 v0, p0

    #@32a
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@32c
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    #@32f
    .line 3522
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    #@332
    goto/16 :goto_7

    #@334
    .line 3544
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    #@335
    goto/16 :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    #@0
    .prologue
    .line 1337
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1338
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    #@9
    .line 1336
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1273
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 1274
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    #@9
    .line 1280
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    #@c
    .line 1282
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1283
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@12
    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    #@15
    .line 1272
    :cond_1
    return-void

    #@16
    .line 1275
    :cond_2
    if-eqz p1, :cond_0

    #@18
    .line 1276
    new-instance v0, Landroid/widget/FastScroller;

    #@1a
    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    #@1c
    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    #@1f
    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@21
    .line 1277
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@23
    const/4 v1, 0x1

    #@24
    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    #@27
    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 2384
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    .line 2386
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    #@6
    .line 2387
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    #@c
    .line 2394
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2395
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@12
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@18
    .line 2397
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1a
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@1d
    move-result v2

    #@1e
    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@20
    .line 2398
    if-eq v0, v1, :cond_1

    #@22
    .line 2399
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@25
    .line 2383
    :cond_1
    return-void

    #@26
    .line 2388
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_3

    #@2c
    .line 2389
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    #@32
    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    #@33
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    #@34
    .line 2391
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    #@36
    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    #@0
    .prologue
    .line 5491
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 5492
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    #@a
    .line 5493
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    #@d
    .line 5495
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    #@10
    .line 5489
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3326
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@4
    sub-int v0, p2, v5

    #@6
    .line 3327
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@9
    move-result v1

    #@a
    .line 3328
    .local v1, "distance":I
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@c
    if-eqz v5, :cond_3

    #@e
    const/4 v3, 0x1

    #@f
    .line 3329
    .local v3, "overscroll":Z
    :goto_0
    if-nez v3, :cond_0

    #@11
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    #@13
    if-le v1, v5, :cond_6

    #@15
    .line 3330
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    #@18
    move-result v5

    #@19
    and-int/lit8 v5, v5, 0x2

    #@1b
    if-nez v5, :cond_6

    #@1d
    .line 3331
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    #@20
    .line 3332
    if-eqz v3, :cond_4

    #@22
    .line 3333
    const/4 v5, 0x5

    #@23
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@25
    .line 3334
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@27
    .line 3339
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@29
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@2c
    .line 3340
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@2f
    .line 3341
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@31
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@33
    sub-int/2addr v5, v6

    #@34
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@37
    move-result-object v2

    #@38
    .line 3342
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    #@3a
    .line 3343
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    #@3d
    .line 3345
    :cond_1
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@40
    .line 3348
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v4

    #@44
    .line 3349
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    #@46
    .line 3350
    invoke-interface {v4, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@49
    .line 3352
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    #@4c
    .line 3353
    return v8

    #@4d
    .line 3328
    .end local v2    # "motionView":Landroid/view/View;
    .end local v3    # "overscroll":Z
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_3
    const/4 v3, 0x0

    #@4e
    .restart local v3    # "overscroll":Z
    goto :goto_0

    #@4f
    .line 3336
    :cond_4
    const/4 v5, 0x3

    #@50
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@52
    .line 3337
    if-lez v0, :cond_5

    #@54
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    #@56
    :goto_2
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@58
    goto :goto_1

    #@59
    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    #@5b
    neg-int v5, v5

    #@5c
    goto :goto_2

    #@5d
    .line 3356
    :cond_6
    return v7
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    #@0
    .prologue
    .line 1157
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2
    .line 1158
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@5
    move-result v1

    #@6
    .line 1159
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v6

    #@a
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@d
    move-result-object v6

    #@e
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@10
    .line 1160
    const/16 v7, 0xb

    #@12
    .line 1159
    if-lt v6, v7, :cond_1

    #@14
    const/4 v5, 0x1

    #@15
    .line 1161
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    #@16
    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    #@18
    .line 1162
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    .line 1163
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    #@1e
    .line 1165
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    #@20
    if-eqz v6, :cond_2

    #@22
    .line 1166
    check-cast v0, Landroid/widget/Checkable;

    #@24
    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@26
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@29
    move-result v6

    #@2a
    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    #@2d
    .line 1161
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 1159
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    #@31
    .restart local v5    # "useActivated":Z
    goto :goto_0

    #@32
    .line 1167
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    #@34
    .line 1168
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@36
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@39
    move-result v6

    #@3a
    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    #@3d
    goto :goto_2

    #@3e
    .line 1156
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    #@0
    .prologue
    .line 1638
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 1639
    const v1, 0x1080062

    #@7
    .line 1638
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@e
    .line 1637
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4345
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v2

    #@4
    .line 4346
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@6
    .line 4347
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@8
    .line 4349
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    #@a
    .line 4350
    return-void

    #@b
    .line 4353
    :cond_0
    const/4 v4, 0x0

    #@c
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    #@e
    .line 4354
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v1

    #@12
    .line 4355
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    #@14
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    .line 4356
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    .line 4358
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@20
    .line 4353
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 4344
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 5942
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 5901
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 4863
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 4864
    .local v0, "childCount":I
    if-nez v0, :cond_0

    #@8
    .line 4865
    return v7

    #@9
    .line 4868
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@b
    .line 4869
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@d
    .line 4870
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    #@f
    .line 4871
    add-int/lit8 v8, v0, -0x1

    #@11
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    #@18
    move-result v3

    #@19
    .line 4872
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    #@1b
    .line 4873
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@1d
    if-lt v4, v8, :cond_1

    #@1f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@22
    move-result v8

    #@23
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    #@25
    sub-int/2addr v8, v9

    #@26
    if-le v3, v8, :cond_2

    #@28
    :cond_1
    :goto_0
    return v6

    #@29
    :cond_2
    move v6, v7

    #@2a
    goto :goto_0

    #@2b
    .line 4875
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@32
    move-result v2

    #@33
    .line 4876
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    #@35
    iget v8, v5, Landroid/graphics/Rect;->top:I

    #@37
    if-ge v2, v8, :cond_5

    #@39
    :cond_4
    :goto_1
    return v6

    #@3a
    :cond_5
    move v6, v7

    #@3b
    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 5815
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 5971
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    #@2
    return v0
.end method

.method public clearChoices()V
    .locals 1

    #@0
    .prologue
    .line 1006
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1007
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@6
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    #@9
    .line 1009
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1010
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@f
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    #@12
    .line 1012
    :cond_1
    const/4 v0, 0x0

    #@13
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@15
    .line 1005
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    #@0
    .prologue
    .line 5864
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5865
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, ""

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@e
    .line 5866
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@11
    .line 5867
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@13
    if-eqz v0, :cond_0

    #@15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@17
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 5868
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@20
    .line 5863
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2001
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 2002
    .local v1, "count":I
    if-lez v1, :cond_3

    #@7
    .line 2003
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@9
    if-eqz v6, :cond_2

    #@b
    .line 2004
    mul-int/lit8 v2, v1, 0x64

    #@d
    .line 2006
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v5

    #@11
    .line 2007
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@14
    move-result v4

    #@15
    .line 2008
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@18
    move-result v3

    #@19
    .line 2009
    .local v3, "height":I
    if-lez v3, :cond_0

    #@1b
    .line 2010
    mul-int/lit8 v6, v4, 0x64

    #@1d
    div-int/2addr v6, v3

    #@1e
    add-int/2addr v2, v6

    #@1f
    .line 2013
    :cond_0
    add-int/lit8 v6, v1, -0x1

    #@21
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v5

    #@25
    .line 2014
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@28
    move-result v0

    #@29
    .line 2015
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@2c
    move-result v3

    #@2d
    .line 2016
    if-lez v3, :cond_1

    #@2f
    .line 2017
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@32
    move-result v6

    #@33
    sub-int v6, v0, v6

    #@35
    mul-int/lit8 v6, v6, 0x64

    #@37
    div-int/2addr v6, v3

    #@38
    sub-int/2addr v2, v6

    #@39
    .line 2020
    :cond_1
    return v2

    #@3a
    .line 2022
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x1

    #@3b
    return v6

    #@3c
    .line 2025
    :cond_3
    return v7
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2030
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@3
    .line 2031
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@6
    move-result v0

    #@7
    .line 2032
    .local v0, "childCount":I
    if-ltz v2, :cond_3

    #@9
    if-lez v0, :cond_3

    #@b
    .line 2033
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@d
    if-eqz v7, :cond_0

    #@f
    .line 2034
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v6

    #@13
    .line 2035
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@16
    move-result v5

    #@17
    .line 2036
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@1a
    move-result v3

    #@1b
    .line 2037
    .local v3, "height":I
    if-lez v3, :cond_3

    #@1d
    .line 2038
    mul-int/lit8 v7, v2, 0x64

    #@1f
    mul-int/lit8 v8, v5, 0x64

    #@21
    div-int/2addr v8, v3

    #@22
    sub-int/2addr v7, v8

    #@23
    .line 2039
    iget v8, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@25
    int-to-float v8, v8

    #@26
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@29
    move-result v9

    #@2a
    int-to-float v9, v9

    #@2b
    div-float/2addr v8, v9

    #@2c
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@2e
    int-to-float v9, v9

    #@2f
    mul-float/2addr v8, v9

    #@30
    const/high16 v9, 0x42c80000    # 100.0f

    #@32
    mul-float/2addr v8, v9

    #@33
    float-to-int v8, v8

    #@34
    .line 2038
    add-int/2addr v7, v8

    #@35
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v7

    #@39
    return v7

    #@3a
    .line 2043
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@3c
    .line 2044
    .local v1, "count":I
    if-nez v2, :cond_1

    #@3e
    .line 2045
    const/4 v4, 0x0

    #@3f
    .line 2051
    .local v4, "index":I
    :goto_0
    int-to-float v7, v2

    #@40
    int-to-float v8, v0

    #@41
    int-to-float v9, v4

    #@42
    int-to-float v10, v1

    #@43
    div-float/2addr v9, v10

    #@44
    mul-float/2addr v8, v9

    #@45
    add-float/2addr v7, v8

    #@46
    float-to-int v7, v7

    #@47
    return v7

    #@48
    .line 2046
    .end local v4    # "index":I
    :cond_1
    add-int v7, v2, v0

    #@4a
    if-ne v7, v1, :cond_2

    #@4c
    .line 2047
    move v4, v1

    #@4d
    .restart local v4    # "index":I
    goto :goto_0

    #@4e
    .line 2049
    .end local v4    # "index":I
    :cond_2
    div-int/lit8 v7, v0, 0x2

    #@50
    add-int v4, v2, v7

    #@52
    .restart local v4    # "index":I
    goto :goto_0

    #@53
    .line 2054
    .end local v1    # "count":I
    .end local v4    # "index":I
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2060
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 2061
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@7
    mul-int/lit8 v1, v1, 0x64

    #@9
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@c
    move-result v0

    #@d
    .line 2062
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 2064
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@13
    int-to-float v1, v1

    #@14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@17
    move-result v2

    #@18
    int-to-float v2, v2

    #@19
    div-float/2addr v1, v2

    #@1a
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@1c
    int-to-float v2, v2

    #@1d
    mul-float/2addr v1, v2

    #@1e
    const/high16 v2, 0x42c80000    # 100.0f

    #@20
    mul-float/2addr v1, v2

    #@21
    float-to-int v1, v1

    #@22
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@25
    move-result v1

    #@26
    add-int/2addr v0, v1

    #@27
    .line 2069
    :cond_0
    :goto_0
    return v0

    #@28
    .line 2067
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@2a
    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    #@0
    .prologue
    .line 5274
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@4
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    #@7
    .line 5276
    const/4 v2, 0x0

    #@8
    .line 5277
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    #@9
    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    #@b
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@d
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    #@10
    move-result v3

    #@11
    if-ge v9, v3, :cond_4

    #@13
    .line 5278
    move-object/from16 v0, p0

    #@15
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@17
    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@1a
    move-result-wide v6

    #@1b
    .line 5279
    .local v6, "id":J
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@1f
    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/Integer;

    #@25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v5

    #@29
    .line 5281
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2d
    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@30
    move-result-wide v12

    #@31
    .line 5282
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    #@33
    if-eqz v3, :cond_3

    #@35
    .line 5284
    add-int/lit8 v3, v5, -0x14

    #@37
    const/4 v4, 0x0

    #@38
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v17

    #@3c
    .line 5285
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    #@3e
    move-object/from16 v0, p0

    #@40
    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@42
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v10

    #@46
    .line 5286
    .local v10, "end":I
    const/4 v11, 0x0

    #@47
    .line 5287
    .local v11, "found":Z
    move/from16 v16, v17

    #@49
    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    #@4b
    if-ge v0, v10, :cond_0

    #@4d
    .line 5288
    move-object/from16 v0, p0

    #@4f
    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@51
    move/from16 v0, v16

    #@53
    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@56
    move-result-wide v14

    #@57
    .line 5289
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    #@59
    if-nez v3, :cond_2

    #@5b
    .line 5290
    const/4 v11, 0x1

    #@5c
    .line 5291
    move-object/from16 v0, p0

    #@5e
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@60
    const/4 v4, 0x1

    #@61
    move/from16 v0, v16

    #@63
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@66
    .line 5292
    move-object/from16 v0, p0

    #@68
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@6a
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    #@71
    .line 5297
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    #@73
    .line 5298
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@77
    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    #@7a
    .line 5299
    add-int/lit8 v9, v9, -0x1

    #@7c
    .line 5300
    move-object/from16 v0, p0

    #@7e
    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@80
    add-int/lit8 v3, v3, -0x1

    #@82
    move-object/from16 v0, p0

    #@84
    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@86
    .line 5301
    const/4 v2, 0x1

    #@87
    .line 5302
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@8b
    if-eqz v3, :cond_1

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@91
    if-eqz v3, :cond_1

    #@93
    .line 5303
    move-object/from16 v0, p0

    #@95
    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@9b
    .line 5304
    const/4 v8, 0x0

    #@9c
    .line 5303
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    #@9f
    .line 5277
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    #@a1
    goto/16 :goto_0

    #@a3
    .line 5287
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    #@a5
    goto :goto_1

    #@a6
    .line 5308
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@aa
    const/4 v4, 0x1

    #@ab
    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@ae
    goto :goto_2

    #@af
    .line 5312
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@b5
    if-eqz v3, :cond_5

    #@b7
    .line 5313
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@bb
    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    #@be
    .line 5272
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    .line 2987
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    #@5
    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    #@0
    .prologue
    .line 4672
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    #@5
    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    #@0
    .prologue
    .line 6117
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    #@3
    .line 6116
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2574
    const/4 v2, 0x0

    #@1
    .line 2575
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@3
    and-int/lit8 v5, v5, 0x22

    #@5
    const/16 v6, 0x22

    #@7
    if-ne v5, v6, :cond_4

    #@9
    const/4 v0, 0x1

    #@a
    .line 2576
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    #@c
    .line 2577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@f
    move-result v2

    #@10
    .line 2578
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    #@12
    .line 2579
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@14
    .line 2580
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@16
    add-int/2addr v5, v3

    #@17
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@19
    add-int/2addr v6, v4

    #@1a
    .line 2581
    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    #@1c
    add-int/2addr v7, v3

    #@1d
    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    #@1f
    sub-int/2addr v7, v8

    #@20
    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    #@22
    sub-int/2addr v7, v8

    #@23
    .line 2582
    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    #@25
    add-int/2addr v8, v4

    #@26
    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    #@28
    sub-int/2addr v8, v9

    #@29
    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@2b
    sub-int/2addr v8, v9

    #@2c
    .line 2580
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@2f
    .line 2583
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@31
    and-int/lit8 v5, v5, -0x23

    #@33
    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@35
    .line 2586
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    #@37
    .line 2587
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    #@39
    .line 2588
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    #@3c
    .line 2591
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@3f
    .line 2593
    if-eqz v1, :cond_2

    #@41
    .line 2594
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    #@44
    .line 2597
    :cond_2
    if-eqz v0, :cond_3

    #@46
    .line 2598
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@49
    .line 2599
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@4b
    or-int/lit8 v5, v5, 0x22

    #@4d
    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@4f
    .line 2573
    :cond_3
    return-void

    #@50
    .line 2575
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    #@51
    .restart local v0    # "clipToPadding":Z
    goto :goto_0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 3217
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    #@0
    .prologue
    .line 3211
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 4142
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    #@4
    .line 4143
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@6
    if-eqz v10, :cond_4

    #@8
    .line 4144
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@a
    .line 4145
    .local v5, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    #@d
    move-result v0

    #@e
    .line 4151
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_5

    #@10
    .line 4152
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    #@13
    move-result v10

    #@14
    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@16
    sub-int/2addr v10, v11

    #@17
    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    #@19
    sub-int v8, v10, v11

    #@1b
    .line 4153
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@1e
    move-result v10

    #@1f
    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@21
    sub-int/2addr v10, v11

    #@22
    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@24
    sub-int v3, v10, v11

    #@26
    .line 4154
    .local v3, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@28
    .line 4155
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@2a
    .line 4162
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2c
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@2f
    move-result v10

    #@30
    if-nez v10, :cond_1

    #@32
    .line 4163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@35
    move-result v4

    #@36
    .line 4165
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    #@38
    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@3a
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    #@3d
    move-result v11

    #@3e
    add-int/2addr v11, v7

    #@3f
    .line 4164
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@42
    .line 4166
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    #@44
    add-int/2addr v10, v5

    #@45
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@48
    move-result v10

    #@49
    add-int v2, v10, v7

    #@4b
    .line 4167
    .local v2, "edgeY":I
    int-to-float v10, v6

    #@4c
    int-to-float v11, v2

    #@4d
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    #@50
    .line 4168
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@52
    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@55
    .line 4169
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@57
    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_0

    #@5d
    .line 4170
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    #@60
    .line 4172
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@63
    .line 4174
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@65
    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@68
    move-result v10

    #@69
    if-nez v10, :cond_4

    #@6b
    .line 4175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@6e
    move-result v4

    #@6f
    .line 4176
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    #@71
    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@73
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    #@76
    move-result v11

    #@77
    sub-int/2addr v10, v11

    #@78
    .line 4177
    add-int v11, v6, v8

    #@7a
    add-int v12, v7, v3

    #@7c
    .line 4176
    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@7f
    .line 4178
    neg-int v10, v8

    #@80
    add-int v1, v10, v6

    #@82
    .line 4179
    .local v1, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@85
    move-result v10

    #@86
    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    #@88
    add-int/2addr v11, v5

    #@89
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@8c
    move-result v10

    #@8d
    .line 4180
    if-eqz v0, :cond_2

    #@8f
    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@91
    .line 4179
    :cond_2
    sub-int v2, v10, v9

    #@93
    .line 4181
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    #@94
    int-to-float v10, v2

    #@95
    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    #@98
    .line 4182
    const/high16 v9, 0x43340000    # 180.0f

    #@9a
    int-to-float v10, v8

    #@9b
    const/4 v11, 0x0

    #@9c
    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@9f
    .line 4183
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@a1
    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@a4
    .line 4184
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@a6
    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@a9
    move-result v9

    #@aa
    if-eqz v9, :cond_3

    #@ac
    .line 4185
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    #@af
    .line 4187
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@b2
    .line 4141
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_4
    return-void

    #@b3
    .line 4157
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    #@b6
    move-result v8

    #@b7
    .line 4158
    .restart local v8    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@ba
    move-result v3

    #@bb
    .line 4159
    .restart local v3    # "height":I
    const/4 v6, 0x0

    #@bc
    .line 4160
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    #@bd
    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    #@0
    .prologue
    .line 2783
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    #@3
    .line 2784
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@6
    .line 2782
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 6942
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 6944
    const-string/jumbo v1, "drawing:cacheColorHint"

    #@6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 6945
    const-string/jumbo v1, "list:fastScrollEnabled"

    #@10
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    #@13
    move-result v2

    #@14
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@17
    .line 6946
    const-string/jumbo v1, "list:scrollingCacheEnabled"

    #@1a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@21
    .line 6947
    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    #@24
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    #@27
    move-result v2

    #@28
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@2b
    .line 6948
    const-string/jumbo v1, "list:stackFromBottom"

    #@2e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    #@31
    move-result v2

    #@32
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@35
    .line 6949
    const-string/jumbo v1, "list:textFilterEnabled"

    #@38
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    #@3b
    move-result v2

    #@3c
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    #@3f
    .line 6951
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    #@42
    move-result-object v0

    #@43
    .line 6952
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@45
    .line 6953
    const-string/jumbo v1, "selectedView"

    #@48
    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    #@4b
    .line 6954
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    #@4e
    .line 6941
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 5127
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 5128
    .local v0, "childCount":I
    if-nez v0, :cond_0

    #@7
    .line 5129
    return v2

    #@8
    .line 5132
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    #@b
    move-result v1

    #@c
    .line 5133
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    #@e
    .end local v1    # "motionRow":I
    :goto_0
    return v1

    #@f
    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@11
    add-int/2addr v2, v0

    #@12
    add-int/lit8 v1, v2, -0x1

    #@14
    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    #@0
    .prologue
    .line 1556
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1557
    return-object p0

    #@7
    .line 1559
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    #@0
    .prologue
    .line 4088
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4089
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@9
    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@b
    .line 4091
    :cond_0
    const/4 v0, 0x2

    #@c
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@f
    .line 4092
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    #@14
    .line 4087
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    #@0
    .prologue
    .line 5955
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    .line 5956
    const/4 v2, -0x2

    #@4
    const/4 v3, 0x0

    #@5
    .line 5955
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    #@8
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 5965
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 5961
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 5966
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1490
    const-class v0, Landroid/widget/AbsListView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    #@0
    .prologue
    .line 2191
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 2192
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    #@6
    if-eqz v1, :cond_0

    #@8
    if-eq v0, p0, :cond_0

    #@a
    move-object p1, v0

    #@b
    .line 2193
    check-cast p1, Landroid/view/View;

    #@d
    .line 2194
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@10
    move-result-object v0

    #@11
    goto :goto_0

    #@12
    .line 2197
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 2198
    const/4 v1, 0x0

    #@17
    return-object v1

    #@18
    .line 2201
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    #@0
    .prologue
    .line 2091
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v1

    #@4
    .line 2092
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    #@7
    move-result v2

    #@8
    .line 2093
    .local v2, "fadeEdge":F
    if-nez v1, :cond_0

    #@a
    .line 2094
    return v2

    #@b
    .line 2096
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@d
    add-int/2addr v5, v1

    #@e
    add-int/lit8 v5, v5, -0x1

    #@10
    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@12
    add-int/lit8 v6, v6, -0x1

    #@14
    if-ge v5, v6, :cond_1

    #@16
    .line 2097
    const/high16 v5, 0x3f800000    # 1.0f

    #@18
    return v5

    #@19
    .line 2100
    :cond_1
    add-int/lit8 v5, v1, -0x1

    #@1b
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@22
    move-result v0

    #@23
    .line 2101
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@26
    move-result v4

    #@27
    .line 2102
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    #@2a
    move-result v5

    #@2b
    int-to-float v3, v5

    #@2c
    .line 2103
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@2e
    sub-int v5, v4, v5

    #@30
    if-le v0, v5, :cond_2

    #@32
    .line 2104
    sub-int v5, v0, v4

    #@34
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@36
    add-int/2addr v5, v6

    #@37
    int-to-float v5, v5

    #@38
    div-float v2, v5, v3

    #@3a
    .line 2103
    .end local v2    # "fadeEdge":F
    :cond_2
    return v2
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    #@0
    .prologue
    .line 2625
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@2
    and-int/lit8 v0, v0, 0x22

    #@4
    const/16 v1, 0x22

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@c
    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    #@0
    .prologue
    .line 6033
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    #@2
    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    #@0
    .prologue
    .line 923
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@2
    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 987
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 988
    :cond_0
    new-array v4, v5, [J

    #@b
    return-object v4

    #@c
    .line 987
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 991
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@12
    .line 992
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    #@15
    move-result v0

    #@16
    .line 993
    .local v0, "count":I
    new-array v3, v0, [J

    #@18
    .line 995
    .local v3, "ids":[J
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@1b
    .line 996
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@1e
    move-result-wide v4

    #@1f
    aput-wide v4, v3, v1

    #@21
    .line 995
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 999
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 955
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@b
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    #@e
    move-result v0

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 956
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 959
    :cond_0
    const/4 v0, -0x1

    #@1a
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    .prologue
    .line 972
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 973
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@6
    return-object v0

    #@7
    .line 975
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    #@0
    .prologue
    .line 1179
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@2
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    #@0
    .prologue
    .line 3142
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1625
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1626
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object v1

    #@a
    if-ne v1, p0, :cond_0

    #@c
    .line 1629
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@f
    .line 1630
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@12
    .line 1624
    :goto_0
    return-void

    #@13
    .line 1633
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    #@16
    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    #@0
    .prologue
    .line 5070
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    #@0
    .prologue
    .line 5060
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 6883
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@4
    move-result v1

    #@5
    .line 6884
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@8
    move-result v0

    #@9
    .line 6885
    .local v0, "childCount":I
    sub-int v3, p1, v1

    #@b
    .line 6886
    .local v3, "index":I
    if-ltz v3, :cond_0

    #@d
    if-ge v3, v0, :cond_0

    #@f
    .line 6888
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v4

    #@13
    .line 6889
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@16
    move-result v5

    #@17
    return v5

    #@18
    .line 6892
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    #@1a
    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    #@1d
    move-result-object v4

    #@1e
    .line 6893
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    #@20
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    #@23
    .line 6894
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@26
    move-result v2

    #@27
    .line 6895
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@29
    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@2c
    .line 6896
    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    #@0
    .prologue
    .line 2610
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@2
    and-int/lit8 v0, v0, 0x22

    #@4
    const/16 v1, 0x22

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@c
    neg-int v0, v0

    #@d
    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    #@0
    .prologue
    .line 2277
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4
    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    #@0
    .prologue
    .line 2289
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4
    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    #@0
    .prologue
    .line 2301
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@4
    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    #@0
    .prologue
    .line 2265
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4
    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    #@0
    .prologue
    .line 2620
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@2
    and-int/lit8 v0, v0, 0x22

    #@4
    const/16 v1, 0x22

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    #@c
    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 2249
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@2
    if-lez v0, :cond_0

    #@4
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 2250
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@a
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@c
    sub-int/2addr v0, v1

    #@d
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 2252
    :cond_0
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1512
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    #@4
    move-result v0

    #@5
    .line 1513
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1522
    return v1

    #@9
    .line 1515
    :pswitch_0
    return v1

    #@a
    .line 1517
    :pswitch_1
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 1520
    :pswitch_2
    const/4 v1, 0x2

    #@d
    return v1

    #@e
    .line 1513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 2721
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    #@0
    .prologue
    .line 6000
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    #@2
    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1951
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1952
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@b
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1954
    :cond_0
    return-object v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2074
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@4
    move-result v0

    #@5
    .line 2075
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    #@8
    move-result v1

    #@9
    .line 2076
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    #@b
    .line 2077
    return v1

    #@c
    .line 2079
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@e
    if-lez v4, :cond_1

    #@10
    .line 2080
    const/high16 v4, 0x3f800000    # 1.0f

    #@12
    return v4

    #@13
    .line 2083
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@1a
    move-result v3

    #@1b
    .line 2084
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    #@1e
    move-result v4

    #@1f
    int-to-float v2, v4

    #@20
    .line 2085
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@22
    if-ge v3, v4, :cond_2

    #@24
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@26
    sub-int v4, v3, v4

    #@28
    neg-int v4, v4

    #@29
    int-to-float v4, v4

    #@2a
    div-float v1, v4, v2

    #@2c
    .end local v1    # "fadeEdge":F
    :cond_2
    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    #@0
    .prologue
    .line 2615
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@2
    and-int/lit8 v0, v0, 0x22

    #@4
    const/16 v1, 0x22

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@c
    neg-int v0, v0

    #@d
    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    #@0
    .prologue
    .line 5995
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    #@2
    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    #@0
    .prologue
    .line 1365
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@6
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1366
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    #@f
    move-result v0

    #@10
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@12
    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    #@15
    move-result v1

    #@16
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 1368
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    #@0
    .prologue
    const/4 v14, -0x1

    #@1
    const/4 v13, 0x0

    #@2
    const/4 v8, 0x3

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v12, 0x0

    #@5
    .line 5319
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@7
    .line 5320
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    #@9
    .line 5321
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@b
    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    #@d
    .line 5323
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@f
    if-eqz v10, :cond_0

    #@11
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@13
    if-eqz v10, :cond_0

    #@15
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@17
    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_0

    #@1d
    .line 5324
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    #@20
    .line 5328
    :cond_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@22
    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    #@25
    .line 5330
    if-lez v1, :cond_d

    #@27
    .line 5335
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@29
    if-eqz v10, :cond_6

    #@2b
    .line 5337
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@2d
    .line 5338
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@2f
    .line 5340
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    #@31
    const/4 v11, 0x2

    #@32
    if-ne v10, v11, :cond_1

    #@34
    .line 5341
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@36
    .line 5342
    return-void

    #@37
    .line 5343
    :cond_1
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    #@39
    if-ne v10, v9, :cond_5

    #@3b
    .line 5344
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    #@3d
    if-eqz v10, :cond_2

    #@3f
    .line 5345
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    #@41
    .line 5346
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@43
    .line 5347
    return-void

    #@44
    .line 5349
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@47
    move-result v0

    #@48
    .line 5350
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@4b
    move-result v10

    #@4c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@4f
    move-result v11

    #@50
    sub-int v5, v10, v11

    #@52
    .line 5351
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    #@54
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@57
    move-result-object v3

    #@58
    .line 5352
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_3

    #@5a
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@5d
    move-result v2

    #@5e
    .line 5353
    .local v2, "lastBottom":I
    :goto_0
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@60
    add-int/2addr v10, v0

    #@61
    if-lt v10, v4, :cond_4

    #@63
    .line 5354
    if-gt v2, v5, :cond_4

    #@65
    .line 5355
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@67
    .line 5356
    return-void

    #@68
    .line 5352
    .end local v2    # "lastBottom":I
    :cond_3
    move v2, v5

    #@69
    .restart local v2    # "lastBottom":I
    goto :goto_0

    #@6a
    .line 5360
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    #@6d
    .line 5363
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_5
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    #@6f
    packed-switch v10, :pswitch_data_0

    #@72
    .line 5411
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@75
    move-result v10

    #@76
    if-nez v10, :cond_c

    #@78
    .line 5413
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    #@7b
    move-result v6

    #@7c
    .line 5416
    .local v6, "newPos":I
    if-lt v6, v1, :cond_7

    #@7e
    .line 5417
    add-int/lit8 v6, v1, -0x1

    #@80
    .line 5419
    :cond_7
    if-gez v6, :cond_8

    #@82
    .line 5420
    const/4 v6, 0x0

    #@83
    .line 5424
    :cond_8
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    #@86
    move-result v7

    #@87
    .line 5426
    .local v7, "selectablePos":I
    if-ltz v7, :cond_b

    #@89
    .line 5427
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@8c
    .line 5428
    return-void

    #@8d
    .line 5365
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@90
    move-result v10

    #@91
    if-eqz v10, :cond_9

    #@93
    .line 5370
    const/4 v8, 0x5

    #@94
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@96
    .line 5371
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@98
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    #@9b
    move-result v8

    #@9c
    add-int/lit8 v9, v1, -0x1

    #@9e
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@a1
    move-result v8

    #@a2
    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@a4
    .line 5373
    return-void

    #@a5
    .line 5377
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    #@a8
    move-result v6

    #@a9
    .line 5378
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_6

    #@ab
    .line 5380
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    #@ae
    move-result v7

    #@af
    .line 5381
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_6

    #@b1
    .line 5383
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@b3
    .line 5385
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    #@b5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@b8
    move-result v10

    #@b9
    int-to-long v10, v10

    #@ba
    cmp-long v8, v8, v10

    #@bc
    if-nez v8, :cond_a

    #@be
    .line 5388
    const/4 v8, 0x5

    #@bf
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@c1
    .line 5396
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@c4
    .line 5397
    return-void

    #@c5
    .line 5392
    :cond_a
    const/4 v8, 0x2

    #@c6
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@c8
    goto :goto_1

    #@c9
    .line 5404
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    #@ca
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@cc
    .line 5405
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@ce
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    #@d1
    move-result v8

    #@d2
    add-int/lit8 v9, v1, -0x1

    #@d4
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@d7
    move-result v8

    #@d8
    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@da
    .line 5407
    return-void

    #@db
    .line 5431
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_b
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    #@de
    move-result v7

    #@df
    .line 5432
    if-ltz v7, :cond_d

    #@e1
    .line 5433
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@e4
    .line 5434
    return-void

    #@e5
    .line 5440
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_c
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@e7
    if-ltz v10, :cond_d

    #@e9
    .line 5441
    return-void

    #@ea
    .line 5448
    :cond_d
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    #@ec
    if-eqz v10, :cond_e

    #@ee
    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@f0
    .line 5449
    iput v14, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@f2
    .line 5450
    const-wide/high16 v8, -0x8000000000000000L

    #@f4
    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    #@f6
    .line 5451
    iput v14, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    #@f8
    .line 5452
    const-wide/high16 v8, -0x8000000000000000L

    #@fa
    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    #@fc
    .line 5453
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@fe
    .line 5454
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@100
    .line 5455
    iput v14, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@102
    .line 5456
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    #@105
    .line 5318
    return-void

    #@106
    :cond_e
    move v8, v9

    #@107
    .line 5448
    goto :goto_2

    #@108
    .line 5363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    #@0
    .prologue
    .line 5877
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@2
    return v0
.end method

.method hideSelector()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 5084
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@4
    if-eq v0, v2, :cond_2

    #@6
    .line 5085
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@8
    const/4 v1, 0x4

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 5086
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@d
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@f
    .line 5088
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    #@11
    if-ltz v0, :cond_1

    #@13
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    #@15
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@17
    if-eq v0, v1, :cond_1

    #@19
    .line 5089
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    #@1b
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@1d
    .line 5091
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    #@20
    .line 5092
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@23
    .line 5093
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    #@25
    .line 5083
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    #@0
    .prologue
    .line 5140
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@3
    .line 5141
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    #@6
    .line 5142
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    #@9
    .line 5143
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    #@c
    .line 5139
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1459
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1460
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@7
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@c
    move-result v2

    #@d
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@f
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    #@12
    .line 1462
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1463
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@18
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@1a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@1d
    move-result v2

    #@1e
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@20
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    #@23
    .line 1465
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    #@26
    .line 1458
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1356
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 1357
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    #@b
    :cond_0
    return v0

    #@c
    .line 1359
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@e
    invoke-virtual {v1}, Landroid/widget/FastScroller;->isEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@16
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    #@19
    move-result v0

    #@1a
    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 1379
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1380
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    #@6
    return v0

    #@7
    .line 1382
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@9
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    #@0
    .prologue
    .line 5571
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@2
    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 938
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 939
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 942
    :cond_0
    return v1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    #@0
    .prologue
    .line 2605
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@2
    and-int/lit8 v0, v0, 0x22

    #@4
    const/16 v1, 0x22

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 1573
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    #@2
    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 1442
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@2
    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 1650
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    #@2
    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    #@0
    .prologue
    .line 1620
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@2
    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    #@0
    .prologue
    .line 1408
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 2829
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    #@3
    .line 2830
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 2828
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_2

    #@8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_2

    #@e
    .line 2733
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@10
    .line 2734
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@12
    .line 2735
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    #@14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_0

    #@1a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 2736
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_3

    #@26
    .line 2728
    :cond_1
    :goto_0
    return-void

    #@27
    .line 2730
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    #@28
    .line 2738
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@2a
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2c
    sub-int/2addr v5, v6

    #@2d
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@30
    move-result-object v4

    #@31
    .line 2740
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    #@33
    .line 2741
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_4

    #@39
    return-void

    #@3a
    .line 2742
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    #@3d
    .line 2744
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@40
    .line 2746
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    #@43
    move-result v1

    #@44
    .line 2747
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v0

    #@48
    .line 2748
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    #@4a
    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    #@4c
    if-eqz v5, :cond_6

    #@4e
    .line 2749
    if-eqz v1, :cond_8

    #@50
    .line 2750
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    #@52
    .line 2751
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@55
    move-result v5

    #@56
    .line 2750
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    #@59
    .line 2756
    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    #@5b
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@5d
    if-nez v5, :cond_1

    #@5f
    .line 2757
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@61
    if-nez v5, :cond_7

    #@63
    .line 2758
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@65
    invoke-direct {v5, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V

    #@68
    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@6a
    .line 2760
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@6c
    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    #@6f
    .line 2761
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@71
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@74
    move-result v6

    #@75
    int-to-long v6, v6

    #@76
    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@79
    goto :goto_0

    #@7a
    .line 2753
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    #@7c
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    #@7f
    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    #@0
    .prologue
    .line 2182
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    #@0
    .prologue
    const-wide/16 v10, 0x8

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 2317
    const-string/jumbo v5, "obtainView"

    #@7
    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@a
    .line 2319
    aput-boolean v7, p2, v7

    #@c
    .line 2323
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@e
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    #@11
    move-result-object v3

    #@12
    .line 2324
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    #@14
    .line 2325
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    #@1a
    .line 2328
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v5, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@1c
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1e
    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@21
    move-result v6

    #@22
    if-ne v5, v6, :cond_0

    #@24
    .line 2329
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@26
    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@29
    move-result-object v4

    #@2a
    .line 2332
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    #@2c
    .line 2333
    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    #@2f
    .line 2334
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@31
    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@34
    .line 2338
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v8, p2, v7

    #@36
    .line 2341
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@39
    .line 2342
    return-object v3

    #@3a
    .line 2345
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@3c
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    #@3f
    move-result-object v2

    #@40
    .line 2346
    .local v2, "scrapView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@42
    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@45
    move-result-object v0

    #@46
    .line 2347
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    #@48
    .line 2348
    if-eq v0, v2, :cond_7

    #@4a
    .line 2350
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@4c
    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@4f
    .line 2359
    :cond_2
    :goto_0
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    #@51
    if-eqz v5, :cond_3

    #@53
    .line 2360
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    #@55
    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    #@58
    .line 2363
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    #@5b
    move-result v5

    #@5c
    if-nez v5, :cond_4

    #@5e
    .line 2364
    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@61
    .line 2367
    :cond_4
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    #@64
    .line 2369
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    #@66
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@6d
    move-result v5

    #@6e
    if-eqz v5, :cond_6

    #@70
    .line 2370
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    #@72
    if-nez v5, :cond_5

    #@74
    .line 2371
    new-instance v5, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    #@76
    invoke-direct {v5, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    #@79
    iput-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    #@7b
    .line 2373
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    #@7e
    move-result-object v5

    #@7f
    if-nez v5, :cond_6

    #@81
    .line 2374
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    #@83
    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@86
    .line 2378
    :cond_6
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    #@89
    .line 2380
    return-object v0

    #@8a
    .line 2352
    :cond_7
    aput-boolean v8, p2, v7

    #@8c
    .line 2355
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    #@8f
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    .line 2835
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    #@3
    .line 2837
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@6
    move-result-object v0

    #@7
    .line 2838
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@a
    .line 2839
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 2843
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@18
    if-eqz v1, :cond_1

    #@1a
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@1c
    if-nez v1, :cond_1

    #@1e
    .line 2844
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@20
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    #@23
    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@25
    .line 2845
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@27
    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@29
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@2c
    .line 2848
    const/4 v1, 0x1

    #@2d
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@2f
    .line 2849
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@31
    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    #@33
    .line 2850
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@35
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    #@38
    move-result v1

    #@39
    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@3b
    .line 2834
    :cond_1
    return-void

    #@3c
    .line 2840
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3f
    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    #@0
    .prologue
    .line 2992
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    #@3
    .line 2993
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2994
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@c
    .line 2996
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2997
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@12
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@15
    .line 2999
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 3000
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@1b
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1e
    .line 3002
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 3003
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    #@24
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@27
    .line 2991
    :cond_3
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5652
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 5653
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 5654
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    #@11
    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    #@13
    .line 5655
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    #@15
    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    #@18
    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    #@1a
    .line 5657
    :cond_0
    const/16 v0, 0xb1

    #@1c
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    #@1e
    .line 5658
    const/4 v0, 0x6

    #@1f
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    #@21
    .line 5659
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    #@23
    return-object v0

    #@24
    .line 5661
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2856
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    #@5
    .line 2858
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    #@8
    .line 2861
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@b
    .line 2864
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@d
    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    #@10
    .line 2866
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@13
    move-result-object v0

    #@14
    .line 2867
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    #@17
    .line 2868
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@19
    if-eqz v1, :cond_0

    #@1b
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 2869
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@22
    .line 2870
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    #@24
    .line 2873
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@26
    if-eqz v1, :cond_1

    #@28
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 2874
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2e
    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@30
    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@33
    .line 2875
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@35
    .line 2878
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 2879
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@3b
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    #@3e
    .line 2880
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    #@40
    .line 2883
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 2884
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@46
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    #@49
    .line 2885
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    #@4b
    .line 2888
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@4d
    if-eqz v1, :cond_4

    #@4f
    .line 2889
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@51
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@54
    .line 2892
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@56
    if-eqz v1, :cond_5

    #@58
    .line 2893
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@5a
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@5d
    .line 2896
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    #@5f
    if-eqz v1, :cond_6

    #@61
    .line 2897
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    #@63
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@66
    .line 2900
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@68
    if-eqz v1, :cond_7

    #@6a
    .line 2901
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    #@6c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@6f
    .line 2904
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@71
    if-eqz v1, :cond_8

    #@73
    .line 2905
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@75
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@78
    .line 2906
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    #@7a
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@7d
    .line 2909
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    #@7f
    .line 2855
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    #@0
    .prologue
    .line 5461
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    #@3
    .line 5462
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 5474
    :cond_0
    :goto_0
    const/4 v0, 0x4

    #@7
    if-ne p1, v0, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    #@c
    .line 5460
    return-void

    #@d
    .line 5464
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@f
    if-eqz v0, :cond_0

    #@11
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 5465
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@1c
    goto :goto_0

    #@1d
    .line 5469
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@23
    if-eqz v0, :cond_0

    #@25
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@27
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@2a
    move-result v0

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 5470
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    #@30
    goto :goto_0

    #@31
    .line 5474
    :cond_1
    const/4 v0, 0x0

    #@32
    goto :goto_1

    #@33
    .line 5462
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 5947
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@2
    if-gez v0, :cond_0

    #@4
    if-lez p1, :cond_0

    #@6
    .line 5948
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@9
    .line 5949
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    #@c
    .line 5946
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1959
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1960
    if-eqz p1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@7
    if-gez v0, :cond_0

    #@9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1958
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1961
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_2

    #@16
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 1964
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@1d
    .line 1965
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@1f
    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    #@21
    .line 1966
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@23
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@29
    .line 1968
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    #@2c
    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 4047
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@4
    move-result v3

    #@5
    and-int/lit8 v3, v3, 0x2

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 4048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v3

    #@d
    packed-switch v3, :pswitch_data_0

    #@10
    .line 4075
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@13
    move-result v3

    #@14
    return v3

    #@15
    .line 4050
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@17
    const/4 v4, -0x1

    #@18
    if-ne v3, v4, :cond_0

    #@1a
    .line 4051
    const/16 v3, 0x9

    #@1c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@1f
    move-result v2

    #@20
    .line 4052
    .local v2, "vscroll":F
    const/4 v3, 0x0

    #@21
    cmpl-float v3, v2, v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 4053
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    #@28
    move-result v3

    #@29
    mul-float/2addr v3, v2

    #@2a
    float-to-int v1, v3

    #@2b
    .line 4054
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_0

    #@31
    .line 4055
    return v5

    #@32
    .line 4062
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    #@35
    move-result v0

    #@36
    .line 4063
    .local v0, "actionButton":I
    const/16 v3, 0x20

    #@38
    if-eq v0, v3, :cond_1

    #@3a
    .line 4064
    const/4 v3, 0x2

    #@3b
    if-ne v0, v3, :cond_0

    #@3d
    .line 4065
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@3f
    if-eqz v3, :cond_2

    #@41
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@43
    if-ne v3, v5, :cond_0

    #@45
    .line 4066
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_0

    #@4b
    .line 4067
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    #@4d
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@50
    .line 4068
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    #@52
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@55
    goto :goto_0

    #@56
    .line 4048
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    #@0
    .prologue
    .line 5882
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2

    #@6
    .line 5884
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@10
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 5881
    :cond_0
    :goto_0
    return-void

    #@17
    .line 5884
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 5885
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    #@1e
    goto :goto_0

    #@1f
    .line 5889
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@21
    if-eqz v0, :cond_0

    #@23
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@25
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 5890
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@2e
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2472
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/widget/ListAdapter;

    #@7
    .line 2473
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    #@8
    if-eq p2, v1, :cond_0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 2475
    :cond_0
    return-void

    #@d
    .line 2478
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_4

    #@13
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_4

    #@19
    .line 2483
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    #@1c
    move-result v1

    #@1d
    if-ne p2, v1, :cond_5

    #@1f
    .line 2484
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    #@22
    .line 2485
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@24
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@27
    .line 2490
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 2491
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@2f
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@32
    .line 2492
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@35
    .line 2495
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 2496
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@3d
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@40
    .line 2497
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    #@43
    .line 2471
    :cond_3
    return-void

    #@44
    .line 2479
    :cond_4
    const/4 v1, 0x0

    #@45
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@48
    .line 2480
    return-void

    #@49
    .line 2487
    :cond_5
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@4b
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@4e
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1496
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@4
    .line 1497
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1498
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1499
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@12
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@15
    .line 1500
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1a
    .line 1501
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@1d
    .line 1503
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 1504
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@25
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@28
    .line 1505
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@2a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@2d
    .line 1506
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@30
    .line 1495
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4223
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 4224
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 4227
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, -0x1

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 4232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@8
    move-result v0

    #@9
    .line 4235
    .local v0, "actionMasked":I
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 4236
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@f
    invoke-virtual {v7}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@12
    .line 4239
    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    #@14
    if-nez v7, :cond_1

    #@16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_1

    #@1c
    .line 4247
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@1e
    if-eqz v7, :cond_2

    #@20
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@22
    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 4248
    return v9

    #@29
    .line 4244
    :cond_1
    return v8

    #@2a
    .line 4251
    :cond_2
    packed-switch v0, :pswitch_data_0

    #@2d
    .line 4321
    :cond_3
    :goto_0
    :pswitch_0
    return v8

    #@2e
    .line 4253
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@30
    .line 4254
    .local v3, "touchMode":I
    const/4 v7, 0x6

    #@31
    if-eq v3, v7, :cond_4

    #@33
    const/4 v7, 0x5

    #@34
    if-ne v3, v7, :cond_5

    #@36
    .line 4255
    :cond_4
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@38
    .line 4256
    return v9

    #@39
    .line 4259
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3c
    move-result v7

    #@3d
    float-to-int v5, v7

    #@3e
    .line 4260
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@41
    move-result v7

    #@42
    float-to-int v6, v7

    #@43
    .line 4261
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@46
    move-result v7

    #@47
    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@49
    .line 4263
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    #@4c
    move-result v1

    #@4d
    .line 4264
    .local v1, "motionPosition":I
    if-eq v3, v12, :cond_6

    #@4f
    if-ltz v1, :cond_6

    #@51
    .line 4267
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@53
    sub-int v7, v1, v7

    #@55
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@58
    move-result-object v4

    #@59
    .line 4268
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@5c
    move-result v7

    #@5d
    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@5f
    .line 4269
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    #@61
    .line 4270
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@63
    .line 4271
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@65
    .line 4272
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@67
    .line 4273
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    #@6a
    .line 4275
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v7, -0x80000000

    #@6c
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    #@6e
    .line 4276
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    #@71
    .line 4277
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@73
    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@76
    .line 4278
    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@78
    .line 4279
    const/4 v7, 0x2

    #@79
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    #@7c
    .line 4280
    if-ne v3, v12, :cond_3

    #@7e
    .line 4281
    return v9

    #@7f
    .line 4287
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@81
    packed-switch v7, :pswitch_data_1

    #@84
    goto :goto_0

    #@85
    .line 4289
    :pswitch_3
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@87
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@8a
    move-result v2

    #@8b
    .line 4290
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    #@8d
    .line 4291
    const/4 v2, 0x0

    #@8e
    .line 4292
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@91
    move-result v7

    #@92
    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@94
    .line 4294
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@97
    move-result v7

    #@98
    float-to-int v6, v7

    #@99
    .line 4295
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    #@9c
    .line 4296
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@9e
    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@a1
    .line 4297
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@a4
    move-result v7

    #@a5
    float-to-int v7, v7

    #@a6
    invoke-direct {p0, v7, v6, v11}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    #@a9
    move-result v7

    #@aa
    if-eqz v7, :cond_3

    #@ac
    .line 4298
    return v9

    #@ad
    .line 4307
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@af
    .line 4308
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@b1
    .line 4309
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    #@b4
    .line 4310
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@b7
    .line 4311
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    #@ba
    goto/16 :goto_0

    #@bc
    .line 4316
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@bf
    goto/16 :goto_0

    #@c1
    .line 4251
    nop

    #@c2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    #@d4
    .line 4287
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 3185
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 3190
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_2

    #@8
    .line 3191
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 3192
    return v5

    #@f
    .line 3194
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 3195
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@1d
    if-ltz v1, :cond_2

    #@1f
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 3196
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@25
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@27
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    #@2a
    move-result v2

    #@2b
    if-ge v1, v2, :cond_2

    #@2d
    .line 3198
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@2f
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@31
    sub-int/2addr v1, v2

    #@32
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@35
    move-result-object v0

    #@36
    .line 3199
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    #@38
    .line 3200
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@3a
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    #@3c
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    #@3f
    .line 3201
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    #@42
    .line 3203
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    #@45
    .line 3204
    return v5

    #@46
    .line 3207
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@49
    move-result v1

    #@4a
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 2136
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    #@3
    .line 2138
    const/4 v2, 0x1

    #@4
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    #@6
    .line 2140
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@9
    move-result v0

    #@a
    .line 2141
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    #@c
    .line 2142
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 2143
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    #@16
    .line 2142
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2145
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@1b
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    #@1e
    .line 2148
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@21
    .line 2149
    const/4 v2, 0x0

    #@22
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    #@24
    .line 2151
    sub-int v2, p5, p3

    #@26
    div-int/lit8 v2, v2, 0x3

    #@28
    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    #@2a
    .line 2154
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 2155
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@30
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@33
    move-result v3

    #@34
    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@36
    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    #@39
    .line 2135
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2110
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@4
    if-nez v7, :cond_0

    #@6
    .line 2111
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    #@9
    .line 2113
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@b
    .line 2114
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    #@d
    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    #@f
    add-int/2addr v7, v8

    #@10
    iput v7, v4, Landroid/graphics/Rect;->left:I

    #@12
    .line 2115
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    #@14
    iget v8, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@16
    add-int/2addr v7, v8

    #@17
    iput v7, v4, Landroid/graphics/Rect;->top:I

    #@19
    .line 2116
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    #@1b
    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    #@1d
    add-int/2addr v7, v8

    #@1e
    iput v7, v4, Landroid/graphics/Rect;->right:I

    #@20
    .line 2117
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    #@22
    iget v8, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@24
    add-int/2addr v7, v8

    #@25
    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    #@27
    .line 2120
    iget v7, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    #@29
    if-ne v7, v5, :cond_1

    #@2b
    .line 2121
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@2e
    move-result v0

    #@2f
    .line 2122
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@32
    move-result v7

    #@33
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@36
    move-result v8

    #@37
    sub-int v3, v7, v8

    #@39
    .line 2123
    .local v3, "listBottom":I
    add-int/lit8 v7, v0, -0x1

    #@3b
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@3e
    move-result-object v2

    #@3f
    .line 2124
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    #@41
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@44
    move-result v1

    #@45
    .line 2125
    .local v1, "lastBottom":I
    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@47
    add-int/2addr v7, v0

    #@48
    iget v8, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    #@4a
    if-lt v7, v8, :cond_4

    #@4c
    .line 2126
    if-gt v1, v3, :cond_3

    #@4e
    .line 2125
    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    #@50
    .line 2109
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    #@51
    .line 2124
    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    #@52
    .restart local v1    # "lastBottom":I
    goto :goto_0

    #@53
    :cond_3
    move v5, v6

    #@54
    .line 2126
    goto :goto_1

    #@55
    :cond_4
    move v5, v6

    #@56
    .line 2125
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 4125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 4126
    .local v0, "childCount":I
    if-nez p4, :cond_2

    #@6
    if-lez v0, :cond_2

    #@8
    float-to-int v1, p3

    #@9
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 4127
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@12
    move-result v1

    #@13
    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    #@15
    int-to-float v2, v2

    #@16
    cmpl-float v1, v1, v2

    #@18
    if-lez v1, :cond_2

    #@1a
    .line 4128
    const/4 v1, 0x2

    #@1b
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@1e
    .line 4129
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@20
    if-nez v1, :cond_0

    #@22
    .line 4130
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    #@24
    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@27
    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@29
    .line 4132
    :cond_0
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_1

    #@30
    .line 4133
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@32
    float-to-int v2, p3

    #@33
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    #@36
    .line 4135
    :cond_1
    const/4 v1, 0x1

    #@37
    return v1

    #@38
    .line 4137
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    #@3b
    move-result v1

    #@3c
    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 4109
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@5
    move-result v0

    #@6
    div-int/lit8 v6, v0, 0x2

    #@8
    .line 4110
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v7

    #@c
    .line 4111
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    #@e
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@11
    move-result v8

    #@12
    .line 4112
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    #@14
    neg-int v0, p5

    #@15
    neg-int v3, p5

    #@16
    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 4113
    :cond_0
    move v4, p5

    #@1d
    .line 4114
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    #@1e
    .line 4115
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    #@20
    .line 4116
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@23
    move-result v0

    #@24
    sub-int v2, v0, v8

    #@26
    .line 4117
    sub-int/2addr v4, v2

    #@27
    :cond_1
    move-object v0, p0

    #@28
    move v3, v1

    #@29
    .line 4119
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    #@2c
    .line 4108
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    #@2d
    .line 4111
    .end local v8    # "oldTop":I
    :cond_3
    const/4 v8, 0x0

    #@2e
    .restart local v8    # "oldTop":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 4102
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@3
    .line 4103
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    #@7
    .line 4101
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    #@0
    .prologue
    .line 4036
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@2
    if-eq v0, p2, :cond_0

    #@4
    .line 4037
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    #@6
    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    #@8
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@a
    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    #@d
    .line 4038
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@f
    .line 4039
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    #@12
    .line 4041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    #@15
    .line 4035
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6125
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@3
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    if-eq v0, v1, :cond_1

    #@7
    .line 6126
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@9
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@c
    .line 6127
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 6128
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@12
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    #@15
    .line 6129
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    #@17
    .line 6131
    :cond_0
    return v2

    #@18
    .line 6132
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 6133
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@1e
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    #@21
    .line 6134
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 6136
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    #@0
    .prologue
    .line 6143
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v4, 0x1

    #@4
    move-object v0, p1

    #@5
    .line 1866
    check-cast v0, Landroid/widget/AbsListView$SavedState;

    #@7
    .line 1868
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@a
    move-result-object v1

    #@b
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@e
    .line 1869
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@10
    .line 1871
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    #@12
    int-to-long v2, v1

    #@13
    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    #@15
    .line 1873
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    #@17
    cmp-long v1, v2, v6

    #@19
    if-ltz v1, :cond_4

    #@1b
    .line 1874
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@1d
    .line 1875
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@1f
    .line 1876
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    #@21
    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    #@23
    .line 1877
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    #@25
    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@27
    .line 1878
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@29
    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    #@2b
    .line 1879
    const/4 v1, 0x0

    #@2c
    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    #@2e
    .line 1893
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    #@30
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    #@33
    .line 1895
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 1896
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    #@39
    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@3b
    .line 1899
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 1900
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    #@41
    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@43
    .line 1903
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    #@45
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@47
    .line 1905
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    #@49
    if-eqz v1, :cond_3

    #@4b
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@4d
    const/4 v2, 0x3

    #@4e
    if-ne v1, v2, :cond_3

    #@50
    .line 1906
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@52
    if-eqz v1, :cond_3

    #@54
    .line 1907
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@56
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@59
    move-result-object v1

    #@5a
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@5c
    .line 1910
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    #@5f
    .line 1865
    return-void

    #@60
    .line 1880
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@62
    cmp-long v1, v2, v6

    #@64
    if-ltz v1, :cond_0

    #@66
    .line 1881
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    #@69
    .line 1883
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@6c
    .line 1884
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@6e
    .line 1885
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@70
    .line 1886
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@72
    .line 1887
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@74
    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    #@76
    .line 1888
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    #@78
    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@7a
    .line 1889
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@7c
    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    #@7e
    .line 1890
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    #@80
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 2969
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    #@3
    .line 2970
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2971
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    #@10
    .line 2968
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    #@0
    .prologue
    .line 1774
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@3
    .line 1776
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    #@6
    move-result-object v11

    #@7
    .line 1778
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/AbsListView$SavedState;

    #@9
    invoke-direct {v10, v11}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@c
    .line 1780
    .local v10, "ss":Landroid/widget/AbsListView$SavedState;
    move-object/from16 v0, p0

    #@e
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@10
    if-eqz v14, :cond_0

    #@12
    .line 1782
    move-object/from16 v0, p0

    #@14
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@16
    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->selectedId:J

    #@18
    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    #@1a
    .line 1783
    move-object/from16 v0, p0

    #@1c
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@1e
    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@20
    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@22
    .line 1784
    move-object/from16 v0, p0

    #@24
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@26
    iget v14, v14, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@28
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@2a
    .line 1785
    move-object/from16 v0, p0

    #@2c
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@2e
    iget v14, v14, Landroid/widget/AbsListView$SavedState;->position:I

    #@30
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    #@32
    .line 1786
    move-object/from16 v0, p0

    #@34
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@36
    iget v14, v14, Landroid/widget/AbsListView$SavedState;->height:I

    #@38
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    #@3a
    .line 1787
    move-object/from16 v0, p0

    #@3c
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@3e
    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    #@40
    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    #@42
    .line 1788
    move-object/from16 v0, p0

    #@44
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@46
    iget-boolean v14, v14, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    #@48
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    #@4a
    .line 1789
    move-object/from16 v0, p0

    #@4c
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@4e
    iget v14, v14, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    #@50
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    #@52
    .line 1790
    move-object/from16 v0, p0

    #@54
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@56
    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    #@58
    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    #@5a
    .line 1791
    move-object/from16 v0, p0

    #@5c
    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@5e
    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    #@60
    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    #@62
    .line 1792
    return-object v10

    #@63
    .line 1795
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@66
    move-result v14

    #@67
    if-lez v14, :cond_3

    #@69
    move-object/from16 v0, p0

    #@6b
    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@6d
    if-lez v14, :cond_3

    #@6f
    const/4 v5, 0x1

    #@70
    .line 1796
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    #@73
    move-result-wide v8

    #@74
    .line 1797
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    #@76
    .line 1798
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@79
    move-result v14

    #@7a
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    #@7c
    .line 1800
    const-wide/16 v14, 0x0

    #@7e
    cmp-long v14, v8, v14

    #@80
    if-ltz v14, :cond_4

    #@82
    .line 1802
    move-object/from16 v0, p0

    #@84
    iget v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    #@86
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@88
    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    #@8b
    move-result v14

    #@8c
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    #@8e
    .line 1804
    const-wide/16 v14, -0x1

    #@90
    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@92
    .line 1831
    :goto_1
    const/4 v14, 0x0

    #@93
    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    #@95
    .line 1832
    move-object/from16 v0, p0

    #@97
    iget-boolean v14, v0, Landroid/widget/AbsListView;->mFiltered:Z

    #@99
    if-eqz v14, :cond_1

    #@9b
    .line 1833
    move-object/from16 v0, p0

    #@9d
    iget-object v12, v0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@9f
    .line 1834
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    #@a1
    .line 1835
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@a4
    move-result-object v3

    #@a5
    .line 1836
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    #@a7
    .line 1837
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@aa
    move-result-object v14

    #@ab
    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    #@ad
    .line 1842
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    #@af
    iget v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@b1
    const/4 v15, 0x3

    #@b2
    if-ne v14, v15, :cond_7

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget-object v14, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@b8
    if-eqz v14, :cond_7

    #@ba
    const/4 v14, 0x1

    #@bb
    :goto_2
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    #@bd
    .line 1844
    move-object/from16 v0, p0

    #@bf
    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@c1
    if-eqz v14, :cond_2

    #@c3
    .line 1845
    move-object/from16 v0, p0

    #@c5
    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@c7
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    #@ca
    move-result-object v14

    #@cb
    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    #@cd
    .line 1847
    :cond_2
    move-object/from16 v0, p0

    #@cf
    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@d1
    if-eqz v14, :cond_9

    #@d3
    .line 1848
    new-instance v7, Landroid/util/LongSparseArray;

    #@d5
    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    #@d8
    .line 1849
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@da
    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@dc
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    #@df
    move-result v2

    #@e0
    .line 1850
    .local v2, "count":I
    const/4 v6, 0x0

    #@e1
    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    #@e3
    .line 1851
    move-object/from16 v0, p0

    #@e5
    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@e7
    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@ea
    move-result-wide v16

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@ef
    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@f2
    move-result-object v14

    #@f3
    check-cast v14, Ljava/lang/Integer;

    #@f5
    move-wide/from16 v0, v16

    #@f7
    invoke-virtual {v7, v0, v1, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@fa
    .line 1850
    add-int/lit8 v6, v6, 0x1

    #@fc
    goto :goto_3

    #@fd
    .line 1795
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    #@fe
    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    #@100
    .line 1806
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    #@102
    move-object/from16 v0, p0

    #@104
    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@106
    if-lez v14, :cond_6

    #@108
    .line 1816
    const/4 v14, 0x0

    #@109
    move-object/from16 v0, p0

    #@10b
    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@10e
    move-result-object v13

    #@10f
    .line 1817
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    #@112
    move-result v14

    #@113
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@115
    .line 1818
    move-object/from16 v0, p0

    #@117
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@119
    .line 1819
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    #@11b
    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@11d
    if-lt v4, v14, :cond_5

    #@11f
    .line 1820
    move-object/from16 v0, p0

    #@121
    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@123
    add-int/lit8 v4, v14, -0x1

    #@125
    .line 1822
    :cond_5
    iput v4, v10, Landroid/widget/AbsListView$SavedState;->position:I

    #@127
    .line 1823
    move-object/from16 v0, p0

    #@129
    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@12b
    invoke-interface {v14, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@12e
    move-result-wide v14

    #@12f
    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@131
    goto/16 :goto_1

    #@133
    .line 1825
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v14, 0x0

    #@134
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    #@136
    .line 1826
    const-wide/16 v14, -0x1

    #@138
    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    #@13a
    .line 1827
    const/4 v14, 0x0

    #@13b
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    #@13d
    goto/16 :goto_1

    #@13f
    .line 1842
    :cond_7
    const/4 v14, 0x0

    #@140
    goto/16 :goto_2

    #@142
    .line 1853
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    #@144
    .line 1855
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    #@146
    iget v14, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@148
    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    #@14a
    .line 1857
    move-object/from16 v0, p0

    #@14c
    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@14e
    if-eqz v14, :cond_a

    #@150
    .line 1858
    move-object/from16 v0, p0

    #@152
    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@154
    invoke-virtual {v14}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    #@157
    .line 1861
    :cond_a
    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 2630
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 2631
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@9
    .line 2632
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    #@c
    .line 2635
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2636
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@12
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    #@15
    .line 2629
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4097
    and-int/lit8 v1, p3, 0x2

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 5911
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 5912
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    #@b
    .line 5913
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v1

    #@f
    .line 5914
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@11
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    #@14
    move-result v2

    #@15
    .line 5915
    .local v2, "showing":Z
    if-nez v2, :cond_2

    #@17
    if-lez v1, :cond_2

    #@19
    .line 5917
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    #@1c
    .line 5918
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@1e
    .line 5924
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@20
    instance-of v3, v3, Landroid/widget/Filterable;

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 5925
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@26
    check-cast v3, Landroid/widget/Filterable;

    #@28
    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    #@2b
    move-result-object v0

    #@2c
    .line 5927
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    #@2e
    .line 5928
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    #@31
    .line 5910
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    #@32
    .line 5919
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    #@34
    if-nez v1, :cond_0

    #@36
    .line 5921
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@39
    .line 5922
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@3b
    goto :goto_0

    #@3c
    .line 5930
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3e
    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    #@41
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 3612
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@5
    move-result v9

    #@6
    if-nez v9, :cond_1

    #@8
    .line 3615
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_0

    #@e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    #@11
    move-result v8

    #@12
    :cond_0
    return v8

    #@13
    .line 3618
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@15
    if-eqz v9, :cond_2

    #@17
    .line 3619
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@19
    invoke-virtual {v9}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@1c
    .line 3622
    :cond_2
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    #@1e
    if-nez v9, :cond_3

    #@20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    #@23
    move-result v9

    #@24
    if-eqz v9, :cond_3

    #@26
    .line 3630
    const/4 v9, 0x2

    #@27
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    #@2a
    .line 3632
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2c
    if-eqz v9, :cond_4

    #@2e
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@30
    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@33
    move-result v9

    #@34
    if-eqz v9, :cond_4

    #@36
    .line 3633
    return v8

    #@37
    .line 3627
    :cond_3
    return v11

    #@38
    .line 3636
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    #@3b
    .line 3637
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3e
    move-result-object v5

    #@3f
    .line 3639
    .local v5, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@42
    move-result v0

    #@43
    .line 3640
    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    #@45
    .line 3641
    iput v11, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@47
    .line 3643
    :cond_5
    const/4 v9, 0x0

    #@48
    iget v10, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    #@4a
    int-to-float v10, v10

    #@4b
    invoke-virtual {v5, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@4e
    .line 3644
    packed-switch v0, :pswitch_data_0

    #@51
    .line 3702
    :goto_0
    :pswitch_0
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@53
    if-eqz v9, :cond_6

    #@55
    .line 3703
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@57
    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@5a
    .line 3705
    :cond_6
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    #@5d
    .line 3706
    return v8

    #@5e
    .line 3646
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    #@61
    goto :goto_0

    #@62
    .line 3651
    :pswitch_2
    invoke-direct {p0, p1, v5}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    #@65
    goto :goto_0

    #@66
    .line 3656
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    #@69
    goto :goto_0

    #@6a
    .line 3661
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    #@6d
    goto :goto_0

    #@6e
    .line 3666
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@71
    .line 3667
    iget v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    #@73
    .line 3668
    .local v6, "x":I
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@75
    .line 3669
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    #@78
    move-result v4

    #@79
    .line 3670
    .local v4, "motionPosition":I
    if-ltz v4, :cond_7

    #@7b
    .line 3672
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@7d
    sub-int v9, v4, v9

    #@7f
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@82
    move-result-object v1

    #@83
    .line 3673
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@86
    move-result v9

    #@87
    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@89
    .line 3674
    iput v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@8b
    .line 3676
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    #@8d
    goto :goto_0

    #@8e
    .line 3682
    .end local v4    # "motionPosition":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@91
    move-result v3

    #@92
    .line 3683
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@95
    move-result v2

    #@96
    .line 3684
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    #@99
    move-result v9

    #@9a
    float-to-int v6, v9

    #@9b
    .line 3685
    .restart local v6    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    #@9e
    move-result v9

    #@9f
    float-to-int v7, v9

    #@a0
    .line 3686
    .restart local v7    # "y":I
    iput v11, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    #@a2
    .line 3687
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    #@a4
    .line 3688
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    #@a6
    .line 3689
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    #@a8
    .line 3690
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    #@ab
    move-result v4

    #@ac
    .line 3691
    .restart local v4    # "motionPosition":I
    if-ltz v4, :cond_8

    #@ae
    .line 3693
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@b0
    sub-int v9, v4, v9

    #@b2
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@b5
    move-result-object v1

    #@b6
    .line 3694
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@b9
    move-result v9

    #@ba
    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@bc
    .line 3695
    iput v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    #@be
    .line 3697
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    #@c0
    goto :goto_0

    #@c1
    .line 3644
    nop

    #@c2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3578
    if-eqz p1, :cond_2

    #@3
    .line 3580
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    #@6
    .line 3584
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@f
    move-result v1

    #@10
    if-lez v1, :cond_0

    #@12
    .line 3587
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@15
    .line 3589
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@18
    .line 3577
    :cond_1
    :goto_0
    return-void

    #@19
    .line 3591
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@1b
    .line 3592
    .local v0, "touchMode":I
    const/4 v1, 0x5

    #@1c
    if-eq v0, v1, :cond_3

    #@1e
    const/4 v1, 0x6

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    .line 3593
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 3594
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@27
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@2a
    .line 3596
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2c
    if-eqz v1, :cond_5

    #@2e
    .line 3597
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@30
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@33
    .line 3600
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 3601
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@39
    .line 3602
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    #@3c
    .line 3603
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    #@3f
    .line 3604
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    #@42
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2914
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    #@5
    .line 2916
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_3

    #@b
    const/4 v0, 0x0

    #@c
    .line 2918
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_4

    #@e
    .line 2919
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    #@11
    .line 2920
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2921
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@17
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@1a
    .line 2924
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@1c
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@1f
    .line 2925
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 2926
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@25
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@28
    .line 2928
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 2929
    iput v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    #@2e
    .line 2930
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    #@31
    .line 2931
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    #@34
    .line 2932
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    #@37
    .line 2936
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    #@3a
    .line 2938
    if-ne v0, v4, :cond_2

    #@3c
    .line 2940
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@3e
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@40
    .line 2964
    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    #@42
    .line 2913
    return-void

    #@43
    .line 2916
    .end local v0    # "touchMode":I
    :cond_3
    const/4 v0, 0x1

    #@44
    .restart local v0    # "touchMode":I
    goto :goto_0

    #@45
    .line 2943
    :cond_4
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@47
    if-eqz v1, :cond_5

    #@49
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    #@4b
    if-eqz v1, :cond_6

    #@4d
    .line 2949
    :cond_5
    :goto_2
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    #@4f
    if-eq v0, v1, :cond_2

    #@51
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    #@53
    const/4 v2, -0x1

    #@54
    if-eq v1, v2, :cond_2

    #@56
    .line 2951
    if-ne v0, v4, :cond_7

    #@58
    .line 2953
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    #@5b
    goto :goto_1

    #@5c
    .line 2945
    :cond_6
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    #@5f
    goto :goto_2

    #@60
    .line 2957
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    #@63
    .line 2958
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@65
    .line 2959
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    #@68
    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/16 v5, 0xc8

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 1529
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1530
    return v4

    #@b
    .line 1532
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 1550
    return v3

    #@f
    .line 1535
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    #@1c
    move-result v2

    #@1d
    add-int/lit8 v2, v2, -0x1

    #@1f
    if-ge v1, v2, :cond_1

    #@21
    .line 1536
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@24
    move-result v1

    #@25
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@27
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@29
    sub-int/2addr v1, v2

    #@2a
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@2c
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@2e
    sub-int v0, v1, v2

    #@30
    .line 1537
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    #@33
    .line 1538
    return v4

    #@34
    .line 1540
    .end local v0    # "viewportHeight":I
    :cond_1
    return v3

    #@35
    .line 1543
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@3d
    if-lez v1, :cond_2

    #@3f
    .line 1544
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@42
    move-result v1

    #@43
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@45
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@47
    sub-int/2addr v1, v2

    #@48
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@4a
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@4c
    sub-int v0, v1, v2

    #@4e
    .line 1545
    .restart local v0    # "viewportHeight":I
    neg-int v1, v0

    #@4f
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    #@52
    .line 1546
    return v4

    #@53
    .line 1548
    .end local v0    # "viewportHeight":I
    :cond_2
    return v3

    #@54
    .line 1532
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1094
    const/4 v8, 0x0

    #@3
    .line 1095
    .local v8, "handled":Z
    const/4 v7, 0x1

    #@4
    .line 1097
    .local v7, "dispatchItemClick":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@6
    if-eqz v1, :cond_4

    #@8
    .line 1098
    const/4 v8, 0x1

    #@9
    .line 1099
    const/4 v0, 0x0

    #@a
    .line 1101
    .local v0, "checkedStateChanged":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@c
    const/4 v2, 0x2

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 1102
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@11
    const/4 v2, 0x3

    #@12
    if-ne v1, v2, :cond_9

    #@14
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@16
    if-eqz v1, :cond_9

    #@18
    .line 1103
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@1a
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_6

    #@20
    const/4 v6, 0x0

    #@21
    .line 1104
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@23
    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@26
    .line 1105
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@28
    if-eqz v1, :cond_1

    #@2a
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2c
    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 1106
    if-eqz v6, :cond_7

    #@34
    .line 1107
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@36
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@38
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@3b
    move-result-wide v2

    #@3c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@43
    .line 1112
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    #@45
    .line 1113
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@47
    add-int/lit8 v1, v1, 0x1

    #@49
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@4b
    .line 1117
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@4d
    if-eqz v1, :cond_2

    #@4f
    .line 1118
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@51
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@53
    move v3, p2

    #@54
    move-wide v4, p3

    #@55
    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    #@58
    .line 1120
    const/4 v7, 0x0

    #@59
    .line 1122
    :cond_2
    const/4 v0, 0x1

    #@5a
    .line 1139
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    #@5c
    .line 1140
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    #@5f
    .line 1144
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    #@61
    .line 1145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    #@64
    move-result v1

    #@65
    or-int/2addr v8, v1

    #@66
    .line 1148
    .end local v8    # "handled":Z
    :cond_5
    return v8

    #@67
    .line 1103
    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_6
    const/4 v6, 0x1

    #@68
    .restart local v6    # "checked":Z
    goto :goto_0

    #@69
    .line 1109
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@6b
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@6d
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@70
    move-result-wide v2

    #@71
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    #@74
    goto :goto_1

    #@75
    .line 1115
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@77
    add-int/lit8 v1, v1, -0x1

    #@79
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@7b
    goto :goto_2

    #@7c
    .line 1123
    .end local v6    # "checked":Z
    :cond_9
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@7e
    if-ne v1, v5, :cond_3

    #@80
    .line 1124
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@82
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    #@85
    move-result v1

    #@86
    if-eqz v1, :cond_c

    #@88
    const/4 v6, 0x0

    #@89
    .line 1125
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    #@8b
    .line 1126
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@8d
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    #@90
    .line 1127
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@92
    invoke-virtual {v1, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@95
    .line 1128
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@97
    if-eqz v1, :cond_a

    #@99
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@9b
    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@9e
    move-result v1

    #@9f
    if-eqz v1, :cond_a

    #@a1
    .line 1129
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@a3
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    #@a6
    .line 1130
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@a8
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@aa
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@ad
    move-result-wide v2

    #@ae
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b1
    move-result-object v4

    #@b2
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@b5
    .line 1132
    :cond_a
    iput v5, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@b7
    .line 1136
    :cond_b
    :goto_5
    const/4 v0, 0x1

    #@b8
    goto :goto_3

    #@b9
    .line 1124
    .end local v6    # "checked":Z
    :cond_c
    const/4 v6, 0x1

    #@ba
    .restart local v6    # "checked":Z
    goto :goto_4

    #@bb
    .line 1133
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@bd
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    #@c0
    move-result v1

    #@c1
    if-eqz v1, :cond_e

    #@c3
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@c5
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@c8
    move-result v1

    #@c9
    if-nez v1, :cond_b

    #@cb
    .line 1134
    :cond_e
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@cd
    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 3116
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@4
    const/4 v1, 0x3

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 3117
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3118
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@d
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 3119
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    #@18
    .line 3120
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    #@1b
    .line 3122
    :cond_0
    return v2

    #@1c
    .line 3125
    :cond_1
    const/4 v6, 0x0

    #@1d
    .line 3126
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 3127
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@23
    move-object v1, p0

    #@24
    move-object v2, p1

    #@25
    move v3, p2

    #@26
    move-wide v4, p3

    #@27
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    #@2a
    move-result v6

    #@2b
    .line 3130
    .end local v6    # "handled":Z
    :cond_2
    if-nez v6, :cond_3

    #@2d
    .line 3131
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@33
    .line 3132
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    #@36
    move-result v6

    #@37
    .line 3134
    :cond_3
    if-eqz v6, :cond_4

    #@39
    .line 3135
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    #@3c
    .line 3137
    :cond_4
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 3231
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    #@2
    .line 3232
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    #@4
    .line 3233
    new-instance v4, Landroid/graphics/Rect;

    #@6
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    #@b
    .line 3234
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    #@d
    .line 3237
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@10
    move-result v1

    #@11
    .line 3238
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    #@13
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    #@15
    .line 3239
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 3240
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 3241
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@22
    .line 3242
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 3243
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2a
    add-int/2addr v4, v3

    #@2b
    return v4

    #@2c
    .line 3238
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 3247
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    #@30
    return v4
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 3260
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    #@3
    move-result v0

    #@4
    .line 3261
    .local v0, "position":I
    if-ltz v0, :cond_0

    #@6
    .line 3262
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@8
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 3264
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    #@f
    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    #@0
    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    #@2
    .line 2523
    const/4 v3, 0x0

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move-object v2, p2

    #@6
    move v5, v4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    #@a
    .line 2522
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    #@0
    .prologue
    .line 2512
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@6
    if-eq v0, p1, :cond_0

    #@8
    const/4 v0, -0x1

    #@9
    if-eq p1, v0, :cond_0

    #@b
    .line 2513
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@d
    .line 2514
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    #@10
    move-result v4

    #@11
    .line 2515
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    #@14
    move-result v5

    #@15
    .line 2516
    .local v5, "y":F
    const/4 v3, 0x1

    #@16
    move-object v0, p0

    #@17
    move v1, p1

    #@18
    move-object v2, p2

    #@19
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    #@1c
    .line 2511
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    #@1d
    .line 2518
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    #@20
    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    #@0
    .prologue
    .line 2505
    const/4 v3, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    #@9
    .line 2504
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    #@1
    .line 6044
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 6045
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@7
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->-get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    #@a
    move-result-object v3

    #@b
    .line 6048
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@e
    .line 6049
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    .line 6050
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    #@18
    .line 6052
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    #@1a
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@1c
    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@1e
    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 6053
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 6054
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@2a
    .line 6055
    if-eqz v3, :cond_0

    #@2c
    .line 6057
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    #@2f
    .line 6048
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 6061
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@34
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    #@37
    .line 6062
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    #@3a
    .line 6043
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5103
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@3
    .line 5104
    .local v0, "position":I
    if-gez v0, :cond_0

    #@5
    .line 5105
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@7
    .line 5107
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@a
    move-result v0

    #@b
    .line 5108
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    .line 5109
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 4370
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 4371
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4372
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    #@a
    .line 4373
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@c
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    #@f
    .line 4369
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 4215
    if-eqz p1, :cond_0

    #@2
    .line 4216
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    #@5
    .line 4218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    #@8
    .line 4214
    return-void
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 1974
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1973
    :cond_0
    :goto_0
    return-void

    #@9
    .line 1975
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    #@c
    goto :goto_0
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    #@0
    .prologue
    .line 1668
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 1669
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    #@9
    .line 1670
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    #@c
    .line 1671
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    #@f
    .line 1667
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 1983
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    #@6
    .line 1984
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@8
    .line 1985
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@a
    .line 1986
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    #@c
    .line 1987
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@e
    .line 1988
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    #@10
    .line 1989
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    #@12
    .line 1990
    const-wide/high16 v0, -0x8000000000000000L

    #@14
    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    #@16
    .line 1991
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    #@19
    .line 1992
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@1c
    .line 1993
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    #@1e
    .line 1994
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@20
    .line 1995
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@25
    .line 1996
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    #@28
    .line 1982
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    #@0
    .prologue
    .line 5171
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v3

    #@4
    .line 5173
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    #@6
    .line 5174
    const/16 v17, 0x0

    #@8
    return v17

    #@9
    .line 5177
    :cond_0
    const/4 v13, 0x0

    #@a
    .line 5179
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    #@c
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@e
    move-object/from16 v17, v0

    #@10
    move-object/from16 v0, v17

    #@12
    iget v5, v0, Landroid/graphics/Rect;->top:I

    #@14
    .line 5180
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    #@16
    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    #@18
    move/from16 v17, v0

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    #@1e
    move/from16 v18, v0

    #@20
    sub-int v17, v17, v18

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@26
    move-object/from16 v18, v0

    #@28
    move-object/from16 v0, v18

    #@2a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2c
    move/from16 v18, v0

    #@2e
    sub-int v4, v17, v18

    #@30
    .line 5181
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    #@32
    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@34
    .line 5182
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    #@36
    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@38
    .line 5183
    .local v14, "toPosition":I
    const/4 v6, 0x1

    #@39
    .line 5185
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    #@3b
    add-int v17, v7, v3

    #@3d
    move/from16 v0, v17

    #@3f
    if-ge v14, v0, :cond_4

    #@41
    .line 5186
    move v12, v14

    #@42
    .line 5188
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@46
    move/from16 v17, v0

    #@48
    sub-int v17, v12, v17

    #@4a
    move-object/from16 v0, p0

    #@4c
    move/from16 v1, v17

    #@4e
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@51
    move-result-object v10

    #@52
    .line 5189
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    #@55
    move-result v13

    #@56
    .line 5190
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    #@59
    move-result v11

    #@5a
    .line 5193
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    #@5c
    .line 5194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    #@5f
    move-result v17

    #@60
    add-int v13, v5, v17

    #@62
    .line 5250
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_0
    const/16 v17, -0x1

    #@64
    move/from16 v0, v17

    #@66
    move-object/from16 v1, p0

    #@68
    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@6a
    .line 5251
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@6e
    move-object/from16 v17, v0

    #@70
    move-object/from16 v0, p0

    #@72
    move-object/from16 v1, v17

    #@74
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@77
    .line 5252
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@7b
    move-object/from16 v17, v0

    #@7d
    if-eqz v17, :cond_2

    #@7f
    .line 5253
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@83
    move-object/from16 v17, v0

    #@85
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@88
    .line 5255
    :cond_2
    const/16 v17, -0x1

    #@8a
    move/from16 v0, v17

    #@8c
    move-object/from16 v1, p0

    #@8e
    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    #@90
    .line 5256
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    #@93
    .line 5257
    move-object/from16 v0, p0

    #@95
    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    #@97
    .line 5258
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    #@9c
    move-result v12

    #@9d
    .line 5259
    if-lt v12, v7, :cond_c

    #@9f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    #@a2
    move-result v17

    #@a3
    move/from16 v0, v17

    #@a5
    if-gt v12, v0, :cond_c

    #@a7
    .line 5260
    const/16 v17, 0x4

    #@a9
    move/from16 v0, v17

    #@ab
    move-object/from16 v1, p0

    #@ad
    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    #@af
    .line 5261
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@b2
    .line 5262
    move-object/from16 v0, p0

    #@b4
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    #@b7
    .line 5263
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    #@ba
    .line 5267
    :goto_1
    const/16 v17, 0x0

    #@bc
    move-object/from16 v0, p0

    #@be
    move/from16 v1, v17

    #@c0
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@c3
    .line 5269
    if-ltz v12, :cond_d

    #@c5
    const/16 v17, 0x1

    #@c7
    :goto_2
    return v17

    #@c8
    .line 5195
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    #@ca
    .line 5196
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    #@cd
    move-result v17

    #@ce
    sub-int v17, v4, v17

    #@d0
    .line 5197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    #@d3
    move-result v18

    #@d4
    .line 5196
    sub-int v13, v17, v18

    #@d6
    goto :goto_0

    #@d7
    .line 5200
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    #@d9
    .line 5202
    move v12, v7

    #@da
    .line 5203
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    #@db
    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    #@dd
    .line 5204
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@e2
    move-result-object v16

    #@e3
    .line 5205
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    #@e6
    move-result v15

    #@e7
    .line 5207
    .local v15, "top":I
    if-nez v8, :cond_6

    #@e9
    .line 5209
    move v13, v15

    #@ea
    .line 5211
    if-gtz v7, :cond_5

    #@ec
    if-ge v15, v5, :cond_6

    #@ee
    .line 5214
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    #@f1
    move-result v17

    #@f2
    add-int v5, v5, v17

    #@f4
    .line 5217
    :cond_6
    if-lt v15, v5, :cond_7

    #@f6
    .line 5219
    add-int v12, v7, v8

    #@f8
    .line 5220
    move v13, v15

    #@f9
    .line 5221
    goto/16 :goto_0

    #@fb
    .line 5203
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@fd
    goto :goto_3

    #@fe
    .line 5225
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    #@100
    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@102
    .line 5226
    .local v9, "itemCount":I
    const/4 v6, 0x0

    #@103
    .line 5227
    add-int v17, v7, v3

    #@105
    add-int/lit8 v12, v17, -0x1

    #@107
    .line 5229
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    #@109
    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    #@10b
    .line 5230
    move-object/from16 v0, p0

    #@10d
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@110
    move-result-object v16

    #@111
    .line 5231
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    #@114
    move-result v15

    #@115
    .line 5232
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    #@118
    move-result v2

    #@119
    .line 5234
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    #@11b
    move/from16 v0, v17

    #@11d
    if-ne v8, v0, :cond_a

    #@11f
    .line 5235
    move v13, v15

    #@120
    .line 5236
    add-int v17, v7, v3

    #@122
    move/from16 v0, v17

    #@124
    if-lt v0, v9, :cond_9

    #@126
    if-le v2, v4, :cond_a

    #@128
    .line 5237
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    #@12b
    move-result v17

    #@12c
    sub-int v4, v4, v17

    #@12e
    .line 5241
    :cond_a
    if-gt v2, v4, :cond_b

    #@130
    .line 5242
    add-int v12, v7, v8

    #@132
    .line 5243
    move v13, v15

    #@133
    .line 5244
    goto/16 :goto_0

    #@135
    .line 5229
    :cond_b
    add-int/lit8 v8, v8, -0x1

    #@137
    goto :goto_4

    #@138
    .line 5265
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    #@139
    goto :goto_1

    #@13a
    .line 5269
    :cond_d
    const/16 v17, 0x0

    #@13c
    goto :goto_2
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5151
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@3
    if-gez v0, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 5152
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@e
    .line 5153
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 5155
    :cond_0
    return v1
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    #@0
    .prologue
    .line 4850
    neg-int v0, p1

    #@1
    neg-int v1, p1

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    #@5
    .line 4849
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 1474
    const/16 v2, 0x1000

    #@2
    if-ne p1, v2, :cond_1

    #@4
    .line 1475
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@7
    move-result v0

    #@8
    .line 1476
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    #@b
    move-result v1

    #@c
    .line 1477
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    #@e
    if-ne v2, v0, :cond_0

    #@10
    .line 1478
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    #@12
    if-ne v2, v1, :cond_0

    #@14
    .line 1479
    return-void

    #@15
    .line 1481
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    #@17
    .line 1482
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    #@19
    .line 1485
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    #@1c
    .line 1470
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 5583
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 5584
    return v8

    #@9
    .line 5587
    :cond_0
    const/4 v2, 0x0

    #@a
    .line 5588
    .local v2, "handled":Z
    const/4 v3, 0x1

    #@b
    .line 5589
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 5621
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    #@10
    .line 5622
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    #@13
    .line 5624
    move-object v1, p3

    #@14
    .line 5625
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@17
    move-result v5

    #@18
    if-lez v5, :cond_1

    #@1a
    .line 5626
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    #@1d
    move-result-wide v6

    #@1e
    invoke-static {p3, v6, v7, v8}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    #@21
    move-result-object v1

    #@22
    .line 5629
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@25
    move-result v0

    #@26
    .line 5630
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@29
    .line 5644
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    #@2a
    .line 5596
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    #@2b
    .line 5597
    goto :goto_0

    #@2c
    .line 5599
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@2e
    if-eqz v5, :cond_4

    #@30
    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@32
    if-eqz v5, :cond_4

    #@34
    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@36
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_4

    #@3c
    .line 5600
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@3f
    move-result v5

    #@40
    if-nez v5, :cond_5

    #@42
    .line 5601
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_5

    #@48
    .line 5602
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@4b
    move-result-object v4

    #@4c
    .line 5603
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    #@4e
    .line 5604
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@51
    .line 5606
    :cond_3
    const/4 v2, 0x1

    #@52
    .line 5613
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    #@53
    .line 5614
    goto :goto_0

    #@54
    .line 5607
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@57
    move-result v5

    #@58
    if-ne v5, v7, :cond_4

    #@5a
    .line 5608
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    #@5d
    move-result v5

    #@5e
    .line 5607
    if-eqz v5, :cond_4

    #@60
    .line 5608
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    #@63
    move-result v5

    #@64
    if-nez v5, :cond_4

    #@66
    .line 5609
    const/4 v2, 0x1

    #@67
    .line 5610
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@69
    const-string/jumbo v6, ""

    #@6c
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@6f
    goto :goto_2

    #@70
    .line 5617
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@72
    .local v3, "okToSend":Z
    goto :goto_0

    #@73
    .line 5632
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@75
    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@78
    move-result v2

    #@79
    .local v2, "handled":Z
    goto :goto_1

    #@7a
    .line 5636
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@7c
    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@7f
    move-result v2

    #@80
    .local v2, "handled":Z
    goto :goto_1

    #@81
    .line 5640
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@83
    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    #@86
    move-result v2

    #@87
    .local v2, "handled":Z
    goto :goto_1

    #@88
    .line 5589
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    #@aa
    .line 5630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    #@0
    .prologue
    .line 891
    check-cast p1, Landroid/widget/ListAdapter;

    #@2
    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@5
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 892
    if-eqz p1, :cond_0

    #@2
    .line 893
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@7
    move-result v0

    #@8
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@a
    .line 894
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 895
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@14
    if-nez v0, :cond_0

    #@16
    .line 896
    new-instance v0, Landroid/util/LongSparseArray;

    #@18
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@1d
    .line 900
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 901
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@23
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    #@26
    .line 904
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@28
    if-eqz v0, :cond_2

    #@2a
    .line 905
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@2c
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    #@2f
    .line 891
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    #@0
    .prologue
    .line 6014
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    #@2
    if-eq p1, v2, :cond_1

    #@4
    .line 6015
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    #@6
    .line 6016
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@9
    move-result v0

    #@a
    .line 6017
    .local v0, "count":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@d
    .line 6018
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    #@14
    .line 6017
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 6020
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@19
    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    #@1c
    .line 6013
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 3
    .param p1, "choiceMode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1192
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@4
    .line 1193
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1194
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@a
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@d
    .line 1195
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@f
    .line 1197
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@11
    if-eqz v0, :cond_3

    #@13
    .line 1198
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@15
    if-nez v0, :cond_1

    #@17
    .line 1199
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@19
    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@1c
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@1e
    .line 1201
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@20
    if-nez v0, :cond_2

    #@22
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@24
    if-eqz v0, :cond_2

    #@26
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@28
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 1202
    new-instance v0, Landroid/util/LongSparseArray;

    #@30
    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    #@33
    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@35
    .line 1205
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@37
    const/4 v1, 0x3

    #@38
    if-ne v0, v1, :cond_3

    #@3a
    .line 1206
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    #@3d
    .line 1207
    const/4 v0, 0x1

    #@3e
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    #@41
    .line 1191
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    #@0
    .prologue
    .line 2684
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    #@2
    .line 2683
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    #@0
    .prologue
    .line 1316
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 1317
    if-eqz p1, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 1321
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    #@c
    .line 1323
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1324
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    #@15
    .line 1315
    :cond_1
    :goto_1
    return-void

    #@16
    .line 1318
    :cond_2
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 1326
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$2;

    #@1d
    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    #@20
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    #@23
    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1256
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1257
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    #@6
    .line 1259
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1260
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    #@f
    .line 1255
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1262
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    #@12
    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    #@15
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    #@18
    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    #@0
    .prologue
    .line 1294
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1295
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    #@6
    .line 1293
    :goto_0
    return-void

    #@7
    .line 1297
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    #@c
    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1926
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 1924
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1927
    :cond_1
    const/4 v1, 0x0

    #@c
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    #@f
    .line 1930
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@14
    .line 1931
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    #@16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    #@1d
    .line 1932
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1f
    instance-of v1, v1, Landroid/widget/Filterable;

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 1934
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@25
    if-nez v1, :cond_2

    #@27
    .line 1935
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@29
    check-cast v1, Landroid/widget/Filterable;

    #@2b
    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    #@2e
    move-result-object v0

    #@2f
    .line 1936
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    #@32
    .line 1940
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    #@33
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@35
    .line 1941
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    #@37
    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    #@3a
    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 2166
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    #@6
    .line 2170
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    const/4 v1, 0x1

    #@d
    .line 2171
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    #@f
    if-eqz v2, :cond_0

    #@11
    if-eqz v1, :cond_0

    #@13
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    #@19
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 2172
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    #@22
    .line 2176
    .end local v1    # "visible":Z
    :cond_0
    return v0

    #@23
    .line 2170
    :cond_1
    const/4 v1, 0x0

    #@24
    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    #@0
    .prologue
    .line 4652
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4653
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@9
    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@b
    .line 4655
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@d
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    #@14
    .line 4651
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1024
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1025
    return-void

    #@8
    .line 1029
    :cond_0
    if-eqz p2, :cond_1

    #@a
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@c
    if-ne v1, v6, :cond_1

    #@e
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@10
    if-nez v1, :cond_1

    #@12
    .line 1030
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@14
    if-eqz v1, :cond_7

    #@16
    .line 1031
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@18
    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_7

    #@1e
    .line 1036
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@20
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@26
    .line 1039
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@28
    const/4 v2, 0x2

    #@29
    if-eq v1, v2, :cond_2

    #@2b
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    #@2d
    if-ne v1, v6, :cond_a

    #@2f
    .line 1040
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@31
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@34
    move-result v0

    #@35
    .line 1041
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@37
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@3a
    .line 1042
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@3c
    if-eqz v1, :cond_3

    #@3e
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@40
    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_3

    #@46
    .line 1043
    if-eqz p2, :cond_8

    #@48
    .line 1044
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@4a
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@4c
    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@4f
    move-result-wide v2

    #@50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@57
    .line 1049
    :cond_3
    :goto_0
    if-eq v0, p2, :cond_4

    #@59
    .line 1050
    if-eqz p2, :cond_9

    #@5b
    .line 1051
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@5d
    add-int/lit8 v1, v1, 0x1

    #@5f
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@61
    .line 1056
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@63
    if-eqz v1, :cond_5

    #@65
    .line 1057
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@67
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@6a
    move-result-wide v4

    #@6b
    .line 1058
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@6d
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    #@6f
    move v3, p1

    #@70
    move v6, p2

    #@71
    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    #@74
    .line 1085
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    #@76
    if-nez v1, :cond_6

    #@78
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    #@7a
    if-eqz v1, :cond_11

    #@7c
    .line 1023
    :cond_6
    :goto_3
    return-void

    #@7d
    .line 1032
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7f
    const-string/jumbo v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    #@82
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@85
    throw v1

    #@86
    .line 1046
    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@88
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@8a
    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@8d
    move-result-wide v2

    #@8e
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    #@91
    goto :goto_0

    #@92
    .line 1053
    :cond_9
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@94
    add-int/lit8 v1, v1, -0x1

    #@96
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@98
    goto :goto_1

    #@99
    .line 1062
    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@9b
    if-eqz v1, :cond_e

    #@9d
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@9f
    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@a2
    move-result v7

    #@a3
    .line 1065
    :goto_4
    if-nez p2, :cond_b

    #@a5
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    #@a8
    move-result v1

    #@a9
    if-eqz v1, :cond_c

    #@ab
    .line 1066
    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@ad
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    #@b0
    .line 1067
    if-eqz v7, :cond_c

    #@b2
    .line 1068
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@b4
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    #@b7
    .line 1073
    :cond_c
    if-eqz p2, :cond_f

    #@b9
    .line 1074
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@bb
    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@be
    .line 1075
    if-eqz v7, :cond_d

    #@c0
    .line 1076
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    #@c2
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@c4
    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@c7
    move-result-wide v2

    #@c8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@cf
    .line 1078
    :cond_d
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@d1
    goto :goto_2

    #@d2
    .line 1062
    :cond_e
    const/4 v7, 0x0

    #@d3
    .local v7, "updateIds":Z
    goto :goto_4

    #@d4
    .line 1079
    .end local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@d6
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    #@d9
    move-result v1

    #@da
    if-eqz v1, :cond_10

    #@dc
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    #@de
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@e1
    move-result v1

    #@e2
    if-nez v1, :cond_5

    #@e4
    .line 1080
    :cond_10
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    #@e6
    goto :goto_2

    #@e7
    .line 1086
    :cond_11
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    #@e9
    .line 1087
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    #@ec
    .line 1088
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    #@ef
    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1223
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    #@9
    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@b
    .line 1225
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    #@10
    .line 1221
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    #@0
    .prologue
    .line 1451
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@2
    .line 1452
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    #@5
    .line 1450
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 874
    const/4 v1, 0x2

    #@2
    if-eq p1, v1, :cond_1

    #@4
    .line 875
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@6
    if-nez v1, :cond_0

    #@8
    .line 876
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    .line 877
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    #@e
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@11
    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@13
    .line 878
    new-instance v1, Landroid/widget/EdgeEffect;

    #@15
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@18
    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@1a
    .line 884
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    #@1d
    .line 873
    return-void

    #@1e
    .line 881
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@20
    .line 882
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@22
    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    #@0
    .prologue
    .line 6173
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@2
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    #@5
    .line 6172
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6080
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 6081
    new-instance v0, Landroid/content/Intent$FilterComparison;

    #@6
    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@9
    .line 6082
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@b
    .line 6083
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@d
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    #@10
    move-result-object v2

    #@11
    .line 6082
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@14
    .line 6084
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 6085
    return-void

    #@1b
    .line 6088
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    #@1c
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    #@1e
    .line 6090
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    #@20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    #@27
    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@29
    .line 6091
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2b
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    .line 6092
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@33
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@36
    .line 6077
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 6106
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6107
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@6
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    #@9
    .line 6103
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 1396
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    #@3
    .line 1397
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1398
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    #@c
    .line 1395
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    #@0
    .prologue
    .line 2767
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    #@2
    .line 2768
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    #@4
    .line 2766
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1590
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 1593
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    #@8
    .line 1589
    return-void

    #@9
    .line 1591
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    #@c
    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 6910
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6911
    return-void

    #@5
    .line 6914
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_5

    #@b
    .line 6915
    const/4 v0, 0x1

    #@c
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    #@f
    move-result p1

    #@10
    .line 6916
    if-ltz p1, :cond_1

    #@12
    .line 6917
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    #@15
    .line 6923
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    #@17
    .line 6924
    const/4 v0, 0x4

    #@18
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    #@1a
    .line 6925
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@1c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@1e
    add-int/2addr v0, p2

    #@1f
    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    #@21
    .line 6927
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 6928
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    #@27
    .line 6929
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@29
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@2c
    move-result-wide v0

    #@2d
    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    #@2f
    .line 6932
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 6933
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@35
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@38
    .line 6935
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    #@3b
    .line 6909
    :cond_4
    return-void

    #@3c
    .line 6920
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    #@3e
    goto :goto_0
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    #@0
    .prologue
    .line 2695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 2694
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2699
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2700
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 2701
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 2703
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@11
    .line 2704
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    .line 2705
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@19
    .line 2706
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@1b
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    #@1d
    .line 2707
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@1f
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    #@21
    .line 2708
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@23
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    #@25
    .line 2709
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@27
    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    #@29
    .line 2710
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2c
    .line 2711
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    #@2f
    .line 2698
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1430
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    #@2
    .line 1429
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    #@0
    .prologue
    .line 1661
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1662
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    #@6
    .line 1663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    #@9
    .line 1660
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    #@0
    .prologue
    .line 1607
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    #@2
    .line 1606
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 5985
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    #@2
    .line 5984
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 4665
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    #@2
    .line 4664
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1388
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    #@3
    .line 1389
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1390
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    #@9
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    #@c
    .line 1387
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 6156
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6157
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    #@9
    .line 6155
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    #@0
    .prologue
    .line 2663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2

    #@12
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    :cond_2
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    #@0
    .prologue
    .line 3148
    float-to-int v4, p1

    #@1
    float-to-int v5, p2

    #@2
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    #@5
    move-result v1

    #@6
    .line 3149
    .local v1, "position":I
    const/4 v4, -0x1

    #@7
    if-eq v1, v4, :cond_0

    #@9
    .line 3150
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@b
    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@e
    move-result-wide v2

    #@f
    .line 3151
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@11
    sub-int v4, v1, v4

    #@13
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 3152
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@19
    .line 3153
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    #@1c
    move-result-object v4

    #@1d
    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@1f
    .line 3154
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    #@22
    move-result v4

    #@23
    return v4

    #@24
    .line 3157
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    #@27
    move-result v4

    #@28
    return v4
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3162
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    #@4
    move-result v3

    #@5
    .line 3163
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    #@7
    .line 3164
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@9
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@c
    move-result-wide v4

    #@d
    .line 3165
    .local v4, "longPressId":J
    const/4 v6, 0x0

    #@e
    .line 3167
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 3168
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@14
    move-object v1, p0

    #@15
    move-object v2, p1

    #@16
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    #@19
    move-result v6

    #@1a
    .line 3171
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    #@1c
    .line 3173
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@1e
    sub-int v0, v3, v0

    #@20
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    .line 3172
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2a
    .line 3175
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    #@2d
    move-result v6

    #@2e
    .line 3178
    :cond_1
    return v6

    #@2f
    .line 3180
    .end local v4    # "longPressId":J
    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    #@0
    .prologue
    .line 4747
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    #@4
    .line 4746
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4751
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 4752
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    #@7
    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    #@a
    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@c
    .line 4756
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@e
    .line 4757
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@11
    move-result v1

    #@12
    .line 4758
    .local v1, "childCount":I
    add-int v3, v2, v1

    #@14
    .line 4759
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@17
    move-result v4

    #@18
    .line 4760
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    #@1b
    move-result v5

    #@1c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@1f
    move-result v6

    #@20
    sub-int v0, v5, v6

    #@22
    .line 4762
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_1

    #@24
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@26
    if-nez v5, :cond_3

    #@28
    .line 4766
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@2a
    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    #@2d
    .line 4767
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2f
    if-eqz v5, :cond_2

    #@31
    .line 4768
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@33
    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    #@36
    .line 4750
    :cond_2
    :goto_0
    return-void

    #@37
    .line 4762
    :cond_3
    if-eqz v1, :cond_1

    #@39
    .line 4763
    if-nez v2, :cond_4

    #@3b
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@42
    move-result v5

    #@43
    if-ne v5, v4, :cond_4

    #@45
    if-ltz p1, :cond_1

    #@47
    .line 4764
    :cond_4
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    #@49
    if-ne v3, v5, :cond_5

    #@4b
    .line 4765
    add-int/lit8 v5, v1, -0x1

    #@4d
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@54
    move-result v5

    #@55
    if-ne v5, v0, :cond_5

    #@57
    if-gtz p1, :cond_1

    #@59
    .line 4771
    :cond_5
    const/4 v5, 0x2

    #@5a
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@5d
    .line 4772
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #@5f
    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    #@62
    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    #@0
    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    #@2
    const/4 v9, 0x0

    #@3
    .line 4780
    const/4 v2, -0x1

    #@4
    .line 4781
    .local v2, "index":I
    if-gez p1, :cond_3

    #@6
    .line 4782
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@9
    move-result v2

    #@a
    .line 4787
    :cond_0
    :goto_0
    const/4 v7, -0x1

    #@b
    if-le v2, v7, :cond_2

    #@d
    .line 4788
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@10
    move-result v7

    #@11
    sub-int v7, v2, v7

    #@13
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 4789
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    #@19
    .line 4790
    new-instance v4, Landroid/graphics/Rect;

    #@1b
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@1e
    .line 4791
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_1

    #@24
    .line 4793
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@27
    move-result v7

    #@28
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@2b
    move-result v8

    #@2c
    mul-int v1, v7, v8

    #@2e
    .line 4794
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@31
    move-result v7

    #@32
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@35
    move-result v8

    #@36
    mul-int v5, v7, v8

    #@38
    .line 4795
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    #@39
    int-to-float v8, v1

    #@3a
    div-float v3, v7, v8

    #@3c
    .line 4796
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    #@3e
    .line 4797
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    #@40
    cmpg-float v7, v3, v10

    #@42
    if-gez v7, :cond_4

    #@44
    .line 4800
    add-int/lit8 v2, v2, 0x1

    #@46
    .line 4807
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    #@49
    move-result v7

    #@4a
    add-int v8, v2, p1

    #@4c
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@4f
    move-result v7

    #@50
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    #@53
    move-result v7

    #@54
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    #@57
    .line 4779
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    #@58
    .line 4783
    :cond_3
    if-lez p1, :cond_0

    #@5a
    .line 4784
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    #@5d
    move-result v2

    #@5e
    goto :goto_0

    #@5f
    .line 4801
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    #@61
    cmpg-float v7, v3, v10

    #@63
    if-gez v7, :cond_1

    #@65
    .line 4804
    add-int/lit8 v2, v2, -0x1

    #@67
    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 4681
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4682
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@a
    .line 4684
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@c
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    #@f
    .line 4680
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    #@0
    .prologue
    .line 4735
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4736
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@a
    .line 4738
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    #@f
    .line 4734
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 4718
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4719
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@a
    .line 4721
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    #@f
    .line 4717
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    #@0
    .prologue
    .line 4700
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4701
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@a
    .line 4703
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    #@c
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    #@f
    .line 4699
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 2646
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2651
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 2649
    :pswitch_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 2646
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    #@0
    .prologue
    .line 4889
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@3
    move-result v8

    #@4
    .line 4890
    .local v8, "childCount":I
    if-nez v8, :cond_0

    #@6
    .line 4891
    const/16 v29, 0x1

    #@8
    return v29

    #@9
    .line 4894
    :cond_0
    const/16 v29, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    move/from16 v1, v29

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v29

    #@13
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    #@16
    move-result v16

    #@17
    .line 4895
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    #@19
    move-object/from16 v0, p0

    #@1b
    move/from16 v1, v29

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@20
    move-result-object v29

    #@21
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    #@24
    move-result v22

    #@25
    .line 4897
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    #@27
    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    #@29
    move-object/from16 v23, v0

    #@2b
    .line 4902
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    #@2c
    .line 4903
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    #@2d
    .line 4904
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@31
    move/from16 v29, v0

    #@33
    and-int/lit8 v29, v29, 0x22

    #@35
    const/16 v30, 0x22

    #@37
    move/from16 v0, v29

    #@39
    move/from16 v1, v30

    #@3b
    if-ne v0, v1, :cond_1

    #@3d
    .line 4905
    move-object/from16 v0, v23

    #@3f
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@41
    .line 4906
    move-object/from16 v0, v23

    #@43
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    #@45
    .line 4910
    :cond_1
    sub-int v25, v13, v16

    #@47
    .line 4911
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@4a
    move-result v29

    #@4b
    sub-int v14, v29, v12

    #@4d
    .line 4912
    .local v14, "end":I
    sub-int v26, v22, v14

    #@4f
    .line 4914
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@52
    move-result v29

    #@53
    move-object/from16 v0, p0

    #@55
    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    #@57
    move/from16 v30, v0

    #@59
    sub-int v29, v29, v30

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    #@5f
    move/from16 v30, v0

    #@61
    sub-int v19, v29, v30

    #@63
    .line 4915
    .local v19, "height":I
    if-gez p1, :cond_3

    #@65
    .line 4916
    add-int/lit8 v29, v19, -0x1

    #@67
    move/from16 v0, v29

    #@69
    neg-int v0, v0

    #@6a
    move/from16 v29, v0

    #@6c
    move/from16 v0, v29

    #@6e
    move/from16 v1, p1

    #@70
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@73
    move-result p1

    #@74
    .line 4921
    :goto_0
    if-gez p2, :cond_4

    #@76
    .line 4922
    add-int/lit8 v29, v19, -0x1

    #@78
    move/from16 v0, v29

    #@7a
    neg-int v0, v0

    #@7b
    move/from16 v29, v0

    #@7d
    move/from16 v0, v29

    #@7f
    move/from16 v1, p2

    #@81
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@84
    move-result p2

    #@85
    .line 4927
    :goto_1
    move-object/from16 v0, p0

    #@87
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@89
    .line 4930
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    #@8b
    .line 4931
    move-object/from16 v0, v23

    #@8d
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@8f
    move/from16 v29, v0

    #@91
    sub-int v29, v16, v29

    #@93
    move/from16 v0, v29

    #@95
    move-object/from16 v1, p0

    #@97
    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    #@99
    .line 4935
    :goto_2
    add-int v29, v15, v8

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@9f
    move/from16 v30, v0

    #@a1
    move/from16 v0, v29

    #@a3
    move/from16 v1, v30

    #@a5
    if-ne v0, v1, :cond_6

    #@a7
    .line 4936
    move-object/from16 v0, v23

    #@a9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@ab
    move/from16 v29, v0

    #@ad
    add-int v29, v29, v22

    #@af
    move/from16 v0, v29

    #@b1
    move-object/from16 v1, p0

    #@b3
    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    #@b5
    .line 4941
    :goto_3
    if-nez v15, :cond_8

    #@b7
    .line 4942
    move-object/from16 v0, v23

    #@b9
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@bb
    move/from16 v29, v0

    #@bd
    move/from16 v0, v16

    #@bf
    move/from16 v1, v29

    #@c1
    if-lt v0, v1, :cond_8

    #@c3
    if-ltz p2, :cond_7

    #@c5
    const/4 v5, 0x1

    #@c6
    .line 4943
    .local v5, "cannotScrollDown":Z
    :goto_4
    add-int v29, v15, v8

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@cc
    move/from16 v30, v0

    #@ce
    move/from16 v0, v29

    #@d0
    move/from16 v1, v30

    #@d2
    if-ne v0, v1, :cond_a

    #@d4
    .line 4944
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@d7
    move-result v29

    #@d8
    move-object/from16 v0, v23

    #@da
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@dc
    move/from16 v30, v0

    #@de
    sub-int v29, v29, v30

    #@e0
    move/from16 v0, v22

    #@e2
    move/from16 v1, v29

    #@e4
    if-gt v0, v1, :cond_a

    #@e6
    if-gtz p2, :cond_9

    #@e8
    const/4 v6, 0x1

    #@e9
    .line 4946
    .local v6, "cannotScrollUp":Z
    :goto_5
    if-nez v5, :cond_2

    #@eb
    if-eqz v6, :cond_c

    #@ed
    .line 4947
    :cond_2
    if-eqz p2, :cond_b

    #@ef
    const/16 v29, 0x1

    #@f1
    :goto_6
    return v29

    #@f2
    .line 4918
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    #@f4
    move/from16 v0, v29

    #@f6
    move/from16 v1, p1

    #@f8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@fb
    move-result p1

    #@fc
    goto/16 :goto_0

    #@fe
    .line 4924
    :cond_4
    add-int/lit8 v29, v19, -0x1

    #@100
    move/from16 v0, v29

    #@102
    move/from16 v1, p2

    #@104
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@107
    move-result p2

    #@108
    goto/16 :goto_1

    #@10a
    .line 4933
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    #@10e
    move/from16 v29, v0

    #@110
    add-int v29, v29, p2

    #@112
    move/from16 v0, v29

    #@114
    move-object/from16 v1, p0

    #@116
    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    #@118
    goto :goto_2

    #@119
    .line 4938
    :cond_6
    move-object/from16 v0, p0

    #@11b
    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    #@11d
    move/from16 v29, v0

    #@11f
    add-int v29, v29, p2

    #@121
    move/from16 v0, v29

    #@123
    move-object/from16 v1, p0

    #@125
    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    #@127
    goto :goto_3

    #@128
    .line 4942
    :cond_7
    const/4 v5, 0x0

    #@129
    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    #@12a
    .line 4941
    .end local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v5, 0x0

    #@12b
    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    #@12c
    .line 4944
    :cond_9
    const/4 v6, 0x0

    #@12d
    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    #@12e
    .line 4943
    .end local v6    # "cannotScrollUp":Z
    :cond_a
    const/4 v6, 0x0

    #@12f
    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    #@130
    .line 4947
    :cond_b
    const/16 v29, 0x0

    #@132
    goto :goto_6

    #@133
    .line 4950
    :cond_c
    if-gez p2, :cond_16

    #@135
    const/4 v11, 0x1

    #@136
    .line 4952
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    #@139
    move-result v21

    #@13a
    .line 4953
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_d

    #@13c
    .line 4954
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    #@13f
    .line 4957
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    #@142
    move-result v18

    #@143
    .line 4958
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    #@145
    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    #@147
    move/from16 v29, v0

    #@149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    #@14c
    move-result v30

    #@14d
    sub-int v17, v29, v30

    #@14f
    .line 4960
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    #@151
    .line 4961
    .local v27, "start":I
    const/4 v10, 0x0

    #@152
    .line 4963
    .local v10, "count":I
    if-eqz v11, :cond_19

    #@154
    .line 4964
    move/from16 v0, p2

    #@156
    neg-int v0, v0

    #@157
    move/from16 v28, v0

    #@159
    .line 4965
    .local v28, "top":I
    move-object/from16 v0, p0

    #@15b
    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@15d
    move/from16 v29, v0

    #@15f
    and-int/lit8 v29, v29, 0x22

    #@161
    const/16 v30, 0x22

    #@163
    move/from16 v0, v29

    #@165
    move/from16 v1, v30

    #@167
    if-ne v0, v1, :cond_e

    #@169
    .line 4966
    move-object/from16 v0, v23

    #@16b
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@16d
    move/from16 v29, v0

    #@16f
    add-int v28, v28, v29

    #@171
    .line 4968
    :cond_e
    const/16 v20, 0x0

    #@173
    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    #@175
    if-ge v0, v8, :cond_f

    #@177
    .line 4969
    move-object/from16 v0, p0

    #@179
    move/from16 v1, v20

    #@17b
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@17e
    move-result-object v7

    #@17f
    .line 4970
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    #@182
    move-result v29

    #@183
    move/from16 v0, v29

    #@185
    move/from16 v1, v28

    #@187
    if-lt v0, v1, :cond_17

    #@189
    .line 5006
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_f
    move-object/from16 v0, p0

    #@18b
    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    #@18d
    move/from16 v29, v0

    #@18f
    add-int v29, v29, p1

    #@191
    move/from16 v0, v29

    #@193
    move-object/from16 v1, p0

    #@195
    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    #@197
    .line 5008
    const/16 v29, 0x1

    #@199
    move/from16 v0, v29

    #@19b
    move-object/from16 v1, p0

    #@19d
    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    #@19f
    .line 5010
    if-lez v10, :cond_10

    #@1a1
    .line 5011
    move-object/from16 v0, p0

    #@1a3
    move/from16 v1, v27

    #@1a5
    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    #@1a8
    .line 5012
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@1ac
    move-object/from16 v29, v0

    #@1ae
    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    #@1b1
    .line 5017
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    #@1b4
    move-result v29

    #@1b5
    if-nez v29, :cond_11

    #@1b7
    .line 5018
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    #@1ba
    .line 5021
    :cond_11
    move-object/from16 v0, p0

    #@1bc
    move/from16 v1, p2

    #@1be
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    #@1c1
    .line 5023
    if-eqz v11, :cond_12

    #@1c3
    .line 5024
    move-object/from16 v0, p0

    #@1c5
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@1c7
    move/from16 v29, v0

    #@1c9
    add-int v29, v29, v10

    #@1cb
    move/from16 v0, v29

    #@1cd
    move-object/from16 v1, p0

    #@1cf
    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    #@1d1
    .line 5027
    :cond_12
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    #@1d4
    move-result v3

    #@1d5
    .line 5028
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    #@1d7
    if-lt v0, v3, :cond_13

    #@1d9
    move/from16 v0, v26

    #@1db
    if-ge v0, v3, :cond_14

    #@1dd
    .line 5029
    :cond_13
    move-object/from16 v0, p0

    #@1df
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    #@1e2
    .line 5032
    :cond_14
    if-nez v21, :cond_1c

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@1e8
    move/from16 v29, v0

    #@1ea
    const/16 v30, -0x1

    #@1ec
    move/from16 v0, v29

    #@1ee
    move/from16 v1, v30

    #@1f0
    if-eq v0, v1, :cond_1c

    #@1f2
    .line 5033
    move-object/from16 v0, p0

    #@1f4
    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@1f6
    move/from16 v29, v0

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@1fc
    move/from16 v30, v0

    #@1fe
    sub-int v9, v29, v30

    #@200
    .line 5034
    .local v9, "childIndex":I
    if-ltz v9, :cond_15

    #@202
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@205
    move-result v29

    #@206
    move/from16 v0, v29

    #@208
    if-ge v9, v0, :cond_15

    #@20a
    .line 5035
    move-object/from16 v0, p0

    #@20c
    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    #@20e
    move/from16 v29, v0

    #@210
    move-object/from16 v0, p0

    #@212
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@215
    move-result-object v30

    #@216
    move-object/from16 v0, p0

    #@218
    move/from16 v1, v29

    #@21a
    move-object/from16 v2, v30

    #@21c
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    #@21f
    .line 5046
    .end local v9    # "childIndex":I
    :cond_15
    :goto_9
    const/16 v29, 0x0

    #@221
    move/from16 v0, v29

    #@223
    move-object/from16 v1, p0

    #@225
    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    #@227
    .line 5048
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    #@22a
    .line 5050
    const/16 v29, 0x0

    #@22c
    return v29

    #@22d
    .line 4950
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_16
    const/4 v11, 0x0

    #@22e
    .restart local v11    # "down":Z
    goto/16 :goto_7

    #@230
    .line 4973
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_17
    add-int/lit8 v10, v10, 0x1

    #@232
    .line 4974
    add-int v24, v15, v20

    #@234
    .line 4975
    .local v24, "position":I
    move/from16 v0, v24

    #@236
    move/from16 v1, v18

    #@238
    if-lt v0, v1, :cond_18

    #@23a
    move/from16 v0, v24

    #@23c
    move/from16 v1, v17

    #@23e
    if-ge v0, v1, :cond_18

    #@240
    .line 4978
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    #@243
    .line 4979
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@247
    move-object/from16 v29, v0

    #@249
    move-object/from16 v0, v29

    #@24b
    move/from16 v1, v24

    #@24d
    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@250
    .line 4968
    :cond_18
    add-int/lit8 v20, v20, 0x1

    #@252
    goto/16 :goto_8

    #@254
    .line 4984
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    #@257
    move-result v29

    #@258
    sub-int v4, v29, p2

    #@25a
    .line 4985
    .local v4, "bottom":I
    move-object/from16 v0, p0

    #@25c
    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    #@25e
    move/from16 v29, v0

    #@260
    and-int/lit8 v29, v29, 0x22

    #@262
    const/16 v30, 0x22

    #@264
    move/from16 v0, v29

    #@266
    move/from16 v1, v30

    #@268
    if-ne v0, v1, :cond_1a

    #@26a
    .line 4986
    move-object/from16 v0, v23

    #@26c
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@26e
    move/from16 v29, v0

    #@270
    sub-int v4, v4, v29

    #@272
    .line 4988
    :cond_1a
    add-int/lit8 v20, v8, -0x1

    #@274
    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_f

    #@276
    .line 4989
    move-object/from16 v0, p0

    #@278
    move/from16 v1, v20

    #@27a
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@27d
    move-result-object v7

    #@27e
    .line 4990
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@281
    move-result v29

    #@282
    move/from16 v0, v29

    #@284
    if-le v0, v4, :cond_f

    #@286
    .line 4993
    move/from16 v27, v20

    #@288
    .line 4994
    add-int/lit8 v10, v10, 0x1

    #@28a
    .line 4995
    add-int v24, v15, v20

    #@28c
    .line 4996
    .restart local v24    # "position":I
    move/from16 v0, v24

    #@28e
    move/from16 v1, v18

    #@290
    if-lt v0, v1, :cond_1b

    #@292
    move/from16 v0, v24

    #@294
    move/from16 v1, v17

    #@296
    if-ge v0, v1, :cond_1b

    #@298
    .line 4999
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    #@29b
    .line 5000
    move-object/from16 v0, p0

    #@29d
    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #@29f
    move-object/from16 v29, v0

    #@2a1
    move-object/from16 v0, v29

    #@2a3
    move/from16 v1, v24

    #@2a5
    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    #@2a8
    .line 4988
    :cond_1b
    add-int/lit8 v20, v20, -0x1

    #@2aa
    goto :goto_a

    #@2ab
    .line 5037
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1c
    move-object/from16 v0, p0

    #@2ad
    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@2af
    move/from16 v29, v0

    #@2b1
    const/16 v30, -0x1

    #@2b3
    move/from16 v0, v29

    #@2b5
    move/from16 v1, v30

    #@2b7
    if-eq v0, v1, :cond_1d

    #@2b9
    .line 5038
    move-object/from16 v0, p0

    #@2bb
    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    #@2bd
    move/from16 v29, v0

    #@2bf
    move-object/from16 v0, p0

    #@2c1
    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    #@2c3
    move/from16 v30, v0

    #@2c5
    sub-int v9, v29, v30

    #@2c7
    .line 5039
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_15

    #@2c9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    #@2cc
    move-result v29

    #@2cd
    move/from16 v0, v29

    #@2cf
    if-ge v9, v0, :cond_15

    #@2d1
    .line 5040
    move-object/from16 v0, p0

    #@2d3
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@2d6
    move-result-object v29

    #@2d7
    const/16 v30, -0x1

    #@2d9
    move-object/from16 v0, p0

    #@2db
    move/from16 v1, v30

    #@2dd
    move-object/from16 v2, v29

    #@2df
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    #@2e2
    goto/16 :goto_9

    #@2e4
    .line 5043
    .end local v9    # "childIndex":I
    :cond_1d
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    #@2e8
    move-object/from16 v29, v0

    #@2ea
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    #@2ed
    goto/16 :goto_9
.end method

.method updateScrollIndicators()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    .line 2205
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2206
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    #@8
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_2

    #@e
    move v0, v1

    #@f
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 2209
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 2210
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    #@18
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@21
    .line 2204
    :cond_1
    return-void

    #@22
    :cond_2
    move v0, v2

    #@23
    .line 2206
    goto :goto_0

    #@24
    :cond_3
    move v1, v2

    #@25
    .line 2210
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 2

    #@0
    .prologue
    .line 2772
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2773
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 2774
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13
    .line 2771
    :cond_0
    :goto_0
    return-void

    #@14
    .line 2776
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@16
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@1b
    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2824
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
