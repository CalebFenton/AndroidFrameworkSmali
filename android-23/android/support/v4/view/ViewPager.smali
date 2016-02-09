.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ItemInfo;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$1;,
        Landroid/support/v4/view/ViewPager$2;,
        Landroid/support/v4/view/ViewPager$3;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
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

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

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

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v4/view/ViewPager;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 105
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 106
    const v1, 0x10100b3

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 105
    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    #@b
    .line 123
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    #@d
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    #@10
    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@12
    .line 130
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    #@14
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    #@17
    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@19
    .line 230
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #@1b
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    #@1e
    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #@20
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, -0x1

    #@4
    .line 351
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@7
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e
    .line 138
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@10
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15
    .line 140
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    .line 144
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@1e
    .line 145
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@20
    .line 146
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@22
    .line 158
    const v0, -0x800001

    #@25
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@27
    .line 159
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@2a
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@2c
    .line 168
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2e
    .line 186
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@30
    .line 213
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@32
    .line 214
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    #@34
    .line 248
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    #@36
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@39
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    .line 255
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@3d
    .line 352
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    #@40
    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, -0x1

    #@4
    .line 356
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@7
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e
    .line 138
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@10
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15
    .line 140
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    .line 144
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@1e
    .line 145
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@20
    .line 146
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@22
    .line 158
    const v0, -0x800001

    #@25
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@27
    .line 159
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@2a
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@2c
    .line 168
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2e
    .line 186
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@30
    .line 213
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@32
    .line 214
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    #@34
    .line 248
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    #@36
    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@39
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@3b
    .line 255
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@3d
    .line 357
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    #@40
    .line 355
    return-void
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Landroid/support/v4/view/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Landroid/support/v4/view/ViewPager$ItemInfo;

    #@0
    .prologue
    .line 1160
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@2
    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@5
    move-result v1

    #@6
    .line 1161
    .local v1, "N":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@9
    move-result v11

    #@a
    .line 1162
    .local v11, "width":I
    if-lez v11, :cond_0

    #@c
    iget v12, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@e
    int-to-float v12, v12

    #@f
    int-to-float v13, v11

    #@10
    div-float v6, v12, v13

    #@12
    .line 1164
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    #@14
    .line 1165
    move-object/from16 v0, p3

    #@16
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@18
    .line 1167
    .local v8, "oldCurPosition":I
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@1a
    if-ge v8, v12, :cond_3

    #@1c
    .line 1168
    const/4 v5, 0x0

    #@1d
    .line 1169
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    #@1e
    .line 1170
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    #@20
    iget v12, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@22
    move-object/from16 v0, p3

    #@24
    iget v13, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@26
    add-float/2addr v12, v13

    #@27
    add-float v7, v12, v6

    #@29
    .line 1171
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    #@2b
    .line 1172
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2d
    if-gt v9, v12, :cond_6

    #@2f
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v12

    #@35
    if-ge v5, v12, :cond_6

    #@37
    .line 1173
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3f
    .line 1174
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@41
    if-le v9, v12, :cond_1

    #@43
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v12

    #@49
    add-int/lit8 v12, v12, -0x1

    #@4b
    if-ge v5, v12, :cond_1

    #@4d
    .line 1175
    add-int/lit8 v5, v5, 0x1

    #@4f
    .line 1176
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v3

    #@55
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@57
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_2

    #@58
    .line 1162
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    #@59
    .restart local v6    # "marginOffset":F
    goto :goto_0

    #@5a
    .line 1178
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@5c
    if-ge v9, v12, :cond_2

    #@5e
    .line 1181
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@60
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@63
    move-result v12

    #@64
    add-float/2addr v12, v6

    #@65
    add-float/2addr v7, v12

    #@66
    .line 1182
    add-int/lit8 v9, v9, 0x1

    #@68
    goto :goto_3

    #@69
    .line 1184
    :cond_2
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@6b
    .line 1185
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@6d
    add-float/2addr v12, v6

    #@6e
    add-float/2addr v7, v12

    #@6f
    .line 1172
    add-int/lit8 v9, v9, 0x1

    #@71
    goto :goto_1

    #@72
    .line 1187
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@74
    if-le v8, v12, :cond_6

    #@76
    .line 1188
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@7b
    move-result v12

    #@7c
    add-int/lit8 v5, v12, -0x1

    #@7e
    .line 1189
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    #@7f
    .line 1190
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    #@81
    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@83
    .line 1191
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    #@85
    .line 1192
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@87
    if-lt v9, v12, :cond_6

    #@89
    if-ltz v5, :cond_6

    #@8b
    .line 1193
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@90
    move-result-object v3

    #@91
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@93
    .line 1194
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@95
    if-ge v9, v12, :cond_4

    #@97
    if-lez v5, :cond_4

    #@99
    .line 1195
    add-int/lit8 v5, v5, -0x1

    #@9b
    .line 1196
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a0
    move-result-object v3

    #@a1
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@a3
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_5

    #@a4
    .line 1198
    :cond_4
    :goto_6
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@a6
    if-le v9, v12, :cond_5

    #@a8
    .line 1201
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@aa
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@ad
    move-result v12

    #@ae
    add-float/2addr v12, v6

    #@af
    sub-float/2addr v7, v12

    #@b0
    .line 1202
    add-int/lit8 v9, v9, -0x1

    #@b2
    goto :goto_6

    #@b3
    .line 1204
    :cond_5
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@b5
    add-float/2addr v12, v6

    #@b6
    sub-float/2addr v7, v12

    #@b7
    .line 1205
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@b9
    .line 1192
    add-int/lit8 v9, v9, -0x1

    #@bb
    goto :goto_4

    #@bc
    .line 1211
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@be
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@c1
    move-result v4

    #@c2
    .line 1212
    .local v4, "itemCount":I
    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@c4
    .line 1213
    .restart local v7    # "offset":F
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@c6
    add-int/lit8 v9, v12, -0x1

    #@c8
    .line 1214
    .restart local v9    # "pos":I
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@ca
    if-nez v12, :cond_7

    #@cc
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@ce
    :goto_7
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@d0
    .line 1215
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@d2
    add-int/lit8 v13, v1, -0x1

    #@d4
    if-ne v12, v13, :cond_8

    #@d6
    .line 1216
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@d8
    iget v13, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@da
    add-float/2addr v12, v13

    #@db
    const/high16 v13, 0x3f800000    # 1.0f

    #@dd
    sub-float/2addr v12, v13

    #@de
    .line 1215
    :goto_8
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@e0
    .line 1218
    add-int/lit8 v2, p2, -0x1

    #@e2
    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    #@e4
    .line 1219
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@e6
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e9
    move-result-object v3

    #@ea
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@ec
    .line 1220
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@ee
    if-le v9, v12, :cond_9

    #@f0
    .line 1221
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@f2
    add-int/lit8 v10, v9, -0x1

    #@f4
    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@f7
    move-result v12

    #@f8
    add-float/2addr v12, v6

    #@f9
    sub-float/2addr v7, v12

    #@fa
    move v9, v10

    #@fb
    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    #@fc
    .line 1214
    .end local v2    # "i":I
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    #@ff
    goto :goto_7

    #@100
    .line 1216
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    #@103
    goto :goto_8

    #@104
    .line 1223
    .restart local v2    # "i":I
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@106
    add-float/2addr v12, v6

    #@107
    sub-float/2addr v7, v12

    #@108
    .line 1224
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@10a
    .line 1225
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@10c
    if-nez v12, :cond_a

    #@10e
    iput v7, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@110
    .line 1218
    :cond_a
    add-int/lit8 v2, v2, -0x1

    #@112
    add-int/lit8 v9, v9, -0x1

    #@114
    goto :goto_9

    #@115
    .line 1227
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@117
    iget v13, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@119
    add-float/2addr v12, v13

    #@11a
    add-float v7, v12, v6

    #@11c
    .line 1228
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@11e
    add-int/lit8 v9, v12, 0x1

    #@120
    .line 1230
    add-int/lit8 v2, p2, 0x1

    #@122
    :goto_b
    if-ge v2, v4, :cond_e

    #@124
    .line 1231
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@126
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@129
    move-result-object v3

    #@12a
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@12c
    .line 1232
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@12e
    if-ge v9, v12, :cond_c

    #@130
    .line 1233
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@132
    add-int/lit8 v10, v9, 0x1

    #@134
    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@137
    move-result v12

    #@138
    add-float/2addr v12, v6

    #@139
    add-float/2addr v7, v12

    #@13a
    move v9, v10

    #@13b
    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    #@13c
    .line 1235
    :cond_c
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@13e
    add-int/lit8 v13, v1, -0x1

    #@140
    if-ne v12, v13, :cond_d

    #@142
    .line 1236
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@144
    add-float/2addr v12, v7

    #@145
    const/high16 v13, 0x3f800000    # 1.0f

    #@147
    sub-float/2addr v12, v13

    #@148
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@14a
    .line 1238
    :cond_d
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@14c
    .line 1239
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@14e
    add-float/2addr v12, v6

    #@14f
    add-float/2addr v7, v12

    #@150
    .line 1230
    add-int/lit8 v2, v2, 0x1

    #@152
    add-int/lit8 v9, v9, 0x1

    #@154
    goto :goto_b

    #@155
    .line 1242
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    #@156
    iput-boolean v12, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    #@158
    .line 1159
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1821
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@3
    const/4 v8, 0x2

    #@4
    if-ne v7, v8, :cond_3

    #@6
    const/4 v2, 0x1

    #@7
    .line 1822
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    #@9
    .line 1824
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@c
    .line 1825
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@e
    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    #@11
    .line 1826
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@14
    move-result v3

    #@15
    .line 1827
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@18
    move-result v4

    #@19
    .line 1828
    .local v4, "oldY":I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1b
    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    #@1e
    move-result v5

    #@1f
    .line 1829
    .local v5, "x":I
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@21
    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    #@24
    move-result v6

    #@25
    .line 1830
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    #@27
    if-eq v4, v6, :cond_1

    #@29
    .line 1831
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@2c
    .line 1832
    if-eq v5, v3, :cond_1

    #@2e
    .line 1833
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@31
    .line 1837
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@33
    .line 1838
    const/4 v0, 0x0

    #@34
    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v7

    #@3a
    if-ge v0, v7, :cond_4

    #@3c
    .line 1839
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@44
    .line 1840
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@46
    if-eqz v7, :cond_2

    #@48
    .line 1841
    const/4 v2, 0x1

    #@49
    .line 1842
    iput-boolean v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@4b
    .line 1838
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 1821
    .end local v0    # "i":I
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "needPopulate":Z
    goto :goto_0

    #@50
    .line 1845
    .restart local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    #@52
    .line 1846
    if-eqz p1, :cond_6

    #@54
    .line 1847
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@56
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@59
    .line 1820
    :cond_5
    :goto_2
    return-void

    #@5a
    .line 1849
    :cond_6
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@5c
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    #@5f
    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 7
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2239
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    #@4
    move-result v4

    #@5
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    #@7
    if-le v4, v5, :cond_2

    #@9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@c
    move-result v4

    #@d
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    #@f
    if-le v4, v5, :cond_2

    #@11
    .line 2240
    if-lez p3, :cond_1

    #@13
    move v2, p1

    #@14
    .line 2246
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v4

    #@1a
    if-lez v4, :cond_0

    #@1c
    .line 2247
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@24
    .line 2248
    .local v0, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v5

    #@2c
    add-int/lit8 v5, v5, -0x1

    #@2e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@34
    .line 2251
    .local v1, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@36
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@38
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    #@3b
    move-result v5

    #@3c
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v2

    #@40
    .line 2254
    .end local v0    # "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    return v2

    #@41
    .line 2240
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    #@43
    .restart local v2    # "targetPage":I
    goto :goto_0

    #@44
    .line 2242
    .end local v2    # "targetPage":I
    :cond_2
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@46
    if-lt p1, v4, :cond_3

    #@48
    const v3, 0x3ecccccd    # 0.4f

    #@4b
    .line 2243
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    #@4c
    add-float/2addr v4, p2

    #@4d
    add-float/2addr v4, v3

    #@4e
    float-to-int v2, v4

    #@4f
    .restart local v2    # "targetPage":I
    goto :goto_0

    #@50
    .line 2242
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    #@53
    .restart local v3    # "truncator":F
    goto :goto_1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    #@0
    .prologue
    .line 1770
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1771
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@6
    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@9
    .line 1773
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 1774
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@13
    move-result v2

    #@14
    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@16
    .line 1775
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@18
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@1e
    .line 1776
    .local v1, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v1, :cond_1

    #@20
    .line 1777
    invoke-interface {v1, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@23
    .line 1774
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1781
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 1782
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2c
    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    #@2f
    .line 1769
    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1787
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1788
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@6
    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@9
    .line 1790
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 1791
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@13
    move-result v2

    #@14
    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@16
    .line 1792
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@18
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@1e
    .line 1793
    .local v1, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v1, :cond_1

    #@20
    .line 1794
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@23
    .line 1791
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1798
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 1799
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2c
    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    #@2f
    .line 1786
    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1804
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1805
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@6
    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@9
    .line 1807
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 1808
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@13
    move-result v2

    #@14
    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@16
    .line 1809
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@18
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@1e
    .line 1810
    .local v1, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v1, :cond_1

    #@20
    .line 1811
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@23
    .line 1808
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1815
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .end local v2    # "z":I
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 1816
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2c
    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    #@2f
    .line 1803
    :cond_3
    return-void
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 1859
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1860
    .local v0, "childCount":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 1861
    if-eqz p1, :cond_0

    #@9
    .line 1862
    const/4 v2, 0x2

    #@a
    .line 1863
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@12
    .line 1860
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1862
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    #@16
    .restart local v2    # "layerType":I
    goto :goto_1

    #@17
    .line 1858
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
    .line 2487
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@4
    .line 2488
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@6
    .line 2490
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2491
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@f
    .line 2492
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@11
    .line 2486
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
    .line 2668
    if-nez p1, :cond_0

    #@3
    .line 2669
    new-instance p1, Landroid/graphics/Rect;

    #@5
    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    .line 2671
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_1

    #@a
    .line 2672
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@d
    .line 2673
    return-object p1

    #@e
    .line 2675
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@11
    move-result v2

    #@12
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@14
    .line 2676
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    #@17
    move-result v2

    #@18
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@1a
    .line 2677
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@1d
    move-result v2

    #@1e
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@20
    .line 2678
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    #@23
    move-result v2

    #@24
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@26
    .line 2680
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@29
    move-result-object v1

    #@2a
    .line 2681
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
    .line 2682
    check-cast v0, Landroid/view/ViewGroup;

    #@33
    .line 2683
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    #@38
    move-result v3

    #@39
    add-int/2addr v2, v3

    #@3a
    iput v2, p1, Landroid/graphics/Rect;->left:I

    #@3c
    .line 2684
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@3e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    #@41
    move-result v3

    #@42
    add-int/2addr v2, v3

    #@43
    iput v2, p1, Landroid/graphics/Rect;->right:I

    #@45
    .line 2685
    iget v2, p1, Landroid/graphics/Rect;->top:I

    #@47
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    #@4a
    move-result v3

    #@4b
    add-int/2addr v2, v3

    #@4c
    iput v2, p1, Landroid/graphics/Rect;->top:I

    #@4e
    .line 2686
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    #@50
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    #@53
    move-result v3

    #@54
    add-int/2addr v2, v3

    #@55
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    #@57
    .line 2688
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@5a
    move-result-object v1

    #@5b
    goto :goto_0

    #@5c
    .line 2690
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@c
    move-result v1

    #@d
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 15

    #@0
    .prologue
    .line 2196
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@3
    move-result v12

    #@4
    .line 2197
    .local v12, "width":I
    if-lez v12, :cond_3

    #@6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@9
    move-result v13

    #@a
    int-to-float v13, v13

    #@b
    int-to-float v14, v12

    #@c
    div-float v11, v13, v14

    #@e
    .line 2198
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_4

    #@10
    iget v13, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@12
    int-to-float v13, v13

    #@13
    int-to-float v14, v12

    #@14
    div-float v8, v13, v14

    #@16
    .line 2199
    .local v8, "marginOffset":F
    :goto_1
    const/4 v5, -0x1

    #@17
    .line 2200
    .local v5, "lastPos":I
    const/4 v4, 0x0

    #@18
    .line 2201
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    #@19
    .line 2202
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    #@1a
    .line 2204
    .local v0, "first":Z
    const/4 v3, 0x0

    #@1b
    .line 2205
    .local v3, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    #@1c
    .end local v3    # "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v1, "i":I
    :goto_2
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v13

    #@22
    if-ge v1, v13, :cond_7

    #@24
    .line 2206
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2c
    .line 2208
    .local v2, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    #@2e
    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@30
    add-int/lit8 v14, v5, 0x1

    #@32
    if-eq v13, v14, :cond_0

    #@34
    .line 2210
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    #@36
    .line 2211
    add-float v13, v4, v6

    #@38
    add-float/2addr v13, v8

    #@39
    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@3b
    .line 2212
    add-int/lit8 v13, v5, 0x1

    #@3d
    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@3f
    .line 2213
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@41
    iget v14, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@43
    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@46
    move-result v13

    #@47
    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@49
    .line 2214
    add-int/lit8 v1, v1, -0x1

    #@4b
    .line 2216
    :cond_0
    iget v9, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@4d
    .line 2218
    .local v9, "offset":F
    move v7, v9

    #@4e
    .line 2219
    .local v7, "leftBound":F
    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@50
    add-float/2addr v13, v9

    #@51
    add-float v10, v13, v8

    #@53
    .line 2220
    .local v10, "rightBound":F
    if-nez v0, :cond_1

    #@55
    cmpl-float v13, v11, v7

    #@57
    if-ltz v13, :cond_5

    #@59
    .line 2221
    :cond_1
    cmpg-float v13, v11, v10

    #@5b
    if-ltz v13, :cond_2

    #@5d
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v13

    #@63
    add-int/lit8 v13, v13, -0x1

    #@65
    if-ne v1, v13, :cond_6

    #@67
    .line 2222
    :cond_2
    return-object v2

    #@68
    .line 2197
    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v7    # "leftBound":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    .end local v11    # "scrollOffset":F
    :cond_3
    const/4 v11, 0x0

    #@69
    .restart local v11    # "scrollOffset":F
    goto :goto_0

    #@6a
    .line 2198
    :cond_4
    const/4 v8, 0x0

    #@6b
    .restart local v8    # "marginOffset":F
    goto :goto_1

    #@6c
    .line 2225
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    :cond_5
    return-object v3

    #@6d
    .line 2227
    :cond_6
    const/4 v0, 0x0

    #@6e
    .line 2228
    iget v5, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@70
    .line 2229
    move v4, v9

    #@71
    .line 2230
    iget v6, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@73
    .line 2231
    move-object v3, v2

    #@74
    .line 2205
    .local v3, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_2

    #@77
    .line 2234
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v3    # "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_7
    return-object v3
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
    .line 1855
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

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
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@12
    move-result v2

    #@13
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

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
    .line 2472
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@3
    move-result v2

    #@4
    .line 2473
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@7
    move-result v1

    #@8
    .line 2474
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@a
    if-ne v1, v3, :cond_0

    #@c
    .line 2477
    if-nez v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 2478
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@12
    move-result v3

    #@13
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@15
    .line 2479
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@18
    move-result v3

    #@19
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@1b
    .line 2480
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 2481
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    #@24
    .line 2471
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@25
    .line 2477
    :cond_1
    const/4 v0, 0x0

    #@26
    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1669
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v7

    #@7
    if-nez v7, :cond_1

    #@9
    .line 1670
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@b
    .line 1671
    const/4 v7, 0x0

    #@c
    invoke-virtual {p0, v9, v7, v9}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    #@f
    .line 1672
    iget-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@11
    if-nez v7, :cond_0

    #@13
    .line 1673
    new-instance v7, Ljava/lang/IllegalStateException;

    #@15
    .line 1674
    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    #@18
    .line 1673
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v7

    #@1c
    .line 1676
    :cond_0
    return v9

    #@1d
    .line 1678
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    #@20
    move-result-object v1

    #@21
    .line 1679
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@24
    move-result v5

    #@25
    .line 1680
    .local v5, "width":I
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@27
    add-int v6, v5, v7

    #@29
    .line 1681
    .local v6, "widthWithMargin":I
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2b
    int-to-float v7, v7

    #@2c
    int-to-float v8, v5

    #@2d
    div-float v2, v7, v8

    #@2f
    .line 1682
    .local v2, "marginOffset":F
    iget v0, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@31
    .line 1683
    .local v0, "currentPage":I
    int-to-float v7, p1

    #@32
    int-to-float v8, v5

    #@33
    div-float/2addr v7, v8

    #@34
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@36
    sub-float/2addr v7, v8

    #@37
    .line 1684
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@39
    add-float/2addr v8, v2

    #@3a
    .line 1683
    div-float v4, v7, v8

    #@3c
    .line 1685
    .local v4, "pageOffset":F
    int-to-float v7, v6

    #@3d
    mul-float/2addr v7, v4

    #@3e
    float-to-int v3, v7

    #@3f
    .line 1687
    .local v3, "offsetPixels":I
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@41
    .line 1688
    invoke-virtual {p0, v0, v4, v3}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    #@44
    .line 1689
    iget-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@46
    if-nez v7, :cond_2

    #@48
    .line 1690
    new-instance v7, Ljava/lang/IllegalStateException;

    #@4a
    .line 1691
    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    #@4d
    .line 1690
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@50
    throw v7

    #@51
    .line 1693
    :cond_2
    const/4 v7, 0x1

    #@52
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    #@0
    .prologue
    .line 2145
    const/4 v7, 0x0

    #@1
    .line 2147
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    #@3
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@5
    sub-float v2, v14, p1

    #@7
    .line 2148
    .local v2, "deltaX":F
    move/from16 v0, p1

    #@9
    move-object/from16 v1, p0

    #@b
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@d
    .line 2150
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@10
    move-result v14

    #@11
    int-to-float v8, v14

    #@12
    .line 2151
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    #@14
    .line 2152
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@17
    move-result v13

    #@18
    .line 2154
    .local v13, "width":I
    int-to-float v14, v13

    #@19
    move-object/from16 v0, p0

    #@1b
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@1d
    mul-float v6, v14, v15

    #@1f
    .line 2155
    .local v6, "leftBound":F
    int-to-float v14, v13

    #@20
    move-object/from16 v0, p0

    #@22
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@24
    mul-float v11, v14, v15

    #@26
    .line 2156
    .local v11, "rightBound":F
    const/4 v5, 0x1

    #@27
    .line 2157
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    #@28
    .line 2159
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    #@2a
    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2c
    const/4 v15, 0x0

    #@2d
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@33
    .line 2160
    .local v3, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    #@35
    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v15

    #@3f
    add-int/lit8 v15, v15, -0x1

    #@41
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@47
    .line 2161
    .local v4, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@49
    if-eqz v14, :cond_0

    #@4b
    .line 2162
    const/4 v5, 0x0

    #@4c
    .line 2163
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@4e
    int-to-float v15, v13

    #@4f
    mul-float v6, v14, v15

    #@51
    .line 2165
    :cond_0
    iget v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@57
    invoke-virtual {v15}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@5a
    move-result v15

    #@5b
    add-int/lit8 v15, v15, -0x1

    #@5d
    if-eq v14, v15, :cond_1

    #@5f
    .line 2166
    const/4 v10, 0x0

    #@60
    .line 2167
    iget v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@62
    int-to-float v15, v13

    #@63
    mul-float v11, v14, v15

    #@65
    .line 2170
    :cond_1
    cmpg-float v14, v12, v6

    #@67
    if-gez v14, :cond_4

    #@69
    .line 2171
    if-eqz v5, :cond_2

    #@6b
    .line 2172
    sub-float v9, v6, v12

    #@6d
    .line 2173
    .local v9, "over":F
    move-object/from16 v0, p0

    #@6f
    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@71
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@74
    move-result v15

    #@75
    int-to-float v0, v13

    #@76
    move/from16 v16, v0

    #@78
    div-float v15, v15, v16

    #@7a
    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    #@7d
    move-result v7

    #@7e
    .line 2175
    .end local v7    # "needsInvalidate":Z
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    #@7f
    .line 2184
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    #@81
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@83
    float-to-int v15, v12

    #@84
    int-to-float v15, v15

    #@85
    sub-float v15, v12, v15

    #@87
    add-float/2addr v14, v15

    #@88
    move-object/from16 v0, p0

    #@8a
    iput v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@8c
    .line 2185
    float-to-int v14, v12

    #@8d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@90
    move-result v15

    #@91
    move-object/from16 v0, p0

    #@93
    invoke-virtual {v0, v14, v15}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@96
    .line 2186
    float-to-int v14, v12

    #@97
    move-object/from16 v0, p0

    #@99
    invoke-direct {v0, v14}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@9c
    .line 2188
    return v7

    #@9d
    .line 2176
    .restart local v7    # "needsInvalidate":Z
    :cond_4
    cmpl-float v14, v12, v11

    #@9f
    if-lez v14, :cond_3

    #@a1
    .line 2177
    if-eqz v10, :cond_5

    #@a3
    .line 2178
    sub-float v9, v12, v11

    #@a5
    .line 2179
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    #@a7
    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@a9
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@ac
    move-result v15

    #@ad
    int-to-float v0, v13

    #@ae
    move/from16 v16, v0

    #@b0
    div-float v15, v15, v16

    #@b2
    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    #@b5
    move-result v7

    #@b6
    .line 2181
    .end local v7    # "needsInvalidate":Z
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    #@b7
    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    #@0
    .prologue
    .line 1506
    if-lez p2, :cond_0

    #@2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 1523
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@c
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@f
    move-result-object v6

    #@10
    .line 1524
    .local v6, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_3

    #@12
    iget v0, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@14
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@16
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    #@19
    move-result v9

    #@1a
    .line 1526
    .local v9, "scrollOffset":F
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@1d
    move-result v0

    #@1e
    sub-int v0, p1, v0

    #@20
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@23
    move-result v2

    #@24
    sub-int/2addr v0, v2

    #@25
    int-to-float v0, v0

    #@26
    .line 1525
    mul-float/2addr v0, v9

    #@27
    float-to-int v10, v0

    #@28
    .line 1527
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@2b
    move-result v0

    #@2c
    if-eq v10, v0, :cond_1

    #@2e
    .line 1528
    const/4 v0, 0x0

    #@2f
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@32
    .line 1529
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@35
    move-result v0

    #@36
    invoke-virtual {p0, v10, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@39
    .line 1505
    .end local v6    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_1
    :goto_1
    return-void

    #@3a
    .line 1507
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@3d
    move-result v0

    #@3e
    sub-int v0, p1, v0

    #@40
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@43
    move-result v2

    #@44
    sub-int/2addr v0, v2

    #@45
    add-int v12, v0, p3

    #@47
    .line 1508
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@4a
    move-result v0

    #@4b
    sub-int v0, p2, v0

    #@4d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@50
    move-result v2

    #@51
    sub-int/2addr v0, v2

    #@52
    add-int v7, v0, p4

    #@54
    .line 1510
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@57
    move-result v13

    #@58
    .line 1511
    .local v13, "xpos":I
    int-to-float v0, v13

    #@59
    int-to-float v2, v7

    #@5a
    div-float v8, v0, v2

    #@5c
    .line 1512
    .local v8, "pageOffset":F
    int-to-float v0, v12

    #@5d
    mul-float/2addr v0, v8

    #@5e
    float-to-int v1, v0

    #@5f
    .line 1514
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@62
    move-result v0

    #@63
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@66
    .line 1515
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@68
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@6b
    move-result v0

    #@6c
    if-nez v0, :cond_1

    #@6e
    .line 1517
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@70
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    #@73
    move-result v0

    #@74
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@76
    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    #@79
    move-result v2

    #@7a
    sub-int v5, v0, v2

    #@7c
    .line 1518
    .local v5, "newDuration":I
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7e
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@81
    move-result-object v11

    #@82
    .line 1519
    .local v11, "targetInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@84
    .line 1520
    iget v2, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@86
    int-to-float v3, p1

    #@87
    mul-float/2addr v2, v3

    #@88
    float-to-int v3, v2

    #@89
    .line 1519
    const/4 v2, 0x0

    #@8a
    .line 1520
    const/4 v4, 0x0

    #@8b
    .line 1519
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@8e
    goto :goto_1

    #@8f
    .line 1524
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    .restart local v6    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
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
    .line 459
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 460
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 461
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@11
    .line 462
    .local v2, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@13
    if-nez v3, :cond_0

    #@15
    .line 463
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    #@18
    .line 464
    add-int/lit8 v1, v1, -0x1

    #@1a
    .line 459
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 458
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    #@0
    .prologue
    .line 2138
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 2139
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    #@6
    .line 2140
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@9
    .line 2137
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 559
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@4
    move-result-object v0

    #@5
    .line 560
    .local v0, "curInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    #@6
    .line 561
    .local v1, "destX":I
    if-eqz v0, :cond_0

    #@8
    .line 562
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@b
    move-result v2

    #@c
    .line 563
    .local v2, "width":I
    int-to-float v3, v2

    #@d
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@f
    .line 564
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@11
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@13
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    #@16
    move-result v5

    #@17
    .line 563
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@1a
    move-result v4

    #@1b
    mul-float/2addr v3, v4

    #@1c
    float-to-int v1, v3

    #@1d
    .line 566
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_2

    #@1f
    .line 567
    invoke-virtual {p0, v1, v7, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    #@22
    .line 568
    if-eqz p4, :cond_1

    #@24
    .line 569
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    #@27
    .line 558
    :cond_1
    :goto_0
    return-void

    #@28
    .line 572
    :cond_2
    if-eqz p4, :cond_3

    #@2a
    .line 573
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    #@2d
    .line 575
    :cond_3
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@30
    .line 576
    invoke-virtual {p0, v1, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@33
    .line 577
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@36
    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 395
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    .line 396
    return-void

    #@6
    .line 399
    :cond_0
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@8
    .line 400
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 402
    if-eqz p1, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    #@12
    .line 404
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnScrollStateChanged(I)V

    #@15
    .line 394
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2497
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2498
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    #@6
    .line 2496
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    #@0
    .prologue
    .line 1144
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 1145
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@6
    if-nez v3, :cond_0

    #@8
    .line 1146
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@f
    .line 1150
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@12
    move-result v1

    #@13
    .line 1151
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    #@16
    .line 1152
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 1153
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 1151
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_1

    #@22
    .line 1148
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@27
    goto :goto_0

    #@28
    .line 1155
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    #@2a
    sget-object v4, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    #@2c
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@2f
    .line 1143
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
    .line 2714
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    .line 2716
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    #@7
    move-result v1

    #@8
    .line 2718
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    #@a
    if-eq v1, v5, :cond_1

    #@c
    .line 2719
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@10
    move-result v5

    #@11
    if-ge v3, v5, :cond_1

    #@13
    .line 2720
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 2721
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 2722
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@20
    move-result-object v4

    #@21
    .line 2723
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    #@23
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@25
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@27
    if-ne v5, v6, :cond_0

    #@29
    .line 2724
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@2c
    .line 2719
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2735
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    #@31
    if-ne v1, v5, :cond_2

    #@33
    .line 2737
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v5

    #@37
    if-ne v2, v5, :cond_5

    #@39
    .line 2740
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_3

    #@3f
    .line 2741
    return-void

    #@40
    .line 2743
    :cond_3
    and-int/lit8 v5, p3, 0x1

    #@42
    const/4 v6, 0x1

    #@43
    if-ne v5, v6, :cond_4

    #@45
    .line 2744
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    #@48
    move-result v5

    #@49
    .line 2743
    if-eqz v5, :cond_4

    #@4b
    .line 2744
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_6

    #@51
    .line 2747
    :cond_4
    if-eqz p1, :cond_5

    #@53
    .line 2748
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 2713
    :cond_5
    return-void

    #@57
    .line 2745
    :cond_6
    return-void
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 868
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    #@5
    .line 869
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@7
    .line 870
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@9
    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@f
    .line 871
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@11
    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@17
    .line 872
    if-ltz p2, :cond_0

    #@19
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    if-lt p2, v1, :cond_1

    #@21
    .line 873
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 877
    :goto_0
    return-object v0

    #@27
    .line 875
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@2c
    goto :goto_0
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 607
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@b
    .line 609
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 605
    return-void
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
    .line 2761
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@4
    move-result v3

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 2762
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 2763
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 2764
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@14
    move-result-object v2

    #@15
    .line 2765
    .local v2, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    #@17
    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@19
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    .line 2766
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    #@20
    .line 2761
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2757
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
    .line 1330
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1331
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p3

    #@a
    :cond_0
    move-object v0, p3

    #@b
    .line 1333
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@d
    .line 1334
    .local v0, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@f
    instance-of v2, p1, Landroid/support/v4/view/ViewPager$Decor;

    #@11
    or-int/2addr v1, v2

    #@12
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@14
    .line 1335
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 1336
    if-eqz v0, :cond_1

    #@1a
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1337
    new-instance v1, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v2, "Cannot add pager decor view during layout"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 1339
    :cond_1
    const/4 v1, 0x1

    #@28
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #@2a
    .line 1340
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@2d
    .line 1329
    :goto_0
    return-void

    #@2e
    .line 1342
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
    .line 2602
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    #@7
    move-result-object v1

    #@8
    .line 2603
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    #@a
    .line 2604
    const/4 v1, 0x0

    #@b
    .line 2628
    .end local v1    # "currentFocused":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    #@c
    .line 2630
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@13
    move-result-object v4

    #@14
    .line 2632
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    #@16
    if-eq v4, v1, :cond_a

    #@18
    .line 2633
    if-ne p1, v11, :cond_8

    #@1a
    .line 2636
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@1c
    invoke-direct {p0, v8, v4}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@1f
    move-result-object v8

    #@20
    iget v5, v8, Landroid/graphics/Rect;->left:I

    #@22
    .line 2637
    .local v5, "nextLeft":I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@24
    invoke-direct {p0, v8, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@27
    move-result-object v8

    #@28
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@2a
    .line 2638
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    #@2c
    if-lt v5, v0, :cond_7

    #@2e
    .line 2639
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    #@31
    move-result v2

    #@32
    .line 2661
    .end local v0    # "currLeft":I
    .end local v2    # "handled":Z
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    #@34
    .line 2662
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    #@37
    move-result v8

    #@38
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    #@3b
    .line 2664
    :cond_2
    return v2

    #@3c
    .line 2605
    .end local v4    # "nextFocused":Landroid/view/View;
    .restart local v1    # "currentFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    #@3e
    .line 2606
    const/4 v3, 0x0

    #@3f
    .line 2607
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
    .line 2609
    if-ne v6, p0, :cond_5

    #@49
    .line 2610
    const/4 v3, 0x1

    #@4a
    .line 2614
    :cond_4
    if-nez v3, :cond_0

    #@4c
    .line 2616
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    .line 2617
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 2618
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5f
    move-result-object v6

    #@60
    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    #@62
    if-eqz v8, :cond_6

    #@64
    .line 2620
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
    .line 2619
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@79
    move-result-object v6

    #@7a
    goto :goto_3

    #@7b
    .line 2608
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@7e
    move-result-object v6

    #@7f
    goto :goto_2

    #@80
    .line 2622
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
    .line 2623
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v10

    #@93
    .line 2622
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
    .line 2624
    const/4 v1, 0x0

    #@9f
    .local v1, "currentFocused":Landroid/view/View;
    goto/16 :goto_0

    #@a1
    .line 2641
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
    .line 2643
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_8
    if-ne p1, v12, :cond_1

    #@a8
    .line 2646
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@aa
    invoke-direct {p0, v8, v4}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@ad
    move-result-object v8

    #@ae
    iget v5, v8, Landroid/graphics/Rect;->left:I

    #@b0
    .line 2647
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    #@b2
    invoke-direct {p0, v8, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    #@b5
    move-result-object v8

    #@b6
    iget v0, v8, Landroid/graphics/Rect;->left:I

    #@b8
    .line 2648
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    #@ba
    if-gt v5, v0, :cond_9

    #@bc
    .line 2649
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    #@bf
    move-result v2

    #@c0
    .local v2, "handled":Z
    goto/16 :goto_1

    #@c2
    .line 2651
    .local v2, "handled":Z
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    #@c5
    move-result v2

    #@c6
    .local v2, "handled":Z
    goto/16 :goto_1

    #@c8
    .line 2654
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
    .line 2656
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    #@d0
    move-result v2

    #@d1
    .local v2, "handled":Z
    goto/16 :goto_1

    #@d3
    .line 2657
    .local v2, "handled":Z
    :cond_c
    if-eq p1, v12, :cond_d

    #@d5
    const/4 v8, 0x2

    #@d6
    if-ne p1, v8, :cond_1

    #@d8
    .line 2659
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    #@db
    move-result v2

    #@dc
    .local v2, "handled":Z
    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 2361
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 2362
    return v4

    #@8
    .line 2364
    :cond_0
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@a
    .line 2365
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@d
    .line 2366
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@f
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@11
    .line 2367
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@13
    if-nez v2, :cond_1

    #@15
    .line 2368
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    .line 2372
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1e
    move-result-wide v0

    #@1f
    .local v0, "time":J
    move-wide v2, v0

    #@20
    move v6, v5

    #@21
    move v7, v4

    #@22
    .line 2373
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@25
    move-result-object v8

    #@26
    .line 2374
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@28
    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@2b
    .line 2375
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@2e
    .line 2376
    iput-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    #@30
    .line 2377
    return v9

    #@31
    .line 2370
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@33
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    #@36
    goto :goto_0
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
    .line 2539
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v7, p1

    #@5
    .line 2540
    check-cast v7, Landroid/view/ViewGroup;

    #@7
    .line 2541
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v9

    #@b
    .line 2542
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v10

    #@f
    .line 2543
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v6

    #@13
    .line 2545
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    #@15
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@17
    .line 2548
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    .line 2549
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
    .line 2550
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
    .line 2551
    add-int v0, p4, v9

    #@3d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@40
    move-result v2

    #@41
    sub-int v4, v0, v2

    #@43
    .line 2552
    add-int v0, p5, v10

    #@45
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@48
    move-result v2

    #@49
    sub-int v5, v0, v2

    #@4b
    .line 2551
    const/4 v2, 0x1

    #@4c
    move-object v0, p0

    #@4d
    move v3, p3

    #@4e
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@51
    move-result v0

    #@52
    .line 2549
    if-eqz v0, :cond_0

    #@54
    .line 2553
    const/4 v0, 0x1

    #@55
    return v0

    #@56
    .line 2545
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@58
    goto :goto_0

    #@59
    .line 2558
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
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

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
    .line 2512
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 2513
    return v3

    #@7
    .line 2516
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@a
    move-result v1

    #@b
    .line 2517
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@e
    move-result v0

    #@f
    .line 2518
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    #@11
    .line 2519
    int-to-float v4, v1

    #@12
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

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
    .line 2520
    :cond_2
    if-lez p1, :cond_4

    #@1d
    .line 2521
    int-to-float v4, v1

    #@1e
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

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
    .line 2523
    :cond_4
    return v3
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2840
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

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

.method public clearOnPageChangeListeners()V
    .locals 1

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 629
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@9
    .line 627
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 5

    #@0
    .prologue
    .line 1645
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@2
    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_2

    #@8
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@a
    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_2

    #@10
    .line 1646
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@13
    move-result v0

    #@14
    .line 1647
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@17
    move-result v1

    #@18
    .line 1648
    .local v1, "oldY":I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    #@1d
    move-result v2

    #@1e
    .line 1649
    .local v2, "x":I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@20
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    #@23
    move-result v3

    #@24
    .line 1651
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    #@26
    if-eq v1, v3, :cond_1

    #@28
    .line 1652
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@2b
    .line 1653
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_1

    #@31
    .line 1654
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@33
    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    #@36
    .line 1655
    const/4 v4, 0x0

    #@37
    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@3a
    .line 1660
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@3d
    .line 1661
    return-void

    #@3e
    .line 1665
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v4, 0x1

    #@3f
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@42
    .line 1644
    return-void
.end method

.method dataSetChanged()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 883
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@3
    invoke-virtual {v10}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@6
    move-result v0

    #@7
    .line 884
    .local v0, "adapterCount":I
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@9
    .line 885
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v10

    #@f
    iget v11, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@11
    mul-int/lit8 v11, v11, 0x2

    #@13
    add-int/lit8 v11, v11, 0x1

    #@15
    if-ge v10, v11, :cond_2

    #@17
    .line 886
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v10

    #@1d
    if-ge v10, v0, :cond_1

    #@1f
    const/4 v7, 0x1

    #@20
    .line 887
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@22
    .line 889
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    #@23
    .line 890
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    #@24
    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v10

    #@2a
    if-ge v3, v10, :cond_7

    #@2c
    .line 891
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@34
    .line 892
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@36
    iget-object v11, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@38
    invoke-virtual {v10, v11}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    #@3b
    move-result v9

    #@3c
    .line 894
    .local v9, "newPos":I
    const/4 v10, -0x1

    #@3d
    if-ne v9, v10, :cond_3

    #@3f
    .line 890
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_1

    #@42
    .line 886
    .end local v3    # "i":I
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
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
    .line 885
    .end local v7    # "needPopulate":Z
    :cond_2
    const/4 v7, 0x0

    #@45
    .restart local v7    # "needPopulate":Z
    goto :goto_0

    #@46
    .line 898
    .restart local v3    # "i":I
    .restart local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_3
    const/4 v10, -0x2

    #@47
    if-ne v9, v10, :cond_5

    #@49
    .line 899
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4e
    .line 900
    add-int/lit8 v3, v3, -0x1

    #@50
    .line 902
    if-nez v5, :cond_4

    #@52
    .line 903
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@54
    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@57
    .line 904
    const/4 v5, 0x1

    #@58
    .line 907
    :cond_4
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5a
    iget v11, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@5c
    iget-object v12, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@5e
    invoke-virtual {v10, p0, v11, v12}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@61
    .line 908
    const/4 v7, 0x1

    #@62
    .line 910
    iget v10, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@64
    iget v11, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@66
    if-ne v10, v11, :cond_0

    #@68
    .line 912
    iget v10, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

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
    .line 913
    const/4 v7, 0x1

    #@75
    goto :goto_2

    #@76
    .line 918
    :cond_5
    iget v10, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@78
    if-eq v10, v9, :cond_0

    #@7a
    .line 919
    iget v10, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@7c
    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7e
    if-ne v10, v11, :cond_6

    #@80
    .line 921
    move v8, v9

    #@81
    .line 924
    :cond_6
    iput v9, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@83
    .line 925
    const/4 v7, 0x1

    #@84
    goto :goto_2

    #@85
    .line 929
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_7
    if-eqz v5, :cond_8

    #@87
    .line 930
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@89
    invoke-virtual {v10, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@8c
    .line 933
    :cond_8
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@8e
    sget-object v11, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    #@90
    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@93
    .line 935
    if-eqz v7, :cond_b

    #@95
    .line 937
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@98
    move-result v2

    #@99
    .line 938
    .local v2, "childCount":I
    const/4 v3, 0x0

    #@9a
    :goto_3
    if-ge v3, v2, :cond_a

    #@9c
    .line 939
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@9f
    move-result-object v1

    #@a0
    .line 940
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a3
    move-result-object v6

    #@a4
    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@a6
    .line 941
    .local v6, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v10, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@a8
    if-nez v10, :cond_9

    #@aa
    .line 942
    const/4 v10, 0x0

    #@ab
    iput v10, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@ad
    .line 938
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@af
    goto :goto_3

    #@b0
    .line 946
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_a
    const/4 v10, 0x1

    #@b1
    invoke-virtual {p0, v8, v13, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@b4
    .line 947
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@b7
    .line 880
    .end local v2    # "childCount":I
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2564
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2808
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@4
    move-result v4

    #@5
    const/16 v5, 0x1000

    #@7
    if-ne v4, v5, :cond_0

    #@9
    .line 2809
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@c
    move-result v4

    #@d
    return v4

    #@e
    .line 2813
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@11
    move-result v1

    #@12
    .line 2814
    .local v1, "childCount":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@15
    .line 2815
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 2816
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 2817
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@22
    move-result-object v3

    #@23
    .line 2818
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_1

    #@25
    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@27
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@29
    if-ne v4, v5, :cond_1

    #@2b
    .line 2819
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    #@2e
    move-result v4

    #@2f
    .line 2818
    if-eqz v4, :cond_1

    #@31
    .line 2820
    const/4 v4, 0x1

    #@32
    return v4

    #@33
    .line 2814
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 2825
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v6
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    #@0
    .prologue
    .line 804
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    sub-float/2addr p1, v0

    #@3
    .line 805
    float-to-double v0, p1

    #@4
    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    #@9
    mul-double/2addr v0, v2

    #@a
    double-to-float p1, v0

    #@b
    .line 806
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
    .line 2259
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@4
    .line 2260
    const/4 v1, 0x0

    #@5
    .line 2262
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    #@8
    move-result v2

    #@9
    .line 2263
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    #@b
    .line 2264
    if-ne v2, v6, :cond_4

    #@d
    .line 2265
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@f
    if-eqz v5, :cond_4

    #@11
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@13
    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@16
    move-result v5

    #@17
    if-le v5, v6, :cond_4

    #@19
    .line 2266
    :cond_0
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@1b
    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@1e
    move-result v5

    #@1f
    if-nez v5, :cond_1

    #@21
    .line 2267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@24
    move-result v3

    #@25
    .line 2268
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    #@28
    move-result v5

    #@29
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@2c
    move-result v6

    #@2d
    sub-int/2addr v5, v6

    #@2e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@31
    move-result v6

    #@32
    sub-int v0, v5, v6

    #@34
    .line 2269
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@37
    move-result v4

    #@38
    .line 2271
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    #@3a
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    #@3d
    .line 2272
    neg-int v5, v0

    #@3e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@41
    move-result v6

    #@42
    add-int/2addr v5, v6

    #@43
    int-to-float v5, v5

    #@44
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@46
    int-to-float v7, v4

    #@47
    mul-float/2addr v6, v7

    #@48
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    .line 2273
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@4d
    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    #@50
    .line 2274
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@52
    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    #@55
    move-result v1

    #@56
    .line 2275
    .local v1, "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@59
    .line 2277
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@5b
    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    #@5e
    move-result v5

    #@5f
    if-nez v5, :cond_2

    #@61
    .line 2278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@64
    move-result v3

    #@65
    .line 2279
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@68
    move-result v4

    #@69
    .line 2280
    .restart local v4    # "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    #@6c
    move-result v5

    #@6d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@70
    move-result v6

    #@71
    sub-int/2addr v5, v6

    #@72
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@75
    move-result v6

    #@76
    sub-int v0, v5, v6

    #@78
    .line 2282
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    #@7a
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    #@7d
    .line 2283
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@80
    move-result v5

    #@81
    neg-int v5, v5

    #@82
    int-to-float v5, v5

    #@83
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

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
    .line 2284
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@90
    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    #@93
    .line 2285
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@95
    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    #@98
    move-result v5

    #@99
    or-int/2addr v1, v5

    #@9a
    .line 2286
    .restart local v1    # "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@9d
    .line 2293
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    #@9f
    .line 2295
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@a2
    .line 2258
    :cond_3
    return-void

    #@a3
    .line 2289
    .local v1, "needsInvalidate":Z
    :cond_4
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@a5
    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    #@a8
    .line 2290
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@aa
    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    #@ad
    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 792
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    #@3
    .line 793
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 794
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 795
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    .line 791
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 2387
    iget-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@3
    if-nez v9, :cond_0

    #@5
    .line 2388
    new-instance v9, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v10, "No fake drag in progress. Call beginFakeDrag first."

    #@a
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v9

    #@e
    .line 2391
    :cond_0
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@10
    .line 2392
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #@12
    int-to-float v9, v9

    #@13
    const/16 v10, 0x3e8

    #@15
    invoke-virtual {v7, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@18
    .line 2394
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@1a
    .line 2393
    invoke-static {v7, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@1d
    move-result v9

    #@1e
    float-to-int v2, v9

    #@1f
    .line 2395
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@21
    .line 2396
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@24
    move-result v8

    #@25
    .line 2397
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@28
    move-result v5

    #@29
    .line 2398
    .local v5, "scrollX":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2c
    move-result-object v1

    #@2d
    .line 2399
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v0, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2f
    .line 2400
    .local v0, "currentPage":I
    int-to-float v9, v5

    #@30
    int-to-float v10, v8

    #@31
    div-float/2addr v9, v10

    #@32
    iget v10, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@34
    sub-float/2addr v9, v10

    #@35
    iget v10, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@37
    div-float v4, v9, v10

    #@39
    .line 2401
    .local v4, "pageOffset":F
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@3b
    iget v10, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@3d
    sub-float/2addr v9, v10

    #@3e
    float-to-int v6, v9

    #@3f
    .line 2402
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    #@42
    move-result v3

    #@43
    .line 2404
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    #@46
    .line 2405
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    #@49
    .line 2407
    const/4 v9, 0x0

    #@4a
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@4c
    .line 2386
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2576
    const/4 v0, 0x0

    #@2
    .line 2577
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 2578
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@b
    move-result v1

    #@c
    sparse-switch v1, :sswitch_data_0

    #@f
    .line 2598
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    #@10
    .line 2580
    .restart local v0    # "handled":Z
    :sswitch_0
    const/16 v1, 0x11

    #@12
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@15
    move-result v0

    #@16
    .local v0, "handled":Z
    goto :goto_0

    #@17
    .line 2583
    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    #@19
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@1c
    move-result v0

    #@1d
    .local v0, "handled":Z
    goto :goto_0

    #@1e
    .line 2586
    .local v0, "handled":Z
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@20
    const/16 v2, 0xb

    #@22
    if-lt v1, v2, :cond_0

    #@24
    .line 2589
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 2590
    const/4 v1, 0x2

    #@2b
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@2e
    move-result v0

    #@2f
    .local v0, "handled":Z
    goto :goto_0

    #@30
    .line 2591
    .local v0, "handled":Z
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 2592
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    #@39
    move-result v0

    #@3a
    .local v0, "handled":Z
    goto :goto_0

    #@3b
    .line 2578
    nop

    #@3c
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    #@0
    .prologue
    .line 2418
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2419
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "No fake drag in progress. Call beginFakeDrag first."

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 2422
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@13
    add-float v2, v2, p1

    #@15
    move-object/from16 v0, p0

    #@17
    iput v2, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@19
    .line 2424
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@1c
    move-result v2

    #@1d
    int-to-float v14, v2

    #@1e
    .line 2425
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    #@20
    .line 2426
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@23
    move-result v17

    #@24
    .line 2428
    .local v17, "width":I
    move/from16 v0, v17

    #@26
    int-to-float v2, v0

    #@27
    move-object/from16 v0, p0

    #@29
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    #@2b
    mul-float v13, v2, v3

    #@2d
    .line 2429
    .local v13, "leftBound":F
    move/from16 v0, v17

    #@2f
    int-to-float v2, v0

    #@30
    move-object/from16 v0, p0

    #@32
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    #@34
    mul-float v15, v2, v3

    #@36
    .line 2431
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3a
    const/4 v3, 0x0

    #@3b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v11

    #@3f
    check-cast v11, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@41
    .line 2432
    .local v11, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v3

    #@4d
    add-int/lit8 v3, v3, -0x1

    #@4f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v12

    #@53
    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@55
    .line 2433
    .local v12, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v2, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@57
    if-eqz v2, :cond_1

    #@59
    .line 2434
    iget v2, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@5b
    move/from16 v0, v17

    #@5d
    int-to-float v3, v0

    #@5e
    mul-float v13, v2, v3

    #@60
    .line 2436
    :cond_1
    iget v2, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@66
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@69
    move-result v3

    #@6a
    add-int/lit8 v3, v3, -0x1

    #@6c
    if-eq v2, v3, :cond_2

    #@6e
    .line 2437
    iget v2, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@70
    move/from16 v0, v17

    #@72
    int-to-float v3, v0

    #@73
    mul-float v15, v2, v3

    #@75
    .line 2440
    :cond_2
    cmpg-float v2, v16, v13

    #@77
    if-gez v2, :cond_4

    #@79
    .line 2441
    move/from16 v16, v13

    #@7b
    .line 2446
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    #@7d
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@7f
    move/from16 v0, v16

    #@81
    float-to-int v3, v0

    #@82
    int-to-float v3, v3

    #@83
    sub-float v3, v16, v3

    #@85
    add-float/2addr v2, v3

    #@86
    move-object/from16 v0, p0

    #@88
    iput v2, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@8a
    .line 2447
    move/from16 v0, v16

    #@8c
    float-to-int v2, v0

    #@8d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@90
    move-result v3

    #@91
    move-object/from16 v0, p0

    #@93
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@96
    .line 2448
    move/from16 v0, v16

    #@98
    float-to-int v2, v0

    #@99
    move-object/from16 v0, p0

    #@9b
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    #@9e
    .line 2451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a1
    move-result-wide v4

    #@a2
    .line 2452
    .local v4, "time":J
    move-object/from16 v0, p0

    #@a4
    iget-wide v2, v0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    #@a6
    .line 2453
    move-object/from16 v0, p0

    #@a8
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@aa
    const/4 v8, 0x0

    #@ab
    .line 2452
    const/4 v6, 0x2

    #@ac
    .line 2453
    const/4 v9, 0x0

    #@ad
    .line 2452
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@b0
    move-result-object v10

    #@b1
    .line 2454
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b5
    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@b8
    .line 2455
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    #@bb
    .line 2417
    return-void

    #@bc
    .line 2442
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    #@be
    if-lez v2, :cond_3

    #@c0
    .line 2443
    move/from16 v16, v15

    #@c2
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 2830
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2845
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 2835
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@2
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 680
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@2
    const/4 v3, 0x2

    #@3
    if-ne v2, v3, :cond_0

    #@5
    add-int/lit8 v2, p1, -0x1

    #@7
    sub-int v0, v2, p2

    #@9
    .line 681
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

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
    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@17
    iget v1, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    #@19
    .line 682
    .local v1, "result":I
    return v1

    #@1a
    .line 680
    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    #@1b
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    #@0
    .prologue
    .line 510
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2
    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    #@0
    .prologue
    .line 705
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2
    return v0
.end method

.method public getPageMargin()I
    .locals 1

    #@0
    .prologue
    .line 761
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2
    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1375
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@4
    move-result-object v0

    #@5
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    #@7
    .line 1376
    if-eqz v0, :cond_0

    #@9
    instance-of v1, v0, Landroid/view/View;

    #@b
    if-eqz v1, :cond_0

    #@d
    move-object p1, v0

    #@e
    .line 1379
    check-cast p1, Landroid/view/View;

    #@10
    goto :goto_0

    #@11
    .line 1377
    :cond_0
    return-object v2

    #@12
    .line 1381
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1364
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 1365
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@11
    .line 1366
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@13
    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@15
    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 1367
    return-object v1

    #@1c
    .line 1364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1370
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1385
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 1386
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@11
    .line 1387
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@13
    if-ne v2, p1, :cond_0

    #@15
    .line 1388
    return-object v1

    #@16
    .line 1385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1391
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method initViewPager()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 361
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    #@5
    .line 362
    const/high16 v3, 0x40000

    #@7
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    #@a
    .line 363
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    #@d
    .line 364
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    .line 365
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    #@13
    sget-object v4, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    #@15
    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@18
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@1a
    .line 366
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v0

    #@1e
    .line 367
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@25
    move-result-object v3

    #@26
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    #@28
    .line 369
    .local v2, "density":F
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    #@2b
    move-result v3

    #@2c
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@2e
    .line 370
    const/high16 v3, 0x43c80000    # 400.0f

    #@30
    mul-float/2addr v3, v2

    #@31
    float-to-int v3, v3

    #@32
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    #@34
    .line 371
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@37
    move-result v3

    #@38
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #@3a
    .line 372
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    #@3c
    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #@3f
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@41
    .line 373
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    #@43
    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    #@46
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@48
    .line 375
    const/high16 v3, 0x41c80000    # 25.0f

    #@4a
    mul-float/2addr v3, v2

    #@4b
    float-to-int v3, v3

    #@4c
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    #@4e
    .line 376
    const/high16 v3, 0x40000000    # 2.0f

    #@50
    mul-float/2addr v3, v2

    #@51
    float-to-int v3, v3

    #@52
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    #@54
    .line 377
    const/high16 v3, 0x41800000    # 16.0f

    #@56
    mul-float/2addr v3, v2

    #@57
    float-to-int v3, v3

    #@58
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    #@5a
    .line 379
    new-instance v3, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    #@5c
    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    #@5f
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@62
    .line 381
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_0

    #@68
    .line 383
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@6b
    .line 360
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    #@0
    .prologue
    .line 2468
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 1396
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 1397
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@6
    .line 1395
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5
    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@8
    .line 389
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 2301
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 2304
    move-object/from16 v0, p0

    #@5
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@7
    if-lez v13, :cond_2

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v13, :cond_2

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v13

    #@17
    if-lez v13, :cond_2

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@1d
    if-eqz v13, :cond_2

    #@1f
    .line 2305
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@22
    move-result v10

    #@23
    .line 2306
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@26
    move-result v11

    #@27
    .line 2308
    .local v11, "width":I
    move-object/from16 v0, p0

    #@29
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2b
    int-to-float v13, v13

    #@2c
    int-to-float v14, v11

    #@2d
    div-float v7, v13, v14

    #@2f
    .line 2309
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    #@30
    .line 2310
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    #@32
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@34
    const/4 v14, 0x0

    #@35
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3b
    .line 2311
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v8, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@3d
    .line 2312
    .local v8, "offset":F
    move-object/from16 v0, p0

    #@3f
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v4

    #@45
    .line 2313
    .local v4, "itemCount":I
    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@47
    .line 2314
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    #@49
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@4b
    add-int/lit8 v14, v4, -0x1

    #@4d
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v13

    #@51
    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@53
    iget v6, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@55
    .line 2315
    .local v6, "lastPos":I
    move v9, v2

    #@56
    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    #@58
    .line 2316
    :goto_1
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@5a
    if-le v9, v13, :cond_0

    #@5c
    if-ge v5, v4, :cond_0

    #@5e
    .line 2317
    move-object/from16 v0, p0

    #@60
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@62
    add-int/lit8 v5, v5, 0x1

    #@64
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@6a
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_1

    #@6b
    .line 2321
    :cond_0
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@6d
    if-ne v9, v13, :cond_3

    #@6f
    .line 2322
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@71
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@73
    add-float/2addr v13, v14

    #@74
    int-to-float v14, v11

    #@75
    mul-float v1, v13, v14

    #@77
    .line 2323
    .local v1, "drawAt":F
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@79
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@7b
    add-float/2addr v13, v14

    #@7c
    add-float v8, v13, v7

    #@7e
    .line 2330
    :goto_2
    move-object/from16 v0, p0

    #@80
    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@82
    int-to-float v13, v13

    #@83
    add-float/2addr v13, v1

    #@84
    int-to-float v14, v10

    #@85
    cmpl-float v13, v13, v14

    #@87
    if-lez v13, :cond_1

    #@89
    .line 2331
    move-object/from16 v0, p0

    #@8b
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@8d
    float-to-int v14, v1

    #@8e
    move-object/from16 v0, p0

    #@90
    iget v15, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    #@92
    .line 2332
    move-object/from16 v0, p0

    #@94
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@96
    move/from16 v16, v0

    #@98
    move/from16 v0, v16

    #@9a
    int-to-float v0, v0

    #@9b
    move/from16 v16, v0

    #@9d
    add-float v16, v16, v1

    #@9f
    const/high16 v17, 0x3f000000    # 0.5f

    #@a1
    add-float v16, v16, v17

    #@a3
    move/from16 v0, v16

    #@a5
    float-to-int v0, v0

    #@a6
    move/from16 v16, v0

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    #@ac
    move/from16 v17, v0

    #@ae
    .line 2331
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@b1
    .line 2333
    move-object/from16 v0, p0

    #@b3
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@b5
    move-object/from16 v0, p1

    #@b7
    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@ba
    .line 2336
    :cond_1
    add-int v13, v10, v11

    #@bc
    int-to-float v13, v13

    #@bd
    cmpl-float v13, v1, v13

    #@bf
    if-lez v13, :cond_4

    #@c1
    .line 2300
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    #@c2
    .line 2325
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    #@c4
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@c6
    invoke-virtual {v13, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@c9
    move-result v12

    #@ca
    .line 2326
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    #@cc
    int-to-float v14, v11

    #@cd
    mul-float v1, v13, v14

    #@cf
    .line 2327
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    #@d1
    add-float/2addr v8, v13

    #@d2
    goto :goto_2

    #@d3
    .line 2315
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@d5
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v6, v0, 0xff

    #@6
    .line 1878
    .local v6, "action":I
    const/4 v0, 0x3

    #@7
    if-eq v6, v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    if-ne v6, v0, :cond_2

    #@c
    .line 1881
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@f
    .line 1882
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@12
    .line 1883
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@15
    .line 1884
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 1885
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@1e
    .line 1886
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@21
    .line 1888
    :cond_1
    const/4 v0, 0x0

    #@22
    return v0

    #@23
    .line 1893
    :cond_2
    if-eqz v6, :cond_4

    #@25
    .line 1894
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 1896
    const/4 v0, 0x1

    #@2a
    return v0

    #@2b
    .line 1898
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@2d
    if-eqz v0, :cond_4

    #@2f
    .line 1900
    const/4 v0, 0x0

    #@30
    return v0

    #@31
    .line 1904
    :cond_4
    sparse-switch v6, :sswitch_data_0

    #@34
    .line 1999
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@36
    if-nez v0, :cond_6

    #@38
    .line 2000
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3e
    .line 2002
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@40
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@43
    .line 2008
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@45
    return v0

    #@46
    .line 1915
    :sswitch_0
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@48
    .line 1916
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    #@49
    if-eq v7, v0, :cond_5

    #@4b
    .line 1921
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@4e
    move-result v9

    #@4f
    .line 1922
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@52
    move-result v10

    #@53
    .line 1923
    .local v10, "x":F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@55
    sub-float v8, v10, v0

    #@57
    .line 1924
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    #@5a
    move-result v11

    #@5b
    .line 1925
    .local v11, "xDiff":F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@5e
    move-result v12

    #@5f
    .line 1926
    .local v12, "y":F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    #@61
    sub-float v0, v12, v0

    #@63
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@66
    move-result v13

    #@67
    .line 1929
    .local v13, "yDiff":F
    const/4 v0, 0x0

    #@68
    cmpl-float v0, v8, v0

    #@6a
    if-eqz v0, :cond_7

    #@6c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@6e
    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_9

    #@74
    .line 1937
    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

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
    .line 1939
    const/4 v0, 0x1

    #@83
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@85
    .line 1940
    const/4 v0, 0x1

    #@86
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@89
    .line 1941
    const/4 v0, 0x1

    #@8a
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@8d
    .line 1942
    const/4 v0, 0x0

    #@8e
    cmpl-float v0, v8, v0

    #@90
    if-lez v0, :cond_a

    #@92
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@94
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@96
    int-to-float v1, v1

    #@97
    add-float/2addr v0, v1

    #@98
    :goto_1
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@9a
    .line 1944
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@9c
    .line 1945
    const/4 v0, 0x1

    #@9d
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@a0
    .line 1954
    :cond_8
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@a2
    if-eqz v0, :cond_5

    #@a4
    .line 1956
    invoke-direct {p0, v10}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_5

    #@aa
    .line 1957
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@ad
    goto :goto_0

    #@ae
    .line 1930
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
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    #@b7
    move-result v0

    #@b8
    .line 1929
    if-eqz v0, :cond_7

    #@ba
    .line 1932
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@bc
    .line 1933
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@be
    .line 1934
    const/4 v0, 0x1

    #@bf
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@c1
    .line 1935
    const/4 v0, 0x0

    #@c2
    return v0

    #@c3
    .line 1943
    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@c5
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@c7
    int-to-float v1, v1

    #@c8
    sub-float/2addr v0, v1

    #@c9
    goto :goto_1

    #@ca
    .line 1946
    :cond_b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@cc
    int-to-float v0, v0

    #@cd
    cmpl-float v0, v13, v0

    #@cf
    if-lez v0, :cond_8

    #@d1
    .line 1952
    const/4 v0, 0x1

    #@d2
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@d4
    goto :goto_2

    #@d5
    .line 1968
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
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@db
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@dd
    .line 1969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@e0
    move-result v0

    #@e1
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    #@e3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@e5
    .line 1970
    const/4 v0, 0x0

    #@e6
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@e9
    move-result v0

    #@ea
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@ec
    .line 1971
    const/4 v0, 0x0

    #@ed
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    #@ef
    .line 1973
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@f1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@f4
    .line 1974
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    #@f6
    const/4 v1, 0x2

    #@f7
    if-ne v0, v1, :cond_c

    #@f9
    .line 1975
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@fb
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    #@fe
    move-result v0

    #@ff
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

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
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    #@10c
    if-le v0, v1, :cond_c

    #@10e
    .line 1977
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@110
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    #@113
    .line 1978
    const/4 v0, 0x0

    #@114
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@116
    .line 1979
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@119
    .line 1980
    const/4 v0, 0x1

    #@11a
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@11c
    .line 1981
    const/4 v0, 0x1

    #@11d
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@120
    .line 1982
    const/4 v0, 0x1

    #@121
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@124
    goto/16 :goto_0

    #@126
    .line 1984
    :cond_c
    const/4 v0, 0x0

    #@127
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@12a
    .line 1985
    const/4 v0, 0x0

    #@12b
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@12d
    goto/16 :goto_0

    #@12f
    .line 1995
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@132
    goto/16 :goto_0

    #@134
    .line 1904
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 1536
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@3
    move-result v9

    #@4
    .line 1537
    .local v9, "count":I
    sub-int v24, p4, p2

    #@6
    .line 1538
    .local v24, "width":I
    sub-int v11, p5, p3

    #@8
    .line 1539
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@b
    move-result v19

    #@c
    .line 1540
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@f
    move-result v21

    #@10
    .line 1541
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@13
    move-result v20

    #@14
    .line 1542
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@17
    move-result v18

    #@18
    .line 1543
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@1b
    move-result v22

    #@1c
    .line 1545
    .local v22, "scrollX":I
    const/4 v10, 0x0

    #@1d
    .line 1549
    .local v10, "decorCount":I
    const/4 v14, 0x0

    #@1e
    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    #@20
    .line 1550
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@25
    move-result-object v5

    #@26
    .line 1551
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@29
    move-result v26

    #@2a
    const/16 v27, 0x8

    #@2c
    move/from16 v0, v26

    #@2e
    move/from16 v1, v27

    #@30
    if-eq v0, v1, :cond_0

    #@32
    .line 1552
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@35
    move-result-object v17

    #@36
    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@38
    .line 1553
    .local v17, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    const/4 v6, 0x0

    #@39
    .line 1554
    .local v6, "childLeft":I
    const/4 v7, 0x0

    #@3a
    .line 1555
    .local v7, "childTop":I
    move-object/from16 v0, v17

    #@3c
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@3e
    move/from16 v26, v0

    #@40
    if-eqz v26, :cond_0

    #@42
    .line 1556
    move-object/from16 v0, v17

    #@44
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@46
    move/from16 v26, v0

    #@48
    and-int/lit8 v13, v26, 0x7

    #@4a
    .line 1557
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    #@4c
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@4e
    move/from16 v26, v0

    #@50
    and-int/lit8 v23, v26, 0x70

    #@52
    .line 1558
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    #@55
    .line 1560
    :pswitch_0
    move/from16 v6, v19

    #@57
    .line 1575
    :goto_1
    sparse-switch v23, :sswitch_data_0

    #@5a
    .line 1577
    move/from16 v7, v21

    #@5c
    .line 1592
    :goto_2
    add-int v6, v6, v22

    #@5e
    .line 1594
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@61
    move-result v26

    #@62
    add-int v26, v26, v6

    #@64
    .line 1595
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@67
    move-result v27

    #@68
    add-int v27, v27, v7

    #@6a
    .line 1593
    move/from16 v0, v26

    #@6c
    move/from16 v1, v27

    #@6e
    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@71
    .line 1596
    add-int/lit8 v10, v10, 0x1

    #@73
    .line 1549
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    #@75
    goto :goto_0

    #@76
    .line 1563
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    #@78
    .line 1564
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@7b
    move-result v26

    #@7c
    add-int v19, v19, v26

    #@7e
    .line 1565
    goto :goto_1

    #@7f
    .line 1567
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@82
    move-result v26

    #@83
    sub-int v26, v24, v26

    #@85
    div-int/lit8 v26, v26, 0x2

    #@87
    move/from16 v0, v26

    #@89
    move/from16 v1, v19

    #@8b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@8e
    move-result v6

    #@8f
    goto :goto_1

    #@90
    .line 1571
    :pswitch_3
    sub-int v26, v24, v20

    #@92
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@95
    move-result v27

    #@96
    sub-int v6, v26, v27

    #@98
    .line 1572
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@9b
    move-result v26

    #@9c
    add-int v20, v20, v26

    #@9e
    .line 1573
    goto :goto_1

    #@9f
    .line 1580
    :sswitch_0
    move/from16 v7, v21

    #@a1
    .line 1581
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@a4
    move-result v26

    #@a5
    add-int v21, v21, v26

    #@a7
    .line 1582
    goto :goto_2

    #@a8
    .line 1584
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@ab
    move-result v26

    #@ac
    sub-int v26, v11, v26

    #@ae
    div-int/lit8 v26, v26, 0x2

    #@b0
    move/from16 v0, v26

    #@b2
    move/from16 v1, v21

    #@b4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b7
    move-result v7

    #@b8
    goto :goto_2

    #@b9
    .line 1588
    :sswitch_2
    sub-int v26, v11, v18

    #@bb
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@be
    move-result v27

    #@bf
    sub-int v7, v26, v27

    #@c1
    .line 1589
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@c4
    move-result v26

    #@c5
    add-int v18, v18, v26

    #@c7
    .line 1590
    goto :goto_2

    #@c8
    .line 1601
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    #@ca
    sub-int v8, v26, v20

    #@cc
    .line 1603
    .local v8, "childWidth":I
    const/4 v14, 0x0

    #@cd
    :goto_3
    if-ge v14, v9, :cond_4

    #@cf
    .line 1604
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@d4
    move-result-object v5

    #@d5
    .line 1605
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@d8
    move-result v26

    #@d9
    const/16 v27, 0x8

    #@db
    move/from16 v0, v26

    #@dd
    move/from16 v1, v27

    #@df
    if-eq v0, v1, :cond_3

    #@e1
    .line 1606
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e4
    move-result-object v17

    #@e5
    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@e7
    .line 1608
    .restart local v17    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    #@e9
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@eb
    move/from16 v26, v0

    #@ed
    if-nez v26, :cond_3

    #@ef
    move-object/from16 v0, p0

    #@f1
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@f4
    move-result-object v15

    #@f5
    .local v15, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v15, :cond_3

    #@f7
    .line 1609
    int-to-float v0, v8

    #@f8
    move/from16 v26, v0

    #@fa
    iget v0, v15, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@fc
    move/from16 v27, v0

    #@fe
    mul-float v26, v26, v27

    #@100
    move/from16 v0, v26

    #@102
    float-to-int v0, v0

    #@103
    move/from16 v16, v0

    #@105
    .line 1610
    .local v16, "loff":I
    add-int v6, v19, v16

    #@107
    .line 1611
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    #@109
    .line 1612
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    #@10b
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #@10d
    move/from16 v26, v0

    #@10f
    if-eqz v26, :cond_2

    #@111
    .line 1615
    const/16 v26, 0x0

    #@113
    move/from16 v0, v26

    #@115
    move-object/from16 v1, v17

    #@117
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    #@119
    .line 1617
    int-to-float v0, v8

    #@11a
    move/from16 v26, v0

    #@11c
    move-object/from16 v0, v17

    #@11e
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@120
    move/from16 v27, v0

    #@122
    mul-float v26, v26, v27

    #@124
    move/from16 v0, v26

    #@126
    float-to-int v0, v0

    #@127
    move/from16 v26, v0

    #@129
    .line 1618
    const/high16 v27, 0x40000000    # 2.0f

    #@12b
    .line 1616
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@12e
    move-result v25

    #@12f
    .line 1620
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    #@131
    sub-int v26, v26, v18

    #@133
    .line 1621
    const/high16 v27, 0x40000000    # 2.0f

    #@135
    .line 1619
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@138
    move-result v12

    #@139
    .line 1622
    .local v12, "heightSpec":I
    move/from16 v0, v25

    #@13b
    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    #@13e
    .line 1628
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@141
    move-result v26

    #@142
    add-int v26, v26, v6

    #@144
    .line 1629
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@147
    move-result v27

    #@148
    add-int v27, v27, v7

    #@14a
    .line 1627
    move/from16 v0, v26

    #@14c
    move/from16 v1, v27

    #@14e
    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    #@151
    .line 1603
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@153
    goto/16 :goto_3

    #@155
    .line 1633
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    #@157
    move-object/from16 v1, p0

    #@159
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    #@15b
    .line 1634
    sub-int v26, v11, v18

    #@15d
    move/from16 v0, v26

    #@15f
    move-object/from16 v1, p0

    #@161
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    #@163
    .line 1635
    move-object/from16 v0, p0

    #@165
    iput v10, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    #@167
    .line 1637
    move-object/from16 v0, p0

    #@169
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@16b
    move/from16 v26, v0

    #@16d
    if-eqz v26, :cond_5

    #@16f
    .line 1638
    move-object/from16 v0, p0

    #@171
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@173
    move/from16 v26, v0

    #@175
    const/16 v27, 0x0

    #@177
    const/16 v28, 0x0

    #@179
    const/16 v29, 0x0

    #@17b
    move-object/from16 v0, p0

    #@17d
    move/from16 v1, v26

    #@17f
    move/from16 v2, v27

    #@181
    move/from16 v3, v28

    #@183
    move/from16 v4, v29

    #@185
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    #@188
    .line 1640
    :cond_5
    const/16 v26, 0x0

    #@18a
    move/from16 v0, v26

    #@18c
    move-object/from16 v1, p0

    #@18e
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@190
    .line 1535
    return-void

    #@191
    .line 1558
    nop

    #@192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    #@1a0
    .line 1575
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
    .line 1407
    const/16 v21, 0x0

    #@2
    move/from16 v0, v21

    #@4
    move/from16 v1, p1

    #@6
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    #@9
    move-result v21

    #@a
    .line 1408
    const/16 v22, 0x0

    #@c
    move/from16 v0, v22

    #@e
    move/from16 v1, p2

    #@10
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    #@13
    move-result v22

    #@14
    .line 1407
    move-object/from16 v0, p0

    #@16
    move/from16 v1, v21

    #@18
    move/from16 v2, v22

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    #@1d
    .line 1410
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    #@20
    move-result v15

    #@21
    .line 1411
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    #@23
    .line 1412
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    #@25
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

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
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    #@35
    .line 1415
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@38
    move-result v21

    #@39
    sub-int v21, v15, v21

    #@3b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@3e
    move-result v22

    #@3f
    sub-int v5, v21, v22

    #@41
    .line 1416
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    #@44
    move-result v21

    #@45
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    #@48
    move-result v22

    #@49
    sub-int v21, v21, v22

    #@4b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    #@4e
    move-result v22

    #@4f
    sub-int v4, v21, v22

    #@51
    .line 1423
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@54
    move-result v16

    #@55
    .line 1424
    .local v16, "size":I
    const/4 v12, 0x0

    #@56
    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    #@58
    if-ge v12, v0, :cond_a

    #@5a
    .line 1425
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@5f
    move-result-object v3

    #@60
    .line 1426
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
    .line 1427
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@6f
    move-result-object v13

    #@70
    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@72
    .line 1428
    .local v13, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    #@74
    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@76
    move/from16 v21, v0

    #@78
    if-eqz v21, :cond_5

    #@7a
    .line 1429
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@7c
    move/from16 v21, v0

    #@7e
    and-int/lit8 v11, v21, 0x7

    #@80
    .line 1430
    .local v11, "hgrav":I
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@82
    move/from16 v21, v0

    #@84
    and-int/lit8 v17, v21, 0x70

    #@86
    .line 1431
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    #@88
    .line 1432
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    #@8a
    .line 1433
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
    .line 1434
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
    .line 1436
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    #@aa
    .line 1437
    const/high16 v18, 0x40000000    # 2.0f

    #@ac
    .line 1442
    :cond_2
    :goto_3
    move/from16 v19, v5

    #@ae
    .line 1443
    .local v19, "widthSize":I
    move v9, v4

    #@af
    .line 1444
    .local v9, "heightSize":I
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

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
    .line 1445
    const/high16 v18, 0x40000000    # 2.0f

    #@bd
    .line 1446
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

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
    .line 1447
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    #@cb
    move/from16 v19, v0

    #@cd
    .line 1450
    :cond_3
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

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
    .line 1451
    const/high16 v8, 0x40000000    # 2.0f

    #@db
    .line 1452
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

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
    .line 1453
    iget v9, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    #@e9
    .line 1456
    :cond_4
    move/from16 v0, v19

    #@eb
    move/from16 v1, v18

    #@ed
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f0
    move-result v20

    #@f1
    .line 1457
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f4
    move-result v10

    #@f5
    .line 1458
    .local v10, "heightSpec":I
    move/from16 v0, v20

    #@f7
    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    #@fa
    .line 1460
    if-eqz v7, :cond_9

    #@fc
    .line 1461
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    #@ff
    move-result v21

    #@100
    sub-int v4, v4, v21

    #@102
    .line 1424
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
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
    .line 1433
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    #@107
    .restart local v7    # "consumeVertical":Z
    goto :goto_1

    #@108
    .line 1434
    :cond_7
    const/4 v6, 0x0

    #@109
    .restart local v6    # "consumeHorizontal":Z
    goto :goto_2

    #@10a
    .line 1438
    :cond_8
    if-eqz v6, :cond_2

    #@10c
    .line 1439
    const/high16 v8, 0x40000000    # 2.0f

    #@10e
    goto :goto_3

    #@10f
    .line 1462
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    #@111
    .line 1463
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    #@114
    move-result v21

    #@115
    sub-int v5, v5, v21

    #@117
    goto :goto_4

    #@118
    .line 1469
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
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
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    #@126
    .line 1470
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
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    #@134
    .line 1473
    const/16 v21, 0x1

    #@136
    move/from16 v0, v21

    #@138
    move-object/from16 v1, p0

    #@13a
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@13c
    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@13f
    .line 1475
    const/16 v21, 0x0

    #@141
    move/from16 v0, v21

    #@143
    move-object/from16 v1, p0

    #@145
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@147
    .line 1478
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@14a
    move-result v16

    #@14b
    .line 1479
    const/4 v12, 0x0

    #@14c
    :goto_5
    move/from16 v0, v16

    #@14e
    if-ge v12, v0, :cond_d

    #@150
    .line 1480
    move-object/from16 v0, p0

    #@152
    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@155
    move-result-object v3

    #@156
    .line 1481
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
    .line 1485
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@165
    move-result-object v13

    #@166
    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@168
    .line 1486
    .restart local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_c

    #@16a
    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@16c
    move/from16 v21, v0

    #@16e
    if-eqz v21, :cond_c

    #@170
    .line 1479
    .end local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    #@172
    goto :goto_5

    #@173
    .line 1488
    .restart local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_c
    int-to-float v0, v5

    #@174
    move/from16 v21, v0

    #@176
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

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
    .line 1487
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@186
    move-result v20

    #@187
    .line 1489
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    #@189
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

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
    .line 1401
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    #@0
    .prologue
    .line 1711
    iget v12, p0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    #@2
    if-lez v12, :cond_2

    #@4
    .line 1712
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@7
    move-result v9

    #@8
    .line 1713
    .local v9, "scrollX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@b
    move-result v7

    #@c
    .line 1714
    .local v7, "paddingLeft":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@f
    move-result v8

    #@10
    .line 1715
    .local v8, "paddingRight":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@13
    move-result v11

    #@14
    .line 1716
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@17
    move-result v1

    #@18
    .line 1717
    .local v1, "childCount":I
    const/4 v5, 0x0

    #@19
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    #@1b
    .line 1718
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    .line 1719
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@25
    .line 1720
    .local v6, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v12, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@27
    if-nez v12, :cond_1

    #@29
    .line 1717
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1722
    :cond_1
    iget v12, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    #@2e
    and-int/lit8 v4, v12, 0x7

    #@30
    .line 1723
    .local v4, "hgrav":I
    const/4 v2, 0x0

    #@31
    .line 1724
    .local v2, "childLeft":I
    packed-switch v4, :pswitch_data_0

    #@34
    .line 1726
    :pswitch_0
    move v2, v7

    #@35
    .line 1741
    :goto_2
    add-int/2addr v2, v9

    #@36
    .line 1743
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@39
    move-result v12

    #@3a
    sub-int v3, v2, v12

    #@3c
    .line 1744
    .local v3, "childOffset":I
    if-eqz v3, :cond_0

    #@3e
    .line 1745
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@41
    goto :goto_1

    #@42
    .line 1729
    .end local v3    # "childOffset":I
    :pswitch_1
    move v2, v7

    #@43
    .line 1730
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@46
    move-result v12

    #@47
    add-int/2addr v7, v12

    #@48
    .line 1731
    goto :goto_2

    #@49
    .line 1733
    :pswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@4c
    move-result v12

    #@4d
    sub-int v12, v11, v12

    #@4f
    div-int/lit8 v12, v12, 0x2

    #@51
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    #@54
    move-result v2

    #@55
    goto :goto_2

    #@56
    .line 1737
    :pswitch_3
    sub-int v12, v11, v8

    #@58
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@5b
    move-result v13

    #@5c
    sub-int v2, v12, v13

    #@5e
    .line 1738
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@61
    move-result v12

    #@62
    add-int/2addr v8, v12

    #@63
    .line 1739
    goto :goto_2

    #@64
    .line 1750
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childLeft":I
    .end local v4    # "hgrav":I
    .end local v5    # "i":I
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    .end local v9    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    invoke-direct/range {p0 .. p3}, Landroid/support/v4/view/ViewPager;->dispatchOnPageScrolled(IFI)V

    #@67
    .line 1752
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@69
    if-eqz v12, :cond_4

    #@6b
    .line 1753
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@6e
    move-result v9

    #@6f
    .line 1754
    .restart local v9    # "scrollX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@72
    move-result v1

    #@73
    .line 1755
    .restart local v1    # "childCount":I
    const/4 v5, 0x0

    #@74
    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v1, :cond_4

    #@76
    .line 1756
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@79
    move-result-object v0

    #@7a
    .line 1757
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7d
    move-result-object v6

    #@7e
    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@80
    .line 1759
    .restart local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v12, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@82
    if-eqz v12, :cond_3

    #@84
    .line 1755
    :goto_4
    add-int/lit8 v5, v5, 0x1

    #@86
    goto :goto_3

    #@87
    .line 1761
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@8a
    move-result v12

    #@8b
    sub-int/2addr v12, v9

    #@8c
    int-to-float v12, v12

    #@8d
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@90
    move-result v13

    #@91
    int-to-float v13, v13

    #@92
    div-float v10, v12, v13

    #@94
    .line 1762
    .local v10, "transformPos":F
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@96
    invoke-interface {v12, v0, v10}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    #@99
    goto :goto_4

    #@9a
    .line 1766
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v5    # "i":I
    .end local v6    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v9    # "scrollX":I
    .end local v10    # "transformPos":F
    :cond_4
    const/4 v12, 0x1

    #@9b
    iput-boolean v12, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    #@9d
    .line 1709
    return-void

    #@9e
    .line 1724
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
    .line 2781
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@4
    move-result v1

    #@5
    .line 2782
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    #@7
    if-eqz v7, :cond_0

    #@9
    .line 2783
    const/4 v6, 0x0

    #@a
    .line 2784
    .local v6, "index":I
    const/4 v5, 0x1

    #@b
    .line 2785
    .local v5, "increment":I
    move v2, v1

    #@c
    .line 2791
    .local v2, "end":I
    :goto_0
    move v3, v6

    #@d
    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    #@f
    .line 2792
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    .line 2793
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v7

    #@17
    if-nez v7, :cond_1

    #@19
    .line 2794
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1c
    move-result-object v4

    #@1d
    .line 2795
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    #@1f
    iget v7, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@21
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@23
    if-ne v7, v8, :cond_1

    #@25
    .line 2796
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_1

    #@2b
    .line 2797
    const/4 v7, 0x1

    #@2c
    return v7

    #@2d
    .line 2787
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    #@2f
    .line 2788
    .restart local v6    # "index":I
    const/4 v5, -0x1

    #@30
    .line 2789
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    #@31
    .restart local v2    # "end":I
    goto :goto_0

    #@32
    .line 2791
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    #@33
    goto :goto_1

    #@34
    .line 2802
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1310
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$SavedState;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    .line 1312
    return-void

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 1315
    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    #@b
    .line 1316
    .local v0, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@e
    move-result-object v1

    #@f
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@12
    .line 1318
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1319
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@18
    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@1a
    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@1f
    .line 1320
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #@21
    const/4 v2, 0x0

    #@22
    const/4 v3, 0x1

    #@23
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@26
    .line 1309
    :goto_0
    return-void

    #@27
    .line 1322
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #@29
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@2b
    .line 1323
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@2d
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@2f
    .line 1324
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    #@31
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@33
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1299
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1300
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1301
    .local v0, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@b
    iput v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    #@d
    .line 1302
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1303
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@13
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    #@16
    move-result-object v2

    #@17
    iput-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    #@19
    .line 1305
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
    .line 1497
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    .line 1500
    if-eq p1, p3, :cond_0

    #@5
    .line 1501
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@7
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@9
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    #@c
    .line 1496
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 2013
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    #@4
    move/from16 v24, v0

    #@6
    if-eqz v24, :cond_0

    #@8
    .line 2017
    const/16 v24, 0x1

    #@a
    return v24

    #@b
    .line 2020
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v24

    #@f
    if-nez v24, :cond_1

    #@11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    #@14
    move-result v24

    #@15
    if-eqz v24, :cond_1

    #@17
    .line 2023
    const/16 v24, 0x0

    #@19
    return v24

    #@1a
    .line 2026
    :cond_1
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@1e
    move-object/from16 v24, v0

    #@20
    if-eqz v24, :cond_2

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@26
    move-object/from16 v24, v0

    #@28
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@2b
    move-result v24

    #@2c
    if-nez v24, :cond_3

    #@2e
    .line 2028
    :cond_2
    const/16 v24, 0x0

    #@30
    return v24

    #@31
    .line 2031
    :cond_3
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@35
    move-object/from16 v24, v0

    #@37
    if-nez v24, :cond_4

    #@39
    .line 2032
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@3c
    move-result-object v24

    #@3d
    move-object/from16 v0, v24

    #@3f
    move-object/from16 v1, p0

    #@41
    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@43
    .line 2034
    :cond_4
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@47
    move-object/from16 v24, v0

    #@49
    move-object/from16 v0, v24

    #@4b
    move-object/from16 v1, p1

    #@4d
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@50
    .line 2036
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@53
    move-result v5

    #@54
    .line 2037
    .local v5, "action":I
    const/4 v11, 0x0

    #@55
    .line 2039
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    #@57
    move/from16 v24, v0

    #@59
    packed-switch v24, :pswitch_data_0

    #@5c
    .line 2131
    .end local v11    # "needsInvalidate":Z
    :cond_5
    :goto_0
    :pswitch_0
    if-eqz v11, :cond_6

    #@5e
    .line 2132
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@61
    .line 2134
    :cond_6
    const/16 v24, 0x1

    #@63
    return v24

    #@64
    .line 2041
    .restart local v11    # "needsInvalidate":Z
    :pswitch_1
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@68
    move-object/from16 v24, v0

    #@6a
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    #@6d
    .line 2042
    const/16 v24, 0x0

    #@6f
    move/from16 v0, v24

    #@71
    move-object/from16 v1, p0

    #@73
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@75
    .line 2043
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@78
    .line 2046
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@7b
    move-result v24

    #@7c
    move/from16 v0, v24

    #@7e
    move-object/from16 v1, p0

    #@80
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@82
    move/from16 v0, v24

    #@84
    move-object/from16 v1, p0

    #@86
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@88
    .line 2047
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@8b
    move-result v24

    #@8c
    move/from16 v0, v24

    #@8e
    move-object/from16 v1, p0

    #@90
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    #@92
    move/from16 v0, v24

    #@94
    move-object/from16 v1, p0

    #@96
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@98
    .line 2048
    const/16 v24, 0x0

    #@9a
    move-object/from16 v0, p1

    #@9c
    move/from16 v1, v24

    #@9e
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@a1
    move-result v24

    #@a2
    move/from16 v0, v24

    #@a4
    move-object/from16 v1, p0

    #@a6
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@a8
    goto :goto_0

    #@a9
    .line 2052
    :pswitch_2
    move-object/from16 v0, p0

    #@ab
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@ad
    move/from16 v24, v0

    #@af
    if-nez v24, :cond_7

    #@b1
    .line 2053
    move-object/from16 v0, p0

    #@b3
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@b5
    move/from16 v24, v0

    #@b7
    move-object/from16 v0, p1

    #@b9
    move/from16 v1, v24

    #@bb
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@be
    move-result v15

    #@bf
    .line 2054
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    #@c1
    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@c4
    move-result v20

    #@c5
    .line 2055
    .local v20, "x":F
    move-object/from16 v0, p0

    #@c7
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@c9
    move/from16 v24, v0

    #@cb
    sub-float v24, v20, v24

    #@cd
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@d0
    move-result v21

    #@d1
    .line 2056
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    #@d3
    invoke-static {v0, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@d6
    move-result v22

    #@d7
    .line 2057
    .local v22, "y":F
    move-object/from16 v0, p0

    #@d9
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@db
    move/from16 v24, v0

    #@dd
    sub-float v24, v22, v24

    #@df
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    #@e2
    move-result v23

    #@e3
    .line 2059
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    #@e5
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@e7
    move/from16 v24, v0

    #@e9
    move/from16 v0, v24

    #@eb
    int-to-float v0, v0

    #@ec
    move/from16 v24, v0

    #@ee
    cmpl-float v24, v21, v24

    #@f0
    if-lez v24, :cond_7

    #@f2
    cmpl-float v24, v21, v23

    #@f4
    if-lez v24, :cond_7

    #@f6
    .line 2061
    const/16 v24, 0x1

    #@f8
    move/from16 v0, v24

    #@fa
    move-object/from16 v1, p0

    #@fc
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@fe
    .line 2062
    const/16 v24, 0x1

    #@100
    move-object/from16 v0, p0

    #@102
    move/from16 v1, v24

    #@104
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    #@107
    .line 2063
    move-object/from16 v0, p0

    #@109
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@10b
    move/from16 v24, v0

    #@10d
    sub-float v24, v20, v24

    #@10f
    const/16 v25, 0x0

    #@111
    cmpl-float v24, v24, v25

    #@113
    if-lez v24, :cond_8

    #@115
    move-object/from16 v0, p0

    #@117
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@119
    move/from16 v24, v0

    #@11b
    move-object/from16 v0, p0

    #@11d
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@11f
    move/from16 v25, v0

    #@121
    move/from16 v0, v25

    #@123
    int-to-float v0, v0

    #@124
    move/from16 v25, v0

    #@126
    add-float v24, v24, v25

    #@128
    :goto_1
    move/from16 v0, v24

    #@12a
    move-object/from16 v1, p0

    #@12c
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@12e
    .line 2065
    move/from16 v0, v22

    #@130
    move-object/from16 v1, p0

    #@132
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    #@134
    .line 2066
    const/16 v24, 0x1

    #@136
    move-object/from16 v0, p0

    #@138
    move/from16 v1, v24

    #@13a
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@13d
    .line 2067
    const/16 v24, 0x1

    #@13f
    move-object/from16 v0, p0

    #@141
    move/from16 v1, v24

    #@143
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@146
    .line 2070
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    #@149
    move-result-object v14

    #@14a
    .line 2071
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_7

    #@14c
    .line 2072
    const/16 v24, 0x1

    #@14e
    move/from16 v0, v24

    #@150
    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@153
    .line 2077
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    #@155
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@157
    move/from16 v24, v0

    #@159
    if-eqz v24, :cond_5

    #@15b
    .line 2080
    move-object/from16 v0, p0

    #@15d
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@15f
    move/from16 v24, v0

    #@161
    .line 2079
    move-object/from16 v0, p1

    #@163
    move/from16 v1, v24

    #@165
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@168
    move-result v6

    #@169
    .line 2081
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    #@16b
    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@16e
    move-result v20

    #@16f
    .line 2082
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    #@171
    move/from16 v1, v20

    #@173
    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    #@176
    move-result v11

    #@177
    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    #@179
    .line 2064
    .end local v6    # "activePointerIndex":I
    .local v11, "needsInvalidate":Z
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    #@17b
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@17d
    move/from16 v24, v0

    #@17f
    move-object/from16 v0, p0

    #@181
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    #@183
    move/from16 v25, v0

    #@185
    move/from16 v0, v25

    #@187
    int-to-float v0, v0

    #@188
    move/from16 v25, v0

    #@18a
    sub-float v24, v24, v25

    #@18c
    goto :goto_1

    #@18d
    .line 2086
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    #@18f
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@191
    move/from16 v24, v0

    #@193
    if-eqz v24, :cond_5

    #@195
    .line 2087
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@199
    move-object/from16 v18, v0

    #@19b
    .line 2088
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    #@19d
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    #@19f
    move/from16 v24, v0

    #@1a1
    move/from16 v0, v24

    #@1a3
    int-to-float v0, v0

    #@1a4
    move/from16 v24, v0

    #@1a6
    const/16 v25, 0x3e8

    #@1a8
    move-object/from16 v0, v18

    #@1aa
    move/from16 v1, v25

    #@1ac
    move/from16 v2, v24

    #@1ae
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@1b1
    .line 2090
    move-object/from16 v0, p0

    #@1b3
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@1b5
    move/from16 v24, v0

    #@1b7
    .line 2089
    move-object/from16 v0, v18

    #@1b9
    move/from16 v1, v24

    #@1bb
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    #@1be
    move-result v24

    #@1bf
    move/from16 v0, v24

    #@1c1
    float-to-int v10, v0

    #@1c2
    .line 2091
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    #@1c4
    move/from16 v0, v24

    #@1c6
    move-object/from16 v1, p0

    #@1c8
    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@1ca
    .line 2092
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@1cd
    move-result v19

    #@1ce
    .line 2093
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@1d1
    move-result v16

    #@1d2
    .line 2094
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1d5
    move-result-object v8

    #@1d6
    .line 2095
    .local v8, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v7, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@1d8
    .line 2096
    .local v7, "currentPage":I
    move/from16 v0, v16

    #@1da
    int-to-float v0, v0

    #@1db
    move/from16 v24, v0

    #@1dd
    move/from16 v0, v19

    #@1df
    int-to-float v0, v0

    #@1e0
    move/from16 v25, v0

    #@1e2
    div-float v24, v24, v25

    #@1e4
    iget v0, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    #@1e6
    move/from16 v25, v0

    #@1e8
    sub-float v24, v24, v25

    #@1ea
    iget v0, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@1ec
    move/from16 v25, v0

    #@1ee
    div-float v13, v24, v25

    #@1f0
    .line 2098
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    #@1f2
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@1f4
    move/from16 v24, v0

    #@1f6
    move-object/from16 v0, p1

    #@1f8
    move/from16 v1, v24

    #@1fa
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@1fd
    move-result v6

    #@1fe
    .line 2099
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    #@200
    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@203
    move-result v20

    #@204
    .line 2100
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    #@206
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    #@208
    move/from16 v24, v0

    #@20a
    sub-float v24, v20, v24

    #@20c
    move/from16 v0, v24

    #@20e
    float-to-int v0, v0

    #@20f
    move/from16 v17, v0

    #@211
    .line 2101
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    #@213
    move/from16 v1, v17

    #@215
    invoke-direct {v0, v7, v13, v10, v1}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    #@218
    move-result v12

    #@219
    .line 2103
    .local v12, "nextPage":I
    const/16 v24, 0x1

    #@21b
    const/16 v25, 0x1

    #@21d
    move-object/from16 v0, p0

    #@21f
    move/from16 v1, v24

    #@221
    move/from16 v2, v25

    #@223
    invoke-virtual {v0, v12, v1, v2, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    #@226
    .line 2105
    const/16 v24, -0x1

    #@228
    move/from16 v0, v24

    #@22a
    move-object/from16 v1, p0

    #@22c
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@22e
    .line 2106
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    #@231
    .line 2107
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@235
    move-object/from16 v24, v0

    #@237
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@23a
    move-result v24

    #@23b
    move-object/from16 v0, p0

    #@23d
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@23f
    move-object/from16 v25, v0

    #@241
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@244
    move-result v25

    #@245
    or-int v11, v24, v25

    #@247
    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    #@249
    .line 2111
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    .local v11, "needsInvalidate":Z
    :pswitch_4
    move-object/from16 v0, p0

    #@24b
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    #@24d
    move/from16 v24, v0

    #@24f
    if-eqz v24, :cond_5

    #@251
    .line 2112
    move-object/from16 v0, p0

    #@253
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@255
    move/from16 v24, v0

    #@257
    const/16 v25, 0x1

    #@259
    const/16 v26, 0x0

    #@25b
    const/16 v27, 0x0

    #@25d
    move-object/from16 v0, p0

    #@25f
    move/from16 v1, v24

    #@261
    move/from16 v2, v25

    #@263
    move/from16 v3, v26

    #@265
    move/from16 v4, v27

    #@267
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    #@26a
    .line 2113
    const/16 v24, -0x1

    #@26c
    move/from16 v0, v24

    #@26e
    move-object/from16 v1, p0

    #@270
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@272
    .line 2114
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    #@275
    .line 2115
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@279
    move-object/from16 v24, v0

    #@27b
    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@27e
    move-result v24

    #@27f
    move-object/from16 v0, p0

    #@281
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    #@283
    move-object/from16 v25, v0

    #@285
    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    #@288
    move-result v25

    #@289
    or-int v11, v24, v25

    #@28b
    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    #@28d
    .line 2119
    .local v11, "needsInvalidate":Z
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@290
    move-result v9

    #@291
    .line 2120
    .local v9, "index":I
    move-object/from16 v0, p1

    #@293
    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@296
    move-result v20

    #@297
    .line 2121
    .restart local v20    # "x":F
    move/from16 v0, v20

    #@299
    move-object/from16 v1, p0

    #@29b
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@29d
    .line 2122
    move-object/from16 v0, p1

    #@29f
    invoke-static {v0, v9}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@2a2
    move-result v24

    #@2a3
    move/from16 v0, v24

    #@2a5
    move-object/from16 v1, p0

    #@2a7
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 2126
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@2ae
    .line 2128
    move-object/from16 v0, p0

    #@2b0
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    #@2b2
    move/from16 v24, v0

    #@2b4
    move-object/from16 v0, p1

    #@2b6
    move/from16 v1, v24

    #@2b8
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@2bb
    move-result v24

    #@2bc
    .line 2127
    move-object/from16 v0, p1

    #@2be
    move/from16 v1, v24

    #@2c0
    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    #@2c3
    move-result v24

    #@2c4
    move/from16 v0, v24

    #@2c6
    move-object/from16 v1, p0

    #@2c8
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    #@2ca
    goto/16 :goto_0

    #@2cc
    .line 2039
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
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2694
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@4
    if-lez v0, :cond_0

    #@6
    .line 2695
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    #@d
    .line 2696
    return v2

    #@e
    .line 2698
    :cond_0
    return v1
.end method

.method pageRight()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2702
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@9
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    if-ge v0, v1, :cond_0

    #@11
    .line 2703
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    #@18
    .line 2704
    return v2

    #@19
    .line 2706
    :cond_0
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method populate()V
    .locals 1

    #@0
    .prologue
    .line 952
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    #@5
    .line 951
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    #@0
    .prologue
    .line 956
    const/16 v21, 0x0

    #@2
    .line 957
    .local v21, "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v15, 0x2

    #@3
    .line 958
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    #@5
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7
    move/from16 v27, v0

    #@9
    move/from16 v0, v27

    #@b
    move/from16 v1, p1

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 959
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@13
    move/from16 v27, v0

    #@15
    move/from16 v0, v27

    #@17
    move/from16 v1, p1

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    const/16 v15, 0x42

    #@1d
    .line 960
    :goto_0
    move-object/from16 v0, p0

    #@1f
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@21
    move/from16 v27, v0

    #@23
    move-object/from16 v0, p0

    #@25
    move/from16 v1, v27

    #@27
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2a
    move-result-object v21

    #@2b
    .line 961
    .local v21, "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    move/from16 v0, p1

    #@2d
    move-object/from16 v1, p0

    #@2f
    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@31
    .line 964
    .end local v21    # "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@35
    move-object/from16 v27, v0

    #@37
    if-nez v27, :cond_2

    #@39
    .line 965
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    #@3c
    .line 966
    return-void

    #@3d
    .line 959
    .local v21, "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/16 v15, 0x11

    #@3f
    goto :goto_0

    #@40
    .line 973
    .end local v21    # "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    #@42
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@44
    move/from16 v27, v0

    #@46
    if-eqz v27, :cond_3

    #@48
    .line 975
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    #@4b
    .line 976
    return-void

    #@4c
    .line 982
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    #@4f
    move-result-object v27

    #@50
    if-nez v27, :cond_4

    #@52
    .line 983
    return-void

    #@53
    .line 986
    :cond_4
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@57
    move-object/from16 v27, v0

    #@59
    move-object/from16 v0, v27

    #@5b
    move-object/from16 v1, p0

    #@5d
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@60
    .line 988
    move-object/from16 v0, p0

    #@62
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@64
    move/from16 v22, v0

    #@66
    .line 989
    .local v22, "pageLimit":I
    move-object/from16 v0, p0

    #@68
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@6a
    move/from16 v27, v0

    #@6c
    sub-int v27, v27, v22

    #@6e
    const/16 v28, 0x0

    #@70
    move/from16 v0, v28

    #@72
    move/from16 v1, v27

    #@74
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@77
    move-result v26

    #@78
    .line 990
    .local v26, "startPos":I
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@7c
    move-object/from16 v27, v0

    #@7e
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@81
    move-result v4

    #@82
    .line 991
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    #@84
    move-object/from16 v0, p0

    #@86
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@88
    move/from16 v28, v0

    #@8a
    add-int v28, v28, v22

    #@8c
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    #@8f
    move-result v12

    #@90
    .line 993
    .local v12, "endPos":I
    move-object/from16 v0, p0

    #@92
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@94
    move/from16 v27, v0

    #@96
    move/from16 v0, v27

    #@98
    if-eq v4, v0, :cond_5

    #@9a
    .line 996
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    #@9d
    move-result-object v27

    #@9e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    #@a1
    move-result v28

    #@a2
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a5
    move-result-object v24

    #@a6
    .line 1000
    .local v24, "resName":Ljava/lang/String;
    :goto_1
    new-instance v27, Ljava/lang/IllegalStateException;

    #@a8
    new-instance v28, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    #@b0
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v28

    #@b4
    .line 1002
    move-object/from16 v0, p0

    #@b6
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@b8
    move/from16 v29, v0

    #@ba
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v28

    #@be
    .line 1002
    const-string/jumbo v29, ", found: "

    #@c1
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v28

    #@c5
    move-object/from16 v0, v28

    #@c7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v28

    #@cb
    .line 1003
    const-string/jumbo v29, " Pager id: "

    #@ce
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v28

    #@d2
    move-object/from16 v0, v28

    #@d4
    move-object/from16 v1, v24

    #@d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v28

    #@da
    .line 1004
    const-string/jumbo v29, " Pager class: "

    #@dd
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v28

    #@e1
    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClass()Ljava/lang/Class;

    #@e4
    move-result-object v29

    #@e5
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v28

    #@e9
    .line 1005
    const-string/jumbo v29, " Problematic adapter: "

    #@ec
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v28

    #@f0
    .line 1005
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@f4
    move-object/from16 v29, v0

    #@f6
    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/view/PagerAdapter;->getClass()Ljava/lang/Class;

    #@f9
    move-result-object v29

    #@fa
    .line 1000
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v28

    #@fe
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v28

    #@102
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@105
    throw v27

    #@106
    .line 997
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@107
    .line 998
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    #@10a
    move-result v27

    #@10b
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@10e
    move-result-object v24

    #@10f
    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_1

    #@110
    .line 1009
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    #@111
    .line 1010
    .local v8, "curIndex":I
    const/4 v9, 0x0

    #@112
    .line 1011
    .local v9, "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v8, 0x0

    #@113
    :goto_2
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@117
    move-object/from16 v27, v0

    #@119
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@11c
    move-result v27

    #@11d
    move/from16 v0, v27

    #@11f
    if-ge v8, v0, :cond_6

    #@121
    .line 1012
    move-object/from16 v0, p0

    #@123
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@125
    move-object/from16 v27, v0

    #@127
    move-object/from16 v0, v27

    #@129
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12c
    move-result-object v17

    #@12d
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@12f
    .line 1013
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    #@131
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@133
    move/from16 v27, v0

    #@135
    move-object/from16 v0, p0

    #@137
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@139
    move/from16 v28, v0

    #@13b
    move/from16 v0, v27

    #@13d
    move/from16 v1, v28

    #@13f
    if-lt v0, v1, :cond_c

    #@141
    .line 1014
    move-object/from16 v0, v17

    #@143
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@145
    move/from16 v27, v0

    #@147
    move-object/from16 v0, p0

    #@149
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@14b
    move/from16 v28, v0

    #@14d
    move/from16 v0, v27

    #@14f
    move/from16 v1, v28

    #@151
    if-ne v0, v1, :cond_6

    #@153
    move-object/from16 v9, v17

    #@155
    .line 1019
    .end local v9    # "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    #@157
    if-lez v4, :cond_7

    #@159
    .line 1020
    move-object/from16 v0, p0

    #@15b
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@15d
    move/from16 v27, v0

    #@15f
    move-object/from16 v0, p0

    #@161
    move/from16 v1, v27

    #@163
    invoke-virtual {v0, v1, v8}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@166
    move-result-object v9

    #@167
    .line 1026
    :cond_7
    if-eqz v9, :cond_a

    #@169
    .line 1027
    const/4 v13, 0x0

    #@16a
    .line 1028
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    #@16c
    .line 1029
    .local v18, "itemIndex":I
    if-ltz v18, :cond_d

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@172
    move-object/from16 v27, v0

    #@174
    move-object/from16 v0, v27

    #@176
    move/from16 v1, v18

    #@178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17b
    move-result-object v17

    #@17c
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@17e
    .line 1030
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@181
    move-result v7

    #@182
    .line 1031
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    #@184
    const/16 v19, 0x0

    #@186
    .line 1033
    .local v19, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    #@188
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@18a
    move/from16 v27, v0

    #@18c
    add-int/lit8 v23, v27, -0x1

    #@18e
    .local v23, "pos":I
    :goto_5
    if-ltz v23, :cond_8

    #@190
    .line 1034
    cmpl-float v27, v13, v19

    #@192
    if-ltz v27, :cond_13

    #@194
    move/from16 v0, v23

    #@196
    move/from16 v1, v26

    #@198
    if-ge v0, v1, :cond_13

    #@19a
    .line 1035
    if-nez v17, :cond_f

    #@19c
    .line 1061
    :cond_8
    iget v14, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@19e
    .line 1062
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    #@1a0
    .line 1063
    const/high16 v27, 0x40000000    # 2.0f

    #@1a2
    cmpg-float v27, v14, v27

    #@1a4
    if-gez v27, :cond_9

    #@1a6
    .line 1064
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1aa
    move-object/from16 v27, v0

    #@1ac
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@1af
    move-result v27

    #@1b0
    move/from16 v0, v18

    #@1b2
    move/from16 v1, v27

    #@1b4
    if-ge v0, v1, :cond_17

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1ba
    move-object/from16 v27, v0

    #@1bc
    move-object/from16 v0, v27

    #@1be
    move/from16 v1, v18

    #@1c0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c3
    move-result-object v17

    #@1c4
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@1c6
    .line 1065
    :goto_6
    if-gtz v7, :cond_18

    #@1c8
    const/16 v25, 0x0

    #@1ca
    .line 1067
    .local v25, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    #@1cc
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@1ce
    move/from16 v27, v0

    #@1d0
    add-int/lit8 v23, v27, 0x1

    #@1d2
    :goto_8
    move/from16 v0, v23

    #@1d4
    if-ge v0, v4, :cond_9

    #@1d6
    .line 1068
    cmpl-float v27, v14, v25

    #@1d8
    if-ltz v27, :cond_1d

    #@1da
    move/from16 v0, v23

    #@1dc
    if-le v0, v12, :cond_1d

    #@1de
    .line 1069
    if-nez v17, :cond_19

    #@1e0
    .line 1094
    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    #@1e2
    move-object/from16 v1, v21

    #@1e4
    invoke-direct {v0, v9, v8, v1}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    #@1e7
    .line 1104
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@1eb
    move-object/from16 v28, v0

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@1f1
    move/from16 v29, v0

    #@1f3
    if-eqz v9, :cond_21

    #@1f5
    iget-object v0, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@1f7
    move-object/from16 v27, v0

    #@1f9
    :goto_9
    move-object/from16 v0, v28

    #@1fb
    move-object/from16 v1, p0

    #@1fd
    move/from16 v2, v29

    #@1ff
    move-object/from16 v3, v27

    #@201
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@204
    .line 1106
    move-object/from16 v0, p0

    #@206
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@208
    move-object/from16 v27, v0

    #@20a
    move-object/from16 v0, v27

    #@20c
    move-object/from16 v1, p0

    #@20e
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@211
    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@214
    move-result v6

    #@215
    .line 1111
    .local v6, "childCount":I
    const/16 v16, 0x0

    #@217
    .local v16, "i":I
    :goto_a
    move/from16 v0, v16

    #@219
    if-ge v0, v6, :cond_22

    #@21b
    .line 1112
    move-object/from16 v0, p0

    #@21d
    move/from16 v1, v16

    #@21f
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@222
    move-result-object v5

    #@223
    .line 1113
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@226
    move-result-object v20

    #@227
    check-cast v20, Landroid/support/v4/view/ViewPager$LayoutParams;

    #@229
    .line 1114
    .local v20, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    move/from16 v0, v16

    #@22b
    move-object/from16 v1, v20

    #@22d
    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    #@22f
    .line 1115
    move-object/from16 v0, v20

    #@231
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    #@233
    move/from16 v27, v0

    #@235
    if-nez v27, :cond_b

    #@237
    move-object/from16 v0, v20

    #@239
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@23b
    move/from16 v27, v0

    #@23d
    const/16 v28, 0x0

    #@23f
    cmpl-float v27, v27, v28

    #@241
    if-nez v27, :cond_b

    #@243
    .line 1117
    move-object/from16 v0, p0

    #@245
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@248
    move-result-object v17

    #@249
    .line 1118
    .restart local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v17, :cond_b

    #@24b
    .line 1119
    move-object/from16 v0, v17

    #@24d
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@24f
    move/from16 v27, v0

    #@251
    move/from16 v0, v27

    #@253
    move-object/from16 v1, v20

    #@255
    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    #@257
    .line 1120
    move-object/from16 v0, v17

    #@259
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@25b
    move/from16 v27, v0

    #@25d
    move/from16 v0, v27

    #@25f
    move-object/from16 v1, v20

    #@261
    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    #@263
    .line 1111
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    #@265
    goto :goto_a

    #@266
    .line 1011
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v9    # "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@268
    goto/16 :goto_2

    #@26a
    .line 1029
    .end local v9    # "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_d
    const/16 v17, 0x0

    #@26c
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_3

    #@26e
    .line 1032
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v7    # "clientWidth":I
    :cond_e
    iget v0, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@270
    move/from16 v27, v0

    #@272
    const/high16 v28, 0x40000000    # 2.0f

    #@274
    sub-float v27, v28, v27

    #@276
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    #@279
    move-result v28

    #@27a
    move/from16 v0, v28

    #@27c
    int-to-float v0, v0

    #@27d
    move/from16 v28, v0

    #@27f
    int-to-float v0, v7

    #@280
    move/from16 v29, v0

    #@282
    div-float v28, v28, v29

    #@284
    add-float v19, v27, v28

    #@286
    .restart local v19    # "leftWidthNeeded":F
    goto/16 :goto_4

    #@288
    .line 1038
    .restart local v23    # "pos":I
    :cond_f
    move-object/from16 v0, v17

    #@28a
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@28c
    move/from16 v27, v0

    #@28e
    move/from16 v0, v23

    #@290
    move/from16 v1, v27

    #@292
    if-ne v0, v1, :cond_10

    #@294
    move-object/from16 v0, v17

    #@296
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@298
    move/from16 v27, v0

    #@29a
    if-eqz v27, :cond_11

    #@29c
    .line 1033
    :cond_10
    :goto_b
    add-int/lit8 v23, v23, -0x1

    #@29e
    goto/16 :goto_5

    #@2a0
    .line 1039
    :cond_11
    move-object/from16 v0, p0

    #@2a2
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2a4
    move-object/from16 v27, v0

    #@2a6
    move-object/from16 v0, v27

    #@2a8
    move/from16 v1, v18

    #@2aa
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2ad
    .line 1040
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@2b1
    move-object/from16 v27, v0

    #@2b3
    move-object/from16 v0, v17

    #@2b5
    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@2b7
    move-object/from16 v28, v0

    #@2b9
    move-object/from16 v0, v27

    #@2bb
    move-object/from16 v1, p0

    #@2bd
    move/from16 v2, v23

    #@2bf
    move-object/from16 v3, v28

    #@2c1
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@2c4
    .line 1045
    add-int/lit8 v18, v18, -0x1

    #@2c6
    .line 1046
    add-int/lit8 v8, v8, -0x1

    #@2c8
    .line 1047
    if-ltz v18, :cond_12

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2ce
    move-object/from16 v27, v0

    #@2d0
    move-object/from16 v0, v27

    #@2d2
    move/from16 v1, v18

    #@2d4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d7
    move-result-object v17

    #@2d8
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@2da
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_b

    #@2db
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_12
    const/16 v17, 0x0

    #@2dd
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_b

    #@2de
    .line 1049
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_13
    if-eqz v17, :cond_15

    #@2e0
    move-object/from16 v0, v17

    #@2e2
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@2e4
    move/from16 v27, v0

    #@2e6
    move/from16 v0, v23

    #@2e8
    move/from16 v1, v27

    #@2ea
    if-ne v0, v1, :cond_15

    #@2ec
    .line 1050
    move-object/from16 v0, v17

    #@2ee
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@2f0
    move/from16 v27, v0

    #@2f2
    add-float v13, v13, v27

    #@2f4
    .line 1051
    add-int/lit8 v18, v18, -0x1

    #@2f6
    .line 1052
    if-ltz v18, :cond_14

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@2fc
    move-object/from16 v27, v0

    #@2fe
    move-object/from16 v0, v27

    #@300
    move/from16 v1, v18

    #@302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@305
    move-result-object v17

    #@306
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@308
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_b

    #@309
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_14
    const/16 v17, 0x0

    #@30b
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_b

    #@30c
    .line 1054
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_15
    add-int/lit8 v27, v18, 0x1

    #@30e
    move-object/from16 v0, p0

    #@310
    move/from16 v1, v23

    #@312
    move/from16 v2, v27

    #@314
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@317
    move-result-object v17

    #@318
    .line 1055
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, v17

    #@31a
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@31c
    move/from16 v27, v0

    #@31e
    add-float v13, v13, v27

    #@320
    .line 1056
    add-int/lit8 v8, v8, 0x1

    #@322
    .line 1057
    if-ltz v18, :cond_16

    #@324
    move-object/from16 v0, p0

    #@326
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@328
    move-object/from16 v27, v0

    #@32a
    move-object/from16 v0, v27

    #@32c
    move/from16 v1, v18

    #@32e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@331
    move-result-object v17

    #@332
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@334
    .restart local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_b

    #@336
    :cond_16
    const/16 v17, 0x0

    #@338
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_b

    #@33a
    .line 1064
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v17, 0x0

    #@33c
    .restart local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_6

    #@33e
    .line 1066
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    #@341
    move-result v27

    #@342
    move/from16 v0, v27

    #@344
    int-to-float v0, v0

    #@345
    move/from16 v27, v0

    #@347
    int-to-float v0, v7

    #@348
    move/from16 v28, v0

    #@34a
    div-float v27, v27, v28

    #@34c
    const/high16 v28, 0x40000000    # 2.0f

    #@34e
    add-float v25, v27, v28

    #@350
    .restart local v25    # "rightWidthNeeded":F
    goto/16 :goto_7

    #@352
    .line 1072
    :cond_19
    move-object/from16 v0, v17

    #@354
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@356
    move/from16 v27, v0

    #@358
    move/from16 v0, v23

    #@35a
    move/from16 v1, v27

    #@35c
    if-ne v0, v1, :cond_1a

    #@35e
    move-object/from16 v0, v17

    #@360
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@362
    move/from16 v27, v0

    #@364
    if-eqz v27, :cond_1b

    #@366
    .line 1067
    :cond_1a
    :goto_c
    add-int/lit8 v23, v23, 0x1

    #@368
    goto/16 :goto_8

    #@36a
    .line 1073
    :cond_1b
    move-object/from16 v0, p0

    #@36c
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@36e
    move-object/from16 v27, v0

    #@370
    move-object/from16 v0, v27

    #@372
    move/from16 v1, v18

    #@374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@377
    .line 1074
    move-object/from16 v0, p0

    #@379
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@37b
    move-object/from16 v27, v0

    #@37d
    move-object/from16 v0, v17

    #@37f
    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@381
    move-object/from16 v28, v0

    #@383
    move-object/from16 v0, v27

    #@385
    move-object/from16 v1, p0

    #@387
    move/from16 v2, v23

    #@389
    move-object/from16 v3, v28

    #@38b
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@38e
    .line 1079
    move-object/from16 v0, p0

    #@390
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@392
    move-object/from16 v27, v0

    #@394
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@397
    move-result v27

    #@398
    move/from16 v0, v18

    #@39a
    move/from16 v1, v27

    #@39c
    if-ge v0, v1, :cond_1c

    #@39e
    move-object/from16 v0, p0

    #@3a0
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3a2
    move-object/from16 v27, v0

    #@3a4
    move-object/from16 v0, v27

    #@3a6
    move/from16 v1, v18

    #@3a8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3ab
    move-result-object v17

    #@3ac
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3ae
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_c

    #@3af
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1c
    const/16 v17, 0x0

    #@3b1
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_c

    #@3b2
    .line 1081
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1d
    if-eqz v17, :cond_1f

    #@3b4
    move-object/from16 v0, v17

    #@3b6
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@3b8
    move/from16 v27, v0

    #@3ba
    move/from16 v0, v23

    #@3bc
    move/from16 v1, v27

    #@3be
    if-ne v0, v1, :cond_1f

    #@3c0
    .line 1082
    move-object/from16 v0, v17

    #@3c2
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@3c4
    move/from16 v27, v0

    #@3c6
    add-float v14, v14, v27

    #@3c8
    .line 1083
    add-int/lit8 v18, v18, 0x1

    #@3ca
    .line 1084
    move-object/from16 v0, p0

    #@3cc
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3ce
    move-object/from16 v27, v0

    #@3d0
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@3d3
    move-result v27

    #@3d4
    move/from16 v0, v18

    #@3d6
    move/from16 v1, v27

    #@3d8
    if-ge v0, v1, :cond_1e

    #@3da
    move-object/from16 v0, p0

    #@3dc
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3de
    move-object/from16 v27, v0

    #@3e0
    move-object/from16 v0, v27

    #@3e2
    move/from16 v1, v18

    #@3e4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e7
    move-result-object v17

    #@3e8
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3ea
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@3ec
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1e
    const/16 v17, 0x0

    #@3ee
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@3f0
    .line 1086
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1f
    move-object/from16 v0, p0

    #@3f2
    move/from16 v1, v23

    #@3f4
    move/from16 v2, v18

    #@3f6
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@3f9
    move-result-object v17

    #@3fa
    .line 1087
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v18, v18, 0x1

    #@3fc
    .line 1088
    move-object/from16 v0, v17

    #@3fe
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    #@400
    move/from16 v27, v0

    #@402
    add-float v14, v14, v27

    #@404
    .line 1089
    move-object/from16 v0, p0

    #@406
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@408
    move-object/from16 v27, v0

    #@40a
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@40d
    move-result v27

    #@40e
    move/from16 v0, v18

    #@410
    move/from16 v1, v27

    #@412
    if-ge v0, v1, :cond_20

    #@414
    move-object/from16 v0, p0

    #@416
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@418
    move-object/from16 v27, v0

    #@41a
    move-object/from16 v0, v27

    #@41c
    move/from16 v1, v18

    #@41e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@421
    move-result-object v17

    #@422
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v17, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@424
    .restart local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@426
    :cond_20
    const/16 v17, 0x0

    #@428
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto/16 :goto_c

    #@42a
    .line 1104
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_21
    const/16 v27, 0x0

    #@42c
    goto/16 :goto_9

    #@42e
    .line 1124
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    #@431
    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    #@434
    move-result v27

    #@435
    if-eqz v27, :cond_24

    #@437
    .line 1127
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    #@43a
    move-result-object v10

    #@43b
    .line 1128
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_25

    #@43d
    move-object/from16 v0, p0

    #@43f
    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@442
    move-result-object v17

    #@443
    .line 1129
    :goto_d
    if-eqz v17, :cond_23

    #@445
    move-object/from16 v0, v17

    #@447
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@449
    move/from16 v27, v0

    #@44b
    move-object/from16 v0, p0

    #@44d
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@44f
    move/from16 v28, v0

    #@451
    move/from16 v0, v27

    #@453
    move/from16 v1, v28

    #@455
    if-eq v0, v1, :cond_24

    #@457
    .line 1130
    :cond_23
    const/16 v16, 0x0

    #@459
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@45c
    move-result v27

    #@45d
    move/from16 v0, v16

    #@45f
    move/from16 v1, v27

    #@461
    if-ge v0, v1, :cond_24

    #@463
    .line 1131
    move-object/from16 v0, p0

    #@465
    move/from16 v1, v16

    #@467
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    #@46a
    move-result-object v5

    #@46b
    .line 1132
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    #@46d
    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    #@470
    move-result-object v17

    #@471
    .line 1133
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v17, :cond_26

    #@473
    move-object/from16 v0, v17

    #@475
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@477
    move/from16 v27, v0

    #@479
    move-object/from16 v0, p0

    #@47b
    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@47d
    move/from16 v28, v0

    #@47f
    move/from16 v0, v27

    #@481
    move/from16 v1, v28

    #@483
    if-ne v0, v1, :cond_26

    #@485
    .line 1134
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    #@488
    move-result v27

    #@489
    if-eqz v27, :cond_26

    #@48b
    .line 955
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "currentFocused":Landroid/view/View;
    .end local v17    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_24
    return-void

    #@48c
    .line 1128
    .restart local v10    # "currentFocused":Landroid/view/View;
    :cond_25
    const/16 v17, 0x0

    #@48e
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_d

    #@48f
    .line 1130
    .restart local v5    # "child":Landroid/view/View;
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_26
    add-int/lit8 v16, v16, 0x1

    #@491
    goto :goto_e
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 620
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@9
    .line 618
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1356
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1357
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    #@7
    .line 1355
    :goto_0
    return-void

    #@8
    .line 1359
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b
    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 413
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@5
    if-eqz v4, :cond_1

    #@7
    .line 414
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@9
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@b
    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@e
    .line 415
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@10
    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    #@13
    .line 416
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v4

    #@1a
    if-ge v0, v4, :cond_0

    #@1c
    .line 417
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@24
    .line 418
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@26
    iget v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    #@28
    iget-object v6, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    #@2a
    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #@2d
    .line 416
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 420
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@32
    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    #@35
    .line 421
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@3a
    .line 422
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    #@3d
    .line 423
    iput v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@3f
    .line 424
    invoke-virtual {p0, v7, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    #@42
    .line 427
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@44
    .line 428
    .local v2, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@46
    .line 429
    iput v7, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@48
    .line 431
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4a
    if-eqz v4, :cond_3

    #@4c
    .line 432
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@4e
    if-nez v4, :cond_2

    #@50
    .line 433
    new-instance v4, Landroid/support/v4/view/ViewPager$PagerObserver;

    #@52
    invoke-direct {v4, p0, v8}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$PagerObserver;)V

    #@55
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@57
    .line 435
    :cond_2
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@59
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    #@5b
    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@5e
    .line 436
    iput-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@60
    .line 437
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@62
    .line 438
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@64
    .line 439
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@66
    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@69
    move-result v4

    #@6a
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    #@6c
    .line 440
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@6e
    if-ltz v4, :cond_5

    #@70
    .line 441
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@72
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@74
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@76
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    #@79
    .line 442
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@7b
    invoke-virtual {p0, v4, v7, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@7e
    .line 443
    const/4 v4, -0x1

    #@7f
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    #@81
    .line 444
    iput-object v8, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    #@83
    .line 445
    iput-object v8, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    #@85
    .line 453
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@87
    if-eqz v4, :cond_4

    #@89
    if-eq v2, p1, :cond_4

    #@8b
    .line 454
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@8d
    invoke-interface {v4, v2, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@90
    .line 412
    :cond_4
    return-void

    #@91
    .line 446
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    #@93
    .line 447
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@96
    goto :goto_1

    #@97
    .line 449
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@9a
    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 7
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 661
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/4 v3, 0x7

    #@3
    if-lt v2, v3, :cond_1

    #@5
    .line 662
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    #@7
    if-nez v2, :cond_0

    #@9
    .line 664
    :try_start_0
    const-class v2, Landroid/view/ViewGroup;

    #@b
    .line 665
    const-string/jumbo v3, "setChildrenDrawingOrderEnabled"

    #@e
    const/4 v4, 0x1

    #@f
    new-array v4, v4, [Ljava/lang/Class;

    #@11
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@13
    const/4 v6, 0x0

    #@14
    aput-object v5, v4, v6

    #@16
    .line 664
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 671
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    #@1e
    const/4 v3, 0x1

    #@1f
    new-array v3, v3, [Ljava/lang/Object;

    #@21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v4

    #@25
    const/4 v5, 0x0

    #@26
    aput-object v4, v3, v5

    #@28
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 660
    :cond_1
    :goto_1
    return-void

    #@2c
    .line 666
    :catch_0
    move-exception v1

    #@2d
    .line 667
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewPager"

    #@30
    const-string/jumbo v3, "Can\'t find setChildrenDrawingOrderEnabled"

    #@33
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    goto :goto_0

    #@37
    .line 672
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    #@38
    .line 673
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ViewPager"

    #@3b
    const-string/jumbo v3, "Error changing children drawing order"

    #@3e
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 494
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@3
    .line 495
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    move v0, v1

    #@8
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@b
    .line 493
    return-void

    #@c
    .line 495
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
    .line 505
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    #@3
    .line 506
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    #@6
    .line 504
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    #@0
    .prologue
    .line 514
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    #@4
    .line 513
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 518
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@7
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@a
    move-result v3

    #@b
    if-gtz v3, :cond_1

    #@d
    .line 519
    :cond_0
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@10
    .line 520
    return-void

    #@11
    .line 522
    :cond_1
    if-nez p3, :cond_2

    #@13
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@15
    if-ne v3, p1, :cond_2

    #@17
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 523
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@22
    .line 524
    return-void

    #@23
    .line 527
    :cond_2
    if-gez p1, :cond_5

    #@25
    .line 528
    const/4 p1, 0x0

    #@26
    .line 532
    :cond_3
    :goto_0
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@28
    .line 533
    .local v2, "pageLimit":I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2a
    add-int/2addr v3, v2

    #@2b
    if-gt p1, v3, :cond_4

    #@2d
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@2f
    sub-int/2addr v3, v2

    #@30
    if-ge p1, v3, :cond_6

    #@32
    .line 537
    :cond_4
    const/4 v1, 0x0

    #@33
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v3

    #@39
    if-ge v1, v3, :cond_6

    #@3b
    .line 538
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    #@43
    const/4 v4, 0x1

    #@44
    iput-boolean v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    #@46
    .line 537
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 529
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@4b
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@4e
    move-result v3

    #@4f
    if-lt p1, v3, :cond_3

    #@51
    .line 530
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@53
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@56
    move-result v3

    #@57
    add-int/lit8 p1, v3, -0x1

    #@59
    goto :goto_0

    #@5a
    .line 541
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@5c
    if-eq v3, p1, :cond_8

    #@5e
    const/4 v0, 0x1

    #@5f
    .line 543
    .local v0, "dispatchSelected":Z
    :goto_2
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    #@61
    if-eqz v3, :cond_9

    #@63
    .line 546
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@65
    .line 547
    if-eqz v0, :cond_7

    #@67
    .line 548
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    #@6a
    .line 550
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@6d
    .line 517
    :goto_3
    return-void

    #@6e
    .line 541
    .end local v0    # "dispatchSelected":Z
    :cond_8
    const/4 v0, 0x0

    #@6f
    .restart local v0    # "dispatchSelected":Z
    goto :goto_2

    #@70
    .line 552
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    #@73
    .line 553
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    #@76
    goto :goto_3
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    .line 693
    .local v0, "oldListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@4
    .line 694
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 726
    if-ge p1, v3, :cond_0

    #@3
    .line 727
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
    .line 729
    const/4 p1, 0x1

    #@29
    .line 731
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2b
    if-eq p1, v0, :cond_1

    #@2d
    .line 732
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    #@2f
    .line 733
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@32
    .line 725
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@0
    .prologue
    .line 479
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    #@2
    .line 478
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@2
    .line 591
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    #@0
    .prologue
    .line 746
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@2
    .line 747
    .local v0, "oldMargin":I
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@4
    .line 749
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    #@7
    move-result v1

    #@8
    .line 750
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    #@b
    .line 752
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    #@e
    .line 745
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 781
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 770
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 771
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    #@7
    .line 772
    :cond_0
    if-nez p1, :cond_1

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    #@d
    .line 773
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    #@10
    .line 769
    return-void

    #@11
    .line 772
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 646
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v5, 0xb

    #@6
    if-lt v3, v5, :cond_1

    #@8
    .line 647
    if-eqz p2, :cond_2

    #@a
    const/4 v0, 0x1

    #@b
    .line 648
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@d
    if-eqz v3, :cond_3

    #@f
    move v3, v2

    #@10
    :goto_1
    if-eq v0, v3, :cond_4

    #@12
    const/4 v1, 0x1

    #@13
    .line 649
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    #@15
    .line 650
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    #@18
    .line 651
    if-eqz v0, :cond_5

    #@1a
    .line 652
    if-eqz p1, :cond_0

    #@1c
    const/4 v2, 0x2

    #@1d
    :cond_0
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@1f
    .line 656
    :goto_3
    if-eqz v1, :cond_1

    #@21
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@24
    .line 645
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    #@25
    .line 647
    :cond_2
    const/4 v0, 0x0

    #@26
    .restart local v0    # "hasTransformer":Z
    goto :goto_0

    #@27
    :cond_3
    move v3, v4

    #@28
    .line 648
    goto :goto_1

    #@29
    :cond_4
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "needsPopulate":Z
    goto :goto_2

    #@2b
    .line 654
    :cond_5
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    #@2d
    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 816
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    #@4
    .line 815
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    #@0
    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 829
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@a
    .line 830
    return-void

    #@b
    .line 832
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    #@e
    move-result v2

    #@f
    .line 833
    .local v2, "sx":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    #@12
    move-result v3

    #@13
    .line 834
    .local v3, "sy":I
    sub-int v4, p1, v2

    #@15
    .line 835
    .local v4, "dx":I
    sub-int v5, p2, v3

    #@17
    .line 836
    .local v5, "dy":I
    if-nez v4, :cond_1

    #@19
    if-nez v5, :cond_1

    #@1b
    .line 837
    const/4 v1, 0x0

    #@1c
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    #@1f
    .line 838
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    #@22
    .line 839
    const/4 v1, 0x0

    #@23
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@26
    .line 840
    return-void

    #@27
    .line 843
    :cond_1
    const/4 v1, 0x1

    #@28
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    #@2b
    .line 844
    const/4 v1, 0x2

    #@2c
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    #@2f
    .line 846
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    #@32
    move-result v12

    #@33
    .line 847
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    #@35
    .line 848
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
    .line 849
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    #@46
    int-to-float v13, v9

    #@47
    .line 850
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    #@4a
    move-result v14

    #@4b
    .line 849
    mul-float/2addr v13, v14

    #@4c
    add-float v7, v1, v13

    #@4e
    .line 852
    .local v7, "distance":F
    const/4 v6, 0x0

    #@4f
    .line 853
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    #@52
    move-result p3

    #@53
    .line 854
    if-lez p3, :cond_2

    #@55
    .line 855
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
    .line 861
    :goto_0
    const/16 v1, 0x258

    #@69
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    #@6c
    move-result v6

    #@6d
    .line 863
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    #@6f
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@72
    .line 864
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@75
    .line 826
    return-void

    #@76
    .line 857
    :cond_2
    int-to-float v1, v12

    #@77
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    #@79
    iget v14, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    #@7b
    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    #@7e
    move-result v13

    #@7f
    mul-float v11, v1, v13

    #@81
    .line 858
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@84
    move-result v1

    #@85
    int-to-float v1, v1

    #@86
    iget v13, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    #@88
    int-to-float v13, v13

    #@89
    add-float/2addr v13, v11

    #@8a
    div-float v10, v1, v13

    #@8c
    .line 859
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
    .line 787
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

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
