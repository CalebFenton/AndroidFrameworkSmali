.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FastScroller$1;,
        Landroid/widget/FastScroller$2;,
        Landroid/widget/FastScroller$3;,
        Landroid/widget/FastScroller$4;,
        Landroid/widget/FastScroller$5;,
        Landroid/widget/FastScroller$6;
    }
.end annotation


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/FastScroller;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/FastScroller;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/FastScroller;I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 96
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    #@7
    .line 1603
    new-instance v0, Landroid/widget/FastScroller$3;

    #@9
    const-string/jumbo v1, "left"

    #@c
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    #@11
    .line 1619
    new-instance v0, Landroid/widget/FastScroller$4;

    #@13
    const-string/jumbo v1, "top"

    #@16
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    #@1b
    .line 1635
    new-instance v0, Landroid/widget/FastScroller$5;

    #@1d
    const-string/jumbo v1, "right"

    #@20
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    #@23
    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    #@25
    .line 1651
    new-instance v0, Landroid/widget/FastScroller$6;

    #@27
    const-string/jumbo v1, "bottom"

    #@2a
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    #@2d
    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    #@2f
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x1

    #@2
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 98
    new-instance v3, Landroid/graphics/Rect;

    #@7
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v3, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@c
    .line 99
    new-instance v3, Landroid/graphics/Rect;

    #@e
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@11
    iput-object v3, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    #@13
    .line 100
    new-instance v3, Landroid/graphics/Rect;

    #@15
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@18
    iput-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@1a
    .line 113
    const/4 v3, 0x2

    #@1b
    new-array v3, v3, [I

    #@1d
    iput-object v3, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    #@1f
    .line 166
    iput v4, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    #@21
    .line 169
    iput v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@23
    .line 221
    const-wide/16 v4, -0x1

    #@25
    iput-wide v4, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@27
    .line 230
    new-instance v3, Landroid/widget/FastScroller$1;

    #@29
    invoke-direct {v3, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    #@2c
    iput-object v3, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@2e
    .line 240
    new-instance v3, Landroid/widget/FastScroller$2;

    #@30
    invoke-direct {v3, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    #@33
    iput-object v3, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    #@35
    .line 248
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@37
    .line 249
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    #@3a
    move-result v3

    #@3b
    iput v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    #@3d
    .line 250
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    #@40
    move-result v3

    #@41
    iput v3, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    #@43
    .line 252
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@46
    move-result-object v0

    #@47
    .line 253
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@4e
    move-result v3

    #@4f
    iput v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    #@51
    .line 254
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    #@54
    move-result v3

    #@55
    iput v3, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@57
    .line 256
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@59
    .line 257
    iput v2, p0, Landroid/widget/FastScroller;->mState:I

    #@5b
    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5e
    move-result-object v3

    #@5f
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@61
    const/16 v4, 0xb

    #@63
    if-lt v3, v4, :cond_0

    #@65
    .line 258
    :goto_0
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    #@67
    .line 261
    new-instance v2, Landroid/widget/ImageView;

    #@69
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@6c
    iput-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@6e
    .line 262
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@70
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@72
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@75
    .line 263
    new-instance v2, Landroid/widget/ImageView;

    #@77
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@7a
    iput-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@7c
    .line 264
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@7e
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@80
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@83
    .line 265
    new-instance v2, Landroid/view/View;

    #@85
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@88
    iput-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@8a
    .line 266
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@8c
    const/4 v3, 0x0

    #@8d
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    #@90
    .line 268
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    #@93
    move-result-object v2

    #@94
    iput-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@96
    .line 269
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    #@99
    move-result-object v2

    #@9a
    iput-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@9c
    .line 271
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    #@9f
    move-result-object v2

    #@a0
    .line 272
    const v3, 0x10500a0

    #@a3
    .line 271
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@a6
    move-result v2

    #@a7
    iput v2, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    #@a9
    .line 274
    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    #@ac
    .line 276
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@af
    move-result-object v1

    #@b0
    .line 277
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@b2
    .line 278
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@b4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@b7
    .line 279
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@b9
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@bc
    .line 280
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@be
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@c1
    .line 281
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@c3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@c6
    .line 282
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@c8
    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    #@cb
    .line 284
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    #@ce
    .line 285
    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    #@d0
    iget v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    #@d2
    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->updateLongList(II)V

    #@d5
    .line 286
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    #@d8
    move-result v2

    #@d9
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    #@dc
    .line 287
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@df
    .line 247
    return-void

    #@e0
    .line 259
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    const/4 v2, 0x0

    #@e1
    goto :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 1596
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [F

    #@5
    const/4 v2, 0x0

    #@6
    aput p1, v1, v2

    #@8
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1667
    sget-object v4, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    #@4
    new-array v5, v8, [I

    #@6
    iget v6, p1, Landroid/graphics/Rect;->left:I

    #@8
    aput v6, v5, v7

    #@a
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    #@d
    move-result-object v1

    #@e
    .line 1668
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    #@10
    new-array v5, v8, [I

    #@12
    iget v6, p1, Landroid/graphics/Rect;->top:I

    #@14
    aput v6, v5, v7

    #@16
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    #@19
    move-result-object v3

    #@1a
    .line 1669
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    #@1c
    new-array v5, v8, [I

    #@1e
    iget v6, p1, Landroid/graphics/Rect;->right:I

    #@20
    aput v6, v5, v7

    #@22
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    #@25
    move-result-object v2

    #@26
    .line 1670
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    #@28
    new-array v5, v8, [I

    #@2a
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    #@2c
    aput v6, v5, v7

    #@2e
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    #@31
    move-result-object v0

    #@32
    .line 1671
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    #@33
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    #@35
    aput-object v1, v4, v7

    #@37
    aput-object v3, v4, v8

    #@39
    const/4 v5, 0x2

    #@3a
    aput-object v2, v4, v5

    #@3c
    const/4 v5, 0x3

    #@3d
    aput-object v0, v4, v5

    #@3f
    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@42
    move-result-object v4

    #@43
    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    #@0
    .prologue
    .line 1589
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [F

    #@5
    const/4 v2, 0x0

    #@6
    aput p1, v1, v2

    #@8
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 601
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p2, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    #@b
    .line 602
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    iget v0, p2, Landroid/graphics/Rect;->right:I

    #@11
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@13
    sub-int/2addr v0, v1

    #@14
    :goto_0
    int-to-float v0, v0

    #@15
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    #@18
    .line 600
    return-void

    #@19
    .line 602
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1366
    const-wide/16 v0, -0x1

    #@3
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@5
    .line 1368
    const/4 v0, 0x2

    #@6
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    #@9
    .line 1370
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@b
    if-nez v0, :cond_0

    #@d
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1371
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    #@14
    .line 1374
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1375
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1a
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    #@1d
    .line 1376
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1f
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@22
    .line 1379
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    #@25
    .line 1365
    return-void
.end method

.method private cancelFling()V
    .locals 9

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1343
    const/4 v4, 0x3

    #@4
    const/4 v7, 0x0

    #@5
    move-wide v2, v0

    #@6
    move v6, v5

    #@7
    .line 1342
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@a
    move-result-object v8

    #@b
    .line 1344
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@d
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@10
    .line 1345
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@13
    .line 1341
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    #@0
    .prologue
    .line 1354
    const-wide/16 v0, -0x1

    #@2
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@4
    .line 1353
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 541
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@3
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@6
    .line 543
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    #@8
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@b
    .line 544
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@e
    .line 545
    const/4 v2, 0x1

    #@f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@12
    .line 546
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@17
    .line 547
    const/16 v2, 0x11

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    #@1c
    .line 548
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    #@20
    .line 551
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@22
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    #@29
    .line 553
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    #@0
    .prologue
    .line 1249
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@4
    .line 1250
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@a
    move-object/from16 v17, v0

    #@c
    if-nez v17, :cond_1

    #@e
    .line 1251
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    #@11
    .line 1254
    :cond_1
    if-eqz p2, :cond_2

    #@13
    if-nez p3, :cond_3

    #@15
    .line 1256
    :cond_2
    const/16 v17, 0x0

    #@17
    return v17

    #@18
    .line 1259
    :cond_3
    if-eqz v15, :cond_5

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@1e
    move-object/from16 v17, v0

    #@20
    if-eqz v17, :cond_5

    #@22
    .line 1260
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@26
    move-object/from16 v17, v0

    #@28
    move-object/from16 v0, v17

    #@2a
    array-length v0, v0

    #@2b
    move/from16 v17, v0

    #@2d
    if-lez v17, :cond_4

    #@2f
    const/16 v17, 0x1

    #@31
    :goto_0
    move/from16 v5, v17

    #@33
    .line 1261
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_6

    #@35
    move-object/from16 v0, p0

    #@37
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    #@39
    move/from16 v17, v0

    #@3b
    if-eqz v17, :cond_6

    #@3d
    .line 1271
    move-object/from16 v0, p0

    #@3f
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@41
    move/from16 v17, v0

    #@43
    sub-int p1, p1, v17

    #@45
    .line 1272
    if-gez p1, :cond_8

    #@47
    .line 1273
    const/16 v17, 0x0

    #@49
    return v17

    #@4a
    .line 1260
    .end local v5    # "hasSections":Z
    :cond_4
    const/16 v17, 0x0

    #@4c
    goto :goto_0

    #@4d
    .line 1259
    :cond_5
    const/4 v5, 0x0

    #@4e
    goto :goto_1

    #@4f
    .line 1262
    .restart local v5    # "hasSections":Z
    :cond_6
    move/from16 v0, p2

    #@51
    move/from16 v1, p3

    #@53
    if-ne v0, v1, :cond_7

    #@55
    .line 1264
    const/16 v17, 0x0

    #@57
    return v17

    #@58
    .line 1266
    :cond_7
    move/from16 v0, p1

    #@5a
    int-to-float v0, v0

    #@5b
    move/from16 v17, v0

    #@5d
    sub-int v18, p3, p2

    #@5f
    move/from16 v0, v18

    #@61
    int-to-float v0, v0

    #@62
    move/from16 v18, v0

    #@64
    div-float v17, v17, v18

    #@66
    return v17

    #@67
    .line 1275
    :cond_8
    move-object/from16 v0, p0

    #@69
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@6b
    move/from16 v17, v0

    #@6d
    sub-int p3, p3, v17

    #@6f
    .line 1278
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@73
    move-object/from16 v17, v0

    #@75
    const/16 v18, 0x0

    #@77
    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@7a
    move-result-object v3

    #@7b
    .line 1280
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_9

    #@7d
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@80
    move-result v17

    #@81
    if-nez v17, :cond_b

    #@83
    .line 1281
    :cond_9
    const/4 v6, 0x0

    #@84
    .line 1287
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    #@86
    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    #@89
    move-result v13

    #@8a
    .line 1288
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@8d
    move-result v16

    #@8e
    .line 1289
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    #@90
    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@92
    move-object/from16 v17, v0

    #@94
    move-object/from16 v0, v17

    #@96
    array-length v14, v0

    #@97
    .line 1291
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    #@99
    move/from16 v0, v17

    #@9b
    if-ge v13, v0, :cond_d

    #@9d
    .line 1293
    add-int/lit8 v17, v13, 0x1

    #@9f
    move/from16 v0, v17

    #@a1
    if-ge v0, v14, :cond_c

    #@a3
    .line 1294
    add-int/lit8 v17, v13, 0x1

    #@a5
    move/from16 v0, v17

    #@a7
    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@aa
    move-result v9

    #@ab
    .line 1298
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    #@ad
    .line 1305
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    #@af
    .line 1306
    const/4 v10, 0x0

    #@b0
    .line 1312
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    #@b1
    move/from16 v17, v0

    #@b3
    add-float v17, v17, v10

    #@b5
    int-to-float v0, v14

    #@b6
    move/from16 v18, v0

    #@b8
    div-float v12, v17, v18

    #@ba
    .line 1317
    .local v12, "result":F
    if-lez p1, :cond_a

    #@bc
    add-int v17, p1, p2

    #@be
    move/from16 v0, v17

    #@c0
    move/from16 v1, p3

    #@c2
    if-ne v0, v1, :cond_a

    #@c4
    .line 1318
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@c8
    move-object/from16 v17, v0

    #@ca
    add-int/lit8 v18, p2, -0x1

    #@cc
    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@cf
    move-result-object v7

    #@d0
    .line 1319
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@d4
    move-object/from16 v17, v0

    #@d6
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@d9
    move-result v2

    #@da
    .line 1322
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@de
    move-object/from16 v17, v0

    #@e0
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    #@e3
    move-result v17

    #@e4
    if-eqz v17, :cond_f

    #@e6
    .line 1323
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@e9
    move-result v8

    #@ea
    .line 1324
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@ee
    move-object/from16 v17, v0

    #@f0
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    #@f3
    move-result v17

    #@f4
    sub-int v17, v17, v2

    #@f6
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@f9
    move-result v18

    #@fa
    sub-int v4, v17, v18

    #@fc
    .line 1329
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_a

    #@fe
    if-lez v8, :cond_a

    #@100
    .line 1330
    const/high16 v17, 0x3f800000    # 1.0f

    #@102
    sub-float v17, v17, v12

    #@104
    int-to-float v0, v4

    #@105
    move/from16 v18, v0

    #@107
    int-to-float v0, v8

    #@108
    move/from16 v19, v0

    #@10a
    div-float v18, v18, v19

    #@10c
    mul-float v17, v17, v18

    #@10e
    add-float v12, v12, v17

    #@110
    .line 1334
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    :cond_a
    return v12

    #@111
    .line 1283
    .end local v6    # "incrementalPos":F
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    #@113
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@115
    move-object/from16 v17, v0

    #@117
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@11a
    move-result v17

    #@11b
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@11e
    move-result v18

    #@11f
    sub-int v17, v17, v18

    #@121
    move/from16 v0, v17

    #@123
    int-to-float v0, v0

    #@124
    move/from16 v17, v0

    #@126
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@129
    move-result v18

    #@12a
    move/from16 v0, v18

    #@12c
    int-to-float v0, v0

    #@12d
    move/from16 v18, v0

    #@12f
    div-float v6, v17, v18

    #@131
    .restart local v6    # "incrementalPos":F
    goto/16 :goto_2

    #@133
    .line 1296
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    #@135
    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    #@137
    .line 1300
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    #@139
    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    #@13b
    .line 1308
    :cond_e
    move/from16 v0, p1

    #@13d
    int-to-float v0, v0

    #@13e
    move/from16 v17, v0

    #@140
    add-float v17, v17, v6

    #@142
    move/from16 v0, v16

    #@144
    int-to-float v0, v0

    #@145
    move/from16 v18, v0

    #@147
    sub-float v17, v17, v18

    #@149
    .line 1309
    int-to-float v0, v11

    #@14a
    move/from16 v18, v0

    #@14c
    .line 1308
    div-float v10, v17, v18

    #@14e
    .restart local v10    # "posWithinSection":F
    goto/16 :goto_5

    #@150
    .line 1326
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@153
    move-result v17

    #@154
    add-int v8, v17, v2

    #@156
    .line 1327
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@15a
    move-object/from16 v17, v0

    #@15c
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    #@15f
    move-result v17

    #@160
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@163
    move-result v18

    #@164
    sub-int v4, v17, v18

    #@166
    .restart local v4    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1232
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@3
    cmpg-float v0, v0, v2

    #@5
    if-gtz v0, :cond_0

    #@7
    .line 1233
    return v2

    #@8
    .line 1236
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    #@a
    sub-float v0, p1, v0

    #@c
    iget v1, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@e
    div-float/2addr v0, v1

    #@f
    const/high16 v1, 0x3f800000    # 1.0f

    #@11
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    #@14
    move-result v0

    #@15
    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 954
    iput-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@3
    .line 956
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@5
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@8
    move-result-object v0

    #@9
    .line 957
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    #@b
    if-eqz v2, :cond_0

    #@d
    move-object v2, v0

    #@e
    .line 958
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    #@10
    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@13
    move-result v2

    #@14
    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@16
    .line 959
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    #@18
    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@1b
    move-result-object v0

    #@1c
    .line 962
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    #@1e
    if-eqz v2, :cond_2

    #@20
    move-object v2, v0

    #@21
    .line 963
    check-cast v2, Landroid/widget/ExpandableListConnector;

    #@23
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    #@26
    move-result-object v1

    #@27
    .line 965
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 966
    check-cast v1, Landroid/widget/SectionIndexer;

    #@2d
    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@2f
    .line 967
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@31
    .line 968
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@33
    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@39
    .line 953
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    #@3a
    .line 970
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    #@3c
    if-eqz v2, :cond_3

    #@3e
    .line 971
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@40
    .line 972
    check-cast v0, Landroid/widget/SectionIndexer;

    #@42
    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@44
    .line 973
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@46
    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@4c
    goto :goto_0

    #@4d
    .line 975
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@4f
    .line 976
    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@51
    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v6, 0x0

    #@1
    .line 1570
    new-instance v1, Landroid/animation/AnimatorSet;

    #@3
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@6
    .line 1571
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    #@7
    .line 1573
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    #@8
    add-int/lit8 v3, v4, -0x1

    #@a
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@c
    .line 1574
    aget-object v4, p2, v3

    #@e
    const/4 v5, 0x1

    #@f
    new-array v5, v5, [F

    #@11
    aput p1, v5, v6

    #@13
    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@16
    move-result-object v0

    #@17
    .line 1575
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    #@19
    .line 1576
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1c
    move-result-object v2

    #@1d
    .line 1573
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 1578
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@23
    goto :goto_1

    #@24
    .line 1582
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1527
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 9
    .param p1, "x"    # F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1531
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@4
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    #@7
    move-result v2

    #@8
    .line 1532
    .local v2, "offset":F
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@a
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    #@d
    move-result v7

    #@e
    int-to-float v7, v7

    #@f
    add-float v1, v7, v2

    #@11
    .line 1533
    .local v1, "left":F
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@13
    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    #@16
    move-result v7

    #@17
    int-to-float v7, v7

    #@18
    add-float v3, v7, v2

    #@1a
    .line 1536
    .local v3, "right":F
    iget v7, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    #@1c
    int-to-float v7, v7

    #@1d
    sub-float v8, v3, v1

    #@1f
    sub-float v4, v7, v8

    #@21
    .line 1537
    .local v4, "targetSizeDiff":F
    const/4 v7, 0x0

    #@22
    cmpl-float v7, v4, v7

    #@24
    if-lez v7, :cond_0

    #@26
    move v0, v4

    #@27
    .line 1539
    .local v0, "adjust":F
    :goto_0
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@29
    if-eqz v7, :cond_2

    #@2b
    .line 1540
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@2d
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    #@30
    move-result v7

    #@31
    int-to-float v7, v7

    #@32
    sub-float/2addr v7, v0

    #@33
    cmpl-float v7, p1, v7

    #@35
    if-ltz v7, :cond_1

    #@37
    :goto_1
    return v5

    #@38
    .line 1537
    .end local v0    # "adjust":F
    :cond_0
    const/4 v0, 0x0

    #@39
    .restart local v0    # "adjust":F
    goto :goto_0

    #@3a
    :cond_1
    move v5, v6

    #@3b
    .line 1540
    goto :goto_1

    #@3c
    .line 1542
    :cond_2
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@3e
    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    #@41
    move-result v7

    #@42
    int-to-float v7, v7

    #@43
    add-float/2addr v7, v0

    #@44
    cmpg-float v7, p1, v7

    #@46
    if-gtz v7, :cond_3

    #@48
    :goto_2
    return v5

    #@49
    :cond_3
    move v5, v6

    #@4a
    goto :goto_2
.end method

.method private isPointInsideY(F)Z
    .locals 8
    .param p1, "y"    # F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 1547
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@4
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTranslationY()F

    #@7
    move-result v2

    #@8
    .line 1548
    .local v2, "offset":F
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@a
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    #@d
    move-result v6

    #@e
    int-to-float v6, v6

    #@f
    add-float v4, v6, v2

    #@11
    .line 1549
    .local v4, "top":F
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@13
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    #@16
    move-result v6

    #@17
    int-to-float v6, v6

    #@18
    add-float v1, v6, v2

    #@1a
    .line 1552
    .local v1, "bottom":F
    iget v6, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    #@1c
    int-to-float v6, v6

    #@1d
    sub-float v7, v1, v4

    #@1f
    sub-float v3, v6, v7

    #@21
    .line 1553
    .local v3, "targetSizeDiff":F
    cmpl-float v6, v3, v0

    #@23
    if-lez v6, :cond_0

    #@25
    const/high16 v6, 0x40000000    # 2.0f

    #@27
    div-float v0, v3, v6

    #@29
    .line 1555
    .local v0, "adjust":F
    :cond_0
    sub-float v6, v4, v0

    #@2b
    cmpl-float v6, p1, v6

    #@2d
    if-ltz v6, :cond_1

    #@2f
    add-float v6, v1, v0

    #@31
    cmpg-float v6, p1, v6

    #@33
    if-gtz v6, :cond_1

    #@35
    const/4 v5, 0x1

    #@36
    :cond_1
    return v5
.end method

.method private layoutThumb()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 759
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@3
    .line 760
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@5
    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@8
    .line 761
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@a
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@d
    .line 758
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 769
    iget-object v10, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@3
    .line 770
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@5
    .line 771
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@7
    .line 772
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@a
    move-result v13

    #@b
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v5

    #@f
    .line 773
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@12
    move-result v13

    #@13
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v4

    #@17
    .line 774
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    #@19
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1c
    move-result v12

    #@1d
    .line 775
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@20
    move-result v2

    #@21
    .line 777
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    #@24
    .line 781
    iget v13, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    #@26
    const/4 v14, 0x1

    #@27
    if-ne v13, v14, :cond_0

    #@29
    .line 782
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@2b
    .line 783
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    #@2d
    .line 790
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@30
    move-result v11

    #@31
    .line 791
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@34
    move-result v13

    #@35
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    #@38
    move-result v14

    #@39
    sub-int/2addr v14, v11

    #@3a
    div-int/lit8 v14, v14, 0x2

    #@3c
    add-int v3, v13, v14

    #@3e
    .line 792
    .local v3, "left":I
    add-int v6, v3, v11

    #@40
    .line 793
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    #@43
    .line 768
    return-void

    #@44
    .line 785
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@47
    move-result v13

    #@48
    div-int/lit8 v8, v13, 0x2

    #@4a
    .line 786
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    #@4c
    add-int v9, v13, v8

    #@4e
    .line 787
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    #@50
    sub-int v0, v13, v8

    #@52
    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 693
    if-nez p2, :cond_0

    #@2
    .line 694
    const/4 v10, 0x0

    #@3
    .line 695
    .local v10, "marginLeft":I
    const/4 v12, 0x0

    #@4
    .line 696
    .local v12, "marginTop":I
    const/4 v11, 0x0

    #@5
    .line 703
    .local v11, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@9
    .line 704
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v7

    #@d
    .line 705
    .local v7, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@10
    move-result v17

    #@11
    const/16 v18, 0x0

    #@13
    move/from16 v0, v18

    #@15
    move/from16 v1, v17

    #@17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v2

    #@1b
    .line 706
    .local v2, "adjMaxHeight":I
    sub-int v17, v7, v10

    #@1d
    sub-int v17, v17, v11

    #@1f
    const/16 v18, 0x0

    #@21
    move/from16 v0, v18

    #@23
    move/from16 v1, v17

    #@25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v3

    #@29
    .line 707
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    #@2b
    move/from16 v0, v17

    #@2d
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@30
    move-result v16

    #@31
    .line 709
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    #@33
    .line 708
    move/from16 v0, v17

    #@35
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@38
    move-result v8

    #@39
    .line 710
    .local v8, "heightMeasureSpec":I
    move-object/from16 v0, p1

    #@3b
    move/from16 v1, v16

    #@3d
    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    #@40
    .line 713
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@43
    move-result v6

    #@44
    .line 714
    .local v6, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@47
    move-result v15

    #@48
    .line 715
    .local v15, "width":I
    div-int/lit8 v17, v6, 0xa

    #@4a
    add-int v17, v17, v12

    #@4c
    iget v0, v5, Landroid/graphics/Rect;->top:I

    #@4e
    move/from16 v18, v0

    #@50
    add-int v14, v17, v18

    #@52
    .line 716
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@55
    move-result v17

    #@56
    add-int v4, v14, v17

    #@58
    .line 717
    .local v4, "bottom":I
    sub-int v17, v7, v15

    #@5a
    div-int/lit8 v17, v17, 0x2

    #@5c
    iget v0, v5, Landroid/graphics/Rect;->left:I

    #@5e
    move/from16 v18, v0

    #@60
    add-int v9, v17, v18

    #@62
    .line 718
    .local v9, "left":I
    add-int v13, v9, v15

    #@64
    .line 719
    .local v13, "right":I
    move-object/from16 v0, p3

    #@66
    invoke-virtual {v0, v9, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@69
    .line 689
    return-void

    #@6a
    .line 698
    .end local v2    # "adjMaxHeight":I
    .end local v3    # "adjMaxWidth":I
    .end local v4    # "bottom":I
    .end local v5    # "container":Landroid/graphics/Rect;
    .end local v6    # "containerHeight":I
    .end local v7    # "containerWidth":I
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "left":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginRight":I
    .end local v12    # "marginTop":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "width":I
    .end local v16    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    #@6c
    iget v10, v0, Landroid/graphics/Rect;->left:I

    #@6e
    .line 699
    .restart local v10    # "marginLeft":I
    move-object/from16 v0, p2

    #@70
    iget v12, v0, Landroid/graphics/Rect;->top:I

    #@72
    .line 700
    .restart local v12    # "marginTop":I
    move-object/from16 v0, p2

    #@74
    iget v11, v0, Landroid/graphics/Rect;->right:I

    #@76
    .restart local v11    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    #@2
    .line 616
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@a
    .line 617
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@c
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    #@f
    move-result v1

    #@10
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@12
    .line 618
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@14
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@1a
    .line 619
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    #@1f
    move-result v1

    #@20
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@22
    .line 621
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    #@24
    if-nez v1, :cond_0

    #@26
    .line 622
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@29
    .line 613
    :goto_0
    return-void

    #@2a
    .line 624
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@2c
    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@2f
    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 643
    if-nez p3, :cond_0

    #@2
    .line 644
    const/4 v9, 0x0

    #@3
    .line 645
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    #@4
    .line 646
    .local v11, "marginTop":I
    const/4 v10, 0x0

    #@5
    .line 653
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@9
    .line 654
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v6

    #@d
    .line 656
    .local v6, "containerWidth":I
    if-nez p2, :cond_1

    #@f
    .line 657
    move v12, v6

    #@10
    .line 664
    .local v12, "maxWidth":I
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@13
    move-result v17

    #@14
    const/16 v18, 0x0

    #@16
    move/from16 v0, v18

    #@18
    move/from16 v1, v17

    #@1a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v2

    #@1e
    .line 665
    .local v2, "adjMaxHeight":I
    sub-int v17, v12, v9

    #@20
    sub-int v17, v17, v10

    #@22
    const/16 v18, 0x0

    #@24
    move/from16 v0, v18

    #@26
    move/from16 v1, v17

    #@28
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v3

    #@2c
    .line 666
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    #@2e
    move/from16 v0, v17

    #@30
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@33
    move-result v16

    #@34
    .line 668
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    #@36
    .line 667
    move/from16 v0, v17

    #@38
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@3b
    move-result v7

    #@3c
    .line 669
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    #@3e
    move/from16 v1, v16

    #@40
    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    #@43
    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@46
    move-result v17

    #@47
    move/from16 v0, v17

    #@49
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    #@4c
    move-result v15

    #@4d
    .line 675
    .local v15, "width":I
    move-object/from16 v0, p0

    #@4f
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@51
    move/from16 v17, v0

    #@53
    if-eqz v17, :cond_4

    #@55
    .line 676
    if-nez p2, :cond_3

    #@57
    iget v0, v5, Landroid/graphics/Rect;->right:I

    #@59
    move/from16 v17, v0

    #@5b
    :goto_2
    sub-int v13, v17, v10

    #@5d
    .line 677
    .local v13, "right":I
    sub-int v8, v13, v15

    #@5f
    .line 684
    .local v8, "left":I
    :goto_3
    move v14, v11

    #@60
    .line 685
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@63
    move-result v17

    #@64
    add-int v4, v14, v17

    #@66
    .line 686
    .local v4, "bottom":I
    move-object/from16 v0, p4

    #@68
    invoke-virtual {v0, v8, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@6b
    .line 639
    return-void

    #@6c
    .line 648
    .end local v2    # "adjMaxHeight":I
    .end local v3    # "adjMaxWidth":I
    .end local v4    # "bottom":I
    .end local v5    # "container":Landroid/graphics/Rect;
    .end local v6    # "containerWidth":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginRight":I
    .end local v11    # "marginTop":I
    .end local v12    # "maxWidth":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "width":I
    .end local v16    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    #@6e
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@70
    .line 649
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p3

    #@72
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@74
    .line 650
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p3

    #@76
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@78
    .restart local v10    # "marginRight":I
    goto :goto_0

    #@79
    .line 658
    .restart local v5    # "container":Landroid/graphics/Rect;
    .restart local v6    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    #@7b
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@7d
    move/from16 v17, v0

    #@7f
    if-eqz v17, :cond_2

    #@81
    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    #@84
    move-result v12

    #@85
    .restart local v12    # "maxWidth":I
    goto :goto_1

    #@86
    .line 661
    .end local v12    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    #@89
    move-result v17

    #@8a
    sub-int v12, v6, v17

    #@8c
    .restart local v12    # "maxWidth":I
    goto :goto_1

    #@8d
    .line 676
    .restart local v2    # "adjMaxHeight":I
    .restart local v3    # "adjMaxWidth":I
    .restart local v7    # "heightMeasureSpec":I
    .restart local v15    # "width":I
    .restart local v16    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    #@90
    move-result v17

    #@91
    goto :goto_2

    #@92
    .line 679
    :cond_4
    if-nez p2, :cond_5

    #@94
    iget v0, v5, Landroid/graphics/Rect;->left:I

    #@96
    move/from16 v17, v0

    #@98
    :goto_4
    add-int v8, v17, v9

    #@9a
    .line 680
    .restart local v8    # "left":I
    add-int v13, v8, v15

    #@9c
    .restart local v13    # "right":I
    goto :goto_3

    #@9d
    .line 679
    .end local v8    # "left":I
    .end local v13    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    #@a0
    move-result v17

    #@a1
    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 445
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_3

    #@7
    .line 446
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 447
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@10
    .line 458
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@12
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    #@15
    .line 444
    return-void

    #@16
    .line 448
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 449
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@1d
    goto :goto_0

    #@1e
    .line 450
    :cond_2
    if-eqz p1, :cond_0

    #@20
    .line 451
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@23
    .line 452
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@26
    goto :goto_0

    #@27
    .line 455
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    #@2a
    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    #@0
    .prologue
    .line 925
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@2
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 926
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@9
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@b
    const-wide/16 v2, 0x5dc

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@10
    .line 924
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    #@0
    .prologue
    .line 851
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@2
    const/4 v2, 0x2

    #@3
    if-ne v1, v2, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 852
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    #@b
    .line 853
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    #@10
    .line 850
    return-void

    #@11
    .line 851
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "isPressed":Z
    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 25
    .param p1, "position"    # F

    #@0
    .prologue
    .line 989
    const/16 v22, 0x0

    #@2
    move/from16 v0, v22

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@8
    .line 991
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@c
    move-object/from16 v22, v0

    #@e
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getCount()I

    #@11
    move-result v4

    #@12
    .line 992
    .local v4, "count":I
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@16
    move-object/from16 v18, v0

    #@18
    .line 993
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    #@1a
    const/16 v16, 0x0

    #@1c
    .line 995
    .local v16, "sectionCount":I
    :goto_0
    if-eqz v18, :cond_b

    #@1e
    const/16 v22, 0x1

    #@20
    move/from16 v0, v16

    #@22
    move/from16 v1, v22

    #@24
    if-le v0, v1, :cond_b

    #@26
    .line 997
    move/from16 v0, v16

    #@28
    int-to-float v0, v0

    #@29
    move/from16 v22, v0

    #@2b
    mul-float v22, v22, p1

    #@2d
    move/from16 v0, v22

    #@2f
    float-to-int v0, v0

    #@30
    move/from16 v22, v0

    #@32
    add-int/lit8 v23, v16, -0x1

    #@34
    const/16 v24, 0x0

    #@36
    .line 996
    move/from16 v0, v22

    #@38
    move/from16 v1, v24

    #@3a
    move/from16 v2, v23

    #@3c
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@3f
    move-result v5

    #@40
    .line 998
    .local v5, "exactSection":I
    move/from16 v21, v5

    #@42
    .line 999
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@46
    move-object/from16 v22, v0

    #@48
    move-object/from16 v0, v22

    #@4a
    invoke-interface {v0, v5}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@4d
    move-result v20

    #@4e
    .line 1000
    .local v20, "targetIndex":I
    move/from16 v17, v5

    #@50
    .line 1008
    .local v17, "sectionIndex":I
    move v9, v4

    #@51
    .line 1009
    .local v9, "nextIndex":I
    move/from16 v13, v20

    #@53
    .line 1010
    .local v13, "prevIndex":I
    move v15, v5

    #@54
    .line 1011
    .local v15, "prevSection":I
    add-int/lit8 v12, v5, 0x1

    #@56
    .line 1014
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    #@58
    move/from16 v0, v22

    #@5a
    if-ge v5, v0, :cond_0

    #@5c
    .line 1015
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@60
    move-object/from16 v22, v0

    #@62
    add-int/lit8 v23, v5, 0x1

    #@64
    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@67
    move-result v9

    #@68
    .line 1019
    :cond_0
    move/from16 v0, v20

    #@6a
    if-ne v9, v0, :cond_2

    #@6c
    .line 1021
    :cond_1
    if-lez v21, :cond_2

    #@6e
    .line 1022
    add-int/lit8 v21, v21, -0x1

    #@70
    .line 1023
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@74
    move-object/from16 v22, v0

    #@76
    move-object/from16 v0, v22

    #@78
    move/from16 v1, v21

    #@7a
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@7d
    move-result v13

    #@7e
    .line 1024
    move/from16 v0, v20

    #@80
    if-eq v13, v0, :cond_4

    #@82
    .line 1025
    move/from16 v15, v21

    #@84
    .line 1026
    move/from16 v17, v21

    #@86
    .line 1042
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    #@88
    .line 1043
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    #@8a
    if-ge v10, v0, :cond_5

    #@8c
    .line 1044
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@90
    move-object/from16 v22, v0

    #@92
    move-object/from16 v0, v22

    #@94
    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@97
    move-result v22

    #@98
    move/from16 v0, v22

    #@9a
    if-ne v0, v9, :cond_5

    #@9c
    .line 1045
    add-int/lit8 v10, v10, 0x1

    #@9e
    .line 1046
    add-int/lit8 v12, v12, 0x1

    #@a0
    goto :goto_2

    #@a1
    .line 993
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_3
    move-object/from16 v0, v18

    #@a3
    array-length v0, v0

    #@a4
    move/from16 v16, v0

    #@a6
    .restart local v16    # "sectionCount":I
    goto/16 :goto_0

    #@a8
    .line 1028
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_4
    if-nez v21, :cond_1

    #@aa
    .line 1031
    const/16 v17, 0x0

    #@ac
    .line 1032
    goto :goto_1

    #@ad
    .line 1053
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    #@ae
    move/from16 v22, v0

    #@b0
    move/from16 v0, v16

    #@b2
    int-to-float v0, v0

    #@b3
    move/from16 v23, v0

    #@b5
    div-float v14, v22, v23

    #@b7
    .line 1054
    .local v14, "prevPosition":F
    int-to-float v0, v12

    #@b8
    move/from16 v22, v0

    #@ba
    move/from16 v0, v16

    #@bc
    int-to-float v0, v0

    #@bd
    move/from16 v23, v0

    #@bf
    div-float v11, v22, v23

    #@c1
    .line 1055
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    #@c3
    const v19, 0x7f7fffff    # Float.MAX_VALUE

    #@c6
    .line 1056
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    #@c8
    sub-float v22, p1, v14

    #@ca
    cmpg-float v22, v22, v19

    #@cc
    if-gez v22, :cond_8

    #@ce
    .line 1057
    move/from16 v20, v13

    #@d0
    .line 1064
    :goto_4
    add-int/lit8 v22, v4, -0x1

    #@d2
    const/16 v23, 0x0

    #@d4
    move/from16 v0, v20

    #@d6
    move/from16 v1, v23

    #@d8
    move/from16 v2, v22

    #@da
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@dd
    move-result v20

    #@de
    .line 1066
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@e2
    move-object/from16 v22, v0

    #@e4
    move-object/from16 v0, v22

    #@e6
    instance-of v0, v0, Landroid/widget/ExpandableListView;

    #@e8
    move/from16 v22, v0

    #@ea
    if-eqz v22, :cond_9

    #@ec
    .line 1067
    move-object/from16 v0, p0

    #@ee
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@f0
    check-cast v6, Landroid/widget/ExpandableListView;

    #@f2
    .line 1069
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    #@f4
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@f6
    move/from16 v22, v0

    #@f8
    add-int v22, v22, v20

    #@fa
    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    #@fd
    move-result-wide v22

    #@fe
    .line 1068
    move-wide/from16 v0, v22

    #@100
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    #@103
    move-result v22

    #@104
    .line 1070
    const/16 v23, 0x0

    #@106
    .line 1068
    move/from16 v0, v22

    #@108
    move/from16 v1, v23

    #@10a
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    #@10d
    .line 1092
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    #@10f
    iget v0, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    #@111
    move/from16 v22, v0

    #@113
    move/from16 v0, v22

    #@115
    move/from16 v1, v17

    #@117
    if-eq v0, v1, :cond_6

    #@119
    .line 1093
    move/from16 v0, v17

    #@11b
    move-object/from16 v1, p0

    #@11d
    iput v0, v1, Landroid/widget/FastScroller;->mCurrentSection:I

    #@11f
    .line 1095
    move-object/from16 v0, p0

    #@121
    move/from16 v1, v17

    #@123
    invoke-direct {v0, v1}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    #@126
    move-result v7

    #@127
    .line 1096
    .local v7, "hasPreview":Z
    move-object/from16 v0, p0

    #@129
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@12b
    move/from16 v22, v0

    #@12d
    if-nez v22, :cond_e

    #@12f
    if-eqz v7, :cond_e

    #@131
    .line 1097
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    #@134
    .line 988
    .end local v7    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    #@135
    .line 1055
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_7
    int-to-float v0, v4

    #@136
    move/from16 v22, v0

    #@138
    const/high16 v23, 0x3e000000    # 0.125f

    #@13a
    div-float v19, v23, v22

    #@13c
    .restart local v19    # "snapThreshold":F
    goto :goto_3

    #@13d
    .line 1059
    :cond_8
    sub-int v22, v9, v13

    #@13f
    move/from16 v0, v22

    #@141
    int-to-float v0, v0

    #@142
    move/from16 v22, v0

    #@144
    sub-float v23, p1, v14

    #@146
    mul-float v22, v22, v23

    #@148
    .line 1060
    sub-float v23, v11, v14

    #@14a
    .line 1059
    div-float v22, v22, v23

    #@14c
    move/from16 v0, v22

    #@14e
    float-to-int v0, v0

    #@14f
    move/from16 v22, v0

    #@151
    add-int v20, v13, v22

    #@153
    goto/16 :goto_4

    #@155
    .line 1071
    :cond_9
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@159
    move-object/from16 v22, v0

    #@15b
    move-object/from16 v0, v22

    #@15d
    instance-of v0, v0, Landroid/widget/ListView;

    #@15f
    move/from16 v22, v0

    #@161
    if-eqz v22, :cond_a

    #@163
    .line 1072
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@167
    move-object/from16 v22, v0

    #@169
    check-cast v22, Landroid/widget/ListView;

    #@16b
    move-object/from16 v0, p0

    #@16d
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@16f
    move/from16 v23, v0

    #@171
    add-int v23, v23, v20

    #@173
    const/16 v24, 0x0

    #@175
    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@178
    goto :goto_5

    #@179
    .line 1074
    :cond_a
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@17d
    move-object/from16 v22, v0

    #@17f
    move-object/from16 v0, p0

    #@181
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@183
    move/from16 v23, v0

    #@185
    add-int v23, v23, v20

    #@187
    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    #@18a
    goto :goto_5

    #@18b
    .line 1077
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_b
    int-to-float v0, v4

    #@18c
    move/from16 v22, v0

    #@18e
    mul-float v22, v22, p1

    #@190
    move/from16 v0, v22

    #@192
    float-to-int v0, v0

    #@193
    move/from16 v22, v0

    #@195
    add-int/lit8 v23, v4, -0x1

    #@197
    const/16 v24, 0x0

    #@199
    move/from16 v0, v22

    #@19b
    move/from16 v1, v24

    #@19d
    move/from16 v2, v23

    #@19f
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@1a2
    move-result v8

    #@1a3
    .line 1079
    .local v8, "index":I
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1a7
    move-object/from16 v22, v0

    #@1a9
    move-object/from16 v0, v22

    #@1ab
    instance-of v0, v0, Landroid/widget/ExpandableListView;

    #@1ad
    move/from16 v22, v0

    #@1af
    if-eqz v22, :cond_c

    #@1b1
    .line 1080
    move-object/from16 v0, p0

    #@1b3
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1b5
    check-cast v6, Landroid/widget/ExpandableListView;

    #@1b7
    .line 1082
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    #@1b9
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@1bb
    move/from16 v22, v0

    #@1bd
    add-int v22, v22, v8

    #@1bf
    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    #@1c2
    move-result-wide v22

    #@1c3
    .line 1081
    move-wide/from16 v0, v22

    #@1c5
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    #@1c8
    move-result v22

    #@1c9
    .line 1082
    const/16 v23, 0x0

    #@1cb
    .line 1081
    move/from16 v0, v22

    #@1cd
    move/from16 v1, v23

    #@1cf
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    #@1d2
    .line 1089
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v17, -0x1

    #@1d4
    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    #@1d6
    .line 1083
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    #@1d8
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1da
    move-object/from16 v22, v0

    #@1dc
    move-object/from16 v0, v22

    #@1de
    instance-of v0, v0, Landroid/widget/ListView;

    #@1e0
    move/from16 v22, v0

    #@1e2
    if-eqz v22, :cond_d

    #@1e4
    .line 1084
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1e8
    move-object/from16 v22, v0

    #@1ea
    check-cast v22, Landroid/widget/ListView;

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@1f0
    move/from16 v23, v0

    #@1f2
    add-int v23, v23, v8

    #@1f4
    const/16 v24, 0x0

    #@1f6
    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@1f9
    goto :goto_7

    #@1fa
    .line 1086
    :cond_d
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1fe
    move-object/from16 v22, v0

    #@200
    move-object/from16 v0, p0

    #@202
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@204
    move/from16 v23, v0

    #@206
    add-int v23, v23, v8

    #@208
    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    #@20b
    goto :goto_7

    #@20c
    .line 1098
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    #@20e
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@210
    move/from16 v22, v0

    #@212
    if-eqz v22, :cond_6

    #@214
    if-nez v7, :cond_6

    #@216
    .line 1099
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    #@219
    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 819
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@2
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 821
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    if-nez p1, :cond_0

    #@d
    .line 822
    const/4 p1, 0x1

    #@e
    .line 825
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    #@10
    if-ne p1, v0, :cond_1

    #@12
    .line 826
    return-void

    #@13
    .line 829
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@16
    .line 845
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    #@18
    .line 847
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    #@1b
    .line 818
    return-void

    #@1c
    .line 831
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    #@1f
    goto :goto_0

    #@20
    .line 834
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    #@23
    goto :goto_0

    #@24
    .line 837
    :pswitch_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    #@26
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 838
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    #@2f
    goto :goto_0

    #@30
    .line 840
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    #@33
    goto :goto_0

    #@34
    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 14
    .param p1, "position"    # F

    #@0
    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    #@2
    .line 1196
    iget v11, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@4
    mul-float/2addr v11, p1

    #@5
    iget v12, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    #@7
    add-float v9, v11, v12

    #@9
    .line 1197
    .local v9, "thumbMiddle":F
    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@b
    iget-object v12, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@d
    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    #@10
    move-result v12

    #@11
    int-to-float v12, v12

    #@12
    div-float/2addr v12, v13

    #@13
    sub-float v12, v9, v12

    #@15
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    #@18
    .line 1199
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@1a
    .line 1200
    .local v5, "previewImage":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@1d
    move-result v11

    #@1e
    int-to-float v11, v11

    #@1f
    div-float v4, v11, v13

    #@21
    .line 1202
    .local v4, "previewHalfHeight":F
    iget v11, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    #@23
    packed-switch v11, :pswitch_data_0

    #@26
    .line 1211
    const/4 v7, 0x0

    #@27
    .line 1216
    .local v7, "previewPos":F
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@29
    .line 1217
    .local v1, "container":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->top:I

    #@2b
    .line 1218
    .local v10, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    #@2d
    .line 1219
    .local v0, "bottom":I
    int-to-float v11, v10

    #@2e
    add-float v3, v11, v4

    #@30
    .line 1220
    .local v3, "minP":F
    int-to-float v11, v0

    #@31
    sub-float v2, v11, v4

    #@33
    .line 1221
    .local v2, "maxP":F
    invoke-static {v7, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    #@36
    move-result v6

    #@37
    .line 1222
    .local v6, "previewMiddle":F
    sub-float v8, v6, v4

    #@39
    .line 1223
    .local v8, "previewTop":F
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    #@3c
    .line 1225
    iget-object v11, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@3e
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    #@41
    .line 1226
    iget-object v11, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@43
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    #@46
    .line 1195
    return-void

    #@47
    .line 1204
    .end local v0    # "bottom":I
    .end local v1    # "container":Landroid/graphics/Rect;
    .end local v2    # "maxP":F
    .end local v3    # "minP":F
    .end local v6    # "previewMiddle":F
    .end local v7    # "previewPos":F
    .end local v8    # "previewTop":F
    .end local v10    # "top":I
    :pswitch_0
    move v7, v9

    #@48
    .line 1205
    .restart local v7    # "previewPos":F
    goto :goto_0

    #@49
    .line 1207
    .end local v7    # "previewPos":F
    :pswitch_1
    sub-float v7, v9, v4

    #@4b
    .line 1208
    .restart local v7    # "previewPos":F
    goto :goto_0

    #@4c
    .line 1202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    #@0
    .prologue
    .line 1362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    #@6
    add-long/2addr v0, v2

    #@7
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@9
    .line 1361
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    #@0
    .prologue
    .line 1113
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@4
    .line 1114
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    #@6
    .line 1115
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    #@8
    if-ltz p1, :cond_0

    #@a
    array-length v0, v13

    #@b
    move/from16 v20, v0

    #@d
    move/from16 v0, p1

    #@f
    move/from16 v1, v20

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 1116
    aget-object v12, v13, p1

    #@15
    .line 1117
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    #@17
    .line 1118
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1a
    move-result-object v19

    #@1b
    .line 1122
    .end local v12    # "section":Ljava/lang/Object;
    .end local v19    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@1f
    .line 1123
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@21
    iget-object v7, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@23
    .line 1126
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    #@25
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    #@27
    move/from16 v20, v0

    #@29
    if-eqz v20, :cond_3

    #@2b
    .line 1127
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@2f
    .line 1128
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@33
    move-object/from16 v17, v0

    #@35
    .line 1135
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    #@37
    move-object/from16 v1, v19

    #@39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3c
    .line 1136
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v1, v17

    #@40
    invoke-direct {v0, v1, v4}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    #@43
    .line 1137
    move-object/from16 v0, p0

    #@45
    move-object/from16 v1, v17

    #@47
    invoke-direct {v0, v1, v4}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4a
    .line 1139
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@4e
    move-object/from16 v20, v0

    #@50
    if-eqz v20, :cond_1

    #@52
    .line 1140
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@56
    move-object/from16 v20, v0

    #@58
    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    #@5b
    .line 1144
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    #@5d
    move-object/from16 v0, v17

    #@5f
    move/from16 v1, v20

    #@61
    invoke-static {v0, v1}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    #@64
    move-result-object v20

    #@65
    const-wide/16 v22, 0x32

    #@67
    move-object/from16 v0, v20

    #@69
    move-wide/from16 v1, v22

    #@6b
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@6e
    move-result-object v14

    #@6f
    .line 1145
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    #@71
    move/from16 v0, v20

    #@73
    invoke-static {v15, v0}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    #@76
    move-result-object v20

    #@77
    const-wide/16 v22, 0x32

    #@79
    move-object/from16 v0, v20

    #@7b
    move-wide/from16 v1, v22

    #@7d
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@80
    move-result-object v6

    #@81
    .line 1146
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    #@85
    move-object/from16 v20, v0

    #@87
    move-object/from16 v0, v20

    #@89
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@8c
    .line 1149
    iget v0, v4, Landroid/graphics/Rect;->left:I

    #@8e
    move/from16 v20, v0

    #@90
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    #@93
    move-result v21

    #@94
    sub-int v20, v20, v21

    #@96
    move/from16 v0, v20

    #@98
    iput v0, v4, Landroid/graphics/Rect;->left:I

    #@9a
    .line 1150
    iget v0, v4, Landroid/graphics/Rect;->top:I

    #@9c
    move/from16 v20, v0

    #@9e
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    #@a1
    move-result v21

    #@a2
    sub-int v20, v20, v21

    #@a4
    move/from16 v0, v20

    #@a6
    iput v0, v4, Landroid/graphics/Rect;->top:I

    #@a8
    .line 1151
    iget v0, v4, Landroid/graphics/Rect;->right:I

    #@aa
    move/from16 v20, v0

    #@ac
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    #@af
    move-result v21

    #@b0
    add-int v20, v20, v21

    #@b2
    move/from16 v0, v20

    #@b4
    iput v0, v4, Landroid/graphics/Rect;->right:I

    #@b6
    .line 1152
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    #@b8
    move/from16 v20, v0

    #@ba
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    #@bd
    move-result v21

    #@be
    add-int v20, v20, v21

    #@c0
    move/from16 v0, v20

    #@c2
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    #@c4
    .line 1153
    invoke-static {v7, v4}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    #@c7
    move-result-object v9

    #@c8
    .line 1154
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    #@ca
    move-wide/from16 v0, v20

    #@cc
    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@cf
    .line 1156
    new-instance v20, Landroid/animation/AnimatorSet;

    #@d1
    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    #@d4
    move-object/from16 v0, v20

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput-object v0, v1, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@da
    .line 1157
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@de
    move-object/from16 v20, v0

    #@e0
    move-object/from16 v0, v20

    #@e2
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@e5
    move-result-object v20

    #@e6
    move-object/from16 v0, v20

    #@e8
    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@eb
    move-result-object v5

    #@ec
    .line 1158
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@ef
    .line 1162
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    #@f2
    move-result v20

    #@f3
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    #@f6
    move-result v21

    #@f7
    sub-int v20, v20, v21

    #@f9
    .line 1163
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    #@fc
    move-result v21

    #@fd
    .line 1162
    sub-int v8, v20, v21

    #@ff
    .line 1167
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    #@102
    move-result v18

    #@103
    .line 1168
    .local v18, "targetWidth":I
    move/from16 v0, v18

    #@105
    if-le v0, v8, :cond_4

    #@107
    .line 1169
    int-to-float v0, v8

    #@108
    move/from16 v20, v0

    #@10a
    move/from16 v0, v18

    #@10c
    int-to-float v0, v0

    #@10d
    move/from16 v21, v0

    #@10f
    div-float v20, v20, v21

    #@111
    move-object/from16 v0, v17

    #@113
    move/from16 v1, v20

    #@115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    #@118
    .line 1170
    const/high16 v20, 0x3f800000    # 1.0f

    #@11a
    move-object/from16 v0, v17

    #@11c
    move/from16 v1, v20

    #@11e
    invoke-static {v0, v1}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    #@121
    move-result-object v20

    #@122
    const-wide/16 v22, 0x64

    #@124
    move-object/from16 v0, v20

    #@126
    move-wide/from16 v1, v22

    #@128
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@12b
    move-result-object v11

    #@12c
    .line 1171
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@12f
    .line 1177
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    #@132
    move-result v16

    #@133
    .line 1178
    .local v16, "showingWidth":I
    move/from16 v0, v16

    #@135
    move/from16 v1, v18

    #@137
    if-le v0, v1, :cond_2

    #@139
    .line 1179
    move/from16 v0, v18

    #@13b
    int-to-float v0, v0

    #@13c
    move/from16 v20, v0

    #@13e
    move/from16 v0, v16

    #@140
    int-to-float v0, v0

    #@141
    move/from16 v21, v0

    #@143
    div-float v10, v20, v21

    #@145
    .line 1180
    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    #@148
    move-result-object v20

    #@149
    const-wide/16 v22, 0x64

    #@14b
    move-object/from16 v0, v20

    #@14d
    move-wide/from16 v1, v22

    #@14f
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@152
    move-result-object v11

    #@153
    .line 1181
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@156
    .line 1184
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@15a
    move-object/from16 v20, v0

    #@15c
    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    #@15f
    .line 1186
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@162
    move-result v20

    #@163
    if-eqz v20, :cond_5

    #@165
    const/16 v20, 0x0

    #@167
    :goto_2
    return v20

    #@168
    .line 1130
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    #@16a
    iget-object v15, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@16c
    .line 1131
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    #@16e
    iget-object v0, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@170
    move-object/from16 v17, v0

    #@172
    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    #@174
    .line 1173
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    #@176
    move-object/from16 v0, v17

    #@178
    move/from16 v1, v20

    #@17a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    #@17d
    goto :goto_1

    #@17e
    .line 1186
    .restart local v16    # "showingWidth":I
    :cond_5
    const/16 v20, 0x1

    #@180
    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x96

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x1

    #@5
    .line 907
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 908
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@b
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    #@e
    .line 912
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@10
    .line 911
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Landroid/view/View;

    #@13
    .line 912
    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@15
    aput-object v4, v3, v6

    #@17
    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@19
    aput-object v4, v3, v5

    #@1b
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@1d
    aput-object v4, v3, v7

    #@1f
    const/high16 v4, 0x3f800000    # 1.0f

    #@21
    .line 911
    invoke-static {v2, v4, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@28
    move-result-object v0

    #@29
    .line 915
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@2b
    .line 914
    new-array v3, v7, [Landroid/view/View;

    #@2d
    .line 915
    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@2f
    aput-object v4, v3, v6

    #@31
    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@33
    aput-object v4, v3, v5

    #@35
    const/4 v4, 0x0

    #@36
    .line 914
    invoke-static {v2, v4, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@3d
    move-result-object v1

    #@3e
    .line 917
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    #@40
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    #@43
    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@45
    .line 918
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@47
    new-array v3, v7, [Landroid/animation/Animator;

    #@49
    aput-object v0, v3, v6

    #@4b
    aput-object v1, v3, v5

    #@4d
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@50
    .line 919
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@52
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    #@55
    .line 921
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@57
    .line 906
    return-void
.end method

.method private transitionToHidden()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x12c

    #@2
    const/4 v9, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 860
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 861
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@b
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    #@e
    .line 864
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@10
    const/4 v4, 0x5

    #@11
    new-array v4, v4, [Landroid/view/View;

    #@13
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@15
    aput-object v5, v4, v7

    #@17
    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@19
    aput-object v5, v4, v8

    #@1b
    .line 865
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@1d
    aput-object v5, v4, v9

    #@1f
    iget-object v5, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@21
    const/4 v6, 0x3

    #@22
    aput-object v5, v4, v6

    #@24
    iget-object v5, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@26
    const/4 v6, 0x4

    #@27
    aput-object v5, v4, v6

    #@29
    .line 864
    const/4 v5, 0x0

    #@2a
    invoke-static {v3, v5, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@31
    move-result-object v0

    #@32
    .line 868
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@34
    if-eqz v3, :cond_1

    #@36
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@38
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    #@3b
    move-result v3

    #@3c
    :goto_0
    int-to-float v1, v3

    #@3d
    .line 870
    .local v1, "offset":F
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@3f
    .line 869
    new-array v4, v9, [Landroid/view/View;

    #@41
    .line 870
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@43
    aput-object v5, v4, v7

    #@45
    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@47
    aput-object v5, v4, v8

    #@49
    .line 869
    invoke-static {v3, v1, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@50
    move-result-object v2

    #@51
    .line 873
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    #@53
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    #@56
    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@58
    .line 874
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@5a
    new-array v4, v9, [Landroid/animation/Animator;

    #@5c
    aput-object v0, v4, v7

    #@5e
    aput-object v2, v4, v8

    #@60
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@63
    .line 875
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@65
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    #@68
    .line 877
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@6a
    .line 859
    return-void

    #@6b
    .line 868
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@6d
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    #@70
    move-result v3

    #@71
    neg-int v3, v3

    #@72
    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 884
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 885
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@b
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    #@e
    .line 888
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@10
    new-array v4, v8, [Landroid/view/View;

    #@12
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@14
    aput-object v5, v4, v6

    #@16
    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@18
    aput-object v5, v4, v7

    #@1a
    const/high16 v5, 0x3f800000    # 1.0f

    #@1c
    invoke-static {v3, v5, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@1f
    move-result-object v3

    #@20
    .line 889
    const-wide/16 v4, 0x96

    #@22
    .line 888
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@25
    move-result-object v0

    #@26
    .line 891
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@28
    .line 890
    new-array v4, v10, [Landroid/view/View;

    #@2a
    .line 891
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@2c
    aput-object v5, v4, v6

    #@2e
    iget-object v5, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@30
    aput-object v5, v4, v7

    #@32
    iget-object v5, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@34
    aput-object v5, v4, v8

    #@36
    .line 890
    invoke-static {v3, v9, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@39
    move-result-object v3

    #@3a
    .line 892
    const-wide/16 v4, 0x12c

    #@3c
    .line 890
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@3f
    move-result-object v1

    #@40
    .line 894
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@42
    .line 893
    new-array v4, v8, [Landroid/view/View;

    #@44
    .line 894
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@46
    aput-object v5, v4, v6

    #@48
    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@4a
    aput-object v5, v4, v7

    #@4c
    .line 893
    invoke-static {v3, v9, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@4f
    move-result-object v3

    #@50
    .line 894
    const-wide/16 v4, 0x96

    #@52
    .line 893
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@55
    move-result-object v2

    #@56
    .line 896
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    #@58
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    #@5b
    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@5d
    .line 897
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@5f
    new-array v4, v10, [Landroid/animation/Animator;

    #@61
    aput-object v0, v4, v6

    #@63
    aput-object v1, v4, v7

    #@65
    aput-object v2, v4, v8

    #@67
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@6a
    .line 898
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@6c
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    #@6f
    .line 900
    iput-boolean v6, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@71
    .line 883
    return-void
.end method

.method private updateAppearance()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 291
    const/4 v1, 0x0

    #@2
    .line 294
    .local v1, "width":I
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@4
    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 295
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 296
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@12
    move-result v2

    #@13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v1

    #@17
    .line 300
    :cond_0
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@19
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1e
    .line 301
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@20
    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    #@22
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    #@25
    .line 302
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@27
    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    #@29
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    #@2c
    .line 303
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 304
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@32
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@35
    move-result v2

    #@36
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@39
    move-result v1

    #@3a
    .line 308
    :cond_1
    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    #@3c
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v2

    #@40
    iput v2, p0, Landroid/widget/FastScroller;->mWidth:I

    #@42
    .line 310
    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    #@44
    if-eqz v2, :cond_2

    #@46
    .line 311
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@48
    iget v3, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    #@4a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@4d
    .line 312
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@4f
    iget v3, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    #@51
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@54
    .line 315
    :cond_2
    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 316
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@5a
    iget-object v3, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    #@5c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@5f
    .line 317
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@61
    iget-object v3, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    #@63
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@66
    .line 320
    :cond_3
    iget v2, p0, Landroid/widget/FastScroller;->mTextSize:F

    #@68
    const/4 v3, 0x0

    #@69
    cmpl-float v2, v2, v3

    #@6b
    if-lez v2, :cond_4

    #@6d
    .line 321
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@6f
    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    #@71
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    #@74
    .line 322
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@76
    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    #@78
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    #@7b
    .line 325
    :cond_4
    iget v0, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    #@7d
    .line 326
    .local v0, "padding":I
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@7f
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    #@82
    .line 327
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@84
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    #@87
    .line 328
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@89
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    #@8c
    .line 329
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@8e
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    #@91
    .line 331
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    #@94
    .line 290
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x1000000

    #@2
    const/4 v4, 0x0

    #@3
    .line 726
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@5
    .line 727
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    #@8
    .line 729
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@a
    .line 730
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@c
    .line 731
    iput v4, v0, Landroid/graphics/Rect;->top:I

    #@e
    .line 732
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    #@11
    move-result v4

    #@12
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@14
    .line 733
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    #@17
    move-result v4

    #@18
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    #@1a
    .line 735
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@1c
    .line 736
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    #@1e
    .line 737
    if-nez v2, :cond_1

    #@20
    .line 738
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@22
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    #@25
    move-result v5

    #@26
    add-int/2addr v4, v5

    #@27
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@29
    .line 739
    iget v4, v0, Landroid/graphics/Rect;->top:I

    #@2b
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@2e
    move-result v5

    #@2f
    add-int/2addr v4, v5

    #@30
    iput v4, v0, Landroid/graphics/Rect;->top:I

    #@32
    .line 740
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@34
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@3b
    .line 741
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@3d
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@40
    move-result v5

    #@41
    sub-int/2addr v4, v5

    #@42
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    #@44
    .line 744
    if-ne v2, v6, :cond_1

    #@46
    .line 745
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    #@49
    move-result v3

    #@4a
    .line 746
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@4c
    const/4 v5, 0x2

    #@4d
    if-ne v4, v5, :cond_2

    #@4f
    .line 747
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@51
    add-int/2addr v4, v3

    #@52
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@54
    .line 725
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    #@55
    .line 749
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    #@57
    sub-int/2addr v4, v3

    #@58
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@5a
    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 529
    if-lez p1, :cond_1

    #@3
    div-int v1, p2, p1

    #@5
    const/4 v2, 0x4

    #@6
    if-lt v1, v2, :cond_1

    #@8
    const/4 v0, 0x1

    #@9
    .line 530
    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    #@b
    if-eq v1, v0, :cond_0

    #@d
    .line 531
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    #@f
    .line 533
    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    #@12
    .line 528
    :cond_0
    return-void

    #@13
    .line 529
    .end local v0    # "longList":Z
    :cond_1
    const/4 v0, 0x0

    #@14
    .restart local v0    # "longList":Z
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    #@0
    .prologue
    .line 801
    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@2
    .line 802
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@4
    .line 805
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    #@6
    const/4 v6, 0x1

    #@7
    if-ne v5, v6, :cond_0

    #@9
    .line 806
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@c
    move-result v5

    #@d
    int-to-float v5, v5

    #@e
    const/high16 v6, 0x40000000    # 2.0f

    #@10
    div-float v0, v5, v6

    #@12
    .line 807
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@15
    move-result v5

    #@16
    int-to-float v5, v5

    #@17
    add-float v2, v5, v0

    #@19
    .line 808
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v5

    #@1d
    int-to-float v5, v5

    #@1e
    sub-float v1, v5, v0

    #@20
    .line 814
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    #@22
    .line 815
    sub-float v5, v1, v2

    #@24
    iput v5, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@26
    .line 800
    return-void

    #@27
    .line 810
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@2a
    move-result v5

    #@2b
    int-to-float v2, v5

    #@2c
    .line 811
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@2f
    move-result v5

    #@30
    int-to-float v1, v5

    #@31
    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 506
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    #@2
    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0

    #@d
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1429
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1430
    return v3

    #@8
    .line 1433
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v0

    #@c
    .line 1434
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 1435
    const/4 v1, 0x7

    #@11
    if-ne v0, v1, :cond_2

    #@13
    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@15
    if-nez v1, :cond_2

    #@17
    .line 1436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1e
    move-result v2

    #@1f
    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    #@22
    move-result v1

    #@23
    .line 1434
    if-eqz v1, :cond_2

    #@25
    .line 1437
    const/4 v1, 0x1

    #@26
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@29
    .line 1438
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@2c
    .line 1441
    :cond_2
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1383
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1384
    return v6

    #@8
    .line 1387
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v1

    #@c
    packed-switch v1, :pswitch_data_0

    #@f
    .line 1425
    :cond_1
    :goto_0
    return v6

    #@10
    .line 1389
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@13
    move-result v1

    #@14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@17
    move-result v2

    #@18
    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1395
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@20
    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_2

    #@26
    .line 1398
    const/4 v1, 0x1

    #@27
    return v1

    #@28
    .line 1401
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    #@2e
    .line 1402
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    #@31
    goto :goto_0

    #@32
    .line 1406
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@35
    move-result v1

    #@36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@39
    move-result v2

    #@3a
    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_3

    #@40
    .line 1407
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    #@43
    goto :goto_0

    #@44
    .line 1408
    :cond_3
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@46
    const-wide/16 v4, 0x0

    #@48
    cmp-long v1, v2, v4

    #@4a
    if-ltz v1, :cond_1

    #@4c
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@51
    move-result-wide v4

    #@52
    cmp-long v1, v2, v4

    #@54
    if-gtz v1, :cond_1

    #@56
    .line 1409
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@59
    .line 1411
    iget v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    #@5b
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    #@5e
    move-result v0

    #@5f
    .line 1412
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    #@62
    .line 1416
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@65
    move-result v1

    #@66
    return v1

    #@67
    .line 1421
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    #@6a
    goto :goto_0

    #@6b
    .line 1387
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 514
    iget v2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    #@3
    if-ne v2, p2, :cond_0

    #@5
    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    #@7
    if-eq v2, p1, :cond_3

    #@9
    .line 515
    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    #@b
    .line 516
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    #@d
    .line 518
    sub-int v2, p2, p1

    #@f
    if-lez v2, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    .line 519
    .local v1, "hasMoreItems":Z
    :cond_1
    if-eqz v1, :cond_2

    #@14
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    #@16
    const/4 v3, 0x2

    #@17
    if-eq v2, v3, :cond_2

    #@19
    .line 520
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1b
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@1e
    move-result v0

    #@1f
    .line 521
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    #@22
    move-result v2

    #@23
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@26
    .line 524
    .end local v0    # "firstVisibleItem":I
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    #@29
    .line 513
    .end local v1    # "hasMoreItems":Z
    :cond_3
    return-void
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 930
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 931
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    #@c
    .line 932
    return-void

    #@d
    .line 935
    :cond_0
    sub-int v2, p3, p2

    #@f
    if-lez v2, :cond_1

    #@11
    move v0, v1

    #@12
    .line 936
    .local v0, "hasMoreItems":Z
    :cond_1
    if-eqz v0, :cond_2

    #@14
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    #@16
    if-eq v2, v3, :cond_2

    #@18
    .line 937
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    #@1b
    move-result v2

    #@1c
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@1f
    .line 940
    :cond_2
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@21
    .line 942
    iget v2, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    #@23
    if-eq v2, p1, :cond_3

    #@25
    .line 943
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    #@27
    .line 946
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    #@29
    if-eq v2, v3, :cond_3

    #@2b
    .line 947
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@2e
    .line 948
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@31
    .line 929
    :cond_3
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    #@0
    .prologue
    .line 981
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@3
    .line 980
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    #@3
    .line 509
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 1445
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1446
    return v4

    #@c
    .line 1449
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@f
    move-result v1

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 1513
    :cond_1
    :goto_0
    return v4

    #@14
    .line 1451
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@17
    move-result v1

    #@18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1b
    move-result v2

    #@1c
    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 1452
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@24
    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 1453
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@2d
    .line 1454
    return v5

    #@2e
    .line 1460
    :pswitch_1
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@30
    cmp-long v1, v2, v8

    #@32
    if-ltz v1, :cond_2

    #@34
    .line 1462
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@37
    .line 1464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@3a
    move-result v1

    #@3b
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    #@3e
    move-result v0

    #@3f
    .line 1465
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@42
    .line 1466
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    #@45
    .line 1471
    .end local v0    # "pos":F
    :cond_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@47
    if-ne v1, v6, :cond_1

    #@49
    .line 1472
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@4b
    if-eqz v1, :cond_3

    #@4d
    .line 1476
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@4f
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    #@52
    .line 1477
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@54
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@57
    .line 1480
    :cond_3
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    #@5a
    .line 1481
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@5d
    .line 1483
    return v5

    #@5e
    .line 1488
    :pswitch_2
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@60
    cmp-long v1, v2, v8

    #@62
    if-ltz v1, :cond_4

    #@64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@67
    move-result v1

    #@68
    iget v2, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    #@6a
    sub-float/2addr v1, v2

    #@6b
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@6e
    move-result v1

    #@6f
    iget v2, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    #@71
    int-to-float v2, v2

    #@72
    cmpl-float v1, v1, v2

    #@74
    if-lez v1, :cond_4

    #@76
    .line 1489
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@79
    .line 1494
    :cond_4
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@7b
    if-ne v1, v6, :cond_1

    #@7d
    .line 1496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@80
    move-result v1

    #@81
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    #@84
    move-result v0

    #@85
    .line 1497
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@88
    .line 1500
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@8a
    if-eqz v1, :cond_5

    #@8c
    .line 1501
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    #@8f
    .line 1504
    :cond_5
    return v5

    #@90
    .line 1509
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    #@93
    goto :goto_0

    #@94
    .line 1449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@2
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@7
    .line 396
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@9
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@e
    .line 397
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@10
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@15
    .line 398
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@17
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@1c
    .line 399
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@1e
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@23
    .line 394
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    #@0
    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 425
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@6
    .line 427
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    #@a
    .line 423
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 407
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    #@6
    .line 409
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    #@a
    .line 405
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 462
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 463
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@6
    .line 465
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    #@9
    .line 461
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 7
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 477
    if-nez p1, :cond_0

    #@4
    .line 478
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@6
    invoke-virtual {v3}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 479
    const/4 p1, 0x1

    #@d
    .line 482
    :cond_0
    :goto_0
    iget v3, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@f
    if-eq v3, p1, :cond_1

    #@11
    .line 483
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@13
    .line 484
    if-eq p1, v4, :cond_3

    #@15
    move v3, v4

    #@16
    :goto_1
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@18
    .line 486
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    #@1a
    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@1c
    if-eqz v6, :cond_4

    #@1e
    :goto_2
    aget v0, v3, v4

    #@20
    .line 487
    .local v0, "previewResId":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@22
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@25
    .line 490
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    #@27
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@29
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    #@2c
    move-result v4

    #@2d
    sub-int/2addr v3, v4

    #@2e
    .line 491
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@30
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    #@33
    move-result v4

    #@34
    .line 490
    sub-int/2addr v3, v4

    #@35
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v2

    #@39
    .line 492
    .local v2, "textMinWidth":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@3b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    #@3e
    .line 493
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@40
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    #@43
    .line 495
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    #@45
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@47
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    #@4a
    move-result v4

    #@4b
    sub-int/2addr v3, v4

    #@4c
    .line 496
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@4e
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    #@51
    move-result v4

    #@52
    .line 495
    sub-int/2addr v3, v4

    #@53
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@56
    move-result v1

    #@57
    .line 497
    .local v1, "textMinHeight":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@59
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    #@5c
    .line 498
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@5e
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    #@61
    .line 501
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    #@64
    .line 476
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_1
    return-void

    #@65
    .line 479
    :cond_2
    const/4 p1, 0x2

    #@66
    goto :goto_0

    #@67
    :cond_3
    move v3, v5

    #@68
    .line 484
    goto :goto_1

    #@69
    :cond_4
    move v4, v5

    #@6a
    .line 486
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 335
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@3
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    .line 337
    .local v1, "context":Landroid/content/Context;
    sget-object v5, Lcom/android/internal/R$styleable;->FastScroll:[I

    #@9
    .line 336
    const/4 v6, 0x0

    #@a
    .line 337
    const v7, 0x10103f7

    #@d
    .line 336
    invoke-virtual {v1, v6, v5, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@10
    move-result-object v4

    #@11
    .line 338
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@14
    move-result v0

    #@15
    .line 339
    .local v0, "N":I
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@18
    .line 340
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@1b
    move-result v3

    #@1c
    .line 341
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    #@1f
    .line 339
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 343
    :pswitch_0
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25
    move-result v5

    #@26
    iput v5, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    #@28
    goto :goto_1

    #@29
    .line 346
    :pswitch_1
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    #@2b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2e
    move-result v6

    #@2f
    aput v6, v5, v8

    #@31
    goto :goto_1

    #@32
    .line 349
    :pswitch_2
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    #@34
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@37
    move-result v6

    #@38
    const/4 v7, 0x1

    #@39
    aput v6, v5, v7

    #@3b
    goto :goto_1

    #@3c
    .line 352
    :pswitch_3
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@3f
    move-result-object v5

    #@40
    iput-object v5, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    #@42
    goto :goto_1

    #@43
    .line 355
    :pswitch_4
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v5

    #@47
    iput-object v5, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@49
    goto :goto_1

    #@4a
    .line 358
    :pswitch_5
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4d
    move-result v5

    #@4e
    iput v5, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    #@50
    goto :goto_1

    #@51
    .line 361
    :pswitch_6
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@54
    move-result-object v5

    #@55
    iput-object v5, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    #@57
    goto :goto_1

    #@58
    .line 364
    :pswitch_7
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@5b
    move-result v5

    #@5c
    int-to-float v5, v5

    #@5d
    iput v5, p0, Landroid/widget/FastScroller;->mTextSize:F

    #@5f
    goto :goto_1

    #@60
    .line 367
    :pswitch_8
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@63
    move-result v5

    #@64
    iput v5, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    #@66
    goto :goto_1

    #@67
    .line 370
    :pswitch_9
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@6a
    move-result v5

    #@6b
    iput v5, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    #@6d
    goto :goto_1

    #@6e
    .line 373
    :pswitch_a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@71
    move-result v5

    #@72
    iput v5, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    #@74
    goto :goto_1

    #@75
    .line 376
    :pswitch_b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@78
    move-result v5

    #@79
    iput v5, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    #@7b
    goto :goto_1

    #@7c
    .line 379
    :pswitch_c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@7f
    move-result v5

    #@80
    iput v5, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    #@82
    goto :goto_1

    #@83
    .line 382
    :pswitch_d
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@86
    move-result v5

    #@87
    iput v5, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    #@89
    goto :goto_1

    #@8a
    .line 386
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@8d
    .line 388
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    #@90
    .line 334
    return-void

    #@91
    .line 341
    nop

    #@92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 473
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    #@4
    .line 472
    return-void
.end method

.method public updateLayout()V
    .locals 3

    #@0
    .prologue
    .line 562
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 563
    return-void

    #@5
    .line 566
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    #@8
    .line 568
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    #@b
    .line 570
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    #@e
    .line 571
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    #@11
    .line 573
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    #@14
    .line 575
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@16
    .line 576
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@18
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    #@1b
    .line 577
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@1d
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@20
    .line 578
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@22
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    #@25
    .line 579
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@27
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@2a
    .line 581
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 583
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@30
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@32
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    #@35
    move-result v2

    #@36
    sub-int/2addr v1, v2

    #@37
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@39
    .line 584
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@3b
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@3d
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    #@40
    move-result v2

    #@41
    sub-int/2addr v1, v2

    #@42
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@44
    .line 585
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@46
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@48
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v1, v2

    #@4d
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@4f
    .line 586
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@51
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@53
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    #@56
    move-result v2

    #@57
    add-int/2addr v1, v2

    #@58
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@5a
    .line 587
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@5c
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5f
    .line 590
    :cond_1
    const/4 v1, 0x0

    #@60
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    #@62
    .line 559
    return-void
.end method
