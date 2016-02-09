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
    .line 1602
    new-instance v0, Landroid/widget/FastScroller$3;

    #@9
    const-string/jumbo v1, "left"

    #@c
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    #@11
    .line 1618
    new-instance v0, Landroid/widget/FastScroller$4;

    #@13
    const-string/jumbo v1, "top"

    #@16
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    #@19
    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    #@1b
    .line 1634
    new-instance v0, Landroid/widget/FastScroller$5;

    #@1d
    const-string/jumbo v1, "right"

    #@20
    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    #@23
    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    #@25
    .line 1650
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
    const v3, 0x1050087

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
    .line 1595
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
    .line 1666
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
    .line 1667
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
    .line 1668
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
    .line 1669
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
    .line 1670
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
    .line 1588
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
    .line 600
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
    .line 601
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
    .line 599
    return-void

    #@19
    .line 601
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
    .line 1365
    const-wide/16 v0, -0x1

    #@3
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@5
    .line 1367
    const/4 v0, 0x2

    #@6
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    #@9
    .line 1369
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@b
    if-nez v0, :cond_0

    #@d
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 1370
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    #@14
    .line 1373
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1374
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1a
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    #@1d
    .line 1375
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1f
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@22
    .line 1378
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    #@25
    .line 1364
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
    .line 1342
    const/4 v4, 0x3

    #@4
    const/4 v7, 0x0

    #@5
    move-wide v2, v0

    #@6
    move v6, v5

    #@7
    .line 1341
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@a
    move-result-object v8

    #@b
    .line 1343
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@d
    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@10
    .line 1344
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@13
    .line 1340
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    #@0
    .prologue
    .line 1353
    const-wide/16 v0, -0x1

    #@2
    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@4
    .line 1352
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 540
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@3
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@6
    .line 542
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    #@8
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@b
    .line 543
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@e
    .line 544
    const/4 v2, 0x1

    #@f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    #@12
    .line 545
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    #@14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@17
    .line 546
    const/16 v2, 0x11

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    #@1c
    .line 547
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    #@20
    .line 550
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@22
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    #@29
    .line 552
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    #@0
    .prologue
    .line 1248
    move-object/from16 v0, p0

    #@2
    iget-object v15, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@4
    .line 1249
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
    .line 1250
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    #@11
    .line 1253
    :cond_1
    if-eqz p2, :cond_2

    #@13
    if-nez p3, :cond_3

    #@15
    .line 1255
    :cond_2
    const/16 v17, 0x0

    #@17
    return v17

    #@18
    .line 1258
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
    .line 1259
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
    const/4 v5, 0x1

    #@30
    .line 1260
    .local v5, "hasSections":Z
    :goto_0
    if-eqz v5, :cond_6

    #@32
    move-object/from16 v0, p0

    #@34
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    #@36
    move/from16 v17, v0

    #@38
    if-eqz v17, :cond_6

    #@3a
    .line 1270
    move-object/from16 v0, p0

    #@3c
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@3e
    move/from16 v17, v0

    #@40
    sub-int p1, p1, v17

    #@42
    .line 1271
    if-gez p1, :cond_8

    #@44
    .line 1272
    const/16 v17, 0x0

    #@46
    return v17

    #@47
    .line 1259
    .end local v5    # "hasSections":Z
    :cond_4
    const/4 v5, 0x0

    #@48
    .restart local v5    # "hasSections":Z
    goto :goto_0

    #@49
    .line 1258
    .end local v5    # "hasSections":Z
    :cond_5
    const/4 v5, 0x0

    #@4a
    .restart local v5    # "hasSections":Z
    goto :goto_0

    #@4b
    .line 1261
    :cond_6
    move/from16 v0, p2

    #@4d
    move/from16 v1, p3

    #@4f
    if-ne v0, v1, :cond_7

    #@51
    .line 1263
    const/16 v17, 0x0

    #@53
    return v17

    #@54
    .line 1265
    :cond_7
    move/from16 v0, p1

    #@56
    int-to-float v0, v0

    #@57
    move/from16 v17, v0

    #@59
    sub-int v18, p3, p2

    #@5b
    move/from16 v0, v18

    #@5d
    int-to-float v0, v0

    #@5e
    move/from16 v18, v0

    #@60
    div-float v17, v17, v18

    #@62
    return v17

    #@63
    .line 1274
    :cond_8
    move-object/from16 v0, p0

    #@65
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@67
    move/from16 v17, v0

    #@69
    sub-int p3, p3, v17

    #@6b
    .line 1277
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@6f
    move-object/from16 v17, v0

    #@71
    const/16 v18, 0x0

    #@73
    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@76
    move-result-object v3

    #@77
    .line 1279
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_9

    #@79
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@7c
    move-result v17

    #@7d
    if-nez v17, :cond_b

    #@7f
    .line 1280
    :cond_9
    const/4 v6, 0x0

    #@80
    .line 1286
    .local v6, "incrementalPos":F
    :goto_1
    move/from16 v0, p1

    #@82
    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    #@85
    move-result v13

    #@86
    .line 1287
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@89
    move-result v16

    #@8a
    .line 1288
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@8e
    move-object/from16 v17, v0

    #@90
    move-object/from16 v0, v17

    #@92
    array-length v14, v0

    #@93
    .line 1290
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    #@95
    move/from16 v0, v17

    #@97
    if-ge v13, v0, :cond_d

    #@99
    .line 1292
    add-int/lit8 v17, v13, 0x1

    #@9b
    move/from16 v0, v17

    #@9d
    if-ge v0, v14, :cond_c

    #@9f
    .line 1293
    add-int/lit8 v17, v13, 0x1

    #@a1
    move/from16 v0, v17

    #@a3
    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@a6
    move-result v9

    #@a7
    .line 1297
    .local v9, "nextSectionPos":I
    :goto_2
    sub-int v11, v9, v16

    #@a9
    .line 1304
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_3
    if-nez v11, :cond_e

    #@ab
    .line 1305
    const/4 v10, 0x0

    #@ac
    .line 1311
    .local v10, "posWithinSection":F
    :goto_4
    int-to-float v0, v13

    #@ad
    move/from16 v17, v0

    #@af
    add-float v17, v17, v10

    #@b1
    int-to-float v0, v14

    #@b2
    move/from16 v18, v0

    #@b4
    div-float v12, v17, v18

    #@b6
    .line 1316
    .local v12, "result":F
    if-lez p1, :cond_a

    #@b8
    add-int v17, p1, p2

    #@ba
    move/from16 v0, v17

    #@bc
    move/from16 v1, p3

    #@be
    if-ne v0, v1, :cond_a

    #@c0
    .line 1317
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@c4
    move-object/from16 v17, v0

    #@c6
    add-int/lit8 v18, p2, -0x1

    #@c8
    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@cb
    move-result-object v7

    #@cc
    .line 1318
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@d0
    move-object/from16 v17, v0

    #@d2
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    #@d5
    move-result v2

    #@d6
    .line 1321
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@da
    move-object/from16 v17, v0

    #@dc
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    #@df
    move-result v17

    #@e0
    if-eqz v17, :cond_f

    #@e2
    .line 1322
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@e5
    move-result v8

    #@e6
    .line 1323
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@ea
    move-object/from16 v17, v0

    #@ec
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    #@ef
    move-result v17

    #@f0
    sub-int v17, v17, v2

    #@f2
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@f5
    move-result v18

    #@f6
    sub-int v4, v17, v18

    #@f8
    .line 1328
    .local v4, "currentVisibleSize":I
    :goto_5
    if-lez v4, :cond_a

    #@fa
    if-lez v8, :cond_a

    #@fc
    .line 1329
    const/high16 v17, 0x3f800000    # 1.0f

    #@fe
    sub-float v17, v17, v12

    #@100
    int-to-float v0, v4

    #@101
    move/from16 v18, v0

    #@103
    int-to-float v0, v8

    #@104
    move/from16 v19, v0

    #@106
    div-float v18, v18, v19

    #@108
    mul-float v17, v17, v18

    #@10a
    add-float v12, v12, v17

    #@10c
    .line 1333
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    :cond_a
    return v12

    #@10d
    .line 1282
    .end local v6    # "incrementalPos":F
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@111
    move-object/from16 v17, v0

    #@113
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@116
    move-result v17

    #@117
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@11a
    move-result v18

    #@11b
    sub-int v17, v17, v18

    #@11d
    move/from16 v0, v17

    #@11f
    int-to-float v0, v0

    #@120
    move/from16 v17, v0

    #@122
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@125
    move-result v18

    #@126
    move/from16 v0, v18

    #@128
    int-to-float v0, v0

    #@129
    move/from16 v18, v0

    #@12b
    div-float v6, v17, v18

    #@12d
    .restart local v6    # "incrementalPos":F
    goto/16 :goto_1

    #@12f
    .line 1295
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    #@131
    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_2

    #@133
    .line 1299
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    #@135
    .restart local v11    # "positionsInSection":I
    goto/16 :goto_3

    #@137
    .line 1307
    :cond_e
    move/from16 v0, p1

    #@139
    int-to-float v0, v0

    #@13a
    move/from16 v17, v0

    #@13c
    add-float v17, v17, v6

    #@13e
    move/from16 v0, v16

    #@140
    int-to-float v0, v0

    #@141
    move/from16 v18, v0

    #@143
    sub-float v17, v17, v18

    #@145
    .line 1308
    int-to-float v0, v11

    #@146
    move/from16 v18, v0

    #@148
    .line 1307
    div-float v10, v17, v18

    #@14a
    .restart local v10    # "posWithinSection":F
    goto/16 :goto_4

    #@14c
    .line 1325
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    #@14f
    move-result v17

    #@150
    add-int v8, v17, v2

    #@152
    .line 1326
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    #@154
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@156
    move-object/from16 v17, v0

    #@158
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    #@15b
    move-result v17

    #@15c
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@15f
    move-result v18

    #@160
    sub-int v4, v17, v18

    #@162
    .restart local v4    # "currentVisibleSize":I
    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1231
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@3
    cmpg-float v0, v0, v2

    #@5
    if-gtz v0, :cond_0

    #@7
    .line 1232
    return v2

    #@8
    .line 1235
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
    .line 953
    iput-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@3
    .line 955
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@5
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    #@8
    move-result-object v0

    #@9
    .line 956
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    #@b
    if-eqz v2, :cond_0

    #@d
    move-object v2, v0

    #@e
    .line 957
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    #@10
    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@13
    move-result v2

    #@14
    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@16
    .line 958
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    #@18
    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@1b
    move-result-object v0

    #@1c
    .line 961
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    #@1e
    if-eqz v2, :cond_2

    #@20
    move-object v2, v0

    #@21
    .line 962
    check-cast v2, Landroid/widget/ExpandableListConnector;

    #@23
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    #@26
    move-result-object v1

    #@27
    .line 964
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 965
    check-cast v1, Landroid/widget/SectionIndexer;

    #@2d
    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@2f
    .line 966
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@31
    .line 967
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@33
    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@39
    .line 952
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    #@3a
    .line 969
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    #@3c
    if-eqz v2, :cond_3

    #@3e
    .line 970
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@40
    .line 971
    check-cast v0, Landroid/widget/SectionIndexer;

    #@42
    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@44
    .line 972
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
    .line 974
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@4f
    .line 975
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
    .line 1569
    new-instance v1, Landroid/animation/AnimatorSet;

    #@3
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@6
    .line 1570
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    #@7
    .line 1572
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
    .line 1573
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
    .line 1574
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    #@19
    .line 1575
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1c
    move-result-object v2

    #@1d
    .line 1572
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 1577
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@23
    goto :goto_1

    #@24
    .line 1581
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
    .line 1526
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
    .line 1530
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@4
    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    #@7
    move-result v2

    #@8
    .line 1531
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
    .line 1532
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
    .line 1535
    .local v3, "right":F
    iget v7, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    #@1c
    int-to-float v7, v7

    #@1d
    sub-float v8, v3, v1

    #@1f
    sub-float v4, v7, v8

    #@21
    .line 1536
    .local v4, "targetSizeDiff":F
    const/4 v7, 0x0

    #@22
    cmpl-float v7, v4, v7

    #@24
    if-lez v7, :cond_0

    #@26
    move v0, v4

    #@27
    .line 1538
    .local v0, "adjust":F
    :goto_0
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@29
    if-eqz v7, :cond_2

    #@2b
    .line 1539
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
    .line 1536
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
    .line 1539
    goto :goto_1

    #@3c
    .line 1541
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
    .line 1546
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@3
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTranslationY()F

    #@6
    move-result v2

    #@7
    .line 1547
    .local v2, "offset":F
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@9
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    #@c
    move-result v6

    #@d
    int-to-float v6, v6

    #@e
    add-float v4, v6, v2

    #@10
    .line 1548
    .local v4, "top":F
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@12
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    #@15
    move-result v6

    #@16
    int-to-float v6, v6

    #@17
    add-float v1, v6, v2

    #@19
    .line 1551
    .local v1, "bottom":F
    iget v6, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    #@1b
    int-to-float v6, v6

    #@1c
    sub-float v7, v1, v4

    #@1e
    sub-float v3, v6, v7

    #@20
    .line 1552
    .local v3, "targetSizeDiff":F
    const/4 v6, 0x0

    #@21
    cmpl-float v6, v3, v6

    #@23
    if-lez v6, :cond_1

    #@25
    const/high16 v6, 0x40000000    # 2.0f

    #@27
    div-float v0, v3, v6

    #@29
    .line 1554
    .local v0, "adjust":F
    :goto_0
    sub-float v6, v4, v0

    #@2b
    cmpl-float v6, p1, v6

    #@2d
    if-ltz v6, :cond_0

    #@2f
    add-float v6, v1, v0

    #@31
    cmpg-float v6, p1, v6

    #@33
    if-gtz v6, :cond_0

    #@35
    const/4 v5, 0x1

    #@36
    :cond_0
    return v5

    #@37
    .line 1552
    .end local v0    # "adjust":F
    :cond_1
    const/4 v0, 0x0

    #@38
    .restart local v0    # "adjust":F
    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 758
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@3
    .line 759
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@5
    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@8
    .line 760
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@a
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@d
    .line 757
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 768
    iget-object v10, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@3
    .line 769
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@5
    .line 770
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@7
    .line 771
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@a
    move-result v13

    #@b
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v5

    #@f
    .line 772
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@12
    move-result v13

    #@13
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v4

    #@17
    .line 773
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    #@19
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1c
    move-result v12

    #@1d
    .line 774
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@20
    move-result v2

    #@21
    .line 776
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    #@24
    .line 780
    iget v13, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    #@26
    const/4 v14, 0x1

    #@27
    if-ne v13, v14, :cond_0

    #@29
    .line 781
    iget v9, v1, Landroid/graphics/Rect;->top:I

    #@2b
    .line 782
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    #@2d
    .line 789
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    #@30
    move-result v11

    #@31
    .line 790
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
    .line 791
    .local v3, "left":I
    add-int v6, v3, v11

    #@40
    .line 792
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    #@43
    .line 767
    return-void

    #@44
    .line 784
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
    .line 785
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    #@4c
    add-int v9, v13, v8

    #@4e
    .line 786
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
    .line 692
    if-nez p2, :cond_0

    #@2
    .line 693
    const/4 v10, 0x0

    #@3
    .line 694
    .local v10, "marginLeft":I
    const/4 v12, 0x0

    #@4
    .line 695
    .local v12, "marginTop":I
    const/4 v11, 0x0

    #@5
    .line 702
    .local v11, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@9
    .line 703
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v7

    #@d
    .line 704
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
    .line 705
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
    .line 706
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    #@2b
    move/from16 v0, v17

    #@2d
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@30
    move-result v16

    #@31
    .line 708
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    #@33
    .line 707
    move/from16 v0, v17

    #@35
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@38
    move-result v8

    #@39
    .line 709
    .local v8, "heightMeasureSpec":I
    move-object/from16 v0, p1

    #@3b
    move/from16 v1, v16

    #@3d
    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    #@40
    .line 712
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@43
    move-result v6

    #@44
    .line 713
    .local v6, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    #@47
    move-result v15

    #@48
    .line 714
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
    .line 715
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@55
    move-result v17

    #@56
    add-int v4, v14, v17

    #@58
    .line 716
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
    .line 717
    .local v9, "left":I
    add-int v13, v9, v15

    #@64
    .line 718
    .local v13, "right":I
    move-object/from16 v0, p3

    #@66
    invoke-virtual {v0, v9, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@69
    .line 688
    return-void

    #@6a
    .line 697
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
    .line 698
    .restart local v10    # "marginLeft":I
    move-object/from16 v0, p2

    #@70
    iget v12, v0, Landroid/graphics/Rect;->top:I

    #@72
    .line 699
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
    .line 614
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    #@2
    .line 615
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    #@7
    move-result v1

    #@8
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@a
    .line 616
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@c
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    #@f
    move-result v1

    #@10
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@12
    .line 617
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@14
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@1a
    .line 618
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    #@1f
    move-result v1

    #@20
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@22
    .line 620
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    #@24
    if-nez v1, :cond_0

    #@26
    .line 621
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@29
    .line 612
    :goto_0
    return-void

    #@2a
    .line 623
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
    .line 642
    if-nez p3, :cond_0

    #@2
    .line 643
    const/4 v9, 0x0

    #@3
    .line 644
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    #@4
    .line 645
    .local v11, "marginTop":I
    const/4 v10, 0x0

    #@5
    .line 652
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@9
    .line 653
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@c
    move-result v6

    #@d
    .line 655
    .local v6, "containerWidth":I
    if-nez p2, :cond_1

    #@f
    .line 656
    move v12, v6

    #@10
    .line 663
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
    .line 664
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
    .line 665
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    #@2e
    move/from16 v0, v17

    #@30
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@33
    move-result v16

    #@34
    .line 667
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    #@36
    .line 666
    move/from16 v0, v17

    #@38
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@3b
    move-result v7

    #@3c
    .line 668
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    #@3e
    move/from16 v1, v16

    #@40
    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    #@43
    .line 671
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
    .line 674
    .local v15, "width":I
    move-object/from16 v0, p0

    #@4f
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@51
    move/from16 v17, v0

    #@53
    if-eqz v17, :cond_4

    #@55
    .line 675
    if-nez p2, :cond_3

    #@57
    iget v0, v5, Landroid/graphics/Rect;->right:I

    #@59
    move/from16 v17, v0

    #@5b
    :goto_2
    sub-int v13, v17, v10

    #@5d
    .line 676
    .local v13, "right":I
    sub-int v8, v13, v15

    #@5f
    .line 683
    .local v8, "left":I
    :goto_3
    move v14, v11

    #@60
    .line 684
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    #@63
    move-result v17

    #@64
    add-int v4, v14, v17

    #@66
    .line 685
    .local v4, "bottom":I
    move-object/from16 v0, p4

    #@68
    invoke-virtual {v0, v8, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@6b
    .line 638
    return-void

    #@6c
    .line 647
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
    .line 648
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p3

    #@72
    iget v11, v0, Landroid/graphics/Rect;->top:I

    #@74
    .line 649
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p3

    #@76
    iget v10, v0, Landroid/graphics/Rect;->right:I

    #@78
    .restart local v10    # "marginRight":I
    goto :goto_0

    #@79
    .line 657
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
    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    #@84
    move-result v12

    #@85
    .restart local v12    # "maxWidth":I
    goto :goto_1

    #@86
    .line 660
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
    .line 675
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
    .line 678
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
    .line 679
    .restart local v8    # "left":I
    add-int v13, v8, v15

    #@9c
    .restart local v13    # "right":I
    goto :goto_3

    #@9d
    .line 678
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
    .line 444
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_3

    #@7
    .line 445
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 446
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@10
    .line 457
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@12
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    #@15
    .line 443
    return-void

    #@16
    .line 447
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    #@18
    if-ne v0, v1, :cond_2

    #@1a
    .line 448
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@1d
    goto :goto_0

    #@1e
    .line 449
    :cond_2
    if-eqz p1, :cond_0

    #@20
    .line 450
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@23
    .line 451
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@26
    goto :goto_0

    #@27
    .line 454
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    #@2a
    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@2
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 925
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@9
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@b
    const-wide/16 v2, 0x5dc

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@10
    .line 923
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    #@0
    .prologue
    .line 850
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@2
    const/4 v2, 0x2

    #@3
    if-ne v1, v2, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 851
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    #@b
    .line 852
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    #@10
    .line 849
    return-void

    #@11
    .line 850
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
    .line 988
    const/16 v22, 0x0

    #@2
    move/from16 v0, v22

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@8
    .line 990
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
    .line 991
    .local v4, "count":I
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@16
    move-object/from16 v18, v0

    #@18
    .line 992
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    #@1a
    const/16 v16, 0x0

    #@1c
    .line 994
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
    .line 996
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
    .line 995
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
    .line 997
    .local v5, "exactSection":I
    move/from16 v21, v5

    #@42
    .line 998
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@46
    move-object/from16 v22, v0

    #@48
    move-object/from16 v0, v22

    #@4a
    move/from16 v1, v21

    #@4c
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@4f
    move-result v20

    #@50
    .line 999
    .local v20, "targetIndex":I
    move/from16 v17, v21

    #@52
    .line 1007
    .local v17, "sectionIndex":I
    move v9, v4

    #@53
    .line 1008
    .local v9, "nextIndex":I
    move/from16 v13, v20

    #@55
    .line 1009
    .local v13, "prevIndex":I
    move/from16 v15, v21

    #@57
    .line 1010
    .local v15, "prevSection":I
    add-int/lit8 v12, v21, 0x1

    #@59
    .line 1013
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    #@5b
    move/from16 v0, v21

    #@5d
    move/from16 v1, v22

    #@5f
    if-ge v0, v1, :cond_0

    #@61
    .line 1014
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@65
    move-object/from16 v22, v0

    #@67
    add-int/lit8 v23, v21, 0x1

    #@69
    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@6c
    move-result v9

    #@6d
    .line 1018
    :cond_0
    move/from16 v0, v20

    #@6f
    if-ne v9, v0, :cond_2

    #@71
    .line 1020
    :cond_1
    if-lez v21, :cond_2

    #@73
    .line 1021
    add-int/lit8 v21, v21, -0x1

    #@75
    .line 1022
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@79
    move-object/from16 v22, v0

    #@7b
    move-object/from16 v0, v22

    #@7d
    move/from16 v1, v21

    #@7f
    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@82
    move-result v13

    #@83
    .line 1023
    move/from16 v0, v20

    #@85
    if-eq v13, v0, :cond_4

    #@87
    .line 1024
    move/from16 v15, v21

    #@89
    .line 1025
    move/from16 v17, v21

    #@8b
    .line 1041
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    #@8d
    .line 1042
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    #@8f
    if-ge v10, v0, :cond_5

    #@91
    .line 1043
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    #@95
    move-object/from16 v22, v0

    #@97
    move-object/from16 v0, v22

    #@99
    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    #@9c
    move-result v22

    #@9d
    move/from16 v0, v22

    #@9f
    if-ne v0, v9, :cond_5

    #@a1
    .line 1044
    add-int/lit8 v10, v10, 0x1

    #@a3
    .line 1045
    add-int/lit8 v12, v12, 0x1

    #@a5
    goto :goto_2

    #@a6
    .line 992
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

    #@a8
    array-length v0, v0

    #@a9
    move/from16 v16, v0

    #@ab
    .restart local v16    # "sectionCount":I
    goto/16 :goto_0

    #@ad
    .line 1027
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

    #@af
    .line 1030
    const/16 v17, 0x0

    #@b1
    .line 1031
    goto :goto_1

    #@b2
    .line 1052
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    #@b3
    move/from16 v22, v0

    #@b5
    move/from16 v0, v16

    #@b7
    int-to-float v0, v0

    #@b8
    move/from16 v23, v0

    #@ba
    div-float v14, v22, v23

    #@bc
    .line 1053
    .local v14, "prevPosition":F
    int-to-float v0, v12

    #@bd
    move/from16 v22, v0

    #@bf
    move/from16 v0, v16

    #@c1
    int-to-float v0, v0

    #@c2
    move/from16 v23, v0

    #@c4
    div-float v11, v22, v23

    #@c6
    .line 1054
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    #@c8
    const v19, 0x7f7fffff    # Float.MAX_VALUE

    #@cb
    .line 1055
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    #@cd
    sub-float v22, p1, v14

    #@cf
    cmpg-float v22, v22, v19

    #@d1
    if-gez v22, :cond_8

    #@d3
    .line 1056
    move/from16 v20, v13

    #@d5
    .line 1063
    :goto_4
    add-int/lit8 v22, v4, -0x1

    #@d7
    const/16 v23, 0x0

    #@d9
    move/from16 v0, v20

    #@db
    move/from16 v1, v23

    #@dd
    move/from16 v2, v22

    #@df
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@e2
    move-result v20

    #@e3
    .line 1065
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@e7
    move-object/from16 v22, v0

    #@e9
    move-object/from16 v0, v22

    #@eb
    instance-of v0, v0, Landroid/widget/ExpandableListView;

    #@ed
    move/from16 v22, v0

    #@ef
    if-eqz v22, :cond_9

    #@f1
    .line 1066
    move-object/from16 v0, p0

    #@f3
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@f5
    check-cast v6, Landroid/widget/ExpandableListView;

    #@f7
    .line 1068
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    #@f9
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@fb
    move/from16 v22, v0

    #@fd
    add-int v22, v22, v20

    #@ff
    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    #@102
    move-result-wide v22

    #@103
    .line 1067
    move-wide/from16 v0, v22

    #@105
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    #@108
    move-result v22

    #@109
    .line 1069
    const/16 v23, 0x0

    #@10b
    .line 1067
    move/from16 v0, v22

    #@10d
    move/from16 v1, v23

    #@10f
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    #@112
    .line 1091
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

    #@114
    iget v0, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    #@116
    move/from16 v22, v0

    #@118
    move/from16 v0, v22

    #@11a
    move/from16 v1, v17

    #@11c
    if-eq v0, v1, :cond_6

    #@11e
    .line 1092
    move/from16 v0, v17

    #@120
    move-object/from16 v1, p0

    #@122
    iput v0, v1, Landroid/widget/FastScroller;->mCurrentSection:I

    #@124
    .line 1094
    move-object/from16 v0, p0

    #@126
    move/from16 v1, v17

    #@128
    invoke-direct {v0, v1}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    #@12b
    move-result v7

    #@12c
    .line 1095
    .local v7, "hasPreview":Z
    move-object/from16 v0, p0

    #@12e
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@130
    move/from16 v22, v0

    #@132
    if-nez v22, :cond_e

    #@134
    if-eqz v7, :cond_e

    #@136
    .line 1096
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    #@139
    .line 987
    .end local v7    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    #@13a
    .line 1054
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

    #@13b
    move/from16 v22, v0

    #@13d
    const/high16 v23, 0x3e000000    # 0.125f

    #@13f
    div-float v19, v23, v22

    #@141
    .restart local v19    # "snapThreshold":F
    goto :goto_3

    #@142
    .line 1058
    :cond_8
    sub-int v22, v9, v13

    #@144
    move/from16 v0, v22

    #@146
    int-to-float v0, v0

    #@147
    move/from16 v22, v0

    #@149
    sub-float v23, p1, v14

    #@14b
    mul-float v22, v22, v23

    #@14d
    .line 1059
    sub-float v23, v11, v14

    #@14f
    .line 1058
    div-float v22, v22, v23

    #@151
    move/from16 v0, v22

    #@153
    float-to-int v0, v0

    #@154
    move/from16 v22, v0

    #@156
    add-int v20, v13, v22

    #@158
    goto/16 :goto_4

    #@15a
    .line 1070
    :cond_9
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@15e
    move-object/from16 v22, v0

    #@160
    move-object/from16 v0, v22

    #@162
    instance-of v0, v0, Landroid/widget/ListView;

    #@164
    move/from16 v22, v0

    #@166
    if-eqz v22, :cond_a

    #@168
    .line 1071
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@16c
    move-object/from16 v22, v0

    #@16e
    check-cast v22, Landroid/widget/ListView;

    #@170
    move-object/from16 v0, p0

    #@172
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@174
    move/from16 v23, v0

    #@176
    add-int v23, v23, v20

    #@178
    const/16 v24, 0x0

    #@17a
    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@17d
    goto :goto_5

    #@17e
    .line 1073
    :cond_a
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@182
    move-object/from16 v22, v0

    #@184
    move-object/from16 v0, p0

    #@186
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@188
    move/from16 v23, v0

    #@18a
    add-int v23, v23, v20

    #@18c
    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    #@18f
    goto :goto_5

    #@190
    .line 1076
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

    #@191
    move/from16 v22, v0

    #@193
    mul-float v22, v22, p1

    #@195
    move/from16 v0, v22

    #@197
    float-to-int v0, v0

    #@198
    move/from16 v22, v0

    #@19a
    add-int/lit8 v23, v4, -0x1

    #@19c
    const/16 v24, 0x0

    #@19e
    move/from16 v0, v22

    #@1a0
    move/from16 v1, v24

    #@1a2
    move/from16 v2, v23

    #@1a4
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    #@1a7
    move-result v8

    #@1a8
    .line 1078
    .local v8, "index":I
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1ac
    move-object/from16 v22, v0

    #@1ae
    move-object/from16 v0, v22

    #@1b0
    instance-of v0, v0, Landroid/widget/ExpandableListView;

    #@1b2
    move/from16 v22, v0

    #@1b4
    if-eqz v22, :cond_c

    #@1b6
    .line 1079
    move-object/from16 v0, p0

    #@1b8
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1ba
    check-cast v6, Landroid/widget/ExpandableListView;

    #@1bc
    .line 1081
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    #@1be
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@1c0
    move/from16 v22, v0

    #@1c2
    add-int v22, v22, v8

    #@1c4
    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    #@1c7
    move-result-wide v22

    #@1c8
    .line 1080
    move-wide/from16 v0, v22

    #@1ca
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    #@1cd
    move-result v22

    #@1ce
    .line 1081
    const/16 v23, 0x0

    #@1d0
    .line 1080
    move/from16 v0, v22

    #@1d2
    move/from16 v1, v23

    #@1d4
    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    #@1d7
    .line 1088
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v17, -0x1

    #@1d9
    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    #@1db
    .line 1082
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    #@1dd
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1df
    move-object/from16 v22, v0

    #@1e1
    move-object/from16 v0, v22

    #@1e3
    instance-of v0, v0, Landroid/widget/ListView;

    #@1e5
    move/from16 v22, v0

    #@1e7
    if-eqz v22, :cond_d

    #@1e9
    .line 1083
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1ed
    move-object/from16 v22, v0

    #@1ef
    check-cast v22, Landroid/widget/ListView;

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@1f5
    move/from16 v23, v0

    #@1f7
    add-int v23, v23, v8

    #@1f9
    const/16 v24, 0x0

    #@1fb
    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@1fe
    goto :goto_7

    #@1ff
    .line 1085
    :cond_d
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@203
    move-object/from16 v22, v0

    #@205
    move-object/from16 v0, p0

    #@207
    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    #@209
    move/from16 v23, v0

    #@20b
    add-int v23, v23, v8

    #@20d
    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    #@210
    goto :goto_7

    #@211
    .line 1097
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    #@213
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@215
    move/from16 v22, v0

    #@217
    if-eqz v22, :cond_6

    #@219
    if-nez v7, :cond_6

    #@21b
    .line 1098
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    #@21e
    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@2
    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    .line 820
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    if-nez p1, :cond_0

    #@d
    .line 821
    const/4 p1, 0x1

    #@e
    .line 824
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    #@10
    if-ne p1, v0, :cond_1

    #@12
    .line 825
    return-void

    #@13
    .line 828
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@16
    .line 844
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    #@18
    .line 846
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    #@1b
    .line 817
    return-void

    #@1c
    .line 830
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    #@1f
    goto :goto_0

    #@20
    .line 833
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    #@23
    goto :goto_0

    #@24
    .line 836
    :pswitch_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    #@26
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 837
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    #@2f
    goto :goto_0

    #@30
    .line 839
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    #@33
    goto :goto_0

    #@34
    .line 828
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
    .line 1195
    iget v11, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@4
    mul-float/2addr v11, p1

    #@5
    iget v12, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    #@7
    add-float v9, v11, v12

    #@9
    .line 1196
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
    .line 1198
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@1a
    .line 1199
    .local v5, "previewImage":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@1d
    move-result v11

    #@1e
    int-to-float v11, v11

    #@1f
    div-float v4, v11, v13

    #@21
    .line 1201
    .local v4, "previewHalfHeight":F
    iget v11, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    #@23
    packed-switch v11, :pswitch_data_0

    #@26
    .line 1210
    const/4 v7, 0x0

    #@27
    .line 1215
    .local v7, "previewPos":F
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@29
    .line 1216
    .local v1, "container":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->top:I

    #@2b
    .line 1217
    .local v10, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    #@2d
    .line 1218
    .local v0, "bottom":I
    int-to-float v11, v10

    #@2e
    add-float v3, v11, v4

    #@30
    .line 1219
    .local v3, "minP":F
    int-to-float v11, v0

    #@31
    sub-float v2, v11, v4

    #@33
    .line 1220
    .local v2, "maxP":F
    invoke-static {v7, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    #@36
    move-result v6

    #@37
    .line 1221
    .local v6, "previewMiddle":F
    sub-float v8, v6, v4

    #@39
    .line 1222
    .local v8, "previewTop":F
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    #@3c
    .line 1224
    iget-object v11, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@3e
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    #@41
    .line 1225
    iget-object v11, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@43
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    #@46
    .line 1194
    return-void

    #@47
    .line 1203
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
    .line 1204
    .restart local v7    # "previewPos":F
    goto :goto_0

    #@49
    .line 1206
    .end local v7    # "previewPos":F
    :pswitch_1
    sub-float v7, v9, v4

    #@4b
    .line 1207
    .restart local v7    # "previewPos":F
    goto :goto_0

    #@4c
    .line 1201
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
    .line 1361
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
    .line 1360
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    #@0
    .prologue
    .line 1112
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    #@4
    .line 1113
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    #@6
    .line 1114
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
    .line 1115
    aget-object v12, v13, p1

    #@15
    .line 1116
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    #@17
    .line 1117
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1a
    move-result-object v19

    #@1b
    .line 1121
    .end local v12    # "section":Ljava/lang/Object;
    .end local v19    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@1f
    .line 1122
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@21
    iget-object v7, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@23
    .line 1125
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    #@25
    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    #@27
    move/from16 v20, v0

    #@29
    if-eqz v20, :cond_3

    #@2b
    .line 1126
    move-object/from16 v0, p0

    #@2d
    iget-object v15, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@2f
    .line 1127
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    #@31
    iget-object v0, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@33
    move-object/from16 v17, v0

    #@35
    .line 1134
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    #@37
    move-object/from16 v1, v19

    #@39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3c
    .line 1135
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v1, v17

    #@40
    invoke-direct {v0, v1, v4}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    #@43
    .line 1136
    move-object/from16 v0, p0

    #@45
    move-object/from16 v1, v17

    #@47
    invoke-direct {v0, v1, v4}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@4a
    .line 1138
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@4e
    move-object/from16 v20, v0

    #@50
    if-eqz v20, :cond_1

    #@52
    .line 1139
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    #@56
    move-object/from16 v20, v0

    #@58
    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    #@5b
    .line 1143
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
    .line 1144
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
    .line 1145
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
    .line 1148
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
    .line 1149
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
    .line 1150
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
    .line 1151
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
    .line 1152
    invoke-static {v7, v4}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    #@c7
    move-result-object v9

    #@c8
    .line 1153
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    #@ca
    move-wide/from16 v0, v20

    #@cc
    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@cf
    .line 1155
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
    .line 1156
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
    .line 1157
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@ef
    .line 1161
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
    .line 1162
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    #@fc
    move-result v21

    #@fd
    .line 1161
    sub-int v8, v20, v21

    #@ff
    .line 1166
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    #@102
    move-result v18

    #@103
    .line 1167
    .local v18, "targetWidth":I
    move/from16 v0, v18

    #@105
    if-le v0, v8, :cond_4

    #@107
    .line 1168
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
    .line 1169
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
    .line 1170
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@12f
    .line 1176
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    #@132
    move-result v16

    #@133
    .line 1177
    .local v16, "showingWidth":I
    move/from16 v0, v16

    #@135
    move/from16 v1, v18

    #@137
    if-le v0, v1, :cond_2

    #@139
    .line 1178
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
    .line 1179
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
    .line 1180
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@156
    .line 1183
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
    .line 1185
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
    .line 1129
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
    .line 1130
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
    .line 1172
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
    .line 1185
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
    .line 906
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 907
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@b
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    #@e
    .line 911
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@10
    .line 910
    const/4 v3, 0x3

    #@11
    new-array v3, v3, [Landroid/view/View;

    #@13
    .line 911
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
    .line 910
    invoke-static {v2, v4, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@28
    move-result-object v0

    #@29
    .line 914
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@2b
    .line 913
    new-array v3, v7, [Landroid/view/View;

    #@2d
    .line 914
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
    .line 913
    invoke-static {v2, v4, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@3d
    move-result-object v1

    #@3e
    .line 916
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    #@40
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    #@43
    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@45
    .line 917
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
    .line 918
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@52
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    #@55
    .line 920
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@57
    .line 905
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
    .line 859
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 860
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@b
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    #@e
    .line 863
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
    .line 864
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
    .line 863
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
    .line 867
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
    .line 869
    .local v1, "offset":F
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@3f
    .line 868
    new-array v4, v9, [Landroid/view/View;

    #@41
    .line 869
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@43
    aput-object v5, v4, v7

    #@45
    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@47
    aput-object v5, v4, v8

    #@49
    .line 868
    invoke-static {v3, v1, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@50
    move-result-object v2

    #@51
    .line 872
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    #@53
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    #@56
    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@58
    .line 873
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
    .line 874
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@65
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    #@68
    .line 876
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@6a
    .line 858
    return-void

    #@6b
    .line 867
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
    .line 883
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 884
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@b
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    #@e
    .line 887
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
    .line 888
    const-wide/16 v4, 0x96

    #@22
    .line 887
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@25
    move-result-object v0

    #@26
    .line 890
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@28
    .line 889
    new-array v4, v10, [Landroid/view/View;

    #@2a
    .line 890
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
    .line 889
    invoke-static {v3, v9, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@39
    move-result-object v3

    #@3a
    .line 891
    const-wide/16 v4, 0x12c

    #@3c
    .line 889
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@3f
    move-result-object v1

    #@40
    .line 893
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    #@42
    .line 892
    new-array v4, v8, [Landroid/view/View;

    #@44
    .line 893
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@46
    aput-object v5, v4, v6

    #@48
    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@4a
    aput-object v5, v4, v7

    #@4c
    .line 892
    invoke-static {v3, v9, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    #@4f
    move-result-object v3

    #@50
    .line 893
    const-wide/16 v4, 0x96

    #@52
    .line 892
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@55
    move-result-object v2

    #@56
    .line 895
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    #@58
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    #@5b
    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@5d
    .line 896
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
    .line 897
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    #@6c
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    #@6f
    .line 899
    iput-boolean v6, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    #@71
    .line 882
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
    .line 725
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@5
    .line 726
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    #@8
    .line 728
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    #@a
    .line 729
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    #@c
    .line 730
    iput v4, v0, Landroid/graphics/Rect;->top:I

    #@e
    .line 731
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    #@11
    move-result v4

    #@12
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@14
    .line 732
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    #@17
    move-result v4

    #@18
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    #@1a
    .line 734
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@1c
    .line 735
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    #@1e
    .line 736
    if-nez v2, :cond_1

    #@20
    .line 737
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
    .line 738
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
    .line 739
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
    .line 740
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
    .line 743
    if-ne v2, v6, :cond_1

    #@46
    .line 744
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    #@49
    move-result v3

    #@4a
    .line 745
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@4c
    const/4 v5, 0x2

    #@4d
    if-ne v4, v5, :cond_2

    #@4f
    .line 746
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@51
    add-int/2addr v4, v3

    #@52
    iput v4, v0, Landroid/graphics/Rect;->right:I

    #@54
    .line 724
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    #@55
    .line 748
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
    .line 528
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
    .line 529
    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    #@b
    if-eq v1, v0, :cond_0

    #@d
    .line 530
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    #@f
    .line 532
    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    #@12
    .line 527
    :cond_0
    return-void

    #@13
    .line 528
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
    .line 800
    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@2
    .line 801
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@4
    .line 804
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    #@6
    const/4 v6, 0x1

    #@7
    if-ne v5, v6, :cond_0

    #@9
    .line 805
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
    .line 806
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@15
    move-result v5

    #@16
    int-to-float v5, v5

    #@17
    add-float v2, v5, v0

    #@19
    .line 807
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v5

    #@1d
    int-to-float v5, v5

    #@1e
    sub-float v1, v5, v0

    #@20
    .line 813
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    #@22
    .line 814
    sub-float v5, v1, v2

    #@24
    iput v5, p0, Landroid/widget/FastScroller;->mThumbRange:F

    #@26
    .line 799
    return-void

    #@27
    .line 809
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@2a
    move-result v5

    #@2b
    int-to-float v2, v5

    #@2c
    .line 810
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
    .line 505
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    #@2
    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@2
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 416
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
    .line 1428
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1429
    return v3

    #@8
    .line 1432
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v0

    #@c
    .line 1433
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 1434
    const/4 v1, 0x7

    #@11
    if-ne v0, v1, :cond_2

    #@13
    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@15
    if-nez v1, :cond_2

    #@17
    .line 1435
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
    .line 1433
    if-eqz v1, :cond_2

    #@25
    .line 1436
    const/4 v1, 0x1

    #@26
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    #@29
    .line 1437
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@2c
    .line 1440
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
    .line 1382
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1383
    return v6

    #@8
    .line 1386
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v1

    #@c
    packed-switch v1, :pswitch_data_0

    #@f
    .line 1424
    :cond_1
    :goto_0
    return v6

    #@10
    .line 1388
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
    .line 1394
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@20
    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_2

    #@26
    .line 1397
    const/4 v1, 0x1

    #@27
    return v1

    #@28
    .line 1400
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    #@2e
    .line 1401
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    #@31
    goto :goto_0

    #@32
    .line 1405
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
    .line 1406
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    #@43
    goto :goto_0

    #@44
    .line 1407
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
    .line 1408
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@59
    .line 1410
    iget v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    #@5b
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    #@5e
    move-result v0

    #@5f
    .line 1411
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    #@62
    .line 1415
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@65
    move-result v1

    #@66
    return v1

    #@67
    .line 1420
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    #@6a
    goto :goto_0

    #@6b
    .line 1386
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
    .line 513
    iget v2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    #@2
    if-ne v2, p2, :cond_0

    #@4
    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    #@6
    if-eq v2, p1, :cond_2

    #@8
    .line 514
    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    #@a
    .line 515
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    #@c
    .line 517
    sub-int v2, p2, p1

    #@e
    if-lez v2, :cond_3

    #@10
    const/4 v1, 0x1

    #@11
    .line 518
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    #@13
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    #@15
    const/4 v3, 0x2

    #@16
    if-eq v2, v3, :cond_1

    #@18
    .line 519
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@1a
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@1d
    move-result v0

    #@1e
    .line 520
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    #@21
    move-result v2

    #@22
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@25
    .line 523
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    #@28
    .line 512
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    #@29
    .line 517
    :cond_3
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "hasMoreItems":Z
    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 5
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 929
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 930
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    #@c
    .line 931
    return-void

    #@d
    .line 934
    :cond_0
    sub-int v1, p3, p2

    #@f
    if-lez v1, :cond_3

    #@11
    const/4 v0, 0x1

    #@12
    .line 935
    .local v0, "hasMoreItems":Z
    :goto_0
    if-eqz v0, :cond_1

    #@14
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@16
    if-eq v1, v4, :cond_1

    #@18
    .line 936
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    #@1b
    move-result v1

    #@1c
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@1f
    .line 939
    :cond_1
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@21
    .line 941
    iget v1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    #@23
    if-eq v1, p1, :cond_2

    #@25
    .line 942
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    #@27
    .line 945
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@29
    if-eq v1, v4, :cond_2

    #@2b
    .line 946
    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setState(I)V

    #@2e
    .line 947
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@31
    .line 928
    :cond_2
    return-void

    #@32
    .line 934
    .end local v0    # "hasMoreItems":Z
    :cond_3
    const/4 v0, 0x0

    #@33
    .restart local v0    # "hasMoreItems":Z
    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    #@0
    .prologue
    .line 980
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    #@3
    .line 979
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
    .line 509
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    #@3
    .line 508
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
    .line 1444
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1445
    return v4

    #@c
    .line 1448
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@f
    move-result v1

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 1512
    :cond_1
    :goto_0
    return v4

    #@14
    .line 1450
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
    .line 1451
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@24
    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 1452
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@2d
    .line 1453
    return v5

    #@2e
    .line 1459
    :pswitch_1
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    #@30
    cmp-long v1, v2, v8

    #@32
    if-ltz v1, :cond_2

    #@34
    .line 1461
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@37
    .line 1463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@3a
    move-result v1

    #@3b
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    #@3e
    move-result v0

    #@3f
    .line 1464
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@42
    .line 1465
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    #@45
    .line 1470
    .end local v0    # "pos":F
    :cond_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@47
    if-ne v1, v6, :cond_1

    #@49
    .line 1471
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@4b
    if-eqz v1, :cond_3

    #@4d
    .line 1475
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@4f
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    #@52
    .line 1476
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@54
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    #@57
    .line 1479
    :cond_3
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    #@5a
    .line 1480
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    #@5d
    .line 1482
    return v5

    #@5e
    .line 1487
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
    .line 1488
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    #@79
    .line 1493
    :cond_4
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    #@7b
    if-ne v1, v6, :cond_1

    #@7d
    .line 1495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@80
    move-result v1

    #@81
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    #@84
    move-result v0

    #@85
    .line 1496
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    #@88
    .line 1499
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    #@8a
    if-eqz v1, :cond_5

    #@8c
    .line 1500
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    #@8f
    .line 1503
    :cond_5
    return v5

    #@90
    .line 1508
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    #@93
    goto :goto_0

    #@94
    .line 1448
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
    .line 394
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@2
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@7
    .line 395
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@9
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@e
    .line 396
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@10
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@15
    .line 397
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@17
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@1c
    .line 398
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    #@1e
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    #@23
    .line 393
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    #@0
    .prologue
    .line 423
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 424
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    #@6
    .line 426
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    #@a
    .line 422
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 405
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 406
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    #@6
    .line 408
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    #@a
    .line 404
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 461
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 462
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    #@6
    .line 464
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    #@9
    .line 460
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
    .line 476
    if-nez p1, :cond_0

    #@4
    .line 477
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    #@6
    invoke-virtual {v3}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 478
    const/4 p1, 0x1

    #@d
    .line 481
    :cond_0
    :goto_0
    iget v3, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@f
    if-eq v3, p1, :cond_1

    #@11
    .line 482
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    #@13
    .line 483
    if-eq p1, v4, :cond_3

    #@15
    move v3, v4

    #@16
    :goto_1
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@18
    .line 485
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    #@1a
    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    #@1c
    if-eqz v6, :cond_4

    #@1e
    :goto_2
    aget v0, v3, v4

    #@20
    .line 486
    .local v0, "previewResId":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@22
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    #@25
    .line 489
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
    .line 490
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@30
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    #@33
    move-result v4

    #@34
    .line 489
    sub-int/2addr v3, v4

    #@35
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v2

    #@39
    .line 491
    .local v2, "textMinWidth":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@3b
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    #@3e
    .line 492
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@40
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    #@43
    .line 494
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
    .line 495
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@4e
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    #@51
    move-result v4

    #@52
    .line 494
    sub-int/2addr v3, v4

    #@53
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    #@56
    move-result v1

    #@57
    .line 496
    .local v1, "textMinHeight":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@59
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    #@5c
    .line 497
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@5e
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    #@61
    .line 500
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    #@64
    .line 475
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_1
    return-void

    #@65
    .line 478
    :cond_2
    const/4 p1, 0x2

    #@66
    goto :goto_0

    #@67
    :cond_3
    move v3, v5

    #@68
    .line 483
    goto :goto_1

    #@69
    :cond_4
    move v4, v5

    #@6a
    .line 485
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
    .line 387
    .end local v3    # "index":I
    :cond_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    #@8d
    .line 334
    return-void

    #@8e
    .line 341
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
    .line 472
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    #@4
    .line 471
    return-void
.end method

.method public updateLayout()V
    .locals 3

    #@0
    .prologue
    .line 561
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 562
    return-void

    #@5
    .line 565
    :cond_0
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    #@8
    .line 567
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    #@b
    .line 569
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    #@e
    .line 570
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    #@11
    .line 572
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    #@14
    .line 574
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    #@16
    .line 575
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@18
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    #@1b
    .line 576
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    #@1d
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@20
    .line 577
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@22
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    #@25
    .line 578
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    #@27
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@2a
    .line 580
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 582
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
    .line 583
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
    .line 584
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
    .line 585
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
    .line 586
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    #@5c
    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5f
    .line 589
    :cond_1
    const/4 v1, 0x0

    #@60
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    #@62
    .line 558
    return-void
.end method
