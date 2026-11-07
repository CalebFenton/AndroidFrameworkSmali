.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ItemInfo;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist CLOSE_ENOUGH:I = 0x2

.field private static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final blacklist DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final blacklist DRAW_ORDER_DEFAULT:I = 0x0

.field private static final blacklist DRAW_ORDER_FORWARD:I = 0x1

.field private static final blacklist DRAW_ORDER_REVERSE:I = 0x2

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static final blacklist LAYOUT_ATTRS:[I

.field private static final blacklist MAX_SCROLL_X:I = 0x1000000

.field private static final blacklist MAX_SETTLE_DURATION:I = 0x258

.field private static final blacklist MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final blacklist MIN_FLING_VELOCITY:I = 0x190

.field public static final blacklist SCROLL_STATE_DRAGGING:I = 0x1

.field public static final blacklist SCROLL_STATE_IDLE:I = 0x0

.field public static final blacklist SCROLL_STATE_SETTLING:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ViewPager"

.field private static final blacklist USE_CACHE:Z = false

.field private static final blacklist sInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private blacklist mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private blacklist mBottomPageBounds:I

.field private blacklist mCalledSuper:Z

.field private blacklist mChildHeightMeasureSpec:I

.field private blacklist mChildWidthMeasureSpec:I

.field private final blacklist mCloseEnough:I

.field private blacklist mCurItem:I

.field private blacklist mDecorChildCount:I

.field private final blacklist mDefaultGutterSize:I

.field private blacklist mDrawingOrder:I

.field private blacklist mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndScrollRunnable:Ljava/lang/Runnable;

.field private blacklist mExpectedAdapterCount:I

.field private blacklist mFirstLayout:Z

.field private blacklist mFirstOffset:F

.field private final blacklist mFlingDistance:I

.field private blacklist mGutterSize:I

.field private blacklist mInLayout:Z

.field private blacklist mInitialMotionX:F

.field private blacklist mInitialMotionY:F

.field private blacklist mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private blacklist mIsBeingDragged:Z

.field private blacklist mIsUnableToDrag:Z

.field private final blacklist mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastMotionX:F

.field private blacklist mLastMotionY:F

.field private blacklist mLastOffset:F

.field private final blacklist mLeftEdge:Landroid/widget/EdgeEffect;

.field private blacklist mLeftIncr:I

.field private blacklist mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMaximumVelocity:I

.field private final blacklist mMinimumVelocity:I

.field private blacklist mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private blacklist mOffscreenPageLimit:I

.field private blacklist mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private blacklist mPageMargin:I

.field private blacklist mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private blacklist mPopulatePending:Z

.field private blacklist mRestoredAdapterState:Landroid/os/Parcelable;

.field private blacklist mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private blacklist mRestoredCurItem:I

.field private final blacklist mRightEdge:Landroid/widget/EdgeEffect;

.field private blacklist mScrollState:I

.field private final blacklist mScroller:Landroid/widget/Scroller;

.field private blacklist mScrollingCacheEnabled:Z

.field private final blacklist mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTopPageBounds:I

.field private final blacklist mTouchSlop:I

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetScrollState(Lcom/android/internal/widget/ViewPager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLAYOUT_ATTRS()[I
    .registers 1

    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 100
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 107
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 340
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 123
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 136
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 141
    const v1, -0x800001

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 142
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 151
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 169
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 225
    new-instance v0, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 346
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setDescendantFocusability(I)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setFocusable(Z)V

    .line 349
    new-instance v0, Landroid/widget/Scroller;

    sget-object v2, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 350
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 351
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 353
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 354
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 356
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 357
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 359
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    .line 360
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    .line 361
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_9a

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 366
    :cond_9a
    return-void
.end method

.method private blacklist calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .registers 15
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1114
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1115
    .local v0, "N":I
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 1116
    .local v1, "width":I
    if-lez v1, :cond_12

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1119
    .local v2, "marginOffset":F
    :goto_13
    if-eqz p3, :cond_b3

    .line 1120
    iget v3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1123
    .local v3, "oldCurPosition":I
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6a

    .line 1124
    const/4 v4, 0x0

    .line 1125
    .local v4, "itemIndex":I
    iget v5, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    .line 1126
    .local v5, "offset":F
    add-int/lit8 v6, v3, 0x1

    .local v6, "pos":I
    :goto_24
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v6, v7, :cond_b2

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_b2

    .line 1127
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1128
    .local v7, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_38
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_52

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_52

    .line 1129
    add-int/lit8 v4, v4, 0x1

    .line 1130
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_38

    .line 1133
    :cond_52
    :goto_52
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_61

    .line 1136
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1137
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 1140
    :cond_61
    iput v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1141
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1126
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 1143
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_6a
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b2

    .line 1144
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1145
    .restart local v4    # "itemIndex":I
    iget v5, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1146
    .restart local v5    # "offset":F
    add-int/lit8 v6, v3, -0x1

    .restart local v6    # "pos":I
    :goto_7a
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v6, v7, :cond_b3

    if-ltz v4, :cond_b3

    .line 1147
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1148
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_88
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_9a

    if-lez v4, :cond_9a

    .line 1149
    add-int/lit8 v4, v4, -0x1

    .line 1150
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_88

    .line 1153
    :cond_9a
    :goto_9a
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_a9

    .line 1156
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1157
    add-int/lit8 v6, v6, -0x1

    goto :goto_9a

    .line 1160
    :cond_a9
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1161
    iput v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1146
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    .line 1143
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_b2
    nop

    .line 1167
    .end local v3    # "oldCurPosition":I
    :cond_b3
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1168
    .local v3, "itemCount":I
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1169
    .local v4, "offset":F
    iget v5, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1170
    .local v5, "pos":I
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_c6

    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_c9

    :cond_c6
    const v6, -0x800001

    :goto_c9
    iput v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1171
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_da

    .line 1172
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_dd

    :cond_da
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_dd
    iput v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1175
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_e1
    if-ltz v6, :cond_10c

    .line 1176
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1177
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_eb
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_fb

    .line 1178
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .end local v5    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_eb

    .line 1180
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_fb
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1181
    iput v4, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1182
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_107

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1175
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_107
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_e1

    .line 1185
    .end local v6    # "i":I
    :cond_10c
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1186
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1189
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_118
    if-ge v5, v3, :cond_149

    .line 1190
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1191
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_122
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_132

    .line 1192
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_122

    .line 1194
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_132
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_13e

    .line 1195
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1197
    :cond_13e
    iput v6, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1198
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1189
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_118

    .line 1200
    .end local v5    # "i":I
    :cond_149
    return-void
.end method

.method private blacklist canScroll()Z
    .registers 3

    .line 2802
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist completeScroll(Z)V
    .registers 8
    .param p1, "postEvents"    # Z

    .line 1763
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1764
    .local v0, "needPopulate":Z
    :goto_9
    if-eqz v0, :cond_2e

    .line 1766
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1767
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 1769
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 1770
    .local v3, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1771
    .local v4, "x":I
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1772
    .local v5, "y":I
    if-ne v1, v4, :cond_2b

    if-eq v3, v5, :cond_2e

    .line 1773
    :cond_2b
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1776
    .end local v1    # "oldX":I
    .end local v3    # "oldY":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2e
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1777
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4b

    .line 1778
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1779
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_48

    .line 1780
    const/4 v0, 0x1

    .line 1781
    iput-boolean v2, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1777
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1784
    .end local v1    # "i":I
    :cond_4b
    if-eqz v0, :cond_5a

    .line 1785
    if-eqz p1, :cond_55

    .line 1786
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_5a

    .line 1788
    :cond_55
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1791
    :cond_5a
    :goto_5a
    return-void
.end method

.method private blacklist determineTargetPage(IFII)I
    .registers 10
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2273
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_2f

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2274
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2275
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    .line 2276
    if-gez p3, :cond_2b

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    sub-int v0, p1, v0

    .local v0, "targetPage":I
    goto :goto_44

    .line 2278
    .end local v0    # "targetPage":I
    :cond_2f
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_37

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_3a

    :cond_37
    const v0, 0x3f19999a    # 0.6f

    .line 2279
    .local v0, "truncator":F
    :goto_3a
    int-to-float v1, p1

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    int-to-float v3, v3

    add-float v4, p2, v0

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    move v0, v1

    .line 2282
    .local v0, "targetPage":I
    :goto_44
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6c

    .line 2283
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2284
    .local v1, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2287
    .local v2, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 2290
    .end local v1    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_6c
    return v0
.end method

.method private blacklist enableLayers(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1799
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 1800
    if-eqz p1, :cond_b

    const/4 v2, 0x2

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 1801
    .local v2, "layerType":I
    :goto_c
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1799
    .end local v2    # "layerType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1803
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private blacklist endDrag()V
    .registers 2

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2407
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2409
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2410
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2413
    :cond_11
    return-void
.end method

.method private blacklist getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2582
    if-nez p1, :cond_8

    .line 2583
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2585
    :cond_8
    if-nez p2, :cond_f

    .line 2586
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2587
    return-object p1

    .line 2589
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2590
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2591
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2592
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2594
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2595
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_2b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    if-eq v0, p0, :cond_5d

    .line 2596
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2597
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2598
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2599
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2600
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2602
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2603
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_2b

    .line 2604
    :cond_5d
    return-object p1
.end method

.method private blacklist getLeftEdgeForItem(I)I
    .registers 8
    .param p1, "position"    # I

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 571
    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_8

    .line 572
    const/4 v1, 0x0

    return v1

    .line 575
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 576
    .local v1, "width":I
    int-to-float v2, v1

    iget v3, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 579
    .local v2, "scaledOffset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 580
    int-to-float v3, v1

    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 581
    .local v3, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    return v4

    .line 583
    .end local v3    # "itemWidth":I
    :cond_2c
    return v2
.end method

.method private blacklist getPaddedWidth()I
    .registers 3

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist getScrollStart()I
    .registers 3

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2258
    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 2260
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    return v0
.end method

.method private blacklist infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 18

    .line 2210
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v1

    .line 2211
    .local v1, "startOffset":I
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 2212
    .local v2, "width":I
    const/4 v3, 0x0

    if-lez v2, :cond_11

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_12

    :cond_11
    move v4, v3

    .line 2213
    .local v4, "scrollOffset":F
    :goto_12
    if-lez v2, :cond_19

    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v5, v2

    div-float/2addr v3, v5

    .line 2215
    .local v3, "marginOffset":F
    :cond_19
    const/4 v5, -0x1

    .line 2216
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .line 2217
    .local v6, "lastOffset":F
    const/4 v7, 0x0

    .line 2218
    .local v7, "lastWidth":F
    const/4 v8, 0x1

    .line 2219
    .local v8, "first":Z
    const/4 v9, 0x0

    .line 2221
    .local v9, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2222
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_25
    if-ge v11, v10, :cond_7e

    .line 2223
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2226
    .local v12, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v8, :cond_4e

    iget v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_4e

    .line 2228
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2229
    add-float v13, v6, v7

    add-float/2addr v13, v3

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2230
    add-int/lit8 v13, v5, 0x1

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2231
    iget-object v13, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v14, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2232
    add-int/lit8 v11, v11, -0x1

    .line 2235
    :cond_4e
    iget v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2236
    .local v13, "offset":F
    move v14, v13

    .line 2237
    .local v14, "startBound":F
    if-nez v8, :cond_59

    cmpl-float v15, v4, v14

    if-ltz v15, :cond_58

    goto :goto_59

    .line 2243
    :cond_58
    return-object v9

    .line 2238
    :cond_59
    :goto_59
    iget v15, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v13

    add-float/2addr v15, v3

    .line 2239
    .local v15, "endBound":F
    cmpg-float v16, v4, v15

    if-ltz v16, :cond_7b

    move/from16 v16, v1

    .end local v1    # "startOffset":I
    .local v16, "startOffset":I
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_6e

    goto :goto_7d

    .line 2242
    .end local v15    # "endBound":F
    :cond_6e
    nop

    .line 2246
    const/4 v8, 0x0

    .line 2247
    iget v5, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2248
    move v6, v13

    .line 2249
    iget v7, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2250
    move-object v9, v12

    .line 2222
    .end local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    goto :goto_25

    .line 2239
    .end local v16    # "startOffset":I
    .restart local v1    # "startOffset":I
    .restart local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "offset":F
    .restart local v14    # "startBound":F
    .restart local v15    # "endBound":F
    :cond_7b
    move/from16 v16, v1

    .line 2240
    .end local v1    # "startOffset":I
    .restart local v16    # "startOffset":I
    :goto_7d
    return-object v12

    .line 2253
    .end local v11    # "i":I
    .end local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    .end local v15    # "endBound":F
    .end local v16    # "startOffset":I
    .restart local v1    # "startOffset":I
    :cond_7e
    return-object v9
.end method

.method private blacklist isGutterDrag(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 1794
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2392
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2393
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_26

    .line 2396
    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2397
    .local v2, "newPointerIndex":I
    :goto_11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2398
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2399
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_26

    .line 2400
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2403
    .end local v2    # "newPointerIndex":I
    :cond_26
    return-void
.end method

.method private blacklist pageScrolled(I)Z
    .registers 12
    .param p1, "scrollX"    # I

    .line 1649
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 1650
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1651
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1652
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_16

    .line 1656
    return v2

    .line 1653
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1661
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1662
    const/high16 v0, 0x1000000

    sub-int/2addr v0, p1

    .local v0, "scrollStart":I
    goto :goto_27

    .line 1664
    .end local v0    # "scrollStart":I
    :cond_26
    move v0, p1

    .line 1667
    .restart local v0    # "scrollStart":I
    :goto_27
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v3

    .line 1668
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v4

    .line 1669
    .local v4, "width":I
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    add-int/2addr v5, v4

    .line 1670
    .local v5, "widthWithMargin":I
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 1671
    .local v6, "marginOffset":F
    iget v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1672
    .local v7, "currentPage":I
    int-to-float v8, v0

    int-to-float v9, v4

    div-float/2addr v8, v9

    iget v9, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    div-float/2addr v8, v9

    .line 1674
    .local v8, "pageOffset":F
    int-to-float v9, v5

    mul-float/2addr v9, v8

    float-to-int v9, v9

    .line 1676
    .local v9, "offsetPixels":I
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1677
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1678
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_51

    .line 1682
    const/4 v1, 0x1

    return v1

    .line 1679
    :cond_51
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist performDrag(FF)Z
    .registers 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2118
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 2120
    .local v3, "needsInvalidate":Z
    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v4, v1

    .line 2121
    .local v4, "dX":F
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v5

    .line 2122
    .local v5, "width":I
    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2123
    invoke-direct {v0, v4, v2}, Lcom/android/internal/widget/ViewPager;->releaseHorizontalGlow(FF)F

    move-result v6

    .line 2124
    .local v6, "releaseConsumed":F
    sub-float v7, v4, v6

    .line 2125
    .local v7, "deltaX":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_1c

    .line 2126
    const/4 v3, 0x1

    .line 2128
    :cond_1c
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_28

    .line 2129
    return v3

    .line 2134
    :cond_28
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 2135
    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2136
    .local v8, "startEdge":Landroid/widget/EdgeEffect;
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .local v9, "endEdge":Landroid/widget/EdgeEffect;
    goto :goto_37

    .line 2138
    .end local v8    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v9    # "endEdge":Landroid/widget/EdgeEffect;
    :cond_33
    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2139
    .restart local v8    # "startEdge":Landroid/widget/EdgeEffect;
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2143
    .restart local v9    # "endEdge":Landroid/widget/EdgeEffect;
    :goto_37
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    .line 2145
    .local v10, "nextScrollX":F
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v11

    const/high16 v12, 0x4b800000    # 1.6777216E7f

    if-eqz v11, :cond_48

    .line 2146
    sub-float v11, v12, v10

    .local v11, "scrollStart":F
    goto :goto_49

    .line 2148
    .end local v11    # "scrollStart":F
    :cond_48
    move v11, v10

    .line 2152
    .restart local v11    # "scrollStart":F
    :goto_49
    iget-object v13, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2153
    .local v13, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v15, v13, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    const/16 v16, 0x1

    if-nez v15, :cond_5b

    move/from16 v15, v16

    goto :goto_5c

    :cond_5b
    move v15, v14

    .line 2154
    .local v15, "startAbsolute":Z
    :goto_5c
    if-eqz v15, :cond_65

    .line 2155
    move/from16 v17, v12

    iget v12, v13, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v5

    mul-float/2addr v12, v14

    .local v12, "startBound":F
    goto :goto_6b

    .line 2157
    .end local v12    # "startBound":F
    :cond_65
    move/from16 v17, v12

    int-to-float v12, v5

    iget v14, v0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v12, v14

    .line 2161
    .restart local v12    # "startBound":F
    :goto_6b
    iget-object v14, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2162
    .local v1, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v14, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v14, v2, :cond_8a

    move/from16 v14, v16

    goto :goto_8b

    :cond_8a
    const/4 v14, 0x0

    .line 2163
    .local v14, "endAbsolute":Z
    :goto_8b
    if-eqz v14, :cond_94

    .line 2164
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v16, v1

    .end local v1    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v16, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    int-to-float v1, v5

    mul-float/2addr v2, v1

    .local v2, "endBound":F
    goto :goto_9a

    .line 2166
    .end local v2    # "endBound":F
    .end local v16    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v1    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_94
    move-object/from16 v16, v1

    .end local v1    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v16    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    int-to-float v1, v5

    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v1

    .line 2170
    .restart local v2    # "endBound":F
    :goto_9a
    cmpg-float v1, v11, v12

    if-gez v1, :cond_bd

    .line 2171
    if-eqz v15, :cond_b9

    .line 2172
    sub-float v1, v12, v11

    .line 2173
    .local v1, "over":F
    move/from16 v18, v1

    .end local v1    # "over":F
    .local v18, "over":F
    int-to-float v1, v5

    div-float v1, v18, v1

    move/from16 v19, v2

    .end local v2    # "endBound":F
    .local v19, "endBound":F
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v2, v20, v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2174
    const/4 v3, 0x1

    goto :goto_bb

    .line 2171
    .end local v18    # "over":F
    .end local v19    # "endBound":F
    .restart local v2    # "endBound":F
    :cond_b9
    move/from16 v19, v2

    .line 2176
    .end local v2    # "endBound":F
    .restart local v19    # "endBound":F
    :goto_bb
    move v1, v12

    .local v1, "clampedScrollStart":F
    goto :goto_db

    .line 2177
    .end local v1    # "clampedScrollStart":F
    .end local v19    # "endBound":F
    .restart local v2    # "endBound":F
    :cond_bd
    move/from16 v19, v2

    .end local v2    # "endBound":F
    .restart local v19    # "endBound":F
    cmpl-float v1, v11, v19

    if-lez v1, :cond_da

    .line 2178
    if-eqz v14, :cond_d7

    .line 2179
    sub-float v1, v11, v19

    .line 2180
    .local v1, "over":F
    int-to-float v2, v5

    div-float v2, v1, v2

    move/from16 v18, v1

    .end local v1    # "over":F
    .restart local v18    # "over":F
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-virtual {v9, v2, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2181
    const/4 v3, 0x1

    .line 2183
    .end local v18    # "over":F
    :cond_d7
    move/from16 v1, v19

    .local v1, "clampedScrollStart":F
    goto :goto_db

    .line 2185
    .end local v1    # "clampedScrollStart":F
    :cond_da
    move v1, v11

    .line 2190
    .restart local v1    # "clampedScrollStart":F
    :goto_db
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 2191
    sub-float v2, v17, v1

    .local v2, "targetScrollX":F
    goto :goto_e5

    .line 2193
    .end local v2    # "targetScrollX":F
    :cond_e4
    move v2, v1

    .line 2197
    .restart local v2    # "targetScrollX":F
    :goto_e5
    move/from16 v17, v1

    .end local v1    # "clampedScrollStart":F
    .local v17, "clampedScrollStart":F
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v18, v1

    float-to-int v1, v2

    int-to-float v1, v1

    sub-float v1, v2, v1

    add-float v1, v18, v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2199
    float-to-int v1, v2

    move/from16 v18, v3

    .end local v3    # "needsInvalidate":Z
    .local v18, "needsInvalidate":Z
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 2200
    float-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 2202
    return v18
.end method

.method private blacklist recomputeScrollPosition(IIII)V
    .registers 16
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1472
    if-lez p2, :cond_5c

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1474
    .local v0, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1476
    .local v1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1477
    .local v2, "xpos":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1478
    .local v3, "pageOffset":F
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v6, v4

    .line 1480
    .local v6, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1481
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 1483
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getDuration()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->timePassed()I

    move-result v5

    sub-int v10, v4, v5

    .line 1484
    .local v10, "newDuration":I
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 1485
    .local v4, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v7, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v8, p1

    mul-float/2addr v7, v8

    float-to-int v8, v7

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1488
    .end local v0    # "widthWithMargin":I
    .end local v1    # "oldWidthWithMargin":I
    .end local v2    # "xpos":I
    .end local v3    # "pageOffset":F
    .end local v4    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v6    # "newOffsetPixels":I
    .end local v10    # "newDuration":I
    :cond_5b
    goto :goto_8e

    .line 1489
    :cond_5c
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1490
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v0, :cond_6d

    iget v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    .line 1491
    .local v1, "scrollOffset":F
    :goto_6e
    nop

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1493
    .local v2, "scrollPos":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_8e

    .line 1494
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1498
    .end local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v1    # "scrollOffset":F
    .end local v2    # "scrollPos":I
    :cond_8e
    :goto_8e
    return-void
.end method

.method private blacklist releaseHorizontalGlow(FF)F
    .registers 9
    .param p1, "deltaX"    # F
    .param p2, "y"    # F

    .line 2106
    const/4 v0, 0x0

    .line 2107
    .local v0, "consumed":F
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 2108
    .local v1, "displacement":F
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    .line 2109
    .local v2, "pullDistance":F
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_26

    .line 2110
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    neg-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    neg-float v0, v3

    goto :goto_36

    .line 2111
    :cond_26
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_36

    .line 2112
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 2114
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    return v3
.end method

.method private blacklist removeNonDecorViews()V
    .registers 5

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 443
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 444
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1a

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeViewAt(I)V

    .line 446
    add-int/lit8 v0, v0, -0x1

    .line 441
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private blacklist requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2089
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_9

    .line 2090
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2092
    :cond_9
    return-void
.end method

.method private blacklist scrollToItem(IZIZ)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 544
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .line 546
    .local v0, "destX":I
    const/4 v1, 0x0

    if-eqz p2, :cond_21

    .line 547
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 549
    if-eqz p4, :cond_15

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_15

    .line 550
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 552
    :cond_15
    if-eqz p4, :cond_40

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_40

    .line 553
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_40

    .line 556
    :cond_21
    if-eqz p4, :cond_2c

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2c

    .line 557
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 559
    :cond_2c
    if-eqz p4, :cond_37

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_37

    .line 560
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 563
    :cond_37
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 564
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 565
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 567
    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist setScrollState(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 375
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 376
    return-void

    .line 379
    :cond_5
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_13

    .line 382
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    .line 384
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1c

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 387
    :cond_1c
    return-void
.end method

.method private blacklist setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 2416
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2417
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2428
    :cond_6
    return-void
.end method

.method private blacklist sortChildDrawingOrder()V
    .registers 5

    .line 1098
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2f

    .line 1099
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_15

    .line 1102
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1104
    :goto_15
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1105
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_28

    .line 1106
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1107
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1109
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    .end local v0    # "childCount":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
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

    .line 2631
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2633
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2635
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    .line 2636
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2637
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2638
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2639
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2640
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_2c

    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2c

    .line 2641
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2636
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2651
    .end local v2    # "i":I
    :cond_2f
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_39

    .line 2654
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_57

    .line 2657
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_40

    .line 2658
    return-void

    .line 2660
    :cond_40
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    .line 2661
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_52

    .line 2662
    return-void

    .line 2664
    :cond_52
    if-eqz p1, :cond_57

    .line 2665
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    :cond_57
    return-void
.end method

.method blacklist addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 813
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 814
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 816
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 817
    if-ltz p2, :cond_28

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_22

    goto :goto_28

    .line 820
    :cond_22
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 818
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_2d
    return-object v0
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2678
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2679
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2680
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2681
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2682
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_20

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_20

    .line 2683
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2678
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2687
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1291
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1292
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1294
    :cond_a
    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1295
    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1296
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2e

    .line 1297
    if-eqz v0, :cond_27

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1f

    goto :goto_27

    .line 1298
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1300
    :cond_27
    :goto_27
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_31

    .line 1303
    :cond_2e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    :goto_31
    return-void
.end method

.method public blacklist arrowScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2516
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2517
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_8

    .line 2518
    const/4 v0, 0x0

    goto :goto_69

    .line 2519
    :cond_8
    if-eqz v0, :cond_69

    .line 2520
    const/4 v1, 0x0

    .line 2521
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_f
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    .line 2523
    if-ne v2, p0, :cond_17

    .line 2524
    const/4 v1, 0x1

    .line 2525
    goto :goto_1c

    .line 2522
    :cond_17
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_f

    .line 2528
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_1c
    :goto_1c
    if-nez v1, :cond_69

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_32
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4c

    .line 2534
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/view/ViewParent;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_32

    .line 2536
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2536
    const-string v4, "ViewPager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    const/4 v0, 0x0

    .line 2542
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_69
    :goto_69
    const/4 v1, 0x0

    .line 2544
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2546
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_ba

    if-eq v2, v0, :cond_ba

    .line 2547
    if-ne p1, v4, :cond_9a

    .line 2550
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2551
    .local v3, "nextLeft":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2552
    .local v4, "currLeft":I
    if-eqz v0, :cond_95

    if-lt v3, v4, :cond_95

    .line 2553
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_99

    .line 2555
    :cond_95
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2557
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :cond_99
    :goto_99
    goto :goto_ce

    :cond_9a
    if-ne p1, v3, :cond_99

    .line 2560
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2561
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2562
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_b5

    if-gt v3, v4, :cond_b5

    .line 2563
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_b9

    .line 2565
    :cond_b5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2567
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_b9
    goto :goto_ce

    .line 2568
    :cond_ba
    if-eq p1, v4, :cond_ca

    const/4 v4, 0x1

    if-ne p1, v4, :cond_c0

    goto :goto_ca

    .line 2571
    :cond_c0
    if-eq p1, v3, :cond_c5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_ce

    .line 2573
    :cond_c5
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_ce

    .line 2570
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v1

    .line 2575
    :cond_ce
    :goto_ce
    if-eqz v1, :cond_d7

    .line 2576
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->playSoundEffect(I)V

    .line 2578
    :cond_d7
    return v1
.end method

.method protected blacklist canScroll(Landroid/view/View;ZIII)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 2458
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_59

    .line 2459
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 2460
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 2461
    .local v2, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 2462
    .local v3, "scrollY":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 2464
    .local v4, "count":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_16
    if-ltz v5, :cond_59

    .line 2466
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2467
    .local v7, "child":Landroid/view/View;
    add-int v6, p4, v2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_56

    add-int v6, p4, v2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_56

    add-int v6, p5, v3

    .line 2468
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v6, v8, :cond_56

    add-int v6, p5, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v6, v8, :cond_56

    add-int v6, p4, v2

    .line 2469
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v10, v6, v8

    add-int v6, p5, v3

    .line 2470
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v11, v6, v8

    .line 2469
    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 2471
    return v1

    .line 2464
    .end local v7    # "child":Landroid/view/View;
    :cond_56
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    .line 2476
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "scrollX":I
    .end local v3    # "scrollY":I
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_59
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    return v1
.end method

.method public whitelist canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2431
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2432
    return v1

    .line 2435
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 2436
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2437
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_1a

    .line 2438
    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_19

    move v1, v3

    :cond_19
    return v1

    .line 2439
    :cond_1a
    if-lez p1, :cond_25

    .line 2440
    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_24

    move v1, v3

    :cond_24
    return v1

    .line 2442
    :cond_25
    return v1
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2734
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist computeScroll()V
    .registers 6

    .line 1624
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1625
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1626
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1627
    .local v1, "oldY":I
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1628
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1630
    .local v3, "y":I
    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    .line 1631
    :cond_28
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1633
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1634
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1635
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1640
    :cond_3a
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1641
    return-void

    .line 1645
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_3e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1646
    return-void
.end method

.method blacklist dataSetChanged()V
    .registers 13

    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 829
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 830
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 831
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v4

    .line 832
    .local v1, "needPopulate":Z
    :goto_22
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 834
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 835
    .local v5, "isUpdating":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    .line 836
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 837
    .local v7, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 839
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    .line 840
    goto :goto_80

    .line 843
    :cond_42
    const/4 v9, -0x2

    if-ne v8, v9, :cond_72

    .line 844
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 845
    add-int/lit8 v6, v6, -0x1

    .line 847
    if-nez v5, :cond_54

    .line 848
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v9, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 849
    const/4 v5, 0x1

    .line 852
    :cond_54
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 853
    const/4 v1, 0x1

    .line 855
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_80

    .line 857
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 858
    const/4 v1, 0x1

    goto :goto_80

    .line 863
    :cond_72
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_80

    .line 864
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_7d

    .line 866
    move v2, v8

    .line 869
    :cond_7d
    iput v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 870
    const/4 v1, 0x1

    .line 835
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_80
    :goto_80
    add-int/2addr v6, v3

    goto :goto_26

    .line 874
    .end local v6    # "i":I
    :cond_82
    if-eqz v5, :cond_89

    .line 875
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 878
    :cond_89
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 880
    if-eqz v1, :cond_b3

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 883
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_97
    if-ge v7, v6, :cond_ad

    .line 884
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 885
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 886
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_aa

    .line 887
    const/4 v10, 0x0

    iput v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 883
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 891
    .end local v7    # "i":I
    :cond_ad
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 894
    .end local v6    # "childCount":I
    :cond_b3
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2482
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method blacklist distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .line 749
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 750
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 751
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2295
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2296
    const/4 v0, 0x0

    .line 2298
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2299
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_26

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 2301
    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_1a

    goto :goto_26

    .line 2325
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2326
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_aa

    .line 2302
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_66

    .line 2303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2304
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2305
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2307
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2308
    neg-int v5, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2309
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2310
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2311
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2313
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_66
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 2314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2315
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2316
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2318
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2319
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2320
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2321
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2322
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2323
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    nop

    .line 2329
    :cond_aa
    :goto_aa
    if-eqz v0, :cond_af

    .line 2331
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2333
    :cond_af
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 736
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    .local v0, "marginDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_1a
    return-void
.end method

.method public blacklist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_35

    .line 2496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    goto :goto_35

    .line 2504
    :sswitch_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2505
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_35

    .line 2506
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2507
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_35

    .line 2501
    :sswitch_27
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2502
    goto :goto_35

    .line 2498
    :sswitch_2e
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2499
    nop

    .line 2512
    :cond_35
    :goto_35
    return v0

    :sswitch_data_36
    .sparse-switch
        0x15 -> :sswitch_2e
        0x16 -> :sswitch_27
        0x3d -> :sswitch_f
    .end sparse-switch
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2724
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2739
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2729
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 624
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_a

    :cond_9
    move v0, p2

    .line 625
    .local v0, "index":I
    :goto_a
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v1, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 626
    .local v1, "result":I
    return v1
.end method

.method public blacklist getCurrent()Ljava/lang/Object;
    .registers 3

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1317
    .local v0, "itemInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_e
    return-object v1
.end method

.method public greylist getCurrentItem()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public blacklist getOffscreenPageLimit()I
    .registers 2

    .line 649
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public blacklist getPageMargin()I
    .registers 2

    .line 705
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method blacklist infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1341
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_15

    .line 1342
    if-eqz v1, :cond_13

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_f

    goto :goto_13

    .line 1345
    :cond_f
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    .line 1343
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return-object v0

    .line 1347
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 1330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1331
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1332
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1333
    return-object v1

    .line 1330
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1336
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I

    .line 1351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1352
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1353
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    .line 1354
    return-object v1

    .line 1351
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1357
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 1362
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1364
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 371
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 372
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2337
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2340
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_ce

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ce

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ce

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_ce

    .line 2341
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2342
    .local v1, "scrollX":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2344
    .local v2, "width":I
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2345
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2346
    .local v4, "itemIndex":I
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2347
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2349
    .local v6, "offset":F
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2350
    .local v7, "itemCount":I
    iget v8, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2351
    .local v8, "firstPos":I
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v9, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2352
    .local v9, "lastPos":I
    move v10, v8

    .local v10, "pos":I
    :goto_47
    if-ge v10, v9, :cond_c5

    .line 2353
    :goto_49
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_5b

    if-ge v4, v7, :cond_5b

    .line 2354
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_49

    .line 2359
    :cond_5b
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_64

    .line 2360
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2361
    .local v11, "itemOffset":F
    iget v12, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .local v12, "widthFactor":F
    goto :goto_6b

    .line 2363
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    :cond_64
    move v11, v6

    .line 2364
    .restart local v11    # "itemOffset":F
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v10}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2368
    .restart local v12    # "widthFactor":F
    :goto_6b
    int-to-float v13, v2

    mul-float/2addr v13, v11

    .line 2369
    .local v13, "scaledOffset":F
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_77

    .line 2370
    const/high16 v14, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v14, v13

    .local v14, "left":F
    goto :goto_7a

    .line 2372
    .end local v14    # "left":F
    :cond_77
    int-to-float v14, v2

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    .line 2375
    .restart local v14    # "left":F
    :goto_7a
    add-float v15, v11, v12

    add-float v6, v15, v3

    .line 2377
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    move/from16 v16, v2

    .end local v2    # "width":I
    .local v16, "width":I
    int-to-float v2, v1

    cmpl-float v2, v15, v2

    if-lez v2, :cond_aa

    .line 2378
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v15, v14

    move/from16 v17, v1

    .end local v1    # "scrollX":I
    .local v17, "scrollX":I
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    move/from16 v18, v3

    .end local v3    # "marginOffset":F
    .local v18, "marginOffset":F
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v3, v3, v19

    float-to-int v3, v3

    move/from16 v19, v4

    .end local v4    # "itemIndex":I
    .local v19, "itemIndex":I
    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v2, v15, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2380
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b2

    .line 2377
    .end local v17    # "scrollX":I
    .end local v18    # "marginOffset":F
    .end local v19    # "itemIndex":I
    .restart local v1    # "scrollX":I
    .restart local v3    # "marginOffset":F
    .restart local v4    # "itemIndex":I
    :cond_aa
    move-object/from16 v2, p1

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v4

    .line 2383
    .end local v1    # "scrollX":I
    .end local v3    # "marginOffset":F
    .end local v4    # "itemIndex":I
    .restart local v17    # "scrollX":I
    .restart local v18    # "marginOffset":F
    .restart local v19    # "itemIndex":I
    :goto_b2
    add-int v1, v17, v16

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_ba

    .line 2384
    goto :goto_d0

    .line 2352
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    .end local v13    # "scaledOffset":F
    .end local v14    # "left":F
    :cond_ba
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v1, v17

    move/from16 v3, v18

    move/from16 v4, v19

    goto :goto_47

    .end local v16    # "width":I
    .end local v17    # "scrollX":I
    .end local v18    # "marginOffset":F
    .end local v19    # "itemIndex":I
    .restart local v1    # "scrollX":I
    .restart local v2    # "width":I
    .restart local v3    # "marginOffset":F
    .restart local v4    # "itemIndex":I
    :cond_c5
    move/from16 v17, v1

    move/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v2, p1

    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v3    # "marginOffset":F
    .restart local v16    # "width":I
    .restart local v17    # "scrollX":I
    .restart local v18    # "marginOffset":F
    goto :goto_d0

    .line 2340
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "pos":I
    .end local v16    # "width":I
    .end local v17    # "scrollX":I
    .end local v18    # "marginOffset":F
    :cond_ce
    move-object/from16 v2, p1

    .line 2388
    :goto_d0
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2745
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2747
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2748
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2750
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_32

    .line 2751
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2752
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2753
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2755
    :cond_32
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2761
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2762
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2764
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2765
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2766
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2769
    :cond_24
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2770
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2771
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2773
    :cond_35
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 1816
    .local v7, "action":I
    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v8, 0x0

    if-eq v7, v1, :cond_170

    const/4 v9, 0x1

    if-ne v7, v9, :cond_14

    goto/16 :goto_170

    .line 1831
    :cond_14
    if-eqz v7, :cond_20

    .line 1832
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1b

    .line 1834
    return v9

    .line 1836
    :cond_1b
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_20

    .line 1838
    return v8

    .line 1842
    :cond_20
    const/4 v10, 0x0

    sparse-switch v7, :sswitch_data_184

    goto/16 :goto_15e

    .line 1944
    :sswitch_26
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_15e

    .line 1853
    :sswitch_2b
    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1854
    .local v11, "activePointerId":I
    if-ne v11, v2, :cond_31

    .line 1856
    goto/16 :goto_15e

    .line 1859
    :cond_31
    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1860
    .local v12, "pointerIndex":I
    invoke-virtual {v6, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1861
    .local v13, "x":F
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v1

    .line 1862
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1863
    .local v15, "xDiff":F
    invoke-virtual {v6, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1864
    .local v1, "y":F
    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1867
    .local v16, "yDiff":F
    cmpl-float v2, v14, v10

    if-eqz v2, :cond_72

    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-direct {v0, v2, v14}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v2

    if-nez v2, :cond_72

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v5, v1

    .line 1868
    const/4 v2, 0x0

    move/from16 v17, v1

    .end local v1    # "y":F
    .local v17, "y":F
    move-object/from16 v1, p0

    move/from16 v18, v10

    move/from16 v10, v17

    .end local v17    # "y":F
    .local v10, "y":F
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1870
    iput v13, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1871
    iput v10, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1872
    iput-boolean v9, v0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1873
    return v8

    .line 1867
    .end local v10    # "y":F
    .restart local v1    # "y":F
    :cond_72
    move/from16 v18, v10

    move v10, v1

    .line 1875
    .end local v1    # "y":F
    .restart local v10    # "y":F
    :cond_75
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v15, v1

    if-lez v1, :cond_a4

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v15

    cmpl-float v1, v1, v16

    if-lez v1, :cond_a4

    .line 1877
    iput-boolean v9, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1878
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1879
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1880
    cmpl-float v1, v14, v18

    if-lez v1, :cond_96

    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_9c

    .line 1881
    :cond_96
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_9c
    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1882
    iput v10, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1883
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_ad

    .line 1884
    :cond_a4
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v16, v1

    if-lez v1, :cond_ad

    .line 1890
    iput-boolean v9, v0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1892
    :cond_ad
    :goto_ad
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_15e

    .line 1894
    invoke-direct {v0, v13, v10}, Lcom/android/internal/widget/ViewPager;->performDrag(FF)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 1895
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_15e

    .line 1906
    .end local v10    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :sswitch_bc
    move/from16 v18, v10

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1907
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1908
    invoke-virtual {v6, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1909
    iput-boolean v8, v0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1911
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1912
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_108

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1913
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    if-le v1, v2, :cond_108

    .line 1915
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1916
    iput-boolean v8, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1917
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1918
    iput-boolean v9, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1919
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1920
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto :goto_15e

    .line 1921
    :cond_108
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v18

    if-nez v1, :cond_123

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 1922
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v18

    if-eqz v1, :cond_11d

    goto :goto_123

    .line 1933
    :cond_11d
    invoke-direct {v0, v8}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1934
    iput-boolean v8, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1940
    goto :goto_15e

    .line 1924
    :cond_123
    :goto_123
    iput-boolean v9, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1925
    invoke-direct {v0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1926
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v18

    if-eqz v1, :cond_145

    .line 1927
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    move/from16 v2, v18

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    goto :goto_147

    .line 1926
    :cond_145
    move/from16 v2, v18

    .line 1929
    :goto_147
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15e

    .line 1930
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1948
    :cond_15e
    :goto_15e
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_168

    .line 1949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1951
    :cond_168
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1957
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    return v1

    .line 1819
    :cond_170
    :goto_170
    iput-boolean v8, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1820
    iput-boolean v8, v0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1821
    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1822
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_182

    .line 1823
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1824
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1826
    :cond_182
    return v8

    nop

    :sswitch_data_184
    .sparse-switch
        0x0 -> :sswitch_bc
        0x2 -> :sswitch_2b
        0x6 -> :sswitch_26
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1502
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1503
    .local v1, "count":I
    sub-int v2, p4, p2

    .line 1504
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 1505
    .local v3, "height":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1506
    .local v4, "paddingLeft":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1507
    .local v5, "paddingTop":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1508
    .local v6, "paddingRight":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1509
    .local v7, "paddingBottom":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 1511
    .local v8, "scrollX":I
    const/4 v9, 0x0

    .line 1515
    .local v9, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    const/16 v11, 0x8

    if-ge v10, v1, :cond_c2

    .line 1516
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1517
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_b6

    .line 1518
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1519
    .local v11, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v13, 0x0

    .line 1520
    .local v13, "childLeft":I
    const/4 v14, 0x0

    .line 1521
    .local v14, "childTop":I
    iget-boolean v15, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_b1

    .line 1522
    iget v15, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1523
    .local v15, "hgrav":I
    move/from16 v16, v2

    .end local v2    # "width":I
    .local v16, "width":I
    iget v2, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    .line 1524
    .local v2, "vgrav":I
    packed-switch v15, :pswitch_data_168

    .line 1526
    :pswitch_47
    move/from16 v18, v2

    .end local v2    # "vgrav":I
    .local v18, "vgrav":I
    move/from16 v17, v4

    .line 1527
    .end local v13    # "childLeft":I
    .local v17, "childLeft":I
    goto :goto_75

    .line 1537
    .end local v17    # "childLeft":I
    .end local v18    # "vgrav":I
    .restart local v2    # "vgrav":I
    .restart local v13    # "childLeft":I
    :pswitch_4c
    sub-int v17, v16, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    .line 1538
    .end local v13    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v6, v13

    move/from16 v18, v2

    goto :goto_75

    .line 1529
    .end local v17    # "childLeft":I
    .restart local v13    # "childLeft":I
    :pswitch_5c
    move/from16 v17, v4

    .line 1530
    .end local v13    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v4, v13

    .line 1531
    move/from16 v18, v2

    goto :goto_75

    .line 1533
    .end local v17    # "childLeft":I
    .restart local v13    # "childLeft":I
    :pswitch_66
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v16, v17

    move/from16 v18, v2

    .end local v2    # "vgrav":I
    .restart local v18    # "vgrav":I
    div-int/lit8 v2, v17, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1535
    .end local v13    # "childLeft":I
    .restart local v17    # "childLeft":I
    nop

    .line 1541
    :goto_75
    sparse-switch v18, :sswitch_data_176

    .line 1543
    move v2, v5

    .line 1544
    .end local v14    # "childTop":I
    .local v2, "childTop":I
    goto :goto_9b

    .line 1554
    .end local v2    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_7a
    sub-int v2, v3, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v2, v13

    .line 1555
    .end local v14    # "childTop":I
    .restart local v2    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v7, v13

    goto :goto_9b

    .line 1546
    .end local v2    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_87
    move v2, v5

    .line 1547
    .end local v14    # "childTop":I
    .restart local v2    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v5, v13

    .line 1548
    goto :goto_9b

    .line 1550
    .end local v2    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_8e
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1552
    .end local v14    # "childTop":I
    .restart local v2    # "childTop":I
    nop

    .line 1558
    :goto_9b
    add-int v13, v17, v8

    .line 1559
    .end local v17    # "childLeft":I
    .restart local v13    # "childLeft":I
    nop

    .line 1560
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    .line 1561
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v19, v3

    .end local v3    # "height":I
    .local v19, "height":I
    add-int v3, v2, v17

    .line 1559
    invoke-virtual {v12, v13, v2, v14, v3}, Landroid/view/View;->layout(IIII)V

    .line 1562
    add-int/lit8 v9, v9, 0x1

    goto :goto_ba

    .line 1521
    .end local v15    # "hgrav":I
    .end local v16    # "width":I
    .end local v18    # "vgrav":I
    .end local v19    # "height":I
    .local v2, "width":I
    .restart local v3    # "height":I
    .restart local v14    # "childTop":I
    :cond_b1
    move/from16 v16, v2

    move/from16 v19, v3

    .end local v2    # "width":I
    .end local v3    # "height":I
    .restart local v16    # "width":I
    .restart local v19    # "height":I
    goto :goto_ba

    .line 1517
    .end local v11    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    .end local v16    # "width":I
    .end local v19    # "height":I
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    :cond_b6
    move/from16 v16, v2

    move/from16 v19, v3

    .line 1515
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "width":I
    .restart local v19    # "height":I
    :goto_ba
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move/from16 v3, v19

    goto/16 :goto_20

    .end local v16    # "width":I
    .end local v19    # "height":I
    .restart local v2    # "width":I
    .restart local v3    # "height":I
    :cond_c2
    move/from16 v16, v2

    move/from16 v19, v3

    .line 1567
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v10    # "i":I
    .restart local v16    # "width":I
    .restart local v19    # "height":I
    sub-int v2, v16, v4

    sub-int/2addr v2, v6

    .line 1569
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ca
    const/4 v10, 0x0

    if-ge v3, v1, :cond_14e

    .line 1570
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1571
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_de

    .line 1572
    move/from16 v20, v1

    move/from16 v22, v2

    move/from16 v21, v3

    goto :goto_144

    .line 1575
    :cond_de
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1576
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v14, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_ef

    .line 1577
    move/from16 v20, v1

    move/from16 v22, v2

    move/from16 v21, v3

    goto :goto_144

    .line 1580
    :cond_ef
    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1581
    .local v14, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v14, :cond_fc

    .line 1582
    move/from16 v20, v1

    move/from16 v22, v2

    move/from16 v21, v3

    goto :goto_144

    .line 1585
    :cond_fc
    iget-boolean v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v15, :cond_118

    .line 1588
    iput-boolean v10, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1589
    int-to-float v10, v2

    iget v15, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v10, v15

    float-to-int v10, v10

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1592
    .local v10, "widthSpec":I
    sub-int v17, v19, v5

    sub-int v11, v17, v7

    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1595
    .local v11, "heightSpec":I
    invoke-virtual {v12, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1598
    .end local v10    # "widthSpec":I
    .end local v11    # "heightSpec":I
    :cond_118
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1599
    .local v10, "childMeasuredWidth":I
    int-to-float v11, v2

    iget v15, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v11, v15

    float-to-int v11, v11

    .line 1601
    .local v11, "startOffset":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_12d

    .line 1602
    const/high16 v15, 0x1000000

    sub-int/2addr v15, v6

    sub-int/2addr v15, v11

    sub-int/2addr v15, v10

    .local v15, "childLeft":I
    goto :goto_12f

    .line 1604
    .end local v15    # "childLeft":I
    :cond_12d
    add-int v15, v4, v11

    .line 1607
    .restart local v15    # "childLeft":I
    :goto_12f
    move/from16 v17, v5

    .line 1608
    .local v17, "childTop":I
    move/from16 v20, v1

    .end local v1    # "count":I
    .local v20, "count":I
    add-int v1, v15, v10

    .line 1609
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v22, v2

    .end local v2    # "childWidth":I
    .local v22, "childWidth":I
    add-int v2, v17, v21

    .line 1608
    move/from16 v21, v3

    move/from16 v3, v17

    .end local v17    # "childTop":I
    .local v3, "childTop":I
    .local v21, "i":I
    invoke-virtual {v12, v15, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1569
    .end local v3    # "childTop":I
    .end local v10    # "childMeasuredWidth":I
    .end local v11    # "startOffset":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v15    # "childLeft":I
    :goto_144
    add-int/lit8 v3, v21, 0x1

    move/from16 v1, v20

    move/from16 v2, v22

    const/16 v11, 0x8

    .end local v21    # "i":I
    .local v3, "i":I
    goto/16 :goto_ca

    .end local v20    # "count":I
    .end local v22    # "childWidth":I
    .restart local v1    # "count":I
    .restart local v2    # "childWidth":I
    :cond_14e
    move/from16 v20, v1

    move/from16 v22, v2

    move/from16 v21, v3

    .line 1612
    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v3    # "i":I
    .restart local v20    # "count":I
    .restart local v22    # "childWidth":I
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 1613
    sub-int v3, v19, v7

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 1614
    iput v9, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 1616
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_165

    .line 1617
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v1, v10, v10, v10}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 1619
    :cond_165
    iput-boolean v10, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1620
    return-void

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_66
        :pswitch_47
        :pswitch_5c
        :pswitch_47
        :pswitch_4c
    .end packed-switch

    :sswitch_data_176
    .sparse-switch
        0x10 -> :sswitch_8e
        0x30 -> :sswitch_87
        0x50 -> :sswitch_7a
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1373
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1374
    move/from16 v4, p2

    invoke-static {v1, v4}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1373
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1376
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1377
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1378
    .local v5, "maxGutterSize":I
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    .line 1381
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1382
    .local v6, "childWidthSize":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1389
    .local v7, "childHeightSize":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v8

    .line 1390
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e
    const/16 v10, 0x8

    if-ge v9, v8, :cond_e9

    .line 1391
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1392
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_dc

    .line 1393
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1394
    .local v10, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v10, :cond_d9

    iget-boolean v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_d9

    .line 1395
    iget v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1396
    .local v13, "hgrav":I
    iget v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1397
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1398
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1399
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_6f

    const/16 v1, 0x50

    if-ne v14, v1, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v1, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    .line 1400
    .local v1, "consumeVertical":Z
    :goto_70
    const/4 v11, 0x3

    if-eq v13, v11, :cond_79

    const/4 v11, 0x5

    if-ne v13, v11, :cond_77

    goto :goto_79

    :cond_77
    const/4 v11, 0x0

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v11, 0x1

    .line 1402
    .local v11, "consumeHorizontal":Z
    :goto_7a
    if-eqz v1, :cond_7f

    .line 1403
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_83

    .line 1404
    :cond_7f
    if-eqz v11, :cond_83

    .line 1405
    const/high16 v16, 0x40000000    # 2.0f

    .line 1408
    :cond_83
    :goto_83
    move/from16 v17, v6

    .line 1409
    .local v17, "widthSize":I
    move/from16 v18, v7

    .line 1410
    .local v18, "heightSize":I
    move/from16 v19, v1

    .end local v1    # "consumeVertical":Z
    .local v19, "consumeVertical":Z
    iget v1, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_9b

    .line 1411
    const/high16 v15, 0x40000000    # 2.0f

    .line 1412
    iget v1, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_98

    .line 1413
    iget v1, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v1, "widthSize":I
    goto :goto_9d

    .line 1412
    .end local v1    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_98
    move/from16 v1, v17

    goto :goto_9d

    .line 1410
    :cond_9b
    move/from16 v1, v17

    .line 1416
    .end local v17    # "widthSize":I
    .restart local v1    # "widthSize":I
    :goto_9d
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v20, v3

    const/4 v3, -0x2

    .end local v3    # "measuredWidth":I
    .local v20, "measuredWidth":I
    if-eq v2, v3, :cond_b6

    .line 1417
    const/high16 v16, 0x40000000    # 2.0f

    .line 1418
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b1

    .line 1419
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move v3, v2

    move/from16 v2, v16

    .end local v18    # "heightSize":I
    .local v2, "heightSize":I
    goto :goto_ba

    .line 1418
    .end local v2    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_b1
    move/from16 v2, v16

    move/from16 v3, v18

    goto :goto_ba

    .line 1416
    :cond_b6
    move/from16 v2, v16

    move/from16 v3, v18

    .line 1422
    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .local v2, "heightMode":I
    .local v3, "heightSize":I
    :goto_ba
    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1423
    .local v4, "widthSpec":I
    move/from16 v16, v1

    .end local v1    # "widthSize":I
    .local v16, "widthSize":I
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1424
    .local v1, "heightSpec":I
    invoke-virtual {v12, v4, v1}, Landroid/view/View;->measure(II)V

    .line 1426
    if-eqz v19, :cond_d0

    .line 1427
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v7, v7, v17

    goto :goto_de

    .line 1428
    :cond_d0
    if-eqz v11, :cond_de

    .line 1429
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v6, v6, v17

    goto :goto_de

    .line 1394
    .end local v1    # "heightSpec":I
    .end local v2    # "heightMode":I
    .end local v4    # "widthSpec":I
    .end local v11    # "consumeHorizontal":Z
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "widthSize":I
    .end local v19    # "consumeVertical":Z
    .end local v20    # "measuredWidth":I
    .local v3, "measuredWidth":I
    :cond_d9
    move/from16 v20, v3

    .end local v3    # "measuredWidth":I
    .restart local v20    # "measuredWidth":I
    goto :goto_de

    .line 1392
    .end local v10    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    :cond_dc
    move/from16 v20, v3

    .line 1390
    .end local v3    # "measuredWidth":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v20    # "measuredWidth":I
    :cond_de
    :goto_de
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v3, v20

    const/4 v1, 0x0

    goto/16 :goto_3e

    .end local v20    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    :cond_e9
    move/from16 v20, v3

    .line 1435
    .end local v3    # "measuredWidth":I
    .end local v9    # "i":I
    .restart local v20    # "measuredWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1436
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1439
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1440
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1441
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1444
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1445
    .end local v8    # "size":I
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_107
    if-ge v3, v2, :cond_130

    .line 1446
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1447
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_12d

    .line 1451
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1452
    .local v8, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v8, :cond_11f

    iget-boolean v9, v8, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_12d

    .line 1453
    :cond_11f
    int-to-float v9, v6

    iget v11, v8, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1455
    .local v9, "widthSpec":I
    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v9, v11}, Landroid/view/View;->measure(II)V

    .line 1445
    .end local v4    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v9    # "widthSpec":I
    :cond_12d
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 1459
    .end local v3    # "i":I
    :cond_130
    return-void
.end method

.method protected blacklist onPageScrolled(IFI)V
    .registers 16
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1699
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_64

    .line 1700
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1701
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1702
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1703
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    .line 1704
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1705
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_64

    .line 1706
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1707
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1708
    .local v7, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v8, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_2a

    goto :goto_61

    .line 1710
    :cond_2a
    iget v8, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    .line 1711
    .local v8, "hgrav":I
    const/4 v9, 0x0

    .line 1712
    .local v9, "childLeft":I
    packed-switch v8, :pswitch_data_ac

    .line 1714
    :pswitch_32
    move v10, v1

    .line 1715
    .end local v9    # "childLeft":I
    .local v10, "childLeft":I
    goto :goto_55

    .line 1725
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_34
    sub-int v10, v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1726
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_55

    .line 1717
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_41
    move v10, v1

    .line 1718
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v1, v9

    .line 1719
    goto :goto_55

    .line 1721
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_48
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1723
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    nop

    .line 1729
    :goto_55
    add-int/2addr v10, v0

    .line 1731
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v10, v9

    .line 1732
    .local v9, "childOffset":I
    if-eqz v9, :cond_61

    .line 1733
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1705
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v8    # "hgrav":I
    .end local v9    # "childOffset":I
    .end local v10    # "childLeft":I
    :cond_61
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1738
    .end local v0    # "scrollX":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "width":I
    .end local v4    # "childCount":I
    .end local v5    # "i":I
    :cond_64
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6d

    .line 1739
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1741
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_76

    .line 1742
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1745
    :cond_76
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_a8

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1747
    .restart local v0    # "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1748
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_83
    if-ge v2, v1, :cond_a8

    .line 1749
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1750
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1752
    .local v4, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v5, v4, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_94

    goto :goto_a5

    .line 1754
    :cond_94
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1755
    .local v5, "transformPos":F
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v6, v3, v5}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1748
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v5    # "transformPos":F
    :goto_a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 1759
    .end local v0    # "scrollX":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_a8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1760
    return-void

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_48
        :pswitch_32
        :pswitch_41
        :pswitch_32
        :pswitch_34
    .end packed-switch
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2698
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2699
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    .line 2700
    const/4 v1, 0x0

    .line 2701
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2702
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_10

    .line 2704
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .line 2705
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2706
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2708
    .restart local v3    # "end":I
    :goto_10
    move v4, v1

    .local v4, "i":I
    :goto_11
    if-eq v4, v3, :cond_33

    .line 2709
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2710
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2711
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2712
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_31

    iget v7, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_31

    .line 2713
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2714
    const/4 v7, 0x1

    return v7

    .line 2708
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_31
    add-int/2addr v4, v2

    goto :goto_11

    .line 2719
    .end local v4    # "i":I
    :cond_33
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1271
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1272
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1273
    return-void

    .line 1276
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 1277
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1279
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_27

    .line 1280
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1281
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    goto :goto_33

    .line 1283
    :cond_27
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 1284
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1285
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1287
    :goto_33
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 2617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2619
    if-nez p1, :cond_9

    .line 2620
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_c

    .line 2622
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 2624
    :goto_c
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1260
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1261
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1262
    .local v1, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iput v2, v1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 1263
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_19

    .line 1264
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1266
    :cond_19
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1466
    if-eq p1, p3, :cond_c

    .line 1467
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1469
    :cond_c
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_12

    .line 1965
    return v3

    .line 1968
    :cond_12
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_194

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_194

    .line 1973
    :cond_20
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2a

    .line 1974
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1976
    :cond_2a
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1978
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1979
    .local v2, "action":I
    const/4 v4, 0x0

    .line 1981
    .local v4, "needsInvalidate":Z
    and-int/lit16 v5, v2, 0xff

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_196

    :pswitch_3b
    move/from16 v16, v7

    goto/16 :goto_18e

    .line 2077
    :pswitch_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2078
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v7

    goto/16 :goto_18e

    .line 2070
    :pswitch_52
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 2071
    .local v3, "index":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2072
    .local v5, "x":F
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2073
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2074
    move/from16 v16, v7

    goto/16 :goto_18e

    .line 2060
    .end local v3    # "index":I
    .end local v5    # "x":F
    :pswitch_66
    iget-boolean v5, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v5, :cond_83

    .line 2061
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v5, v7, v3, v3}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2062
    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2063
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2064
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2065
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2066
    const/4 v4, 0x1

    move/from16 v16, v7

    goto/16 :goto_18e

    .line 2060
    :cond_83
    move/from16 v16, v7

    goto/16 :goto_18e

    .line 1994
    :pswitch_87
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_e2

    .line 1995
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1996
    .local v3, "pointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1997
    .restart local v5    # "x":F
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1998
    .local v6, "xDiff":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1999
    .local v8, "y":F
    iget v9, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2001
    .local v9, "yDiff":F
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_e2

    cmpl-float v10, v6, v9

    if-lez v10, :cond_e2

    .line 2003
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2004
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2005
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float v10, v5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c9

    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_cf

    .line 2006
    :cond_c9
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_cf
    iput v10, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2007
    iput v8, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 2008
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 2009
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2012
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 2013
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_e2

    .line 2014
    invoke-interface {v10, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2019
    .end local v3    # "pointerIndex":I
    .end local v5    # "x":F
    .end local v6    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_e2
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_fd

    .line 2021
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2022
    .local v3, "activePointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2023
    .restart local v5    # "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/ViewPager;->performDrag(FF)Z

    move-result v6

    or-int/2addr v4, v6

    .line 2024
    .end local v3    # "activePointerIndex":I
    .end local v5    # "x":F
    move/from16 v16, v7

    goto/16 :goto_18e

    .line 2019
    :cond_fd
    move/from16 v16, v7

    goto/16 :goto_18e

    .line 2027
    :pswitch_101
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_168

    .line 2028
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2029
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v5, v5

    const/16 v8, 0x3e8

    invoke-virtual {v3, v8, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2030
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v5, v5

    .line 2032
    .local v5, "initialVelocity":I
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 2034
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v8

    int-to-float v8, v8

    .line 2035
    .local v8, "scrollStart":F
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v8, v9

    .line 2036
    .local v9, "scrolledPages":F
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 2037
    .local v10, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2039
    .local v11, "currentPage":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_137

    .line 2040
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v9

    iget v13, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .local v12, "nextPageOffset":F
    goto :goto_13e

    .line 2042
    .end local v12    # "nextPageOffset":F
    :cond_137
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float v12, v9, v12

    iget v13, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .line 2045
    .restart local v12    # "nextPageOffset":F
    :goto_13e
    iget v13, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2046
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2047
    .local v14, "x":F
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2048
    .local v15, "totalDelta":I
    invoke-direct {v0, v11, v12, v5, v15}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v6

    .line 2050
    .local v6, "nextPage":I
    invoke-virtual {v0, v6, v7, v7, v5}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 2052
    move/from16 v16, v7

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2053
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2054
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2055
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2056
    const/4 v4, 0x1

    .line 2057
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "initialVelocity":I
    .end local v6    # "nextPage":I
    .end local v8    # "scrollStart":F
    .end local v9    # "scrolledPages":F
    .end local v10    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v11    # "currentPage":I
    .end local v12    # "nextPageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_18e

    .line 2027
    :cond_168
    move/from16 v16, v7

    goto :goto_18e

    .line 1983
    :pswitch_16b
    move/from16 v16, v7

    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1984
    iput-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1985
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1988
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1989
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1990
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1991
    nop

    .line 2081
    :goto_18e
    if-eqz v4, :cond_193

    .line 2082
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2084
    :cond_193
    return v16

    .line 1970
    .end local v2    # "action":I
    .end local v4    # "needsInvalidate":Z
    :cond_194
    :goto_194
    return v3

    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_16b
        :pswitch_101
        :pswitch_87
        :pswitch_66
        :pswitch_3b
        :pswitch_52
        :pswitch_3f
    .end packed-switch
.end method

.method blacklist pageLeft()Z
    .registers 4

    .line 2608
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method blacklist pageRight()Z
    .registers 4

    .line 2612
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 2777
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2778
    return v1

    .line 2781
    :cond_8
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_2a

    .line 2798
    return v0

    .line 2791
    :sswitch_d
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2792
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2793
    return v1

    .line 2795
    :cond_1b
    return v0

    .line 2784
    :sswitch_1c
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2785
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2786
    return v1

    .line 2788
    :cond_29
    return v0

    :sswitch_data_2a
    .sparse-switch
        0x1000 -> :sswitch_1c
        0x2000 -> :sswitch_d
        0x1020039 -> :sswitch_d
        0x102003b -> :sswitch_1c
    .end sparse-switch
.end method

.method public blacklist populate()V
    .registers 2

    .line 897
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 898
    return-void
.end method

.method blacklist populate(I)V
    .registers 23
    .param p1, "newCurrentItem"    # I

    .line 901
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 902
    .local v0, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v3, 0x2

    .line 903
    .local v3, "focusDirection":I
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v4, v2, :cond_1f

    .line 904
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ge v4, v2, :cond_11

    const/16 v4, 0x42

    goto :goto_13

    :cond_11
    const/16 v4, 0x11

    :goto_13
    move v3, v4

    .line 905
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 906
    iput v2, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move v4, v3

    move-object v3, v0

    goto :goto_21

    .line 903
    :cond_1f
    move v4, v3

    move-object v3, v0

    .line 909
    .end local v0    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v4, "focusDirection":I
    :goto_21
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v0, :cond_29

    .line 910
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 911
    return-void

    .line 918
    :cond_29
    iget-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_31

    .line 920
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 921
    return-void

    .line 927
    :cond_31
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_38

    .line 928
    return-void

    .line 931
    :cond_38
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 933
    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 934
    .local v5, "pageLimit":I
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v5

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 935
    .local v6, "startPos":I
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v7

    .line 936
    .local v7, "N":I
    add-int/lit8 v0, v7, -0x1

    iget v8, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v8, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 938
    .local v8, "endPos":I
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v7, v0, :cond_296

    .line 954
    const/4 v0, -0x1

    .line 955
    .local v0, "curIndex":I
    const/4 v9, 0x0

    .line 956
    .local v9, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_5d
    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_7e

    .line 957
    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 958
    .local v10, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v12, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt v11, v12, :cond_7b

    .line 959
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v12, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_7e

    move-object v9, v10

    goto :goto_7e

    .line 956
    .end local v10    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 964
    :cond_7e
    :goto_7e
    if-nez v9, :cond_88

    if-lez v7, :cond_88

    .line 965
    iget v10, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v10, v0}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 971
    :cond_88
    if-eqz v9, :cond_1fa

    .line 972
    const/4 v12, 0x0

    .line 973
    .local v12, "extraWidthLeft":F
    add-int/lit8 v13, v0, -0x1

    .line 974
    .local v13, "itemIndex":I
    if-ltz v13, :cond_98

    iget-object v14, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_99

    :cond_98
    const/4 v14, 0x0

    .line 975
    .local v14, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_99
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v15

    .line 976
    .local v15, "clientWidth":I
    const/high16 v16, 0x40000000    # 2.0f

    if-gtz v15, :cond_a7

    move/from16 v18, v0

    const/4 v10, 0x0

    const/16 v17, 0x0

    goto :goto_b7

    .line 977
    :cond_a7
    const/16 v17, 0x0

    iget v10, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v16, v10

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    move/from16 v18, v0

    .end local v0    # "curIndex":I
    .local v18, "curIndex":I
    int-to-float v0, v15

    div-float/2addr v11, v0

    add-float/2addr v10, v11

    :goto_b7
    nop

    .line 978
    .local v10, "leftWidthNeeded":F
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    move/from16 v11, v18

    .end local v18    # "curIndex":I
    .local v0, "pos":I
    .local v11, "curIndex":I
    :goto_be
    if-ltz v0, :cond_131

    .line 979
    cmpl-float v18, v12, v10

    if-ltz v18, :cond_f7

    if-ge v0, v6, :cond_f7

    .line 980
    if-nez v14, :cond_cc

    .line 981
    move/from16 v19, v5

    goto/16 :goto_133

    .line 983
    :cond_cc
    iget v2, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v0, v2, :cond_f4

    iget-boolean v2, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v2, :cond_f4

    .line 984
    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 985
    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move/from16 v19, v5

    .end local v5    # "pageLimit":I
    .local v19, "pageLimit":I
    iget-object v5, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0, v5}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 990
    add-int/lit8 v13, v13, -0x1

    .line 991
    add-int/lit8 v11, v11, -0x1

    .line 992
    if-ltz v13, :cond_f1

    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_f2

    :cond_f1
    const/4 v2, 0x0

    :goto_f2
    move-object v14, v2

    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_12a

    .line 983
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v19    # "pageLimit":I
    .restart local v5    # "pageLimit":I
    .restart local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_f4
    move/from16 v19, v5

    .end local v5    # "pageLimit":I
    .restart local v19    # "pageLimit":I
    goto :goto_12a

    .line 979
    .end local v19    # "pageLimit":I
    .restart local v5    # "pageLimit":I
    :cond_f7
    move/from16 v19, v5

    .line 994
    .end local v5    # "pageLimit":I
    .restart local v19    # "pageLimit":I
    if-eqz v14, :cond_112

    iget v2, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v0, v2, :cond_112

    .line 995
    iget v2, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v2

    .line 996
    add-int/lit8 v13, v13, -0x1

    .line 997
    if-ltz v13, :cond_10f

    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_110

    :cond_10f
    const/4 v2, 0x0

    :goto_110
    move-object v14, v2

    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_12a

    .line 999
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_112
    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1000
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v5

    .line 1001
    add-int/lit8 v11, v11, 0x1

    .line 1002
    if-ltz v13, :cond_128

    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_129

    :cond_128
    const/4 v5, 0x0

    :goto_129
    move-object v14, v5

    .line 978
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_12a
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, p1

    move/from16 v5, v19

    goto :goto_be

    .end local v19    # "pageLimit":I
    .restart local v5    # "pageLimit":I
    :cond_131
    move/from16 v19, v5

    .line 1006
    .end local v0    # "pos":I
    .end local v5    # "pageLimit":I
    .restart local v19    # "pageLimit":I
    :goto_133
    iget v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1007
    .local v0, "extraWidthRight":F
    add-int/lit8 v2, v11, 0x1

    .line 1008
    .end local v13    # "itemIndex":I
    .local v2, "itemIndex":I
    cmpg-float v5, v0, v16

    if-gez v5, :cond_1f3

    .line 1009
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_14c

    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_14d

    :cond_14c
    const/4 v5, 0x0

    .line 1010
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_14d
    if-gtz v15, :cond_152

    move/from16 v13, v17

    goto :goto_15b

    .line 1011
    :cond_152
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v15

    div-float/2addr v13, v14

    add-float v13, v13, v16

    :goto_15b
    nop

    .line 1012
    .local v13, "rightWidthNeeded":F
    iget v14, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v14, v14, 0x1

    .local v14, "pos":I
    :goto_160
    if-ge v14, v7, :cond_1eb

    .line 1013
    cmpl-float v16, v0, v13

    if-ltz v16, :cond_1a3

    if-le v14, v8, :cond_1a3

    .line 1014
    if-nez v5, :cond_170

    .line 1015
    move/from16 v16, v0

    move/from16 v20, v6

    goto/16 :goto_1ef

    .line 1017
    :cond_170
    move/from16 v16, v0

    .end local v0    # "extraWidthRight":F
    .local v16, "extraWidthRight":F
    iget v0, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v14, v0, :cond_19e

    iget-boolean v0, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v0, :cond_19e

    .line 1018
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1019
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move/from16 v20, v6

    .end local v6    # "startPos":I
    .local v20, "startPos":I
    iget-object v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v14, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1024
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_199

    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_19a

    :cond_199
    const/4 v0, 0x0

    :goto_19a
    move-object v5, v0

    move/from16 v0, v16

    goto :goto_1e5

    .line 1017
    .end local v20    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_19e
    move/from16 v20, v6

    .line 1012
    .end local v6    # "startPos":I
    .restart local v20    # "startPos":I
    move/from16 v0, v16

    goto :goto_1e5

    .line 1013
    .end local v16    # "extraWidthRight":F
    .end local v20    # "startPos":I
    .restart local v0    # "extraWidthRight":F
    .restart local v6    # "startPos":I
    :cond_1a3
    move/from16 v16, v0

    move/from16 v20, v6

    .line 1026
    .end local v0    # "extraWidthRight":F
    .end local v6    # "startPos":I
    .restart local v16    # "extraWidthRight":F
    .restart local v20    # "startPos":I
    if-eqz v5, :cond_1c7

    iget v0, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v14, v0, :cond_1c7

    .line 1027
    iget v0, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float v0, v16, v0

    .line 1028
    .end local v16    # "extraWidthRight":F
    .restart local v0    # "extraWidthRight":F
    add-int/lit8 v2, v2, 0x1

    .line 1029
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1c4

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1c5

    :cond_1c4
    const/4 v6, 0x0

    :goto_1c5
    move-object v5, v6

    goto :goto_1e5

    .line 1031
    .end local v0    # "extraWidthRight":F
    .restart local v16    # "extraWidthRight":F
    :cond_1c7
    invoke-virtual {v1, v14, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1032
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v2, v2, 0x1

    .line 1033
    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float v5, v16, v5

    .line 1034
    .end local v16    # "extraWidthRight":F
    .local v5, "extraWidthRight":F
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1e2

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1e3

    :cond_1e2
    const/4 v6, 0x0

    :goto_1e3
    move v0, v5

    move-object v5, v6

    .line 1012
    .local v0, "extraWidthRight":F
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_1e5
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v20

    goto/16 :goto_160

    .end local v20    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_1eb
    move/from16 v16, v0

    move/from16 v20, v6

    .line 1039
    .end local v0    # "extraWidthRight":F
    .end local v6    # "startPos":I
    .end local v13    # "rightWidthNeeded":F
    .end local v14    # "pos":I
    .restart local v16    # "extraWidthRight":F
    .restart local v20    # "startPos":I
    :goto_1ef
    move-object v14, v5

    move/from16 v0, v16

    goto :goto_1f5

    .line 1008
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v16    # "extraWidthRight":F
    .end local v20    # "startPos":I
    .restart local v0    # "extraWidthRight":F
    .restart local v6    # "startPos":I
    .local v14, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1f3
    move/from16 v20, v6

    .line 1039
    .end local v6    # "startPos":I
    .restart local v20    # "startPos":I
    :goto_1f5
    invoke-direct {v1, v9, v11, v3}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    move v0, v11

    goto :goto_202

    .line 971
    .end local v2    # "itemIndex":I
    .end local v10    # "leftWidthNeeded":F
    .end local v11    # "curIndex":I
    .end local v12    # "extraWidthLeft":F
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v15    # "clientWidth":I
    .end local v19    # "pageLimit":I
    .end local v20    # "startPos":I
    .local v0, "curIndex":I
    .local v5, "pageLimit":I
    .restart local v6    # "startPos":I
    :cond_1fa
    move/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v6

    const/16 v17, 0x0

    .line 1049
    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .restart local v19    # "pageLimit":I
    .restart local v20    # "startPos":I
    :goto_202
    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v9, :cond_20b

    iget-object v6, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_20c

    :cond_20b
    const/4 v6, 0x0

    :goto_20c
    invoke-virtual {v2, v1, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1051
    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1055
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1056
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_219
    if-ge v5, v2, :cond_242

    .line 1057
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1058
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1059
    .local v10, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iput v5, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1060
    iget-boolean v11, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_23f

    iget v11, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    cmpl-float v11, v11, v17

    if-nez v11, :cond_23f

    .line 1062
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1063
    .local v11, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_23f

    .line 1064
    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v12, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1065
    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iput v12, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    .line 1056
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_23f
    add-int/lit8 v5, v5, 0x1

    goto :goto_219

    .line 1069
    .end local v5    # "i":I
    :cond_242
    invoke-direct {v1}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1071
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_295

    .line 1072
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v5

    .line 1073
    .local v5, "currentFocused":Landroid/view/View;
    if-eqz v5, :cond_256

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    goto :goto_257

    :cond_256
    const/4 v11, 0x0

    .line 1074
    .restart local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_257
    if-eqz v11, :cond_25f

    iget v6, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v10, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v6, v10, :cond_295

    .line 1075
    :cond_25f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_260
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v10

    if-ge v6, v10, :cond_295

    .line 1076
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1077
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1078
    if-eqz v11, :cond_292

    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v13, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_292

    .line 1080
    if-nez v5, :cond_27a

    .line 1081
    const/4 v12, 0x0

    .local v12, "focusRect":Landroid/graphics/Rect;
    goto :goto_28b

    .line 1083
    .end local v12    # "focusRect":Landroid/graphics/Rect;
    :cond_27a
    iget-object v12, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 1084
    .restart local v12    # "focusRect":Landroid/graphics/Rect;
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v13}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1085
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v13}, Lcom/android/internal/widget/ViewPager;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1086
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10, v13}, Lcom/android/internal/widget/ViewPager;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1088
    :goto_28b
    invoke-virtual {v10, v4, v12}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_292

    .line 1089
    goto :goto_295

    .line 1075
    .end local v10    # "child":Landroid/view/View;
    .end local v12    # "focusRect":Landroid/graphics/Rect;
    :cond_292
    add-int/lit8 v6, v6, 0x1

    goto :goto_260

    .line 1095
    .end local v5    # "currentFocused":Landroid/view/View;
    .end local v6    # "i":I
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_295
    :goto_295
    return-void

    .line 941
    .end local v0    # "curIndex":I
    .end local v2    # "childCount":I
    .end local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v19    # "pageLimit":I
    .end local v20    # "startPos":I
    .local v5, "pageLimit":I
    .local v6, "startPos":I
    :cond_296
    move/from16 v19, v5

    move/from16 v20, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .restart local v19    # "pageLimit":I
    .restart local v20    # "startPos":I
    :try_start_29a
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2a6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29a .. :try_end_2a6} :catch_2a7

    .line 944
    .local v0, "resName":Ljava/lang/String;
    goto :goto_2b1

    .line 942
    .end local v0    # "resName":Ljava/lang/String;
    :catch_2a7
    move-exception v0

    .line 943
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 945
    .local v0, "resName":Ljava/lang/String;
    :goto_2b1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pager id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pager class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 949
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Problematic adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 950
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1322
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1323
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1325
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1327
    :goto_b
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .registers 10
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 400
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 398
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 402
    .end local v0    # "i":I
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    .line 405
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 406
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 409
    :cond_40
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 410
    .local v0, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 411
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 413
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_8f

    .line 414
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_56

    .line 415
    new-instance v2, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 417
    :cond_56
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 418
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 419
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 420
    .local v2, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 421
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 422
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_86

    .line 423
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 424
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v1, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 425
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 426
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 427
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_8f

    .line 428
    :cond_86
    if-nez v2, :cond_8c

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    goto :goto_8f

    .line 431
    :cond_8c
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 435
    .end local v2    # "wasFirstLayout":Z
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_9a

    if-eq v0, p1, :cond_9a

    .line 436
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 438
    :cond_9a
    return-void
.end method

.method public blacklist setCurrentItem(I)V
    .registers 4
    .param p1, "item"    # I

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 477
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 478
    return-void
.end method

.method public blacklist setCurrentItem(IZ)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 488
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 489
    return-void
.end method

.method blacklist setCurrentItemInternal(IZZ)Z
    .registers 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method blacklist setCurrentItemInternal(IZZI)Z
    .registers 10
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_f

    goto/16 :goto_7b

    .line 506
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 507
    if-nez p3, :cond_2d

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_2d

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 508
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 509
    return v1

    .line 512
    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 513
    .local v0, "pageLimit":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_39

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_4f

    .line 517
    :cond_39
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4f

    .line 518
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v2, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 522
    .end local v3    # "i":I
    :cond_4f
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_54

    move v1, v2

    .line 523
    .local v1, "dispatchSelected":Z
    :cond_54
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_74

    .line 526
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 527
    if-eqz v1, :cond_65

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_65

    .line 528
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 530
    :cond_65
    if-eqz v1, :cond_70

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_70

    .line 531
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 533
    :cond_70
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    goto :goto_7a

    .line 535
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 536
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 539
    :goto_7a
    return v2

    .line 502
    .end local v0    # "pageLimit":I
    .end local v1    # "dispatchSelected":Z
    :cond_7b
    :goto_7b
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 503
    return v1
.end method

.method blacklist setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 637
    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 638
    return-object v0
.end method

.method public blacklist setOffscreenPageLimit(I)V
    .registers 5
    .param p1, "limit"    # I

    .line 670
    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 p1, 0x1

    .line 675
    :cond_26
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    .line 676
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 679
    :cond_2f
    return-void
.end method

.method blacklist setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 461
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 462
    return-void
.end method

.method public blacklist setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 594
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 595
    return-void
.end method

.method public blacklist setPageMargin(I)V
    .registers 4
    .param p1, "marginPixels"    # I

    .line 690
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 691
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v1

    .line 694
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 697
    return-void
.end method

.method public blacklist setPageMarginDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 726
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    return-void
.end method

.method public blacklist setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 714
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 715
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->refreshDrawableState()V

    .line 716
    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->invalidate()V

    .line 718
    return-void
.end method

.method public blacklist setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .registers 7
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 610
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 611
    .local v2, "hasTransformer":Z
    :goto_7
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    if-eq v2, v3, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v1

    .line 612
    .local v3, "needsPopulate":Z
    :goto_13
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 614
    if-eqz v2, :cond_20

    .line 615
    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    :cond_1d
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    goto :goto_22

    .line 617
    :cond_20
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 619
    :goto_22
    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 620
    :cond_27
    return-void
.end method

.method blacklist smoothScrollTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 762
    return-void
.end method

.method blacklist smoothScrollTo(III)V
    .registers 18
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 774
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 775
    return-void

    .line 777
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 778
    .local v3, "sx":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 779
    .local v4, "sy":I
    sub-int v5, p1, v3

    .line 780
    .local v5, "dx":I
    sub-int v6, p2, v4

    .line 781
    .local v6, "dy":I
    if-nez v5, :cond_25

    if-nez v6, :cond_25

    .line 782
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 783
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 784
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 785
    return-void

    .line 788
    :cond_25
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 789
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 791
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 792
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 793
    .local v1, "halfWidth":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v2, v7

    int-to-float v8, v0

    div-float/2addr v2, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 794
    .local v8, "distanceRatio":F
    int-to-float v2, v1

    int-to-float v9, v1

    .line 795
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    .line 797
    .local v9, "distance":F
    const/4 v2, 0x0

    .line 798
    .local v2, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 799
    .end local p3    # "velocity":I
    .local v10, "velocity":I
    if-lez v10, :cond_61

    .line 800
    int-to-float v7, v10

    div-float v7, v9, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    .end local v2    # "duration":I
    .local v7, "duration":I
    goto :goto_7a

    .line 802
    .end local v7    # "duration":I
    .restart local v2    # "duration":I
    :cond_61
    int-to-float v11, v0

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    mul-float/2addr v11, v12

    .line 803
    .local v11, "pageWidth":F
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float/2addr v12, v13

    .line 804
    .local v12, "pageDelta":F
    add-float/2addr v7, v12

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v7, v13

    float-to-int v7, v7

    .line 806
    .end local v2    # "duration":I
    .end local v11    # "pageWidth":F
    .end local v12    # "pageDelta":F
    .restart local v7    # "duration":I
    :goto_7a
    const/16 v2, 0x258

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 808
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 809
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 810
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 731
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

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
