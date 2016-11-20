.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$1;,
        Lcom/android/internal/widget/ViewPager$2;,
        Lcom/android/internal/widget/ViewPager$3;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ViewPager;I)V
    .locals 0
    .param p1, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 75
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 76
    const v1, 0x10100b3

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 75
    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    #@b
    .line 97
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    #@d
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    #@10
    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@12
    .line 104
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    #@14
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    #@17
    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@19
    .line 204
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    #@1b
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    #@1e
    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    #@20
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 325
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 333
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    const/4 v4, 0x1

    #@4
    .line 337
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@7
    .line 111
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e
    .line 112
    new-instance v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@10
    invoke-direct {v2}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    #@13
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@15
    .line 114
    new-instance v2, Landroid/graphics/Rect;

    #@17
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    .line 118
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    #@1e
    .line 119
    iput-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@20
    .line 120
    iput-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@22
    .line 133
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@24
    .line 138
    const v2, -0x800001

    #@27
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@29
    .line 139
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    #@2c
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@2e
    .line 148
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@30
    .line 166
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@32
    .line 190
    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@34
    .line 222
    new-instance v2, Lcom/android/internal/widget/ViewPager$3;

    #@36
    invoke-direct {v2, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    #@39
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    .line 229
    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    #@3d
    .line 339
    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    #@40
    .line 340
    const/high16 v2, 0x40000

    #@42
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    #@45
    .line 341
    invoke-virtual {p0, v4}, Landroid/view/View;->setFocusable(Z)V

    #@48
    .line 343
    new-instance v2, Landroid/widget/Scroller;

    #@4a
    sget-object v3, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@4c
    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@4f
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@51
    .line 344
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@54
    move-result-object v0

    #@55
    .line 345
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@5c
    move-result-object v2

    #@5d
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    #@5f
    .line 347
    .local v1, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    #@62
    move-result v2

    #@63
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@65
    .line 348
    const/high16 v2, 0x43c80000    # 400.0f

    #@67
    mul-float/2addr v2, v1

    #@68
    float-to-int v2, v2

    #@69
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    #@6b
    .line 349
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@6e
    move-result v2

    #@6f
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    #@71
    .line 350
    new-instance v2, Landroid/widget/EdgeEffect;

    #@73
    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@76
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@78
    .line 351
    new-instance v2, Landroid/widget/EdgeEffect;

    #@7a
    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@7d
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@7f
    .line 353
    const/high16 v2, 0x41c80000    # 25.0f

    #@81
    mul-float/2addr v2, v1

    #@82
    float-to-int v2, v2

    #@83
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    #@85
    .line 354
    const/high16 v2, 0x40000000    # 2.0f

    #@87
    mul-float/2addr v2, v1

    #@88
    float-to-int v2, v2

    #@89
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    #@8b
    .line 355
    const/high16 v2, 0x41800000    # 16.0f

    #@8d
    mul-float/2addr v2, v1

    #@8e
    float-to-int v2, v2

    #@8f
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    #@91
    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    #@94
    move-result v2

    #@95
    if-nez v2, :cond_0

    #@97
    .line 358
    invoke-virtual {p0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@9a
    .line 336
    :cond_0
    return-void
.end method

.method private calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@0
    .prologue
    .line 1107
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@2
    invoke-virtual {v12}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@5
    move-result v1

    #@6
    .line 1108
    .local v1, "N":I
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@9
    move-result v11

    #@a
    .line 1109
    .local v11, "width":I
    if-lez v11, :cond_0

    #@c
    iget v12, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@e
    int-to-float v12, v12

    #@f
    int-to-float v13, v11

    #@10
    div-float v6, v12, v13

    #@12
    .line 1112
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    #@14
    .line 1113
    move-object/from16 v0, p3

    #@16
    iget v8, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@18
    .line 1116
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@1a
    if-ge v8, v12, :cond_3

    #@1c
    .line 1117
    const/4 v5, 0x0

    #@1d
    .line 1118
    .local v5, "itemIndex":I
    move-object/from16 v0, p3

    #@1f
    iget v12, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@21
    move-object/from16 v0, p3

    #@23
    iget v13, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@25
    add-float/2addr v12, v13

    #@26
    add-float v7, v12, v6

    #@28
    .line 1119
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    #@2a
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@2c
    if-gt v9, v12, :cond_6

    #@2e
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v12

    #@34
    if-ge v5, v12, :cond_6

    #@36
    .line 1120
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3e
    .line 1121
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@40
    if-le v9, v12, :cond_1

    #@42
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v12

    #@48
    add-int/lit8 v12, v12, -0x1

    #@4a
    if-ge v5, v12, :cond_1

    #@4c
    .line 1122
    add-int/lit8 v5, v5, 0x1

    #@4e
    .line 1123
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@56
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_2

    #@57
    .line 1109
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    #@58
    .restart local v6    # "marginOffset":F
    goto :goto_0

    #@59
    .line 1126
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@5b
    if-ge v9, v12, :cond_2

    #@5d
    .line 1129
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@5f
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@62
    move-result v12

    #@63
    add-float/2addr v12, v6

    #@64
    add-float/2addr v7, v12

    #@65
    .line 1130
    add-int/lit8 v9, v9, 0x1

    #@67
    goto :goto_3

    #@68
    .line 1133
    :cond_2
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@6a
    .line 1134
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@6c
    add-float/2addr v12, v6

    #@6d
    add-float/2addr v7, v12

    #@6e
    .line 1119
    add-int/lit8 v9, v9, 0x1

    #@70
    goto :goto_1

    #@71
    .line 1136
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@73
    if-le v8, v12, :cond_6

    #@75
    .line 1137
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@7a
    move-result v12

    #@7b
    add-int/lit8 v5, v12, -0x1

    #@7d
    .line 1138
    .restart local v5    # "itemIndex":I
    move-object/from16 v0, p3

    #@7f
    iget v7, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@81
    .line 1139
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    #@83
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@85
    if-lt v9, v12, :cond_6

    #@87
    if-ltz v5, :cond_6

    #@89
    .line 1140
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v3

    #@8f
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@91
    .line 1141
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@93
    if-ge v9, v12, :cond_4

    #@95
    if-lez v5, :cond_4

    #@97
    .line 1142
    add-int/lit8 v5, v5, -0x1

    #@99
    .line 1143
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v3

    #@9f
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@a1
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_5

    #@a2
    .line 1146
    :cond_4
    :goto_6
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@a4
    if-le v9, v12, :cond_5

    #@a6
    .line 1149
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@a8
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@ab
    move-result v12

    #@ac
    add-float/2addr v12, v6

    #@ad
    sub-float/2addr v7, v12

    #@ae
    .line 1150
    add-int/lit8 v9, v9, -0x1

    #@b0
    goto :goto_6

    #@b1
    .line 1153
    :cond_5
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@b3
    add-float/2addr v12, v6

    #@b4
    sub-float/2addr v7, v12

    #@b5
    .line 1154
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@b7
    .line 1139
    add-int/lit8 v9, v9, -0x1

    #@b9
    goto :goto_4

    #@ba
    .line 1160
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@bc
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@bf
    move-result v4

    #@c0
    .line 1161
    .local v4, "itemCount":I
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@c2
    .line 1162
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@c4
    add-int/lit8 v9, v12, -0x1

    #@c6
    .line 1163
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@c8
    if-nez v12, :cond_7

    #@ca
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@cc
    :goto_7
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@ce
    .line 1164
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@d0
    add-int/lit8 v13, v1, -0x1

    #@d2
    if-ne v12, v13, :cond_8

    #@d4
    .line 1165
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@d6
    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@d8
    add-float/2addr v12, v13

    #@d9
    const/high16 v13, 0x3f800000    # 1.0f

    #@db
    sub-float/2addr v12, v13

    #@dc
    .line 1164
    :goto_8
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@de
    .line 1168
    add-int/lit8 v2, p2, -0x1

    #@e0
    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    #@e2
    .line 1169
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e4
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e7
    move-result-object v3

    #@e8
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@ea
    .line 1170
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@ec
    if-le v9, v12, :cond_9

    #@ee
    .line 1171
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@f0
    add-int/lit8 v10, v9, -0x1

    #@f2
    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@f5
    move-result v12

    #@f6
    add-float/2addr v12, v6

    #@f7
    sub-float/2addr v7, v12

    #@f8
    move v9, v10

    #@f9
    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    #@fa
    .line 1163
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    #@fd
    goto :goto_7

    #@fe
    .line 1165
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    #@101
    goto :goto_8

    #@102
    .line 1173
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@104
    add-float/2addr v12, v6

    #@105
    sub-float/2addr v7, v12

    #@106
    .line 1174
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@108
    .line 1175
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@10a
    if-nez v12, :cond_a

    #@10c
    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@10e
    .line 1168
    :cond_a
    add-int/lit8 v2, v2, -0x1

    #@110
    add-int/lit8 v9, v9, -0x1

    #@112
    goto :goto_9

    #@113
    .line 1178
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@115
    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@117
    add-float/2addr v12, v13

    #@118
    add-float v7, v12, v6

    #@11a
    .line 1179
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@11c
    add-int/lit8 v9, v12, 0x1

    #@11e
    .line 1182
    add-int/lit8 v2, p2, 0x1

    #@120
    :goto_b
    if-ge v2, v4, :cond_e

    #@122
    .line 1183
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@124
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@127
    move-result-object v3

    #@128
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@12a
    .line 1184
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@12c
    if-ge v9, v12, :cond_c

    #@12e
    .line 1185
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@130
    add-int/lit8 v10, v9, 0x1

    #@132
    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@135
    move-result v12

    #@136
    add-float/2addr v12, v6

    #@137
    add-float/2addr v7, v12

    #@138
    move v9, v10

    #@139
    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    #@13a
    .line 1187
    :cond_c
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@13c
    add-int/lit8 v13, v1, -0x1

    #@13e
    if-ne v12, v13, :cond_d

    #@140
    .line 1188
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@142
    add-float/2addr v12, v7

    #@143
    const/high16 v13, 0x3f800000    # 1.0f

    #@145
    sub-float/2addr v12, v13

    #@146
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@148
    .line 1190
    :cond_d
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@14a
    .line 1191
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@14c
    add-float/2addr v12, v6

    #@14d
    add-float/2addr v7, v12

    #@14e
    .line 1182
    add-int/lit8 v2, v2, 0x1

    #@150
    add-int/lit8 v9, v9, 0x1

    #@152
    goto :goto_b

    #@153
    .line 1106
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_e
    return-void
.end method

.method private canScroll()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2750
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@8
    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@b
    move-result v2

    #@c
    if-le v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1755
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    #@3
    const/4 v9, 0x2

    #@4
    if-ne v8, v9, :cond_3

    #@6
    const/4 v2, 0x1

    #@7
    .line 1756
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    #@9
    .line 1758
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@c
    .line 1759
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@e
    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    #@11
    .line 1760
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@14
    move-result v3

    #@15
    .line 1761
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    #@18
    move-result v4

    #@19
    .line 1762
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1b
    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    #@1e
    move-result v5

    #@1f
    .line 1763
    .local v5, "x":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@21
    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    #@24
    move-result v6

    #@25
    .line 1764
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    #@27
    if-eq v4, v6, :cond_1

    #@29
    .line 1765
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    #@2c
    .line 1768
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@2e
    .line 1769
    const/4 v0, 0x0

    #@2f
    .end local v2    # "needPopulate":Z
    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v8

    #@35
    if-ge v0, v8, :cond_4

    #@37
    .line 1770
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3f
    .line 1771
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    #@41
    if-eqz v8, :cond_2

    #@43
    .line 1772
    const/4 v2, 0x1

    #@44
    .line 1773
    .local v2, "needPopulate":Z
    iput-boolean v7, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    #@46
    .line 1769
    .end local v2    # "needPopulate":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_1

    #@49
    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    move v2, v7

    #@4a
    .line 1755
    goto :goto_0

    #@4b
    .line 1776
    .restart local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    #@4d
    .line 1777
    if-eqz p1, :cond_6

    #@4f
    .line 1778
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@51
    invoke-virtual {p0, v7}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    #@54
    .line 1754
    :cond_5
    :goto_2
    return-void

    #@55
    .line 1780
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@57
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    #@5a
    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 8
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2223
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@4
    move-result v4

    #@5
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    #@7
    if-le v4, v6, :cond_2

    #@9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@c
    move-result v4

    #@d
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    #@f
    if-le v4, v6, :cond_2

    #@11
    .line 2224
    if-gez p3, :cond_1

    #@13
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@15
    :goto_0
    sub-int v2, p1, v4

    #@17
    .line 2230
    .local v2, "targetPage":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v4

    #@1d
    if-lez v4, :cond_0

    #@1f
    .line 2231
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@27
    .line 2232
    .local v0, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v5

    #@2f
    add-int/lit8 v5, v5, -0x1

    #@31
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@37
    .line 2235
    .local v1, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@39
    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@3b
    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    #@3e
    move-result v2

    #@3f
    .line 2238
    .end local v0    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    return v2

    #@40
    .end local v2    # "targetPage":I
    :cond_1
    move v4, v5

    #@41
    .line 2224
    goto :goto_0

    #@42
    .line 2226
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@44
    if-lt p1, v4, :cond_3

    #@46
    const v3, 0x3ecccccd    # 0.4f

    #@49
    .line 2227
    .local v3, "truncator":F
    :goto_2
    int-to-float v4, p1

    #@4a
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@4c
    int-to-float v6, v6

    #@4d
    add-float v7, p2, v3

    #@4f
    mul-float/2addr v6, v7

    #@50
    sub-float/2addr v4, v6

    #@51
    float-to-int v2, v4

    #@52
    .restart local v2    # "targetPage":I
    goto :goto_1

    #@53
    .line 2226
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    #@56
    .restart local v3    # "truncator":F
    goto :goto_2
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1790
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1791
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 1792
    if-eqz p1, :cond_0

    #@9
    const/4 v2, 0x2

    #@a
    .line 1793
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@12
    .line 1791
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1792
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    #@16
    .restart local v2    # "layerType":I
    goto :goto_1

    #@17
    .line 1789
    .end local v2    # "layerType":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 2354
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@4
    .line 2355
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    #@6
    .line 2357
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2358
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@f
    .line 2359
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    .line 2353
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2530
    if-nez p1, :cond_0

    #@3
    .line 2531
    new-instance p1, Landroid/graphics/Rect;

    #@5
    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    .line 2533
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_1

    #@a
    .line 2534
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    .line 2535
    return-object p1

    #@e
    .line 2537
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@11
    move-result v2

    #@12
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@14
    .line 2538
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@17
    move-result v2

    #@18
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@1a
    .line 2539
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@1d
    move-result v2

    #@1e
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@20
    .line 2540
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@23
    move-result v2

    #@24
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@26
    .line 2542
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@29
    move-result-object v1

    #@2a
    .line 2543
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    #@2c
    if-eqz v2, :cond_2

    #@2e
    if-eq v1, p0, :cond_2

    #@30
    move-object v0, v1

    #@31
    .line 2544
    nop

    #@32
    nop

    #@33
    .line 2545
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@35
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@38
    move-result v3

    #@39
    add-int/2addr v2, v3

    #@3a
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@3c
    .line 2546
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@3e
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@41
    move-result v3

    #@42
    add-int/2addr v2, v3

    #@43
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@45
    .line 2547
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@47
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@4a
    move-result v3

    #@4b
    add-int/2addr v2, v3

    #@4c
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@4e
    .line 2548
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@50
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@53
    move-result v3

    #@54
    add-int/2addr v2, v3

    #@55
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@57
    .line 2550
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5a
    move-result-object v1

    #@5b
    goto :goto_0

    #@5c
    .line 2552
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_2
    return-object p1
.end method

.method private getLeftEdgeForItem(I)I
    .locals 8
    .param p1, "position"    # I

    #@0
    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3
    move-result-object v0

    #@4
    .line 564
    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    #@6
    .line 565
    const/4 v4, 0x0

    #@7
    return v4

    #@8
    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@b
    move-result v3

    #@c
    .line 569
    .local v3, "width":I
    int-to-float v4, v3

    #@d
    .line 570
    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@f
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@11
    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@13
    .line 569
    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    #@16
    move-result v5

    #@17
    mul-float/2addr v4, v5

    #@18
    float-to-int v2, v4

    #@19
    .line 572
    .local v2, "scaledOffset":I
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 573
    int-to-float v4, v3

    #@20
    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@22
    mul-float/2addr v4, v5

    #@23
    const/high16 v5, 0x3f000000    # 0.5f

    #@25
    add-float/2addr v4, v5

    #@26
    float-to-int v1, v4

    #@27
    .line 574
    .local v1, "itemWidth":I
    const/high16 v4, 0x1000000

    #@29
    sub-int/2addr v4, v1

    #@2a
    sub-int/2addr v4, v2

    #@2b
    return v4

    #@2c
    .line 576
    .end local v1    # "itemWidth":I
    :cond_1
    return v2
.end method

.method private getPaddedWidth()I
    .locals 2

    #@0
    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method private getScrollStart()I
    .locals 2

    #@0
    .prologue
    .line 2207
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2208
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@9
    move-result v0

    #@a
    const/high16 v1, 0x1000000

    #@c
    sub-int v0, v1, v0

    #@e
    return v0

    #@f
    .line 2210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method private infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 19

    #@0
    .prologue
    .line 2160
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    #@3
    move-result v15

    #@4
    .line 2161
    .local v15, "startOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@7
    move-result v16

    #@8
    .line 2162
    .local v16, "width":I
    if-lez v16, :cond_3

    #@a
    int-to-float v0, v15

    #@b
    move/from16 v17, v0

    #@d
    move/from16 v0, v16

    #@f
    int-to-float v0, v0

    #@10
    move/from16 v18, v0

    #@12
    div-float v13, v17, v18

    #@14
    .line 2163
    .local v13, "scrollOffset":F
    :goto_0
    if-lez v16, :cond_4

    #@16
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@1a
    move/from16 v17, v0

    #@1c
    move/from16 v0, v17

    #@1e
    int-to-float v0, v0

    #@1f
    move/from16 v17, v0

    #@21
    move/from16 v0, v16

    #@23
    int-to-float v0, v0

    #@24
    move/from16 v18, v0

    #@26
    div-float v11, v17, v18

    #@28
    .line 2165
    .local v11, "marginOffset":F
    :goto_1
    const/4 v9, -0x1

    #@29
    .line 2166
    .local v9, "lastPos":I
    const/4 v8, 0x0

    #@2a
    .line 2167
    .local v8, "lastOffset":F
    const/4 v10, 0x0

    #@2b
    .line 2168
    .local v10, "lastWidth":F
    const/4 v4, 0x1

    #@2c
    .line 2169
    .local v4, "first":Z
    const/4 v7, 0x0

    #@2d
    .line 2171
    .local v7, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@31
    move-object/from16 v17, v0

    #@33
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v2

    #@37
    .line 2172
    .local v2, "N":I
    const/4 v5, 0x0

    #@38
    .end local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_7

    #@3a
    .line 2173
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3e
    move-object/from16 v17, v0

    #@40
    move-object/from16 v0, v17

    #@42
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v6

    #@46
    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@48
    .line 2176
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v4, :cond_0

    #@4a
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@4c
    move/from16 v17, v0

    #@4e
    add-int/lit8 v18, v9, 0x1

    #@50
    move/from16 v0, v17

    #@52
    move/from16 v1, v18

    #@54
    if-eq v0, v1, :cond_0

    #@56
    .line 2178
    move-object/from16 v0, p0

    #@58
    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@5a
    .line 2179
    add-float v17, v8, v10

    #@5c
    add-float v17, v17, v11

    #@5e
    move/from16 v0, v17

    #@60
    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@62
    .line 2180
    add-int/lit8 v17, v9, 0x1

    #@64
    move/from16 v0, v17

    #@66
    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@68
    .line 2181
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@6c
    move-object/from16 v17, v0

    #@6e
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@70
    move/from16 v18, v0

    #@72
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@75
    move-result v17

    #@76
    move/from16 v0, v17

    #@78
    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@7a
    .line 2182
    add-int/lit8 v5, v5, -0x1

    #@7c
    .line 2185
    :cond_0
    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@7e
    .line 2186
    .local v12, "offset":F
    move v14, v12

    #@7f
    .line 2187
    .local v14, "startBound":F
    if-nez v4, :cond_1

    #@81
    cmpl-float v17, v13, v12

    #@83
    if-ltz v17, :cond_5

    #@85
    .line 2188
    :cond_1
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@87
    move/from16 v17, v0

    #@89
    add-float v17, v17, v12

    #@8b
    add-float v3, v17, v11

    #@8d
    .line 2189
    .local v3, "endBound":F
    cmpg-float v17, v13, v3

    #@8f
    if-ltz v17, :cond_2

    #@91
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@95
    move-object/from16 v17, v0

    #@97
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@9a
    move-result v17

    #@9b
    add-int/lit8 v17, v17, -0x1

    #@9d
    move/from16 v0, v17

    #@9f
    if-ne v5, v0, :cond_6

    #@a1
    .line 2190
    :cond_2
    return-object v6

    #@a2
    .line 2162
    .end local v2    # "N":I
    .end local v3    # "endBound":F
    .end local v4    # "first":Z
    .end local v5    # "i":I
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v8    # "lastOffset":F
    .end local v9    # "lastPos":I
    .end local v10    # "lastWidth":F
    .end local v11    # "marginOffset":F
    .end local v12    # "offset":F
    .end local v13    # "scrollOffset":F
    .end local v14    # "startBound":F
    :cond_3
    const/4 v13, 0x0

    #@a3
    .restart local v13    # "scrollOffset":F
    goto/16 :goto_0

    #@a5
    .line 2163
    :cond_4
    const/4 v11, 0x0

    #@a6
    .restart local v11    # "marginOffset":F
    goto :goto_1

    #@a7
    .line 2193
    .restart local v2    # "N":I
    .restart local v4    # "first":Z
    .restart local v5    # "i":I
    .restart local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v8    # "lastOffset":F
    .restart local v9    # "lastPos":I
    .restart local v10    # "lastWidth":F
    .restart local v12    # "offset":F
    .restart local v14    # "startBound":F
    :cond_5
    return-object v7

    #@a8
    .line 2196
    .restart local v3    # "endBound":F
    :cond_6
    const/4 v4, 0x0

    #@a9
    .line 2197
    iget v9, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@ab
    .line 2198
    move v8, v12

    #@ac
    .line 2199
    iget v10, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@ae
    .line 2200
    move-object v7, v6

    #@af
    .line 2172
    .local v7, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    #@b1
    goto :goto_2

    #@b2
    .line 2203
    .end local v3    # "endBound":F
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "offset":F
    .end local v14    # "startBound":F
    :cond_7
    return-object v7
.end method

.method private isGutterDrag(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "dx"    # F

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1786
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    #@5
    int-to-float v2, v2

    #@6
    cmpg-float v2, p1, v2

    #@8
    if-gez v2, :cond_1

    #@a
    cmpl-float v2, p2, v4

    #@c
    if-lez v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@12
    move-result v2

    #@13
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    #@15
    sub-int/2addr v2, v3

    #@16
    int-to-float v2, v2

    #@17
    cmpl-float v2, p1, v2

    #@19
    if-lez v2, :cond_2

    #@1b
    cmpg-float v2, p2, v4

    #@1d
    if-ltz v2, :cond_0

    #@1f
    :cond_2
    move v0, v1

    #@20
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@4
    move-result v2

    #@5
    .line 2340
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@8
    move-result v1

    #@9
    .line 2341
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@b
    if-ne v1, v3, :cond_1

    #@d
    .line 2344
    if-nez v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 2345
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@13
    move-result v3

    #@14
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@16
    .line 2346
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@19
    move-result v3

    #@1a
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@1c
    .line 2347
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 2348
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@22
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    #@25
    .line 2338
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 11
    .param p1, "scrollX"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1641
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v8

    #@7
    if-nez v8, :cond_1

    #@9
    .line 1642
    iput-boolean v10, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    #@b
    .line 1643
    const/4 v8, 0x0

    #@c
    invoke-virtual {p0, v10, v8, v10}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    #@f
    .line 1644
    iget-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    #@11
    if-nez v8, :cond_0

    #@13
    .line 1645
    new-instance v8, Ljava/lang/IllegalStateException;

    #@15
    .line 1646
    const-string/jumbo v9, "onPageScrolled did not call superclass implementation"

    #@18
    .line 1645
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v8

    #@1c
    .line 1648
    :cond_0
    return v10

    #@1d
    .line 1653
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_2

    #@23
    .line 1654
    const/high16 v8, 0x1000000

    #@25
    sub-int v5, v8, p1

    #@27
    .line 1659
    .local v5, "scrollStart":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@2a
    move-result-object v1

    #@2b
    .line 1660
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@2e
    move-result v6

    #@2f
    .line 1661
    .local v6, "width":I
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@31
    add-int v7, v6, v8

    #@33
    .line 1662
    .local v7, "widthWithMargin":I
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@35
    int-to-float v8, v8

    #@36
    int-to-float v9, v6

    #@37
    div-float v2, v8, v9

    #@39
    .line 1663
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@3b
    .line 1664
    .local v0, "currentPage":I
    int-to-float v8, v5

    #@3c
    int-to-float v9, v6

    #@3d
    div-float/2addr v8, v9

    #@3e
    iget v9, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@40
    sub-float/2addr v8, v9

    #@41
    .line 1665
    iget v9, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@43
    add-float/2addr v9, v2

    #@44
    .line 1664
    div-float v4, v8, v9

    #@46
    .line 1666
    .local v4, "pageOffset":F
    int-to-float v8, v7

    #@47
    mul-float/2addr v8, v4

    #@48
    float-to-int v3, v8

    #@49
    .line 1668
    .local v3, "offsetPixels":I
    iput-boolean v10, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    #@4b
    .line 1669
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    #@4e
    .line 1670
    iget-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    #@50
    if-nez v8, :cond_3

    #@52
    .line 1671
    new-instance v8, Ljava/lang/IllegalStateException;

    #@54
    .line 1672
    const-string/jumbo v9, "onPageScrolled did not call superclass implementation"

    #@57
    .line 1671
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v8

    #@5b
    .line 1656
    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollStart":I
    .end local v6    # "width":I
    .end local v7    # "widthWithMargin":I
    :cond_2
    move v5, p1

    #@5c
    .restart local v5    # "scrollStart":I
    goto :goto_0

    #@5d
    .line 1674
    .restart local v0    # "currentPage":I
    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v2    # "marginOffset":F
    .restart local v3    # "offsetPixels":I
    .restart local v4    # "pageOffset":F
    .restart local v6    # "width":I
    .restart local v7    # "widthWithMargin":I
    :cond_3
    const/4 v8, 0x1

    #@5e
    return v8
.end method

.method private performDrag(F)Z
    .locals 21
    .param p1, "x"    # F

    #@0
    .prologue
    .line 2076
    const/4 v9, 0x0

    #@1
    .line 2078
    .local v9, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@4
    move-result v18

    #@5
    .line 2079
    .local v18, "width":I
    move-object/from16 v0, p0

    #@7
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@9
    move/from16 v19, v0

    #@b
    sub-float v4, v19, p1

    #@d
    .line 2080
    .local v4, "deltaX":F
    move/from16 v0, p1

    #@f
    move-object/from16 v1, p0

    #@11
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@13
    .line 2084
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@16
    move-result v19

    #@17
    if-eqz v19, :cond_1

    #@19
    .line 2085
    move-object/from16 v0, p0

    #@1b
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@1d
    .line 2086
    .local v15, "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    #@1f
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@21
    .line 2093
    .local v7, "endEdge":Landroid/widget/EdgeEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    #@24
    move-result v19

    #@25
    move/from16 v0, v19

    #@27
    int-to-float v0, v0

    #@28
    move/from16 v19, v0

    #@2a
    add-float v10, v19, v4

    #@2c
    .line 2095
    .local v10, "nextScrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@2f
    move-result v19

    #@30
    if-eqz v19, :cond_2

    #@32
    .line 2096
    const/high16 v19, 0x4b800000    # 1.6777216E7f

    #@34
    sub-float v12, v19, v10

    #@36
    .line 2102
    .local v12, "scrollStart":F
    :goto_1
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3a
    move-object/from16 v19, v0

    #@3c
    const/16 v20, 0x0

    #@3e
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v16

    #@42
    check-cast v16, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@44
    .line 2103
    .local v16, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v16

    #@46
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@48
    move/from16 v19, v0

    #@4a
    if-nez v19, :cond_3

    #@4c
    const/4 v13, 0x1

    #@4d
    .line 2104
    .local v13, "startAbsolute":Z
    :goto_2
    if-eqz v13, :cond_4

    #@4f
    .line 2105
    move-object/from16 v0, v16

    #@51
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@53
    move/from16 v19, v0

    #@55
    move/from16 v0, v18

    #@57
    int-to-float v0, v0

    #@58
    move/from16 v20, v0

    #@5a
    mul-float v14, v19, v20

    #@5c
    .line 2111
    .local v14, "startBound":F
    :goto_3
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@60
    move-object/from16 v19, v0

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@66
    move-object/from16 v20, v0

    #@68
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v20

    #@6c
    add-int/lit8 v20, v20, -0x1

    #@6e
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v8

    #@72
    check-cast v8, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@74
    .line 2112
    .local v8, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@76
    move/from16 v19, v0

    #@78
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@7c
    move-object/from16 v20, v0

    #@7e
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@81
    move-result v20

    #@82
    add-int/lit8 v20, v20, -0x1

    #@84
    move/from16 v0, v19

    #@86
    move/from16 v1, v20

    #@88
    if-ne v0, v1, :cond_5

    #@8a
    const/4 v5, 0x1

    #@8b
    .line 2113
    .local v5, "endAbsolute":Z
    :goto_4
    if-eqz v5, :cond_6

    #@8d
    .line 2114
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@8f
    move/from16 v19, v0

    #@91
    move/from16 v0, v18

    #@93
    int-to-float v0, v0

    #@94
    move/from16 v20, v0

    #@96
    mul-float v6, v19, v20

    #@98
    .line 2120
    .local v6, "endBound":F
    :goto_5
    cmpg-float v19, v12, v14

    #@9a
    if-gez v19, :cond_7

    #@9c
    .line 2121
    if-eqz v13, :cond_0

    #@9e
    .line 2122
    sub-float v11, v14, v12

    #@a0
    .line 2123
    .local v11, "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@a3
    move-result v19

    #@a4
    move/from16 v0, v18

    #@a6
    int-to-float v0, v0

    #@a7
    move/from16 v20, v0

    #@a9
    div-float v19, v19, v20

    #@ab
    move/from16 v0, v19

    #@ad
    invoke-virtual {v15, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    #@b0
    .line 2124
    const/4 v9, 0x1

    #@b1
    .line 2126
    .end local v11    # "over":F
    :cond_0
    move v3, v14

    #@b2
    .line 2140
    .local v3, "clampedScrollStart":F
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@b5
    move-result v19

    #@b6
    if-eqz v19, :cond_a

    #@b8
    .line 2141
    const/high16 v19, 0x4b800000    # 1.6777216E7f

    #@ba
    sub-float v17, v19, v3

    #@bc
    .line 2147
    .local v17, "targetScrollX":F
    :goto_7
    move-object/from16 v0, p0

    #@be
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@c0
    move/from16 v19, v0

    #@c2
    move/from16 v0, v17

    #@c4
    float-to-int v0, v0

    #@c5
    move/from16 v20, v0

    #@c7
    move/from16 v0, v20

    #@c9
    int-to-float v0, v0

    #@ca
    move/from16 v20, v0

    #@cc
    sub-float v20, v17, v20

    #@ce
    add-float v19, v19, v20

    #@d0
    move/from16 v0, v19

    #@d2
    move-object/from16 v1, p0

    #@d4
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@d6
    .line 2149
    move/from16 v0, v17

    #@d8
    float-to-int v0, v0

    #@d9
    move/from16 v19, v0

    #@db
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    #@de
    move-result v20

    #@df
    move-object/from16 v0, p0

    #@e1
    move/from16 v1, v19

    #@e3
    move/from16 v2, v20

    #@e5
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    #@e8
    .line 2150
    move/from16 v0, v17

    #@ea
    float-to-int v0, v0

    #@eb
    move/from16 v19, v0

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, v19

    #@f1
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    #@f4
    .line 2152
    return v9

    #@f5
    .line 2088
    .end local v3    # "clampedScrollStart":F
    .end local v5    # "endAbsolute":Z
    .end local v6    # "endBound":F
    .end local v7    # "endEdge":Landroid/widget/EdgeEffect;
    .end local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "nextScrollX":F
    .end local v12    # "scrollStart":F
    .end local v13    # "startAbsolute":Z
    .end local v14    # "startBound":F
    .end local v15    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "targetScrollX":F
    :cond_1
    move-object/from16 v0, p0

    #@f7
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@f9
    .line 2089
    .restart local v15    # "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    #@fb
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@fd
    .restart local v7    # "endEdge":Landroid/widget/EdgeEffect;
    goto/16 :goto_0

    #@ff
    .line 2098
    .restart local v10    # "nextScrollX":F
    :cond_2
    move v12, v10

    #@100
    .restart local v12    # "scrollStart":F
    goto/16 :goto_1

    #@102
    .line 2103
    .restart local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    const/4 v13, 0x0

    #@103
    goto/16 :goto_2

    #@105
    .line 2107
    .restart local v13    # "startAbsolute":Z
    :cond_4
    move/from16 v0, v18

    #@107
    int-to-float v0, v0

    #@108
    move/from16 v19, v0

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@10e
    move/from16 v20, v0

    #@110
    mul-float v14, v19, v20

    #@112
    .restart local v14    # "startBound":F
    goto/16 :goto_3

    #@114
    .line 2112
    .restart local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_5
    const/4 v5, 0x0

    #@115
    goto/16 :goto_4

    #@117
    .line 2116
    .restart local v5    # "endAbsolute":Z
    :cond_6
    move/from16 v0, v18

    #@119
    int-to-float v0, v0

    #@11a
    move/from16 v19, v0

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@120
    move/from16 v20, v0

    #@122
    mul-float v6, v19, v20

    #@124
    .restart local v6    # "endBound":F
    goto/16 :goto_5

    #@126
    .line 2127
    :cond_7
    cmpl-float v19, v12, v6

    #@128
    if-lez v19, :cond_9

    #@12a
    .line 2128
    if-eqz v5, :cond_8

    #@12c
    .line 2129
    sub-float v11, v12, v6

    #@12e
    .line 2130
    .restart local v11    # "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@131
    move-result v19

    #@132
    move/from16 v0, v18

    #@134
    int-to-float v0, v0

    #@135
    move/from16 v20, v0

    #@137
    div-float v19, v19, v20

    #@139
    move/from16 v0, v19

    #@13b
    invoke-virtual {v7, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    #@13e
    .line 2131
    const/4 v9, 0x1

    #@13f
    .line 2133
    .end local v11    # "over":F
    :cond_8
    move v3, v6

    #@140
    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_6

    #@142
    .line 2135
    .end local v3    # "clampedScrollStart":F
    :cond_9
    move v3, v12

    #@143
    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_6

    #@145
    .line 2143
    :cond_a
    move/from16 v17, v3

    #@147
    .restart local v17    # "targetScrollX":F
    goto/16 :goto_7
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    #@0
    .prologue
    .line 1464
    if-lez p2, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 1481
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@f
    move-result-object v6

    #@10
    .line 1482
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_3

    #@12
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@14
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@16
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@19
    move-result v9

    #@1a
    .line 1484
    .local v9, "scrollOffset":F
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@1d
    move-result v0

    #@1e
    sub-int v0, p1, v0

    #@20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@23
    move-result v2

    #@24
    sub-int/2addr v0, v2

    #@25
    int-to-float v0, v0

    #@26
    .line 1483
    mul-float/2addr v0, v9

    #@27
    float-to-int v10, v0

    #@28
    .line 1485
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@2b
    move-result v0

    #@2c
    if-eq v10, v0, :cond_1

    #@2e
    .line 1486
    const/4 v0, 0x0

    #@2f
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    #@32
    .line 1487
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    #@35
    move-result v0

    #@36
    invoke-virtual {p0, v10, v0}, Landroid/view/View;->scrollTo(II)V

    #@39
    .line 1463
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_1
    :goto_1
    return-void

    #@3a
    .line 1465
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@3d
    move-result v0

    #@3e
    sub-int v0, p1, v0

    #@40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@43
    move-result v2

    #@44
    sub-int/2addr v0, v2

    #@45
    add-int v12, v0, p3

    #@47
    .line 1466
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@4a
    move-result v0

    #@4b
    sub-int v0, p2, v0

    #@4d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@50
    move-result v2

    #@51
    sub-int/2addr v0, v2

    #@52
    add-int v7, v0, p4

    #@54
    .line 1468
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@57
    move-result v13

    #@58
    .line 1469
    .local v13, "xpos":I
    int-to-float v0, v13

    #@59
    int-to-float v2, v7

    #@5a
    div-float v8, v0, v2

    #@5c
    .line 1470
    .local v8, "pageOffset":F
    int-to-float v0, v12

    #@5d
    mul-float/2addr v0, v8

    #@5e
    float-to-int v1, v0

    #@5f
    .line 1472
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    #@62
    move-result v0

    #@63
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    #@66
    .line 1473
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@68
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@6b
    move-result v0

    #@6c
    if-nez v0, :cond_1

    #@6e
    .line 1475
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@70
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    #@73
    move-result v0

    #@74
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@76
    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    #@79
    move-result v2

    #@7a
    sub-int v5, v0, v2

    #@7c
    .line 1476
    .local v5, "newDuration":I
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@7e
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@81
    move-result-object v11

    #@82
    .line 1477
    .local v11, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@84
    .line 1478
    iget v2, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@86
    int-to-float v3, p1

    #@87
    mul-float/2addr v2, v3

    #@88
    float-to-int v3, v2

    #@89
    .line 1477
    const/4 v2, 0x0

    #@8a
    .line 1478
    const/4 v4, 0x0

    #@8b
    .line 1477
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@8e
    goto :goto_1

    #@8f
    .line 1482
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    .restart local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    const/4 v9, 0x0

    #@90
    .restart local v9    # "scrollOffset":F
    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    #@0
    .prologue
    .line 435
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 436
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 437
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@11
    .line 438
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@13
    if-nez v3, :cond_0

    #@15
    .line 439
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@18
    .line 440
    add-int/lit8 v1, v1, -0x1

    #@1a
    .line 435
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 434
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 2069
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 2070
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    #@6
    .line 2071
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@9
    .line 2068
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 537
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    #@4
    move-result v0

    #@5
    .line 539
    .local v0, "destX":I
    if-eqz p2, :cond_2

    #@7
    .line 540
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    #@a
    .line 542
    if-eqz p4, :cond_0

    #@c
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 543
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@12
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@15
    .line 545
    :cond_0
    if-eqz p4, :cond_1

    #@17
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 546
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@1d
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@20
    .line 536
    :cond_1
    :goto_0
    return-void

    #@21
    .line 549
    :cond_2
    if-eqz p4, :cond_3

    #@23
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 550
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@29
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@2c
    .line 552
    :cond_3
    if-eqz p4, :cond_4

    #@2e
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 553
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@34
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@37
    .line 556
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    #@3a
    .line 557
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->scrollTo(II)V

    #@3d
    .line 558
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    #@40
    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 369
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 370
    return-void

    #@6
    .line 373
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    #@8
    .line 374
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 376
    if-eqz p1, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    #@12
    .line 378
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@18
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@1b
    .line 368
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2364
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2365
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    #@6
    .line 2363
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    #@0
    .prologue
    .line 1091
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 1092
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1093
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@f
    .line 1097
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v1

    #@13
    .line 1098
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    #@16
    .line 1099
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 1100
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 1098
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_1

    #@22
    .line 1095
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@27
    goto :goto_0

    #@28
    .line 1102
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@2a
    sget-object v4, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    #@2c
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2f
    .line 1090
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2579
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 2581
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    #@7
    move-result v1

    #@8
    .line 2583
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    #@a
    if-eq v1, v5, :cond_1

    #@c
    .line 2584
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@10
    move-result v5

    #@11
    if-ge v3, v5, :cond_1

    #@13
    .line 2585
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 2586
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 2587
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@20
    move-result-object v4

    #@21
    .line 2588
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    #@23
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@25
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@27
    if-ne v5, v6, :cond_0

    #@29
    .line 2589
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@2c
    .line 2584
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2600
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    #@31
    if-ne v1, v5, :cond_2

    #@33
    .line 2602
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v5

    #@37
    if-ne v2, v5, :cond_5

    #@39
    .line 2605
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_3

    #@3f
    .line 2606
    return-void

    #@40
    .line 2608
    :cond_3
    and-int/lit8 v5, p3, 0x1

    #@42
    const/4 v6, 0x1

    #@43
    if-ne v5, v6, :cond_4

    #@45
    .line 2609
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    #@48
    move-result v5

    #@49
    .line 2608
    if-eqz v5, :cond_4

    #@4b
    .line 2609
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_6

    #@51
    .line 2612
    :cond_4
    if-eqz p1, :cond_5

    #@53
    .line 2613
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 2578
    :cond_5
    return-void

    #@57
    .line 2610
    :cond_6
    return-void
.end method

.method addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 806
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    #@5
    .line 807
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@7
    .line 808
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@9
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@f
    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@11
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@14
    move-result v1

    #@15
    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@17
    .line 810
    if-ltz p2, :cond_0

    #@19
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    if-lt p2, v1, :cond_1

    #@21
    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 815
    :goto_0
    return-object v0

    #@27
    .line 813
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2c
    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 2626
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 2627
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 2628
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 2629
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@14
    move-result-object v2

    #@15
    .line 2630
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    #@17
    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@19
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    .line 2631
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@20
    .line 2626
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2622
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1283
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1284
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p3

    #@a
    :cond_0
    move-object v0, p3

    #@b
    .line 1286
    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@d
    .line 1287
    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@f
    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    #@11
    or-int/2addr v1, v2

    #@12
    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@14
    .line 1288
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 1289
    if-eqz v0, :cond_1

    #@1a
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1290
    new-instance v1, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v2, "Cannot add pager decor view during layout"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 1292
    :cond_1
    const/4 v1, 0x1

    #@28
    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    #@2a
    .line 1293
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@2d
    .line 1282
    :goto_0
    return-void

    #@2e
    .line 1295
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@31
    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    #@0
    .prologue
    const/16 v12, 0x42

    #@2
    const/16 v11, 0x11

    #@4
    .line 2464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    #@7
    move-result-object v1

    #@8
    .line 2465
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    #@a
    .line 2466
    const/4 v1, 0x0

    #@b
    .line 2490
    .end local v1    # "currentFocused":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    #@c
    .line 2492
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@13
    move-result-object v4

    #@14
    .line 2494
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    #@16
    if-eq v4, v1, :cond_a

    #@18
    .line 2495
    if-ne p1, v11, :cond_8

    #@1a
    .line 2498
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    invoke-direct {p0, v8, v4}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@1f
    move-result-object v8

    #@20
    iget v5, v8, Landroid/graphics/Rect;->left:I

    #@22
    .line 2499
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@24
    invoke-direct {p0, v8, v1}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@27
    move-result-object v8

    #@28
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@2a
    .line 2500
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    #@2c
    if-lt v5, v0, :cond_7

    #@2e
    .line 2501
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    #@31
    move-result v2

    #@32
    .line 2523
    .end local v0    # "currLeft":I
    .end local v2    # "handled":Z
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    #@34
    .line 2524
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@37
    move-result v8

    #@38
    invoke-virtual {p0, v8}, Landroid/view/View;->playSoundEffect(I)V

    #@3b
    .line 2526
    :cond_2
    return v2

    #@3c
    .line 2467
    .end local v4    # "nextFocused":Landroid/view/View;
    .restart local v1    # "currentFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    #@3e
    .line 2468
    const/4 v3, 0x0

    #@3f
    .line 2469
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@42
    move-result-object v6

    #@43
    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    #@45
    if-eqz v8, :cond_4

    #@47
    .line 2471
    if-ne v6, p0, :cond_5

    #@49
    .line 2472
    const/4 v3, 0x1

    #@4a
    .line 2476
    :cond_4
    if-nez v3, :cond_0

    #@4c
    .line 2478
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    .line 2479
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 2480
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5f
    move-result-object v6

    #@60
    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    #@62
    if-eqz v8, :cond_6

    #@64
    .line 2482
    const-string/jumbo v8, " => "

    #@67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 2481
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@79
    move-result-object v6

    #@7a
    goto :goto_3

    #@7b
    .line 2470
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@7e
    move-result-object v6

    #@7f
    goto :goto_2

    #@80
    .line 2484
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v8, "ViewPager"

    #@83
    new-instance v9, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v10, "arrowScroll tried to find focus based on non-child current focused view "

    #@8b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    .line 2485
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v10

    #@93
    .line 2484
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v9

    #@9b
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 2486
    const/4 v1, 0x0

    #@9f
    .local v1, "currentFocused":Landroid/view/View;
    goto/16 :goto_0

    #@a1
    .line 2503
    .end local v1    # "currentFocused":Landroid/view/View;
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    #@a4
    move-result v2

    #@a5
    .local v2, "handled":Z
    goto :goto_1

    #@a6
    .line 2505
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_8
    if-ne p1, v12, :cond_1

    #@a8
    .line 2508
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@aa
    invoke-direct {p0, v8, v4}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@ad
    move-result-object v8

    #@ae
    iget v5, v8, Landroid/graphics/Rect;->left:I

    #@b0
    .line 2509
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@b2
    invoke-direct {p0, v8, v1}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@b5
    move-result-object v8

    #@b6
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@b8
    .line 2510
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    #@ba
    if-gt v5, v0, :cond_9

    #@bc
    .line 2511
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    #@bf
    move-result v2

    #@c0
    .local v2, "handled":Z
    goto/16 :goto_1

    #@c2
    .line 2513
    .local v2, "handled":Z
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    #@c5
    move-result v2

    #@c6
    .local v2, "handled":Z
    goto/16 :goto_1

    #@c8
    .line 2516
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_a
    if-eq p1, v11, :cond_b

    #@ca
    const/4 v8, 0x1

    #@cb
    if-ne p1, v8, :cond_c

    #@cd
    .line 2518
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    #@d0
    move-result v2

    #@d1
    .local v2, "handled":Z
    goto/16 :goto_1

    #@d3
    .line 2519
    .local v2, "handled":Z
    :cond_c
    if-eq p1, v12, :cond_d

    #@d5
    const/4 v8, 0x2

    #@d6
    if-ne p1, v8, :cond_1

    #@d8
    .line 2521
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    #@db
    move-result v2

    #@dc
    .local v2, "handled":Z
    goto/16 :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    #@0
    .prologue
    .line 2406
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v7, p1

    #@5
    .line 2407
    nop

    #@6
    nop

    #@7
    .line 2408
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v9

    #@b
    .line 2409
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v10

    #@f
    .line 2410
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v6

    #@13
    .line 2412
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    #@15
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@17
    .line 2414
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    .line 2415
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    #@1d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@20
    move-result v2

    #@21
    if-lt v0, v2, :cond_0

    #@23
    add-int v0, p4, v9

    #@25
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@28
    move-result v2

    #@29
    if-ge v0, v2, :cond_0

    #@2b
    .line 2416
    add-int v0, p5, v10

    #@2d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@30
    move-result v2

    #@31
    if-lt v0, v2, :cond_0

    #@33
    add-int v0, p5, v10

    #@35
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@38
    move-result v2

    #@39
    if-ge v0, v2, :cond_0

    #@3b
    .line 2417
    add-int v0, p4, v9

    #@3d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@40
    move-result v2

    #@41
    sub-int v4, v0, v2

    #@43
    .line 2418
    add-int v0, p5, v10

    #@45
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@48
    move-result v2

    #@49
    sub-int v5, v0, v2

    #@4b
    .line 2417
    const/4 v2, 0x1

    #@4c
    move-object v0, p0

    #@4d
    move v3, p3

    #@4e
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@51
    move-result v0

    #@52
    .line 2415
    if-eqz v0, :cond_0

    #@54
    .line 2419
    const/4 v0, 0x1

    #@55
    return v0

    #@56
    .line 2412
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@58
    goto :goto_0

    #@59
    .line 2424
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    #@5b
    neg-int v0, p3

    #@5c
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@5f
    move-result v0

    #@60
    :goto_1
    return v0

    #@61
    :cond_2
    const/4 v0, 0x0

    #@62
    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2379
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2380
    return v3

    #@7
    .line 2383
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@a
    move-result v1

    #@b
    .line 2384
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@e
    move-result v0

    #@f
    .line 2385
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    #@11
    .line 2386
    int-to-float v4, v1

    #@12
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@14
    mul-float/2addr v4, v5

    #@15
    float-to-int v4, v4

    #@16
    if-le v0, v4, :cond_1

    #@18
    :goto_0
    return v2

    #@19
    :cond_1
    move v2, v3

    #@1a
    goto :goto_0

    #@1b
    .line 2387
    :cond_2
    if-lez p1, :cond_4

    #@1d
    .line 2388
    int-to-float v4, v1

    #@1e
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@20
    mul-float/2addr v4, v5

    #@21
    float-to-int v4, v4

    #@22
    if-ge v0, v4, :cond_3

    #@24
    :goto_1
    return v2

    #@25
    :cond_3
    move v2, v3

    #@26
    goto :goto_1

    #@27
    .line 2390
    :cond_4
    return v3
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2682
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    #@0
    .prologue
    .line 1616
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@2
    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_2

    #@8
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@a
    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_2

    #@10
    .line 1617
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@13
    move-result v0

    #@14
    .line 1618
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    #@17
    move-result v1

    #@18
    .line 1619
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    #@1d
    move-result v2

    #@1e
    .line 1620
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@20
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    #@23
    move-result v3

    #@24
    .line 1622
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    #@26
    if-eq v1, v3, :cond_1

    #@28
    .line 1623
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    #@2b
    .line 1625
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_1

    #@31
    .line 1626
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@33
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    #@36
    .line 1627
    const/4 v4, 0x0

    #@37
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->scrollTo(II)V

    #@3a
    .line 1632
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@3d
    .line 1633
    return-void

    #@3e
    .line 1637
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v4, 0x1

    #@3f
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    #@42
    .line 1615
    return-void
.end method

.method dataSetChanged()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 821
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@3
    invoke-virtual {v10}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@6
    move-result v0

    #@7
    .line 822
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    #@9
    .line 823
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v10

    #@f
    iget v11, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@11
    mul-int/lit8 v11, v11, 0x2

    #@13
    add-int/lit8 v11, v11, 0x1

    #@15
    if-ge v10, v11, :cond_2

    #@17
    .line 824
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v10

    #@1d
    if-ge v10, v0, :cond_1

    #@1f
    const/4 v7, 0x1

    #@20
    .line 825
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@22
    .line 827
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    #@23
    .line 828
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    #@24
    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v10

    #@2a
    if-ge v3, v10, :cond_7

    #@2c
    .line 829
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@34
    .line 830
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@36
    iget-object v11, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@38
    invoke-virtual {v10, v11}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    #@3b
    move-result v9

    #@3c
    .line 832
    .local v9, "newPos":I
    const/4 v10, -0x1

    #@3d
    if-ne v9, v10, :cond_3

    #@3f
    .line 828
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_1

    #@42
    .line 824
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    const/4 v7, 0x0

    #@43
    .restart local v7    # "needPopulate":Z
    goto :goto_0

    #@44
    .line 823
    .end local v7    # "needPopulate":Z
    :cond_2
    const/4 v7, 0x0

    #@45
    .restart local v7    # "needPopulate":Z
    goto :goto_0

    #@46
    .line 836
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_3
    const/4 v10, -0x2

    #@47
    if-ne v9, v10, :cond_5

    #@49
    .line 837
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4e
    .line 838
    add-int/lit8 v3, v3, -0x1

    #@50
    .line 840
    if-nez v5, :cond_4

    #@52
    .line 841
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@54
    invoke-virtual {v10, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@57
    .line 842
    const/4 v5, 0x1

    #@58
    .line 845
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@5a
    iget v11, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@5c
    iget-object v12, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@5e
    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@61
    .line 846
    const/4 v7, 0x1

    #@62
    .line 848
    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@64
    iget v11, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@66
    if-ne v10, v11, :cond_0

    #@68
    .line 850
    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@6a
    add-int/lit8 v11, v0, -0x1

    #@6c
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@6f
    move-result v10

    #@70
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    #@73
    move-result v8

    #@74
    .line 851
    const/4 v7, 0x1

    #@75
    goto :goto_2

    #@76
    .line 856
    :cond_5
    iget v10, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@78
    if-eq v10, v9, :cond_0

    #@7a
    .line 857
    iget v10, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@7c
    iget v11, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@7e
    if-ne v10, v11, :cond_6

    #@80
    .line 859
    move v8, v9

    #@81
    .line 862
    :cond_6
    iput v9, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@83
    .line 863
    const/4 v7, 0x1

    #@84
    goto :goto_2

    #@85
    .line 867
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_7
    if-eqz v5, :cond_8

    #@87
    .line 868
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@89
    invoke-virtual {v10, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@8c
    .line 871
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@8e
    sget-object v11, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@90
    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@93
    .line 873
    if-eqz v7, :cond_b

    #@95
    .line 875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@98
    move-result v2

    #@99
    .line 876
    .local v2, "childCount":I
    const/4 v3, 0x0

    #@9a
    :goto_3
    if-ge v3, v2, :cond_a

    #@9c
    .line 877
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@9f
    move-result-object v1

    #@a0
    .line 878
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a3
    move-result-object v6

    #@a4
    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@a6
    .line 879
    .local v6, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@a8
    if-nez v10, :cond_9

    #@aa
    .line 880
    const/4 v10, 0x0

    #@ab
    iput v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    #@ad
    .line 876
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@af
    goto :goto_3

    #@b0
    .line 884
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_a
    const/4 v10, 0x1

    #@b1
    invoke-virtual {p0, v8, v13, v10}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@b4
    .line 885
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@b7
    .line 818
    .end local v2    # "childCount":I
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2430
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    #@0
    .prologue
    .line 742
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    .line 743
    float-to-double v0, p1

    #@4
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    #@9
    mul-double/2addr v0, v2

    #@a
    double-to-float p1, v0

    #@b
    .line 744
    float-to-double v0, p1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@f
    move-result-wide v0

    #@10
    double-to-float v0, v0

    #@11
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 2243
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@4
    .line 2244
    const/4 v1, 0x0

    #@5
    .line 2246
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    #@8
    move-result v2

    #@9
    .line 2247
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    #@b
    .line 2248
    if-ne v2, v6, :cond_4

    #@d
    .line 2249
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@f
    if-eqz v5, :cond_4

    #@11
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@13
    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@16
    move-result v5

    #@17
    if-le v5, v6, :cond_4

    #@19
    .line 2250
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@1b
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    .line 2251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@24
    move-result v3

    #@25
    .line 2252
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@28
    move-result v5

    #@29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@2c
    move-result v6

    #@2d
    sub-int/2addr v5, v6

    #@2e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@31
    move-result v6

    #@32
    sub-int v0, v5, v6

    #@34
    .line 2253
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@37
    move-result v4

    #@38
    .line 2255
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    #@3a
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    #@3d
    .line 2256
    neg-int v5, v0

    #@3e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@41
    move-result v6

    #@42
    add-int/2addr v5, v6

    #@43
    int-to-float v5, v5

    #@44
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    #@46
    int-to-float v7, v4

    #@47
    mul-float/2addr v6, v7

    #@48
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    .line 2257
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@4d
    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@50
    .line 2258
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@52
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@55
    move-result v1

    #@56
    .line 2259
    .local v1, "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@59
    .line 2261
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@5b
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@5e
    move-result v5

    #@5f
    if-nez v5, :cond_2

    #@61
    .line 2262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@64
    move-result v3

    #@65
    .line 2263
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@68
    move-result v4

    #@69
    .line 2264
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@6c
    move-result v5

    #@6d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@70
    move-result v6

    #@71
    sub-int/2addr v5, v6

    #@72
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    #@75
    move-result v6

    #@76
    sub-int v0, v5, v6

    #@78
    .line 2266
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    #@7a
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    #@7d
    .line 2267
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    #@80
    move-result v5

    #@81
    neg-int v5, v5

    #@82
    int-to-float v5, v5

    #@83
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    #@85
    const/high16 v7, 0x3f800000    # 1.0f

    #@87
    add-float/2addr v6, v7

    #@88
    neg-float v6, v6

    #@89
    int-to-float v7, v4

    #@8a
    mul-float/2addr v6, v7

    #@8b
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@8e
    .line 2268
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@90
    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@93
    .line 2269
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@95
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@98
    move-result v5

    #@99
    or-int/2addr v1, v5

    #@9a
    .line 2270
    .restart local v1    # "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@9d
    .line 2277
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    #@9f
    .line 2279
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@a2
    .line 2242
    :cond_3
    return-void

    #@a3
    .line 2273
    .local v1, "needsInvalidate":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@a5
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    #@a8
    .line 2274
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@aa
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    #@ad
    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 729
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    #@3
    .line 730
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 731
    .local v0, "marginDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v1

    #@15
    .line 731
    if-eqz v1, :cond_0

    #@17
    .line 733
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 728
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2442
    const/4 v0, 0x0

    #@2
    .line 2443
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2444
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v1

    #@c
    sparse-switch v1, :sswitch_data_0

    #@f
    .line 2460
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    #@10
    .line 2446
    .restart local v0    # "handled":Z
    :sswitch_0
    const/16 v1, 0x11

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    #@15
    move-result v0

    #@16
    .local v0, "handled":Z
    goto :goto_0

    #@17
    .line 2449
    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    #@19
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    #@1c
    move-result v0

    #@1d
    .local v0, "handled":Z
    goto :goto_0

    #@1e
    .line 2452
    .local v0, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 2453
    const/4 v1, 0x2

    #@25
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    #@28
    move-result v0

    #@29
    .local v0, "handled":Z
    goto :goto_0

    #@2a
    .line 2454
    .local v0, "handled":Z
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 2455
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    #@33
    move-result v0

    #@34
    .local v0, "handled":Z
    goto :goto_0

    #@35
    .line 2444
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 2672
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2687
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2677
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@2
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 617
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    #@2
    const/4 v3, 0x2

    #@3
    if-ne v2, v3, :cond_0

    #@5
    add-int/lit8 v2, p1, -0x1

    #@7
    sub-int v0, v2, p2

    #@9
    .line 618
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/view/View;

    #@11
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@17
    iget v1, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    #@19
    .line 619
    .local v1, "result":I
    return v1

    #@1a
    .line 617
    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    #@1b
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1308
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    #@4
    move-result v2

    #@5
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@8
    move-result-object v0

    #@9
    .line 1309
    .local v0, "itemInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@e
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    #@0
    .prologue
    .line 486
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@2
    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    #@0
    .prologue
    .line 642
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@2
    return v0
.end method

.method public getPageMargin()I
    .locals 1

    #@0
    .prologue
    .line 698
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@2
    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1333
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    #@7
    .line 1334
    if-eqz v0, :cond_0

    #@9
    instance-of v1, v0, Landroid/view/View;

    #@b
    if-eqz v1, :cond_0

    #@d
    move-object p1, v0

    #@e
    .line 1337
    check-cast p1, Landroid/view/View;

    #@10
    goto :goto_0

    #@11
    .line 1335
    :cond_0
    return-object v2

    #@12
    .line 1339
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1322
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 1323
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@11
    .line 1324
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@13
    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@15
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 1325
    return-object v1

    #@1c
    .line 1322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1328
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1343
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 1344
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@11
    .line 1345
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 1346
    return-object v1

    #@16
    .line 1343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1349
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 1354
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 1355
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@6
    .line 1353
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 365
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@8
    .line 363
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2285
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 2288
    move-object/from16 v0, p0

    #@5
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@7
    if-lez v15, :cond_2

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v15, :cond_2

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v15

    #@17
    if-lez v15, :cond_2

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@1d
    if-eqz v15, :cond_2

    #@1f
    .line 2289
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    #@22
    move-result v12

    #@23
    .line 2290
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    #@26
    move-result v13

    #@27
    .line 2292
    .local v13, "width":I
    move-object/from16 v0, p0

    #@29
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@2b
    int-to-float v15, v15

    #@2c
    int-to-float v0, v13

    #@2d
    move/from16 v16, v0

    #@2f
    div-float v8, v15, v16

    #@31
    .line 2293
    .local v8, "marginOffset":F
    const/4 v4, 0x0

    #@32
    .line 2294
    .local v4, "itemIndex":I
    move-object/from16 v0, p0

    #@34
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@36
    const/16 v16, 0x0

    #@38
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3e
    .line 2295
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v9, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@40
    .line 2297
    .local v9, "offset":F
    move-object/from16 v0, p0

    #@42
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v3

    #@48
    .line 2298
    .local v3, "itemCount":I
    iget v1, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@4a
    .line 2299
    .local v1, "firstPos":I
    move-object/from16 v0, p0

    #@4c
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4e
    add-int/lit8 v16, v3, -0x1

    #@50
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v15

    #@54
    check-cast v15, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@56
    iget v6, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@58
    .line 2300
    .local v6, "lastPos":I
    move v10, v1

    #@59
    .local v10, "pos":I
    :goto_0
    if-ge v10, v6, :cond_2

    #@5b
    .line 2301
    :goto_1
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@5d
    if-le v10, v15, :cond_0

    #@5f
    if-ge v4, v3, :cond_0

    #@61
    .line 2302
    move-object/from16 v0, p0

    #@63
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@65
    add-int/lit8 v4, v4, 0x1

    #@67
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v2

    #@6b
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@6d
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_1

    #@6e
    .line 2307
    :cond_0
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@70
    if-ne v10, v15, :cond_3

    #@72
    .line 2308
    iget v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@74
    .line 2309
    .local v5, "itemOffset":F
    iget v14, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@76
    .line 2316
    .local v14, "widthFactor":F
    :goto_2
    int-to-float v15, v13

    #@77
    mul-float v11, v5, v15

    #@79
    .line 2317
    .local v11, "scaledOffset":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@7c
    move-result v15

    #@7d
    if-eqz v15, :cond_4

    #@7f
    .line 2318
    const/high16 v15, 0x4b800000    # 1.6777216E7f

    #@81
    sub-float v7, v15, v11

    #@83
    .line 2323
    .local v7, "left":F
    :goto_3
    add-float v15, v5, v14

    #@85
    add-float v9, v15, v8

    #@87
    .line 2325
    move-object/from16 v0, p0

    #@89
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@8b
    int-to-float v15, v15

    #@8c
    add-float/2addr v15, v7

    #@8d
    int-to-float v0, v12

    #@8e
    move/from16 v16, v0

    #@90
    cmpl-float v15, v15, v16

    #@92
    if-lez v15, :cond_1

    #@94
    .line 2326
    move-object/from16 v0, p0

    #@96
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@98
    float-to-int v0, v7

    #@99
    move/from16 v16, v0

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    #@9f
    move/from16 v17, v0

    #@a1
    .line 2327
    move-object/from16 v0, p0

    #@a3
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@a5
    move/from16 v18, v0

    #@a7
    move/from16 v0, v18

    #@a9
    int-to-float v0, v0

    #@aa
    move/from16 v18, v0

    #@ac
    add-float v18, v18, v7

    #@ae
    const/high16 v19, 0x3f000000    # 0.5f

    #@b0
    add-float v18, v18, v19

    #@b2
    move/from16 v0, v18

    #@b4
    float-to-int v0, v0

    #@b5
    move/from16 v18, v0

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    #@bb
    move/from16 v19, v0

    #@bd
    .line 2326
    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@c0
    .line 2328
    move-object/from16 v0, p0

    #@c2
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@c9
    .line 2331
    :cond_1
    add-int v15, v12, v13

    #@cb
    int-to-float v15, v15

    #@cc
    cmpl-float v15, v7, v15

    #@ce
    if-lez v15, :cond_5

    #@d0
    .line 2284
    .end local v1    # "firstPos":I
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v3    # "itemCount":I
    .end local v4    # "itemIndex":I
    .end local v5    # "itemOffset":F
    .end local v6    # "lastPos":I
    .end local v7    # "left":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "pos":I
    .end local v11    # "scaledOffset":F
    .end local v12    # "scrollX":I
    .end local v13    # "width":I
    .end local v14    # "widthFactor":F
    :cond_2
    return-void

    #@d1
    .line 2311
    .restart local v1    # "firstPos":I
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v3    # "itemCount":I
    .restart local v4    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "pos":I
    .restart local v12    # "scrollX":I
    .restart local v13    # "width":I
    :cond_3
    move v5, v9

    #@d2
    .line 2312
    .restart local v5    # "itemOffset":F
    move-object/from16 v0, p0

    #@d4
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@d6
    invoke-virtual {v15, v10}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@d9
    move-result v14

    #@da
    .restart local v14    # "widthFactor":F
    goto :goto_2

    #@db
    .line 2320
    .restart local v11    # "scaledOffset":F
    :cond_4
    int-to-float v15, v13

    #@dc
    mul-float/2addr v15, v14

    #@dd
    add-float v7, v11, v15

    #@df
    .restart local v7    # "left":F
    goto :goto_3

    #@e0
    .line 2300
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@e2
    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 2693
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 2695
    const-class v0, Lcom/android/internal/widget/ViewPager;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 2696
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    #@f
    move-result v0

    #@10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    #@13
    .line 2698
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@16
    move-result v0

    #@17
    const/16 v1, 0x1000

    #@19
    if-ne v0, v1, :cond_0

    #@1b
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 2699
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@24
    move-result v0

    #@25
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    #@28
    .line 2700
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    #@2d
    .line 2701
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    #@32
    .line 2692
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 2707
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 2709
    const-class v0, Lcom/android/internal/widget/ViewPager;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 2710
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    #@f
    move-result v0

    #@10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@13
    .line 2712
    const/4 v0, 0x1

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 2713
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1c
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1f
    .line 2714
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@21
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@24
    .line 2717
    :cond_0
    const/4 v0, -0x1

    #@25
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 2718
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@2d
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@30
    .line 2719
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@32
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@35
    .line 2706
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v6, v0, 0xff

    #@6
    .line 1808
    .local v6, "action":I
    const/4 v0, 0x3

    #@7
    if-eq v6, v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    if-ne v6, v0, :cond_2

    #@c
    .line 1811
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@f
    .line 1812
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    #@12
    .line 1813
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@15
    .line 1814
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1815
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@1e
    .line 1816
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    .line 1818
    :cond_1
    const/4 v0, 0x0

    #@22
    return v0

    #@23
    .line 1823
    :cond_2
    if-eqz v6, :cond_4

    #@25
    .line 1824
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 1826
    const/4 v0, 0x1

    #@2a
    return v0

    #@2b
    .line 1828
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    #@2d
    if-eqz v0, :cond_4

    #@2f
    .line 1830
    const/4 v0, 0x0

    #@30
    return v0

    #@31
    .line 1834
    :cond_4
    sparse-switch v6, :sswitch_data_0

    #@34
    .line 1929
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@36
    if-nez v0, :cond_6

    #@38
    .line 1930
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3e
    .line 1932
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@40
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@43
    .line 1938
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@45
    return v0

    #@46
    .line 1845
    :sswitch_0
    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@48
    .line 1846
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    #@49
    if-eq v7, v0, :cond_5

    #@4b
    .line 1851
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@4e
    move-result v9

    #@4f
    .line 1852
    .local v9, "pointerIndex":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    #@52
    move-result v10

    #@53
    .line 1853
    .local v10, "x":F
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@55
    sub-float v8, v10, v0

    #@57
    .line 1854
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@5a
    move-result v11

    #@5b
    .line 1855
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    #@5e
    move-result v12

    #@5f
    .line 1856
    .local v12, "y":F
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    #@61
    sub-float v0, v12, v0

    #@63
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@66
    move-result v13

    #@67
    .line 1859
    .local v13, "yDiff":F
    const/4 v0, 0x0

    #@68
    cmpl-float v0, v8, v0

    #@6a
    if-eqz v0, :cond_7

    #@6c
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@6e
    invoke-direct {p0, v0, v8}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_9

    #@74
    .line 1867
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@76
    int-to-float v0, v0

    #@77
    cmpl-float v0, v11, v0

    #@79
    if-lez v0, :cond_b

    #@7b
    const/high16 v0, 0x3f000000    # 0.5f

    #@7d
    mul-float/2addr v0, v11

    #@7e
    cmpl-float v0, v0, v13

    #@80
    if-lez v0, :cond_b

    #@82
    .line 1869
    const/4 v0, 0x1

    #@83
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@85
    .line 1870
    const/4 v0, 0x1

    #@86
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@89
    .line 1871
    const/4 v0, 0x1

    #@8a
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    #@8d
    .line 1872
    const/4 v0, 0x0

    #@8e
    cmpl-float v0, v8, v0

    #@90
    if-lez v0, :cond_a

    #@92
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@94
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@96
    int-to-float v1, v1

    #@97
    add-float/2addr v0, v1

    #@98
    :goto_1
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@9a
    .line 1874
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    #@9c
    .line 1875
    const/4 v0, 0x1

    #@9d
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@a0
    .line 1884
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@a2
    if-eqz v0, :cond_5

    #@a4
    .line 1886
    invoke-direct {p0, v10}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_5

    #@aa
    .line 1887
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@ad
    goto :goto_0

    #@ae
    .line 1860
    :cond_9
    float-to-int v3, v8

    #@af
    float-to-int v4, v10

    #@b0
    float-to-int v5, v12

    #@b1
    const/4 v2, 0x0

    #@b2
    move-object v0, p0

    #@b3
    move-object v1, p0

    #@b4
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@b7
    move-result v0

    #@b8
    .line 1859
    if-eqz v0, :cond_7

    #@ba
    .line 1862
    iput v10, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@bc
    .line 1863
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    #@be
    .line 1864
    const/4 v0, 0x1

    #@bf
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    #@c1
    .line 1865
    const/4 v0, 0x0

    #@c2
    return v0

    #@c3
    .line 1873
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@c5
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@c7
    int-to-float v1, v1

    #@c8
    sub-float/2addr v0, v1

    #@c9
    goto :goto_1

    #@ca
    .line 1876
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@cc
    int-to-float v0, v0

    #@cd
    cmpl-float v0, v13, v0

    #@cf
    if-lez v0, :cond_8

    #@d1
    .line 1882
    const/4 v0, 0x1

    #@d2
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    #@d4
    goto :goto_2

    #@d5
    .line 1898
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@d8
    move-result v0

    #@d9
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@db
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@dd
    .line 1899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@e0
    move-result v0

    #@e1
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    #@e3
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    #@e5
    .line 1900
    const/4 v0, 0x0

    #@e6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@e9
    move-result v0

    #@ea
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@ec
    .line 1901
    const/4 v0, 0x0

    #@ed
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    #@ef
    .line 1903
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@f1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@f4
    .line 1904
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    #@f6
    const/4 v1, 0x2

    #@f7
    if-ne v0, v1, :cond_c

    #@f9
    .line 1905
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@fb
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    #@fe
    move-result v0

    #@ff
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@101
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    #@104
    move-result v1

    #@105
    sub-int/2addr v0, v1

    #@106
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@109
    move-result v0

    #@10a
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    #@10c
    if-le v0, v1, :cond_c

    #@10e
    .line 1907
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@110
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@113
    .line 1908
    const/4 v0, 0x0

    #@114
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@116
    .line 1909
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@119
    .line 1910
    const/4 v0, 0x1

    #@11a
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@11c
    .line 1911
    const/4 v0, 0x1

    #@11d
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@120
    .line 1912
    const/4 v0, 0x1

    #@121
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    #@124
    goto/16 :goto_0

    #@126
    .line 1914
    :cond_c
    const/4 v0, 0x0

    #@127
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    #@12a
    .line 1915
    const/4 v0, 0x0

    #@12b
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@12d
    goto/16 :goto_0

    #@12f
    .line 1925
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@132
    goto/16 :goto_0

    #@134
    .line 1834
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1494
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v10

    #@4
    .line 1495
    .local v10, "count":I
    sub-int v25, p4, p2

    #@6
    .line 1496
    .local v25, "width":I
    sub-int v12, p5, p3

    #@8
    .line 1497
    .local v12, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@b
    move-result v19

    #@c
    .line 1498
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@f
    move-result v21

    #@10
    .line 1499
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@13
    move-result v20

    #@14
    .line 1500
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@17
    move-result v18

    #@18
    .line 1501
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    #@1b
    move-result v22

    #@1c
    .line 1503
    .local v22, "scrollX":I
    const/4 v11, 0x0

    #@1d
    .line 1507
    .local v11, "decorCount":I
    const/4 v15, 0x0

    #@1e
    .local v15, "i":I
    :goto_0
    if-ge v15, v10, :cond_1

    #@20
    .line 1508
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v5

    #@26
    .line 1509
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@29
    move-result v27

    #@2a
    const/16 v28, 0x8

    #@2c
    move/from16 v0, v27

    #@2e
    move/from16 v1, v28

    #@30
    if-eq v0, v1, :cond_0

    #@32
    .line 1510
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@35
    move-result-object v17

    #@36
    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@38
    .line 1511
    .local v17, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v6, 0x0

    #@39
    .line 1512
    .local v6, "childLeft":I
    const/4 v8, 0x0

    #@3a
    .line 1513
    .local v8, "childTop":I
    move-object/from16 v0, v17

    #@3c
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@3e
    move/from16 v27, v0

    #@40
    if-eqz v27, :cond_0

    #@42
    .line 1514
    move-object/from16 v0, v17

    #@44
    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    #@46
    move/from16 v27, v0

    #@48
    and-int/lit8 v14, v27, 0x7

    #@4a
    .line 1515
    .local v14, "hgrav":I
    move-object/from16 v0, v17

    #@4c
    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    #@4e
    move/from16 v27, v0

    #@50
    and-int/lit8 v24, v27, 0x70

    #@52
    .line 1516
    .local v24, "vgrav":I
    packed-switch v14, :pswitch_data_0

    #@55
    .line 1518
    :pswitch_0
    move/from16 v6, v19

    #@57
    .line 1533
    :goto_1
    sparse-switch v24, :sswitch_data_0

    #@5a
    .line 1535
    move/from16 v8, v21

    #@5c
    .line 1550
    :goto_2
    add-int v6, v6, v22

    #@5e
    .line 1552
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@61
    move-result v27

    #@62
    add-int v27, v27, v6

    #@64
    .line 1553
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@67
    move-result v28

    #@68
    add-int v28, v28, v8

    #@6a
    .line 1551
    move/from16 v0, v27

    #@6c
    move/from16 v1, v28

    #@6e
    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@71
    .line 1554
    add-int/lit8 v11, v11, 0x1

    #@73
    .line 1507
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_0
    add-int/lit8 v15, v15, 0x1

    #@75
    goto :goto_0

    #@76
    .line 1521
    .restart local v6    # "childLeft":I
    .restart local v8    # "childTop":I
    .restart local v14    # "hgrav":I
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v24    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    #@78
    .line 1522
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@7b
    move-result v27

    #@7c
    add-int v19, v19, v27

    #@7e
    .line 1523
    goto :goto_1

    #@7f
    .line 1525
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@82
    move-result v27

    #@83
    sub-int v27, v25, v27

    #@85
    div-int/lit8 v27, v27, 0x2

    #@87
    move/from16 v0, v27

    #@89
    move/from16 v1, v19

    #@8b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@8e
    move-result v6

    #@8f
    goto :goto_1

    #@90
    .line 1529
    :pswitch_3
    sub-int v27, v25, v20

    #@92
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@95
    move-result v28

    #@96
    sub-int v6, v27, v28

    #@98
    .line 1530
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@9b
    move-result v27

    #@9c
    add-int v20, v20, v27

    #@9e
    .line 1531
    goto :goto_1

    #@9f
    .line 1538
    :sswitch_0
    move/from16 v8, v21

    #@a1
    .line 1539
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@a4
    move-result v27

    #@a5
    add-int v21, v21, v27

    #@a7
    .line 1540
    goto :goto_2

    #@a8
    .line 1542
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@ab
    move-result v27

    #@ac
    sub-int v27, v12, v27

    #@ae
    div-int/lit8 v27, v27, 0x2

    #@b0
    move/from16 v0, v27

    #@b2
    move/from16 v1, v21

    #@b4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b7
    move-result v8

    #@b8
    goto :goto_2

    #@b9
    .line 1546
    :sswitch_2
    sub-int v27, v12, v18

    #@bb
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@be
    move-result v28

    #@bf
    sub-int v8, v27, v28

    #@c1
    .line 1547
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@c4
    move-result v27

    #@c5
    add-int v18, v18, v27

    #@c7
    .line 1548
    goto :goto_2

    #@c8
    .line 1559
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_1
    sub-int v27, v25, v19

    #@ca
    sub-int v9, v27, v20

    #@cc
    .line 1561
    .local v9, "childWidth":I
    const/4 v15, 0x0

    #@cd
    :goto_3
    if-ge v15, v10, :cond_6

    #@cf
    .line 1562
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@d4
    move-result-object v5

    #@d5
    .line 1563
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@d8
    move-result v27

    #@d9
    const/16 v28, 0x8

    #@db
    move/from16 v0, v27

    #@dd
    move/from16 v1, v28

    #@df
    if-ne v0, v1, :cond_3

    #@e1
    .line 1561
    :cond_2
    :goto_4
    add-int/lit8 v15, v15, 0x1

    #@e3
    goto :goto_3

    #@e4
    .line 1567
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e7
    move-result-object v17

    #@e8
    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@ea
    .line 1568
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    #@ec
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@ee
    move/from16 v27, v0

    #@f0
    if-nez v27, :cond_2

    #@f2
    .line 1572
    move-object/from16 v0, p0

    #@f4
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@f7
    move-result-object v16

    #@f8
    .line 1573
    .local v16, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v16, :cond_2

    #@fa
    .line 1577
    move-object/from16 v0, v17

    #@fc
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    #@fe
    move/from16 v27, v0

    #@100
    if-eqz v27, :cond_4

    #@102
    .line 1580
    const/16 v27, 0x0

    #@104
    move/from16 v0, v27

    #@106
    move-object/from16 v1, v17

    #@108
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    #@10a
    .line 1582
    int-to-float v0, v9

    #@10b
    move/from16 v27, v0

    #@10d
    move-object/from16 v0, v17

    #@10f
    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    #@111
    move/from16 v28, v0

    #@113
    mul-float v27, v27, v28

    #@115
    move/from16 v0, v27

    #@117
    float-to-int v0, v0

    #@118
    move/from16 v27, v0

    #@11a
    .line 1583
    const/high16 v28, 0x40000000    # 2.0f

    #@11c
    .line 1581
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@11f
    move-result v26

    #@120
    .line 1585
    .local v26, "widthSpec":I
    sub-int v27, v12, v21

    #@122
    sub-int v27, v27, v18

    #@124
    .line 1586
    const/high16 v28, 0x40000000    # 2.0f

    #@126
    .line 1584
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@129
    move-result v13

    #@12a
    .line 1587
    .local v13, "heightSpec":I
    move/from16 v0, v26

    #@12c
    invoke-virtual {v5, v0, v13}, Landroid/view/View;->measure(II)V

    #@12f
    .line 1590
    .end local v13    # "heightSpec":I
    .end local v26    # "widthSpec":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@132
    move-result v7

    #@133
    .line 1591
    .local v7, "childMeasuredWidth":I
    int-to-float v0, v9

    #@134
    move/from16 v27, v0

    #@136
    move-object/from16 v0, v16

    #@138
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@13a
    move/from16 v28, v0

    #@13c
    mul-float v27, v27, v28

    #@13e
    move/from16 v0, v27

    #@140
    float-to-int v0, v0

    #@141
    move/from16 v23, v0

    #@143
    .line 1593
    .local v23, "startOffset":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@146
    move-result v27

    #@147
    if-eqz v27, :cond_5

    #@149
    .line 1594
    const/high16 v27, 0x1000000

    #@14b
    sub-int v27, v27, v20

    #@14d
    sub-int v27, v27, v23

    #@14f
    sub-int v6, v27, v7

    #@151
    .line 1599
    .restart local v6    # "childLeft":I
    :goto_5
    move/from16 v8, v21

    #@153
    .line 1600
    .restart local v8    # "childTop":I
    add-int v27, v6, v7

    #@155
    .line 1601
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@158
    move-result v28

    #@159
    add-int v28, v28, v8

    #@15b
    .line 1600
    move/from16 v0, v27

    #@15d
    move/from16 v1, v28

    #@15f
    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@162
    goto/16 :goto_4

    #@164
    .line 1596
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    :cond_5
    add-int v6, v19, v23

    #@166
    .restart local v6    # "childLeft":I
    goto :goto_5

    #@167
    .line 1604
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childMeasuredWidth":I
    .end local v16    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v23    # "startOffset":I
    :cond_6
    move/from16 v0, v21

    #@169
    move-object/from16 v1, p0

    #@16b
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    #@16d
    .line 1605
    sub-int v27, v12, v18

    #@16f
    move/from16 v0, v27

    #@171
    move-object/from16 v1, p0

    #@173
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    #@175
    .line 1606
    move-object/from16 v0, p0

    #@177
    iput v11, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    #@179
    .line 1608
    move-object/from16 v0, p0

    #@17b
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@17d
    move/from16 v27, v0

    #@17f
    if-eqz v27, :cond_7

    #@181
    .line 1609
    move-object/from16 v0, p0

    #@183
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@185
    move/from16 v27, v0

    #@187
    const/16 v28, 0x0

    #@189
    const/16 v29, 0x0

    #@18b
    const/16 v30, 0x0

    #@18d
    move-object/from16 v0, p0

    #@18f
    move/from16 v1, v27

    #@191
    move/from16 v2, v28

    #@193
    move/from16 v3, v29

    #@195
    move/from16 v4, v30

    #@197
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    #@19a
    .line 1611
    :cond_7
    const/16 v27, 0x0

    #@19c
    move/from16 v0, v27

    #@19e
    move-object/from16 v1, p0

    #@1a0
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@1a2
    .line 1493
    return-void

    #@1a3
    .line 1516
    nop

    #@1a4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@1b2
    .line 1533
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 1365
    const/16 v21, 0x0

    #@2
    move/from16 v0, v21

    #@4
    move/from16 v1, p1

    #@6
    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    #@9
    move-result v21

    #@a
    .line 1366
    const/16 v22, 0x0

    #@c
    move/from16 v0, v22

    #@e
    move/from16 v1, p2

    #@10
    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    #@13
    move-result v22

    #@14
    .line 1365
    move-object/from16 v0, p0

    #@16
    move/from16 v1, v21

    #@18
    move/from16 v2, v22

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    #@1d
    .line 1368
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    #@20
    move-result v15

    #@21
    .line 1369
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    #@23
    .line 1370
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    #@25
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    #@27
    move/from16 v21, v0

    #@29
    move/from16 v0, v21

    #@2b
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v21

    #@2f
    move/from16 v0, v21

    #@31
    move-object/from16 v1, p0

    #@33
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    #@35
    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@38
    move-result v21

    #@39
    sub-int v21, v15, v21

    #@3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@3e
    move-result v22

    #@3f
    sub-int v5, v21, v22

    #@41
    .line 1374
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    #@44
    move-result v21

    #@45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    #@48
    move-result v22

    #@49
    sub-int v21, v21, v22

    #@4b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    #@4e
    move-result v22

    #@4f
    sub-int v4, v21, v22

    #@51
    .line 1381
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@54
    move-result v16

    #@55
    .line 1382
    .local v16, "size":I
    const/4 v12, 0x0

    #@56
    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    #@58
    if-ge v12, v0, :cond_a

    #@5a
    .line 1383
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@5f
    move-result-object v3

    #@60
    .line 1384
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@63
    move-result v21

    #@64
    const/16 v22, 0x8

    #@66
    move/from16 v0, v21

    #@68
    move/from16 v1, v22

    #@6a
    if-eq v0, v1, :cond_5

    #@6c
    .line 1385
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6f
    move-result-object v13

    #@70
    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@72
    .line 1386
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    #@74
    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@76
    move/from16 v21, v0

    #@78
    if-eqz v21, :cond_5

    #@7a
    .line 1387
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    #@7c
    move/from16 v21, v0

    #@7e
    and-int/lit8 v11, v21, 0x7

    #@80
    .line 1388
    .local v11, "hgrav":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    #@82
    move/from16 v21, v0

    #@84
    and-int/lit8 v17, v21, 0x70

    #@86
    .line 1389
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    #@88
    .line 1390
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    #@8a
    .line 1391
    .local v8, "heightMode":I
    const/16 v21, 0x30

    #@8c
    move/from16 v0, v17

    #@8e
    move/from16 v1, v21

    #@90
    if-eq v0, v1, :cond_0

    #@92
    const/16 v21, 0x50

    #@94
    move/from16 v0, v17

    #@96
    move/from16 v1, v21

    #@98
    if-ne v0, v1, :cond_6

    #@9a
    :cond_0
    const/4 v7, 0x1

    #@9b
    .line 1392
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    #@9d
    move/from16 v0, v21

    #@9f
    if-eq v11, v0, :cond_1

    #@a1
    const/16 v21, 0x5

    #@a3
    move/from16 v0, v21

    #@a5
    if-ne v11, v0, :cond_7

    #@a7
    :cond_1
    const/4 v6, 0x1

    #@a8
    .line 1394
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    #@aa
    .line 1395
    const/high16 v18, 0x40000000    # 2.0f

    #@ac
    .line 1400
    :cond_2
    :goto_3
    move/from16 v19, v5

    #@ae
    .line 1401
    .local v19, "widthSize":I
    move v9, v4

    #@af
    .line 1402
    .local v9, "heightSize":I
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@b1
    move/from16 v21, v0

    #@b3
    const/16 v22, -0x2

    #@b5
    move/from16 v0, v21

    #@b7
    move/from16 v1, v22

    #@b9
    if-eq v0, v1, :cond_3

    #@bb
    .line 1403
    const/high16 v18, 0x40000000    # 2.0f

    #@bd
    .line 1404
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@bf
    move/from16 v21, v0

    #@c1
    const/16 v22, -0x1

    #@c3
    move/from16 v0, v21

    #@c5
    move/from16 v1, v22

    #@c7
    if-eq v0, v1, :cond_3

    #@c9
    .line 1405
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@cb
    move/from16 v19, v0

    #@cd
    .line 1408
    :cond_3
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@cf
    move/from16 v21, v0

    #@d1
    const/16 v22, -0x2

    #@d3
    move/from16 v0, v21

    #@d5
    move/from16 v1, v22

    #@d7
    if-eq v0, v1, :cond_4

    #@d9
    .line 1409
    const/high16 v8, 0x40000000    # 2.0f

    #@db
    .line 1410
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@dd
    move/from16 v21, v0

    #@df
    const/16 v22, -0x1

    #@e1
    move/from16 v0, v21

    #@e3
    move/from16 v1, v22

    #@e5
    if-eq v0, v1, :cond_4

    #@e7
    .line 1411
    iget v9, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@e9
    .line 1414
    :cond_4
    move/from16 v0, v19

    #@eb
    move/from16 v1, v18

    #@ed
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f0
    move-result v20

    #@f1
    .line 1415
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f4
    move-result v10

    #@f5
    .line 1416
    .local v10, "heightSpec":I
    move/from16 v0, v20

    #@f7
    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    #@fa
    .line 1418
    if-eqz v7, :cond_9

    #@fc
    .line 1419
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@ff
    move-result v21

    #@100
    sub-int v4, v4, v21

    #@102
    .line 1382
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    #@104
    goto/16 :goto_0

    #@106
    .line 1391
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    #@107
    .restart local v7    # "consumeVertical":Z
    goto :goto_1

    #@108
    .line 1392
    :cond_7
    const/4 v6, 0x0

    #@109
    .restart local v6    # "consumeHorizontal":Z
    goto :goto_2

    #@10a
    .line 1396
    :cond_8
    if-eqz v6, :cond_2

    #@10c
    .line 1397
    const/high16 v8, 0x40000000    # 2.0f

    #@10e
    goto :goto_3

    #@10f
    .line 1420
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    #@111
    .line 1421
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@114
    move-result v21

    #@115
    sub-int v5, v5, v21

    #@117
    goto :goto_4

    #@118
    .line 1427
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    #@11a
    move/from16 v0, v21

    #@11c
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@11f
    move-result v21

    #@120
    move/from16 v0, v21

    #@122
    move-object/from16 v1, p0

    #@124
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    #@126
    .line 1428
    const/high16 v21, 0x40000000    # 2.0f

    #@128
    move/from16 v0, v21

    #@12a
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@12d
    move-result v21

    #@12e
    move/from16 v0, v21

    #@130
    move-object/from16 v1, p0

    #@132
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    #@134
    .line 1431
    const/16 v21, 0x1

    #@136
    move/from16 v0, v21

    #@138
    move-object/from16 v1, p0

    #@13a
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    #@13c
    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@13f
    .line 1433
    const/16 v21, 0x0

    #@141
    move/from16 v0, v21

    #@143
    move-object/from16 v1, p0

    #@145
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    #@147
    .line 1436
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@14a
    move-result v16

    #@14b
    .line 1437
    const/4 v12, 0x0

    #@14c
    :goto_5
    move/from16 v0, v16

    #@14e
    if-ge v12, v0, :cond_d

    #@150
    .line 1438
    move-object/from16 v0, p0

    #@152
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@155
    move-result-object v3

    #@156
    .line 1439
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    #@159
    move-result v21

    #@15a
    const/16 v22, 0x8

    #@15c
    move/from16 v0, v21

    #@15e
    move/from16 v1, v22

    #@160
    if-eq v0, v1, :cond_b

    #@162
    .line 1443
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@165
    move-result-object v13

    #@166
    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@168
    .line 1444
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_c

    #@16a
    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@16c
    move/from16 v21, v0

    #@16e
    if-eqz v21, :cond_c

    #@170
    .line 1437
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    #@172
    goto :goto_5

    #@173
    .line 1446
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_c
    int-to-float v0, v5

    #@174
    move/from16 v21, v0

    #@176
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    #@178
    move/from16 v22, v0

    #@17a
    mul-float v21, v21, v22

    #@17c
    move/from16 v0, v21

    #@17e
    float-to-int v0, v0

    #@17f
    move/from16 v21, v0

    #@181
    const/high16 v22, 0x40000000    # 2.0f

    #@183
    .line 1445
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@186
    move-result v20

    #@187
    .line 1447
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    #@189
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    #@18b
    move/from16 v21, v0

    #@18d
    move/from16 v0, v20

    #@18f
    move/from16 v1, v21

    #@191
    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    #@194
    goto :goto_6

    #@195
    .line 1359
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    #@0
    .prologue
    .line 1691
    move-object/from16 v0, p0

    #@2
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    #@4
    if-lez v15, :cond_2

    #@6
    .line 1692
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    #@9
    move-result v12

    #@a
    .line 1693
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@d
    move-result v10

    #@e
    .line 1694
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@11
    move-result v11

    #@12
    .line 1695
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    #@15
    move-result v14

    #@16
    .line 1696
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@19
    move-result v4

    #@1a
    .line 1697
    .local v4, "childCount":I
    const/4 v8, 0x0

    #@1b
    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    #@1d
    .line 1698
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v3

    #@23
    .line 1699
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@26
    move-result-object v9

    #@27
    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@29
    .line 1700
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@2b
    if-nez v15, :cond_1

    #@2d
    .line 1697
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1702
    :cond_1
    iget v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    #@32
    and-int/lit8 v7, v15, 0x7

    #@34
    .line 1703
    .local v7, "hgrav":I
    const/4 v5, 0x0

    #@35
    .line 1704
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    #@38
    .line 1706
    :pswitch_0
    move v5, v10

    #@39
    .line 1721
    :goto_2
    add-int/2addr v5, v12

    #@3a
    .line 1723
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@3d
    move-result v15

    #@3e
    sub-int v6, v5, v15

    #@40
    .line 1724
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    #@42
    .line 1725
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@45
    goto :goto_1

    #@46
    .line 1709
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    #@47
    .line 1710
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@4a
    move-result v15

    #@4b
    add-int/2addr v10, v15

    #@4c
    .line 1711
    goto :goto_2

    #@4d
    .line 1713
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@50
    move-result v15

    #@51
    sub-int v15, v14, v15

    #@53
    div-int/lit8 v15, v15, 0x2

    #@55
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    #@58
    move-result v5

    #@59
    goto :goto_2

    #@5a
    .line 1717
    :pswitch_3
    sub-int v15, v14, v11

    #@5c
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@5f
    move-result v16

    #@60
    sub-int v5, v15, v16

    #@62
    .line 1718
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@65
    move-result v15

    #@66
    add-int/2addr v11, v15

    #@67
    .line 1719
    goto :goto_2

    #@68
    .line 1730
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@6c
    if-eqz v15, :cond_3

    #@6e
    .line 1731
    move-object/from16 v0, p0

    #@70
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@72
    move/from16 v0, p1

    #@74
    move/from16 v1, p2

    #@76
    move/from16 v2, p3

    #@78
    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@7b
    .line 1733
    :cond_3
    move-object/from16 v0, p0

    #@7d
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@7f
    if-eqz v15, :cond_4

    #@81
    .line 1734
    move-object/from16 v0, p0

    #@83
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@85
    move/from16 v0, p1

    #@87
    move/from16 v1, p2

    #@89
    move/from16 v2, p3

    #@8b
    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@8e
    .line 1737
    :cond_4
    move-object/from16 v0, p0

    #@90
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    #@92
    if-eqz v15, :cond_6

    #@94
    .line 1738
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    #@97
    move-result v12

    #@98
    .line 1739
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9b
    move-result v4

    #@9c
    .line 1740
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    #@9d
    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    #@9f
    .line 1741
    move-object/from16 v0, p0

    #@a1
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@a4
    move-result-object v3

    #@a5
    .line 1742
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a8
    move-result-object v9

    #@a9
    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@ab
    .line 1744
    .restart local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@ad
    if-eqz v15, :cond_5

    #@af
    .line 1740
    :goto_4
    add-int/lit8 v8, v8, 0x1

    #@b1
    goto :goto_3

    #@b2
    .line 1746
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@b5
    move-result v15

    #@b6
    sub-int/2addr v15, v12

    #@b7
    int-to-float v15, v15

    #@b8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@bb
    move-result v16

    #@bc
    move/from16 v0, v16

    #@be
    int-to-float v0, v0

    #@bf
    move/from16 v16, v0

    #@c1
    div-float v13, v15, v16

    #@c3
    .line 1747
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    #@c5
    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    #@c7
    invoke-interface {v15, v3, v13}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    #@ca
    goto :goto_4

    #@cb
    .line 1751
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    #@cc
    move-object/from16 v0, p0

    #@ce
    iput-boolean v15, v0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    #@d0
    .line 1689
    return-void

    #@d1
    .line 1704
    nop

    #@d2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2646
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 2647
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    #@7
    if-eqz v7, :cond_0

    #@9
    .line 2648
    const/4 v6, 0x0

    #@a
    .line 2649
    .local v6, "index":I
    const/4 v5, 0x1

    #@b
    .line 2650
    .local v5, "increment":I
    move v2, v1

    #@c
    .line 2656
    .local v2, "end":I
    :goto_0
    move v3, v6

    #@d
    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    #@f
    .line 2657
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 2658
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_1

    #@19
    .line 2659
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@1c
    move-result-object v4

    #@1d
    .line 2660
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    #@1f
    iget v7, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@21
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@23
    if-ne v7, v8, :cond_1

    #@25
    .line 2661
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_1

    #@2b
    .line 2662
    const/4 v7, 0x1

    #@2c
    return v7

    #@2d
    .line 2652
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    #@2f
    .line 2653
    .restart local v6    # "index":I
    const/4 v5, -0x1

    #@30
    .line 2654
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    #@31
    .restart local v2    # "end":I
    goto :goto_0

    #@32
    .line 2656
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    #@33
    goto :goto_1

    #@34
    .line 2667
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1263
    instance-of v1, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1264
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    .line 1265
    return-void

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 1268
    nop

    #@a
    nop

    #@b
    .line 1269
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    #@e
    move-result-object v1

    #@f
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@12
    .line 1271
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1272
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@18
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@1a
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@1f
    .line 1273
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    #@21
    const/4 v2, 0x0

    #@22
    const/4 v3, 0x1

    #@23
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@26
    .line 1262
    :goto_0
    return-void

    #@27
    .line 1275
    :cond_1
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    #@29
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    #@2b
    .line 1276
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@2d
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@2f
    .line 1277
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@31
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@33
    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 2565
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    #@3
    .line 2567
    if-nez p1, :cond_0

    #@5
    .line 2568
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@8
    .line 2564
    :goto_0
    return-void

    #@9
    .line 2570
    :cond_0
    const/4 v0, 0x1

    #@a
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@c
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1252
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1253
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ViewPager$SavedState;

    #@6
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1254
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@b
    iput v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    #@d
    .line 1255
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1256
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@13
    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    #@16
    move-result-object v2

    #@17
    iput-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@19
    .line 1258
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 1455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    .line 1458
    if-eq p1, p3, :cond_0

    #@5
    .line 1459
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@7
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@9
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    #@c
    .line 1454
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1943
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v24

    #@4
    if-nez v24, :cond_0

    #@6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@9
    move-result v24

    #@a
    if-eqz v24, :cond_0

    #@c
    .line 1946
    const/16 v24, 0x0

    #@e
    return v24

    #@f
    .line 1949
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@13
    move-object/from16 v24, v0

    #@15
    if-eqz v24, :cond_1

    #@17
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@1b
    move-object/from16 v24, v0

    #@1d
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@20
    move-result v24

    #@21
    if-nez v24, :cond_2

    #@23
    .line 1951
    :cond_1
    const/16 v24, 0x0

    #@25
    return v24

    #@26
    .line 1954
    :cond_2
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2a
    move-object/from16 v24, v0

    #@2c
    if-nez v24, :cond_3

    #@2e
    .line 1955
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@31
    move-result-object v24

    #@32
    move-object/from16 v0, v24

    #@34
    move-object/from16 v1, p0

    #@36
    iput-object v0, v1, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@38
    .line 1957
    :cond_3
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3c
    move-object/from16 v24, v0

    #@3e
    move-object/from16 v0, v24

    #@40
    move-object/from16 v1, p1

    #@42
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@45
    .line 1959
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@48
    move-result v5

    #@49
    .line 1960
    .local v5, "action":I
    const/4 v11, 0x0

    #@4a
    .line 1962
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    #@4c
    move/from16 v24, v0

    #@4e
    packed-switch v24, :pswitch_data_0

    #@51
    .line 2062
    .end local v11    # "needsInvalidate":Z
    :cond_4
    :goto_0
    :pswitch_0
    if-eqz v11, :cond_5

    #@53
    .line 2063
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@56
    .line 2065
    :cond_5
    const/16 v24, 0x1

    #@58
    return v24

    #@59
    .line 1964
    .restart local v11    # "needsInvalidate":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@5d
    move-object/from16 v24, v0

    #@5f
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    #@62
    .line 1965
    const/16 v24, 0x0

    #@64
    move/from16 v0, v24

    #@66
    move-object/from16 v1, p0

    #@68
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@6a
    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@6d
    .line 1969
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@70
    move-result v24

    #@71
    move/from16 v0, v24

    #@73
    move-object/from16 v1, p0

    #@75
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@77
    move/from16 v0, v24

    #@79
    move-object/from16 v1, p0

    #@7b
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@7d
    .line 1970
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@80
    move-result v24

    #@81
    move/from16 v0, v24

    #@83
    move-object/from16 v1, p0

    #@85
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    #@87
    move/from16 v0, v24

    #@89
    move-object/from16 v1, p0

    #@8b
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    #@8d
    .line 1971
    const/16 v24, 0x0

    #@8f
    move-object/from16 v0, p1

    #@91
    move/from16 v1, v24

    #@93
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@96
    move-result v24

    #@97
    move/from16 v0, v24

    #@99
    move-object/from16 v1, p0

    #@9b
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@9d
    goto :goto_0

    #@9e
    .line 1975
    :pswitch_2
    move-object/from16 v0, p0

    #@a0
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@a2
    move/from16 v24, v0

    #@a4
    if-nez v24, :cond_6

    #@a6
    .line 1976
    move-object/from16 v0, p0

    #@a8
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@aa
    move/from16 v24, v0

    #@ac
    move-object/from16 v0, p1

    #@ae
    move/from16 v1, v24

    #@b0
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@b3
    move-result v15

    #@b4
    .line 1977
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@b9
    move-result v20

    #@ba
    .line 1978
    .local v20, "x":F
    move-object/from16 v0, p0

    #@bc
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@be
    move/from16 v24, v0

    #@c0
    sub-float v24, v20, v24

    #@c2
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@c5
    move-result v21

    #@c6
    .line 1979
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    #@cb
    move-result v22

    #@cc
    .line 1980
    .local v22, "y":F
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    #@d0
    move/from16 v24, v0

    #@d2
    sub-float v24, v22, v24

    #@d4
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@d7
    move-result v23

    #@d8
    .line 1982
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    #@da
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@dc
    move/from16 v24, v0

    #@de
    move/from16 v0, v24

    #@e0
    int-to-float v0, v0

    #@e1
    move/from16 v24, v0

    #@e3
    cmpl-float v24, v21, v24

    #@e5
    if-lez v24, :cond_6

    #@e7
    cmpl-float v24, v21, v23

    #@e9
    if-lez v24, :cond_6

    #@eb
    .line 1984
    const/16 v24, 0x1

    #@ed
    move/from16 v0, v24

    #@ef
    move-object/from16 v1, p0

    #@f1
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@f3
    .line 1985
    const/16 v24, 0x1

    #@f5
    move-object/from16 v0, p0

    #@f7
    move/from16 v1, v24

    #@f9
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@fc
    .line 1986
    move-object/from16 v0, p0

    #@fe
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@100
    move/from16 v24, v0

    #@102
    sub-float v24, v20, v24

    #@104
    const/16 v25, 0x0

    #@106
    cmpl-float v24, v24, v25

    #@108
    if-lez v24, :cond_7

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@10e
    move/from16 v24, v0

    #@110
    move-object/from16 v0, p0

    #@112
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@114
    move/from16 v25, v0

    #@116
    move/from16 v0, v25

    #@118
    int-to-float v0, v0

    #@119
    move/from16 v25, v0

    #@11b
    add-float v24, v24, v25

    #@11d
    :goto_1
    move/from16 v0, v24

    #@11f
    move-object/from16 v1, p0

    #@121
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@123
    .line 1988
    move/from16 v0, v22

    #@125
    move-object/from16 v1, p0

    #@127
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    #@129
    .line 1989
    const/16 v24, 0x1

    #@12b
    move-object/from16 v0, p0

    #@12d
    move/from16 v1, v24

    #@12f
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    #@132
    .line 1990
    const/16 v24, 0x1

    #@134
    move-object/from16 v0, p0

    #@136
    move/from16 v1, v24

    #@138
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@13b
    .line 1993
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@13e
    move-result-object v14

    #@13f
    .line 1994
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_6

    #@141
    .line 1995
    const/16 v24, 0x1

    #@143
    move/from16 v0, v24

    #@145
    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@148
    .line 2000
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_6
    move-object/from16 v0, p0

    #@14a
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@14c
    move/from16 v24, v0

    #@14e
    if-eqz v24, :cond_4

    #@150
    .line 2002
    move-object/from16 v0, p0

    #@152
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@154
    move/from16 v24, v0

    #@156
    move-object/from16 v0, p1

    #@158
    move/from16 v1, v24

    #@15a
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@15d
    move-result v6

    #@15e
    .line 2003
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    #@160
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    #@163
    move-result v20

    #@164
    .line 2004
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    #@166
    move/from16 v1, v20

    #@168
    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    #@16b
    move-result v11

    #@16c
    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    #@16e
    .line 1987
    .end local v6    # "activePointerIndex":I
    .local v11, "needsInvalidate":Z
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    #@170
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@172
    move/from16 v24, v0

    #@174
    move-object/from16 v0, p0

    #@176
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    #@178
    move/from16 v25, v0

    #@17a
    move/from16 v0, v25

    #@17c
    int-to-float v0, v0

    #@17d
    move/from16 v25, v0

    #@17f
    sub-float v24, v24, v25

    #@181
    goto :goto_1

    #@182
    .line 2008
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    #@184
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@186
    move/from16 v24, v0

    #@188
    if-eqz v24, :cond_4

    #@18a
    .line 2009
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@18e
    move-object/from16 v19, v0

    #@190
    .line 2010
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@192
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    #@194
    move/from16 v24, v0

    #@196
    move/from16 v0, v24

    #@198
    int-to-float v0, v0

    #@199
    move/from16 v24, v0

    #@19b
    const/16 v25, 0x3e8

    #@19d
    move-object/from16 v0, v19

    #@19f
    move/from16 v1, v25

    #@1a1
    move/from16 v2, v24

    #@1a3
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@1a6
    .line 2011
    move-object/from16 v0, p0

    #@1a8
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@1aa
    move/from16 v24, v0

    #@1ac
    move-object/from16 v0, v19

    #@1ae
    move/from16 v1, v24

    #@1b0
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    #@1b3
    move-result v24

    #@1b4
    move/from16 v0, v24

    #@1b6
    float-to-int v10, v0

    #@1b7
    .line 2013
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    #@1b9
    move/from16 v0, v24

    #@1bb
    move-object/from16 v1, p0

    #@1bd
    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@1bf
    .line 2015
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    #@1c2
    move-result v24

    #@1c3
    move/from16 v0, v24

    #@1c5
    int-to-float v0, v0

    #@1c6
    move/from16 v16, v0

    #@1c8
    .line 2016
    .local v16, "scrollStart":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@1cb
    move-result v24

    #@1cc
    move/from16 v0, v24

    #@1ce
    int-to-float v0, v0

    #@1cf
    move/from16 v24, v0

    #@1d1
    div-float v17, v16, v24

    #@1d3
    .line 2017
    .local v17, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@1d6
    move-result-object v8

    #@1d7
    .line 2018
    .local v8, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v7, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@1d9
    .line 2020
    .local v7, "currentPage":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    #@1dc
    move-result v24

    #@1dd
    if-eqz v24, :cond_8

    #@1df
    .line 2021
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@1e1
    move/from16 v24, v0

    #@1e3
    sub-float v24, v24, v17

    #@1e5
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@1e7
    move/from16 v25, v0

    #@1e9
    div-float v13, v24, v25

    #@1eb
    .line 2026
    .local v13, "nextPageOffset":F
    :goto_2
    move-object/from16 v0, p0

    #@1ed
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@1ef
    move/from16 v24, v0

    #@1f1
    move-object/from16 v0, p1

    #@1f3
    move/from16 v1, v24

    #@1f5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@1f8
    move-result v6

    #@1f9
    .line 2027
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    #@1fb
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    #@1fe
    move-result v20

    #@1ff
    .line 2028
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    #@201
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    #@203
    move/from16 v24, v0

    #@205
    sub-float v24, v20, v24

    #@207
    move/from16 v0, v24

    #@209
    float-to-int v0, v0

    #@20a
    move/from16 v18, v0

    #@20c
    .line 2029
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    #@20e
    move/from16 v1, v18

    #@210
    invoke-direct {v0, v7, v13, v10, v1}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    #@213
    move-result v12

    #@214
    .line 2031
    .local v12, "nextPage":I
    const/16 v24, 0x1

    #@216
    const/16 v25, 0x1

    #@218
    move-object/from16 v0, p0

    #@21a
    move/from16 v1, v24

    #@21c
    move/from16 v2, v25

    #@21e
    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    #@221
    .line 2033
    const/16 v24, -0x1

    #@223
    move/from16 v0, v24

    #@225
    move-object/from16 v1, p0

    #@227
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@229
    .line 2034
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    #@22c
    .line 2035
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@230
    move-object/from16 v24, v0

    #@232
    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    #@235
    .line 2036
    move-object/from16 v0, p0

    #@237
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@239
    move-object/from16 v24, v0

    #@23b
    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    #@23e
    .line 2037
    const/4 v11, 0x1

    #@23f
    goto/16 :goto_0

    #@241
    .line 2023
    .end local v6    # "activePointerIndex":I
    .end local v12    # "nextPage":I
    .end local v13    # "nextPageOffset":F
    .end local v18    # "totalDelta":I
    .end local v20    # "x":F
    :cond_8
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    #@243
    move/from16 v24, v0

    #@245
    sub-float v24, v17, v24

    #@247
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@249
    move/from16 v25, v0

    #@24b
    div-float v13, v24, v25

    #@24d
    .restart local v13    # "nextPageOffset":F
    goto :goto_2

    #@24e
    .line 2041
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v13    # "nextPageOffset":F
    .end local v16    # "scrollStart":F
    .end local v17    # "scrolledPages":F
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    #@250
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    #@252
    move/from16 v24, v0

    #@254
    if-eqz v24, :cond_4

    #@256
    .line 2042
    move-object/from16 v0, p0

    #@258
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@25a
    move/from16 v24, v0

    #@25c
    const/16 v25, 0x1

    #@25e
    const/16 v26, 0x0

    #@260
    const/16 v27, 0x0

    #@262
    move-object/from16 v0, p0

    #@264
    move/from16 v1, v24

    #@266
    move/from16 v2, v25

    #@268
    move/from16 v3, v26

    #@26a
    move/from16 v4, v27

    #@26c
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    #@26f
    .line 2043
    const/16 v24, -0x1

    #@271
    move/from16 v0, v24

    #@273
    move-object/from16 v1, p0

    #@275
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@277
    .line 2044
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    #@27a
    .line 2045
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    #@27e
    move-object/from16 v24, v0

    #@280
    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    #@283
    .line 2046
    move-object/from16 v0, p0

    #@285
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    #@287
    move-object/from16 v24, v0

    #@289
    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    #@28c
    .line 2047
    const/4 v11, 0x1

    #@28d
    goto/16 :goto_0

    #@28f
    .line 2051
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@292
    move-result v9

    #@293
    .line 2052
    .local v9, "index":I
    move-object/from16 v0, p1

    #@295
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    #@298
    move-result v20

    #@299
    .line 2053
    .restart local v20    # "x":F
    move/from16 v0, v20

    #@29b
    move-object/from16 v1, p0

    #@29d
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@29f
    .line 2054
    move-object/from16 v0, p1

    #@2a1
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2a4
    move-result v24

    #@2a5
    move/from16 v0, v24

    #@2a7
    move-object/from16 v1, p0

    #@2a9
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@2ab
    goto/16 :goto_0

    #@2ad
    .line 2058
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@2b0
    .line 2059
    move-object/from16 v0, p0

    #@2b2
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    #@2b4
    move/from16 v24, v0

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    move/from16 v1, v24

    #@2ba
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@2bd
    move-result v24

    #@2be
    move-object/from16 v0, p1

    #@2c0
    move/from16 v1, v24

    #@2c2
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@2c5
    move-result v24

    #@2c6
    move/from16 v0, v24

    #@2c8
    move-object/from16 v1, p0

    #@2ca
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    #@2cc
    goto/16 :goto_0

    #@2ce
    .line 1962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    #@0
    .prologue
    .line 2556
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@2
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@4
    add-int/2addr v0, v1

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method pageRight()Z
    .locals 3

    #@0
    .prologue
    .line 2560
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@2
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    #@4
    sub-int/2addr v0, v1

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 2725
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2726
    return v1

    #@9
    .line 2729
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 2746
    return v2

    #@d
    .line 2732
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 2733
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    #@1a
    .line 2734
    return v1

    #@1b
    .line 2736
    :cond_1
    return v2

    #@1c
    .line 2739
    :sswitch_1
    const/4 v0, -0x1

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 2740
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    #@2a
    .line 2741
    return v1

    #@2b
    .line 2743
    :cond_2
    return v2

    #@2c
    .line 2729
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public populate()V
    .locals 1

    #@0
    .prologue
    .line 890
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    #@5
    .line 889
    return-void
.end method

.method populate(I)V
    .locals 31
    .param p1, "newCurrentItem"    # I

    #@0
    .prologue
    .line 894
    const/16 v22, 0x0

    #@2
    .line 895
    .local v22, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v15, 0x2

    #@3
    .line 896
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    #@5
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@7
    move/from16 v28, v0

    #@9
    move/from16 v0, v28

    #@b
    move/from16 v1, p1

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 897
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@13
    move/from16 v28, v0

    #@15
    move/from16 v0, v28

    #@17
    move/from16 v1, p1

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    const/16 v15, 0x42

    #@1d
    .line 898
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@21
    move/from16 v28, v0

    #@23
    move-object/from16 v0, p0

    #@25
    move/from16 v1, v28

    #@27
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@2a
    move-result-object v22

    #@2b
    .line 899
    .local v22, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move/from16 v0, p1

    #@2d
    move-object/from16 v1, p0

    #@2f
    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@31
    .line 902
    .end local v22    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@35
    move-object/from16 v28, v0

    #@37
    if-nez v28, :cond_2

    #@39
    .line 903
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    #@3c
    .line 904
    return-void

    #@3d
    .line 897
    .local v22, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/16 v15, 0x11

    #@3f
    goto :goto_0

    #@40
    .line 911
    .end local v22    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    #@42
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@44
    move/from16 v28, v0

    #@46
    if-eqz v28, :cond_3

    #@48
    .line 913
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    #@4b
    .line 914
    return-void

    #@4c
    .line 920
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@4f
    move-result-object v28

    #@50
    if-nez v28, :cond_4

    #@52
    .line 921
    return-void

    #@53
    .line 924
    :cond_4
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@57
    move-object/from16 v28, v0

    #@59
    move-object/from16 v0, v28

    #@5b
    move-object/from16 v1, p0

    #@5d
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@60
    .line 926
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@64
    move/from16 v23, v0

    #@66
    .line 927
    .local v23, "pageLimit":I
    move-object/from16 v0, p0

    #@68
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@6a
    move/from16 v28, v0

    #@6c
    sub-int v28, v28, v23

    #@6e
    const/16 v29, 0x0

    #@70
    move/from16 v0, v29

    #@72
    move/from16 v1, v28

    #@74
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@77
    move-result v27

    #@78
    .line 928
    .local v27, "startPos":I
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@7c
    move-object/from16 v28, v0

    #@7e
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@81
    move-result v4

    #@82
    .line 929
    .local v4, "N":I
    add-int/lit8 v28, v4, -0x1

    #@84
    move-object/from16 v0, p0

    #@86
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@88
    move/from16 v29, v0

    #@8a
    add-int v29, v29, v23

    #@8c
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    #@8f
    move-result v12

    #@90
    .line 931
    .local v12, "endPos":I
    move-object/from16 v0, p0

    #@92
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    #@94
    move/from16 v28, v0

    #@96
    move/from16 v0, v28

    #@98
    if-eq v4, v0, :cond_5

    #@9a
    .line 934
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@9d
    move-result-object v28

    #@9e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    #@a1
    move-result v29

    #@a2
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a5
    move-result-object v25

    #@a6
    .line 938
    .local v25, "resName":Ljava/lang/String;
    :goto_1
    new-instance v28, Ljava/lang/IllegalStateException;

    #@a8
    new-instance v29, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v30, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    #@b0
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v29

    #@b4
    .line 940
    move-object/from16 v0, p0

    #@b6
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    #@b8
    move/from16 v30, v0

    #@ba
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v29

    #@be
    .line 940
    const-string/jumbo v30, ", found: "

    #@c1
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v29

    #@c5
    move-object/from16 v0, v29

    #@c7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v29

    #@cb
    .line 941
    const-string/jumbo v30, " Pager id: "

    #@ce
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v29

    #@d2
    move-object/from16 v0, v29

    #@d4
    move-object/from16 v1, v25

    #@d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v29

    #@da
    .line 942
    const-string/jumbo v30, " Pager class: "

    #@dd
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v29

    #@e1
    .line 942
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e4
    move-result-object v30

    #@e5
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v29

    #@e9
    .line 943
    const-string/jumbo v30, " Problematic adapter: "

    #@ec
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v29

    #@f0
    .line 943
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@f4
    move-object/from16 v30, v0

    #@f6
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f9
    move-result-object v30

    #@fa
    .line 938
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v29

    #@fe
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v29

    #@102
    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@105
    throw v28

    #@106
    .line 935
    .end local v25    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@107
    .line 936
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    #@10a
    move-result v28

    #@10b
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10e
    move-result-object v25

    #@10f
    .restart local v25    # "resName":Ljava/lang/String;
    goto :goto_1

    #@110
    .line 947
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v25    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    #@111
    .line 948
    .local v8, "curIndex":I
    const/4 v9, 0x0

    #@112
    .line 949
    .local v9, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    #@113
    :goto_2
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@117
    move-object/from16 v28, v0

    #@119
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@11c
    move-result v28

    #@11d
    move/from16 v0, v28

    #@11f
    if-ge v8, v0, :cond_6

    #@121
    .line 950
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@125
    move-object/from16 v28, v0

    #@127
    move-object/from16 v0, v28

    #@129
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12c
    move-result-object v18

    #@12d
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@12f
    .line 951
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v18

    #@131
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@133
    move/from16 v28, v0

    #@135
    move-object/from16 v0, p0

    #@137
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@139
    move/from16 v29, v0

    #@13b
    move/from16 v0, v28

    #@13d
    move/from16 v1, v29

    #@13f
    if-lt v0, v1, :cond_c

    #@141
    .line 952
    move-object/from16 v0, v18

    #@143
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@145
    move/from16 v28, v0

    #@147
    move-object/from16 v0, p0

    #@149
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@14b
    move/from16 v29, v0

    #@14d
    move/from16 v0, v28

    #@14f
    move/from16 v1, v29

    #@151
    if-ne v0, v1, :cond_6

    #@153
    move-object/from16 v9, v18

    #@155
    .line 957
    .end local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    #@157
    if-lez v4, :cond_7

    #@159
    .line 958
    move-object/from16 v0, p0

    #@15b
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@15d
    move/from16 v28, v0

    #@15f
    move-object/from16 v0, p0

    #@161
    move/from16 v1, v28

    #@163
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@166
    move-result-object v9

    #@167
    .line 964
    :cond_7
    if-eqz v9, :cond_a

    #@169
    .line 965
    const/4 v13, 0x0

    #@16a
    .line 966
    .local v13, "extraWidthLeft":F
    add-int/lit8 v19, v8, -0x1

    #@16c
    .line 967
    .local v19, "itemIndex":I
    if-ltz v19, :cond_d

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@172
    move-object/from16 v28, v0

    #@174
    move-object/from16 v0, v28

    #@176
    move/from16 v1, v19

    #@178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17b
    move-result-object v18

    #@17c
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@17e
    .line 968
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@181
    move-result v7

    #@182
    .line 969
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    #@184
    const/16 v20, 0x0

    #@186
    .line 971
    .local v20, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    #@188
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@18a
    move/from16 v28, v0

    #@18c
    add-int/lit8 v24, v28, -0x1

    #@18e
    .local v24, "pos":I
    :goto_5
    if-ltz v24, :cond_8

    #@190
    .line 972
    cmpl-float v28, v13, v20

    #@192
    if-ltz v28, :cond_13

    #@194
    move/from16 v0, v24

    #@196
    move/from16 v1, v27

    #@198
    if-ge v0, v1, :cond_13

    #@19a
    .line 973
    if-nez v18, :cond_f

    #@19c
    .line 999
    :cond_8
    iget v14, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@19e
    .line 1000
    .local v14, "extraWidthRight":F
    add-int/lit8 v19, v8, 0x1

    #@1a0
    .line 1001
    const/high16 v28, 0x40000000    # 2.0f

    #@1a2
    cmpg-float v28, v14, v28

    #@1a4
    if-gez v28, :cond_9

    #@1a6
    .line 1002
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1aa
    move-object/from16 v28, v0

    #@1ac
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@1af
    move-result v28

    #@1b0
    move/from16 v0, v19

    #@1b2
    move/from16 v1, v28

    #@1b4
    if-ge v0, v1, :cond_17

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1ba
    move-object/from16 v28, v0

    #@1bc
    move-object/from16 v0, v28

    #@1be
    move/from16 v1, v19

    #@1c0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c3
    move-result-object v18

    #@1c4
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@1c6
    .line 1003
    :goto_6
    if-gtz v7, :cond_18

    #@1c8
    const/16 v26, 0x0

    #@1ca
    .line 1005
    .local v26, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    #@1cc
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@1ce
    move/from16 v28, v0

    #@1d0
    add-int/lit8 v24, v28, 0x1

    #@1d2
    :goto_8
    move/from16 v0, v24

    #@1d4
    if-ge v0, v4, :cond_9

    #@1d6
    .line 1006
    cmpl-float v28, v14, v26

    #@1d8
    if-ltz v28, :cond_1d

    #@1da
    move/from16 v0, v24

    #@1dc
    if-le v0, v12, :cond_1d

    #@1de
    .line 1007
    if-nez v18, :cond_19

    #@1e0
    .line 1032
    .end local v26    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    #@1e2
    move-object/from16 v1, v22

    #@1e4
    invoke-direct {v0, v9, v8, v1}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    #@1e7
    .line 1042
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v19    # "itemIndex":I
    .end local v20    # "leftWidthNeeded":F
    .end local v24    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@1eb
    move-object/from16 v29, v0

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@1f1
    move/from16 v30, v0

    #@1f3
    if-eqz v9, :cond_21

    #@1f5
    iget-object v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@1f7
    move-object/from16 v28, v0

    #@1f9
    :goto_9
    move-object/from16 v0, v29

    #@1fb
    move-object/from16 v1, p0

    #@1fd
    move/from16 v2, v30

    #@1ff
    move-object/from16 v3, v28

    #@201
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@204
    .line 1044
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@208
    move-object/from16 v28, v0

    #@20a
    move-object/from16 v0, v28

    #@20c
    move-object/from16 v1, p0

    #@20e
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@211
    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@214
    move-result v6

    #@215
    .line 1049
    .local v6, "childCount":I
    const/16 v17, 0x0

    #@217
    .local v17, "i":I
    :goto_a
    move/from16 v0, v17

    #@219
    if-ge v0, v6, :cond_22

    #@21b
    .line 1050
    move-object/from16 v0, p0

    #@21d
    move/from16 v1, v17

    #@21f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@222
    move-result-object v5

    #@223
    .line 1051
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@226
    move-result-object v21

    #@227
    check-cast v21, Lcom/android/internal/widget/ViewPager$LayoutParams;

    #@229
    .line 1052
    .local v21, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move/from16 v0, v17

    #@22b
    move-object/from16 v1, v21

    #@22d
    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    #@22f
    .line 1053
    move-object/from16 v0, v21

    #@231
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    #@233
    move/from16 v28, v0

    #@235
    if-nez v28, :cond_b

    #@237
    move-object/from16 v0, v21

    #@239
    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    #@23b
    move/from16 v28, v0

    #@23d
    const/16 v29, 0x0

    #@23f
    cmpl-float v28, v28, v29

    #@241
    if-nez v28, :cond_b

    #@243
    .line 1055
    move-object/from16 v0, p0

    #@245
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@248
    move-result-object v18

    #@249
    .line 1056
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v18, :cond_b

    #@24b
    .line 1057
    move-object/from16 v0, v18

    #@24d
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@24f
    move/from16 v28, v0

    #@251
    move/from16 v0, v28

    #@253
    move-object/from16 v1, v21

    #@255
    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    #@257
    .line 1058
    move-object/from16 v0, v18

    #@259
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@25b
    move/from16 v28, v0

    #@25d
    move/from16 v0, v28

    #@25f
    move-object/from16 v1, v21

    #@261
    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    #@263
    .line 1049
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v17, v17, 0x1

    #@265
    goto :goto_a

    #@266
    .line 949
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v17    # "i":I
    .end local v21    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@268
    goto/16 :goto_2

    #@26a
    .line 967
    .end local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v19    # "itemIndex":I
    :cond_d
    const/16 v18, 0x0

    #@26c
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_3

    #@26e
    .line 970
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v7    # "clientWidth":I
    :cond_e
    iget v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@270
    move/from16 v28, v0

    #@272
    const/high16 v29, 0x40000000    # 2.0f

    #@274
    sub-float v28, v29, v28

    #@276
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    #@279
    move-result v29

    #@27a
    move/from16 v0, v29

    #@27c
    int-to-float v0, v0

    #@27d
    move/from16 v29, v0

    #@27f
    int-to-float v0, v7

    #@280
    move/from16 v30, v0

    #@282
    div-float v29, v29, v30

    #@284
    add-float v20, v28, v29

    #@286
    .restart local v20    # "leftWidthNeeded":F
    goto/16 :goto_4

    #@288
    .line 976
    .restart local v24    # "pos":I
    :cond_f
    move-object/from16 v0, v18

    #@28a
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@28c
    move/from16 v28, v0

    #@28e
    move/from16 v0, v24

    #@290
    move/from16 v1, v28

    #@292
    if-ne v0, v1, :cond_10

    #@294
    move-object/from16 v0, v18

    #@296
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    #@298
    move/from16 v28, v0

    #@29a
    if-eqz v28, :cond_11

    #@29c
    .line 971
    :cond_10
    :goto_b
    add-int/lit8 v24, v24, -0x1

    #@29e
    goto/16 :goto_5

    #@2a0
    .line 977
    :cond_11
    move-object/from16 v0, p0

    #@2a2
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2a4
    move-object/from16 v28, v0

    #@2a6
    move-object/from16 v0, v28

    #@2a8
    move/from16 v1, v19

    #@2aa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2ad
    .line 978
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@2b1
    move-object/from16 v28, v0

    #@2b3
    move-object/from16 v0, v18

    #@2b5
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@2b7
    move-object/from16 v29, v0

    #@2b9
    move-object/from16 v0, v28

    #@2bb
    move-object/from16 v1, p0

    #@2bd
    move/from16 v2, v24

    #@2bf
    move-object/from16 v3, v29

    #@2c1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@2c4
    .line 983
    add-int/lit8 v19, v19, -0x1

    #@2c6
    .line 984
    add-int/lit8 v8, v8, -0x1

    #@2c8
    .line 985
    if-ltz v19, :cond_12

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2ce
    move-object/from16 v28, v0

    #@2d0
    move-object/from16 v0, v28

    #@2d2
    move/from16 v1, v19

    #@2d4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d7
    move-result-object v18

    #@2d8
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@2da
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    #@2db
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_12
    const/16 v18, 0x0

    #@2dd
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    #@2de
    .line 987
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_13
    if-eqz v18, :cond_15

    #@2e0
    move-object/from16 v0, v18

    #@2e2
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@2e4
    move/from16 v28, v0

    #@2e6
    move/from16 v0, v24

    #@2e8
    move/from16 v1, v28

    #@2ea
    if-ne v0, v1, :cond_15

    #@2ec
    .line 988
    move-object/from16 v0, v18

    #@2ee
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@2f0
    move/from16 v28, v0

    #@2f2
    add-float v13, v13, v28

    #@2f4
    .line 989
    add-int/lit8 v19, v19, -0x1

    #@2f6
    .line 990
    if-ltz v19, :cond_14

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2fc
    move-object/from16 v28, v0

    #@2fe
    move-object/from16 v0, v28

    #@300
    move/from16 v1, v19

    #@302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@305
    move-result-object v18

    #@306
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@308
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    #@309
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_14
    const/16 v18, 0x0

    #@30b
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    #@30c
    .line 992
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_15
    add-int/lit8 v28, v19, 0x1

    #@30e
    move-object/from16 v0, p0

    #@310
    move/from16 v1, v24

    #@312
    move/from16 v2, v28

    #@314
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@317
    move-result-object v18

    #@318
    .line 993
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v18

    #@31a
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@31c
    move/from16 v28, v0

    #@31e
    add-float v13, v13, v28

    #@320
    .line 994
    add-int/lit8 v8, v8, 0x1

    #@322
    .line 995
    if-ltz v19, :cond_16

    #@324
    move-object/from16 v0, p0

    #@326
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@328
    move-object/from16 v28, v0

    #@32a
    move-object/from16 v0, v28

    #@32c
    move/from16 v1, v19

    #@32e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@331
    move-result-object v18

    #@332
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@334
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_b

    #@336
    :cond_16
    const/16 v18, 0x0

    #@338
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_b

    #@33a
    .line 1002
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v18, 0x0

    #@33c
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_6

    #@33e
    .line 1004
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    #@341
    move-result v28

    #@342
    move/from16 v0, v28

    #@344
    int-to-float v0, v0

    #@345
    move/from16 v28, v0

    #@347
    int-to-float v0, v7

    #@348
    move/from16 v29, v0

    #@34a
    div-float v28, v28, v29

    #@34c
    const/high16 v29, 0x40000000    # 2.0f

    #@34e
    add-float v26, v28, v29

    #@350
    .restart local v26    # "rightWidthNeeded":F
    goto/16 :goto_7

    #@352
    .line 1010
    :cond_19
    move-object/from16 v0, v18

    #@354
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@356
    move/from16 v28, v0

    #@358
    move/from16 v0, v24

    #@35a
    move/from16 v1, v28

    #@35c
    if-ne v0, v1, :cond_1a

    #@35e
    move-object/from16 v0, v18

    #@360
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    #@362
    move/from16 v28, v0

    #@364
    if-eqz v28, :cond_1b

    #@366
    .line 1005
    :cond_1a
    :goto_c
    add-int/lit8 v24, v24, 0x1

    #@368
    goto/16 :goto_8

    #@36a
    .line 1011
    :cond_1b
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@36e
    move-object/from16 v28, v0

    #@370
    move-object/from16 v0, v28

    #@372
    move/from16 v1, v19

    #@374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@377
    .line 1012
    move-object/from16 v0, p0

    #@379
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@37b
    move-object/from16 v28, v0

    #@37d
    move-object/from16 v0, v18

    #@37f
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@381
    move-object/from16 v29, v0

    #@383
    move-object/from16 v0, v28

    #@385
    move-object/from16 v1, p0

    #@387
    move/from16 v2, v24

    #@389
    move-object/from16 v3, v29

    #@38b
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@38e
    .line 1017
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@392
    move-object/from16 v28, v0

    #@394
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@397
    move-result v28

    #@398
    move/from16 v0, v19

    #@39a
    move/from16 v1, v28

    #@39c
    if-ge v0, v1, :cond_1c

    #@39e
    move-object/from16 v0, p0

    #@3a0
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3a2
    move-object/from16 v28, v0

    #@3a4
    move-object/from16 v0, v28

    #@3a6
    move/from16 v1, v19

    #@3a8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3ab
    move-result-object v18

    #@3ac
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3ae
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_c

    #@3af
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1c
    const/16 v18, 0x0

    #@3b1
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_c

    #@3b2
    .line 1019
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1d
    if-eqz v18, :cond_1f

    #@3b4
    move-object/from16 v0, v18

    #@3b6
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@3b8
    move/from16 v28, v0

    #@3ba
    move/from16 v0, v24

    #@3bc
    move/from16 v1, v28

    #@3be
    if-ne v0, v1, :cond_1f

    #@3c0
    .line 1020
    move-object/from16 v0, v18

    #@3c2
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@3c4
    move/from16 v28, v0

    #@3c6
    add-float v14, v14, v28

    #@3c8
    .line 1021
    add-int/lit8 v19, v19, 0x1

    #@3ca
    .line 1022
    move-object/from16 v0, p0

    #@3cc
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3ce
    move-object/from16 v28, v0

    #@3d0
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@3d3
    move-result v28

    #@3d4
    move/from16 v0, v19

    #@3d6
    move/from16 v1, v28

    #@3d8
    if-ge v0, v1, :cond_1e

    #@3da
    move-object/from16 v0, p0

    #@3dc
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3de
    move-object/from16 v28, v0

    #@3e0
    move-object/from16 v0, v28

    #@3e2
    move/from16 v1, v19

    #@3e4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e7
    move-result-object v18

    #@3e8
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3ea
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@3ec
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1e
    const/16 v18, 0x0

    #@3ee
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@3f0
    .line 1024
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1f
    move-object/from16 v0, p0

    #@3f2
    move/from16 v1, v24

    #@3f4
    move/from16 v2, v19

    #@3f6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@3f9
    move-result-object v18

    #@3fa
    .line 1025
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v19, v19, 0x1

    #@3fc
    .line 1026
    move-object/from16 v0, v18

    #@3fe
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    #@400
    move/from16 v28, v0

    #@402
    add-float v14, v14, v28

    #@404
    .line 1027
    move-object/from16 v0, p0

    #@406
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@408
    move-object/from16 v28, v0

    #@40a
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@40d
    move-result v28

    #@40e
    move/from16 v0, v19

    #@410
    move/from16 v1, v28

    #@412
    if-ge v0, v1, :cond_20

    #@414
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@418
    move-object/from16 v28, v0

    #@41a
    move-object/from16 v0, v28

    #@41c
    move/from16 v1, v19

    #@41e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@421
    move-result-object v18

    #@422
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@424
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@426
    :cond_20
    const/16 v18, 0x0

    #@428
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@42a
    .line 1042
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v19    # "itemIndex":I
    .end local v20    # "leftWidthNeeded":F
    .end local v24    # "pos":I
    .end local v26    # "rightWidthNeeded":F
    :cond_21
    const/16 v28, 0x0

    #@42c
    goto/16 :goto_9

    #@42e
    .line 1062
    .restart local v6    # "childCount":I
    .restart local v17    # "i":I
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    #@431
    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    #@434
    move-result v28

    #@435
    if-eqz v28, :cond_24

    #@437
    .line 1065
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    #@43a
    move-result-object v10

    #@43b
    .line 1066
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_25

    #@43d
    move-object/from16 v0, p0

    #@43f
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@442
    move-result-object v18

    #@443
    .line 1067
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_d
    if-eqz v18, :cond_23

    #@445
    move-object/from16 v0, v18

    #@447
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@449
    move/from16 v28, v0

    #@44b
    move-object/from16 v0, p0

    #@44d
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@44f
    move/from16 v29, v0

    #@451
    move/from16 v0, v28

    #@453
    move/from16 v1, v29

    #@455
    if-eq v0, v1, :cond_24

    #@457
    .line 1068
    :cond_23
    const/16 v17, 0x0

    #@459
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@45c
    move-result v28

    #@45d
    move/from16 v0, v17

    #@45f
    move/from16 v1, v28

    #@461
    if-ge v0, v1, :cond_24

    #@463
    .line 1069
    move-object/from16 v0, p0

    #@465
    move/from16 v1, v17

    #@467
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@46a
    move-result-object v5

    #@46b
    .line 1070
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@46d
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@470
    move-result-object v18

    #@471
    .line 1071
    if-eqz v18, :cond_27

    #@473
    move-object/from16 v0, v18

    #@475
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@477
    move/from16 v28, v0

    #@479
    move-object/from16 v0, p0

    #@47b
    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@47d
    move/from16 v29, v0

    #@47f
    move/from16 v0, v28

    #@481
    move/from16 v1, v29

    #@483
    if-ne v0, v1, :cond_27

    #@485
    .line 1073
    if-nez v10, :cond_26

    #@487
    .line 1074
    const/16 v16, 0x0

    #@489
    .line 1081
    :goto_f
    move-object/from16 v0, v16

    #@48b
    invoke-virtual {v5, v15, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@48e
    move-result v28

    #@48f
    if-eqz v28, :cond_27

    #@491
    .line 893
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "currentFocused":Landroid/view/View;
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_24
    return-void

    #@492
    .line 1066
    .restart local v10    # "currentFocused":Landroid/view/View;
    :cond_25
    const/16 v18, 0x0

    #@494
    goto :goto_d

    #@495
    .line 1076
    .restart local v5    # "child":Landroid/view/View;
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_26
    move-object/from16 v0, p0

    #@497
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@499
    move-object/from16 v16, v0

    #@49b
    .line 1077
    .local v16, "focusRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@49d
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@49f
    move-object/from16 v28, v0

    #@4a1
    move-object/from16 v0, v28

    #@4a3
    invoke-virtual {v10, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    #@4a6
    .line 1078
    move-object/from16 v0, p0

    #@4a8
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@4aa
    move-object/from16 v28, v0

    #@4ac
    move-object/from16 v0, p0

    #@4ae
    move-object/from16 v1, v28

    #@4b0
    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4b3
    .line 1079
    move-object/from16 v0, p0

    #@4b5
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@4b7
    move-object/from16 v28, v0

    #@4b9
    move-object/from16 v0, p0

    #@4bb
    move-object/from16 v1, v28

    #@4bd
    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4c0
    goto :goto_f

    #@4c1
    .line 1068
    .end local v16    # "focusRect":Landroid/graphics/Rect;
    :cond_27
    add-int/lit8 v17, v17, 0x1

    #@4c3
    goto :goto_e
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1315
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    #@7
    .line 1313
    :goto_0
    return-void

    #@8
    .line 1317
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b
    goto :goto_0
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 389
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@5
    if-eqz v4, :cond_1

    #@7
    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@9
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    #@b
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@e
    .line 391
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@10
    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@13
    .line 392
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v4

    #@1a
    if-ge v0, v4, :cond_0

    #@1c
    .line 393
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@24
    .line 394
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@26
    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    #@28
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@2a
    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@2d
    .line 392
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 396
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@32
    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@35
    .line 397
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@3a
    .line 398
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    #@3d
    .line 399
    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@3f
    .line 400
    invoke-virtual {p0, v7, v7}, Landroid/view/View;->scrollTo(II)V

    #@42
    .line 403
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@44
    .line 404
    .local v2, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@46
    .line 405
    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    #@48
    .line 407
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@4a
    if-eqz v4, :cond_3

    #@4c
    .line 408
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    #@4e
    if-nez v4, :cond_2

    #@50
    .line 409
    new-instance v4, Lcom/android/internal/widget/ViewPager$PagerObserver;

    #@52
    invoke-direct {v4, p0, v8}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$PagerObserver;)V

    #@55
    iput-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    #@57
    .line 411
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@59
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    #@5b
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@5e
    .line 412
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@60
    .line 413
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@62
    .line 414
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@64
    .line 415
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@66
    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@69
    move-result v4

    #@6a
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    #@6c
    .line 416
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    #@6e
    if-ltz v4, :cond_5

    #@70
    .line 417
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@72
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@74
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@76
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@79
    .line 418
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    #@7b
    invoke-virtual {p0, v4, v7, v9}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@7e
    .line 419
    const/4 v4, -0x1

    #@7f
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    #@81
    .line 420
    iput-object v8, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@83
    .line 421
    iput-object v8, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@85
    .line 429
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    #@87
    if-eqz v4, :cond_4

    #@89
    if-eq v2, p1, :cond_4

    #@8b
    .line 430
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    #@8d
    invoke-interface {v4, v2, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    #@90
    .line 388
    :cond_4
    return-void

    #@91
    .line 422
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    #@93
    .line 423
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@96
    goto :goto_1

    #@97
    .line 425
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@9a
    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 470
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@3
    .line 471
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    move v0, v1

    #@8
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@b
    .line 469
    return-void

    #@c
    .line 471
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 481
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    #@3
    .line 482
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    #@6
    .line 480
    return-void
.end method

.method setCurrentItemInternal(IZZ)Z
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 490
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method setCurrentItemInternal(IZZI)Z
    .locals 6
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 494
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@8
    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@b
    move-result v3

    #@c
    if-gtz v3, :cond_1

    #@e
    .line 495
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@11
    .line 496
    return v4

    #@12
    .line 499
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@14
    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v3, v3, -0x1

    #@1a
    invoke-static {p1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    #@1d
    move-result p1

    #@1e
    .line 500
    if-nez p3, :cond_2

    #@20
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@22
    if-ne v3, p1, :cond_2

    #@24
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 501
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@2f
    .line 502
    return v4

    #@30
    .line 505
    :cond_2
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@32
    .line 506
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@34
    add-int/2addr v3, v2

    #@35
    if-gt p1, v3, :cond_3

    #@37
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@39
    sub-int/2addr v3, v2

    #@3a
    if-ge p1, v3, :cond_4

    #@3c
    .line 510
    :cond_3
    const/4 v1, 0x0

    #@3d
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v3

    #@43
    if-ge v1, v3, :cond_4

    #@45
    .line 511
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    #@4d
    iput-boolean v5, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    #@4f
    .line 510
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_0

    #@52
    .line 515
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@54
    if-eq v3, p1, :cond_7

    #@56
    const/4 v0, 0x1

    #@57
    .line 516
    .local v0, "dispatchSelected":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    #@59
    if-eqz v3, :cond_8

    #@5b
    .line 519
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@5d
    .line 520
    if-eqz v0, :cond_5

    #@5f
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@61
    if-eqz v3, :cond_5

    #@63
    .line 521
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@65
    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@68
    .line 523
    :cond_5
    if-eqz v0, :cond_6

    #@6a
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@6c
    if-eqz v3, :cond_6

    #@6e
    .line 524
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@70
    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@73
    .line 526
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@76
    .line 532
    :goto_2
    return v5

    #@77
    .line 515
    .end local v0    # "dispatchSelected":Z
    :cond_7
    const/4 v0, 0x0

    #@78
    .restart local v0    # "dispatchSelected":Z
    goto :goto_1

    #@79
    .line 528
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    #@7c
    .line 529
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    #@7f
    goto :goto_2
.end method

.method setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@2
    .line 630
    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@4
    .line 631
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 663
    if-ge p1, v3, :cond_0

    #@3
    .line 664
    const-string/jumbo v0, "ViewPager"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Requested offscreen page limit "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " too small; defaulting to "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 666
    const/4 p1, 0x1

    #@29
    .line 668
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@2b
    if-eq p1, v0, :cond_1

    #@2d
    .line 669
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    #@2f
    .line 670
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@32
    .line 662
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    #@0
    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    #@2
    .line 454
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@0
    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    #@2
    .line 586
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    #@0
    .prologue
    .line 683
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@2
    .line 684
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@4
    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@7
    move-result v1

    #@8
    .line 687
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    #@b
    .line 689
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@e
    .line 682
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 718
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 708
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    #@7
    .line 709
    :cond_0
    if-nez p1, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    #@d
    .line 710
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@10
    .line 706
    return-void

    #@11
    .line 709
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .locals 5
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 603
    if-eqz p2, :cond_2

    #@4
    const/4 v0, 0x1

    #@5
    .line 604
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    #@7
    if-eqz v3, :cond_3

    #@9
    move v3, v2

    #@a
    :goto_1
    if-eq v0, v3, :cond_4

    #@c
    const/4 v1, 0x1

    #@d
    .line 605
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    #@f
    .line 606
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    #@12
    .line 607
    if-eqz v0, :cond_5

    #@14
    .line 608
    if-eqz p1, :cond_0

    #@16
    const/4 v2, 0x2

    #@17
    :cond_0
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    #@19
    .line 612
    :goto_3
    if-eqz v1, :cond_1

    #@1b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@1e
    .line 602
    :cond_1
    return-void

    #@1f
    .line 603
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_2
    const/4 v0, 0x0

    #@20
    .restart local v0    # "hasTransformer":Z
    goto :goto_0

    #@21
    :cond_3
    move v3, v4

    #@22
    .line 604
    goto :goto_1

    #@23
    :cond_4
    const/4 v1, 0x0

    #@24
    .restart local v1    # "needsPopulate":Z
    goto :goto_2

    #@25
    .line 610
    :cond_5
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    #@27
    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 754
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    #@4
    .line 753
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    #@0
    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 767
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@a
    .line 768
    return-void

    #@b
    .line 770
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    #@e
    move-result v2

    #@f
    .line 771
    .local v2, "sx":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    #@12
    move-result v3

    #@13
    .line 772
    .local v3, "sy":I
    sub-int v4, p1, v2

    #@15
    .line 773
    .local v4, "dx":I
    sub-int v5, p2, v3

    #@17
    .line 774
    .local v5, "dy":I
    if-nez v4, :cond_1

    #@19
    if-nez v5, :cond_1

    #@1b
    .line 775
    const/4 v1, 0x0

    #@1c
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    #@1f
    .line 776
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    #@22
    .line 777
    const/4 v1, 0x0

    #@23
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    #@26
    .line 778
    return-void

    #@27
    .line 781
    :cond_1
    const/4 v1, 0x1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    #@2b
    .line 782
    const/4 v1, 0x2

    #@2c
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    #@2f
    .line 784
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    #@32
    move-result v12

    #@33
    .line 785
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    #@35
    .line 786
    .local v9, "halfWidth":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@38
    move-result v1

    #@39
    int-to-float v1, v1

    #@3a
    const/high16 v13, 0x3f800000    # 1.0f

    #@3c
    mul-float/2addr v1, v13

    #@3d
    int-to-float v13, v12

    #@3e
    div-float/2addr v1, v13

    #@3f
    const/high16 v13, 0x3f800000    # 1.0f

    #@41
    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    #@44
    move-result v8

    #@45
    .line 787
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    #@46
    int-to-float v13, v9

    #@47
    .line 788
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    #@4a
    move-result v14

    #@4b
    .line 787
    mul-float/2addr v13, v14

    #@4c
    add-float v7, v1, v13

    #@4e
    .line 790
    .local v7, "distance":F
    const/4 v6, 0x0

    #@4f
    .line 791
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    #@52
    move-result p3

    #@53
    .line 792
    if-lez p3, :cond_2

    #@55
    .line 793
    move/from16 v0, p3

    #@57
    int-to-float v1, v0

    #@58
    div-float v1, v7, v1

    #@5a
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@5d
    move-result v1

    #@5e
    const/high16 v13, 0x447a0000    # 1000.0f

    #@60
    mul-float/2addr v1, v13

    #@61
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@64
    move-result v1

    #@65
    mul-int/lit8 v6, v1, 0x4

    #@67
    .line 799
    :goto_0
    const/16 v1, 0x258

    #@69
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@6c
    move-result v6

    #@6d
    .line 801
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@6f
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@72
    .line 802
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@75
    .line 764
    return-void

    #@76
    .line 795
    :cond_2
    int-to-float v1, v12

    #@77
    iget-object v13, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    #@79
    iget v14, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    #@7b
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    #@7e
    move-result v13

    #@7f
    mul-float v11, v1, v13

    #@81
    .line 796
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@84
    move-result v1

    #@85
    int-to-float v1, v1

    #@86
    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    #@88
    int-to-float v13, v13

    #@89
    add-float/2addr v13, v11

    #@8a
    div-float v10, v1, v13

    #@8c
    .line 797
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    #@8e
    add-float/2addr v1, v10

    #@8f
    const/high16 v13, 0x42c80000    # 100.0f

    #@91
    mul-float/2addr v1, v13

    #@92
    float-to-int v6, v1

    #@93
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 724
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    if-ne p1, v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
