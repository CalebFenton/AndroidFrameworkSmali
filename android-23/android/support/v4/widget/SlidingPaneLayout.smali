.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 0
    .param p1, "newLeft"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 200
    .local v0, "deviceVersion":I
    const/16 v1, 0x11

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 201
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    #@8
    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@d
    .line 90
    :goto_0
    return-void

    #@e
    .line 202
    :cond_0
    const/16 v1, 0x10

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 203
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    #@14
    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    #@17
    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@19
    goto :goto_0

    #@1a
    .line 205
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    #@1c
    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    #@1f
    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@21
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 251
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 255
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/high16 v4, 0x3f000000    # 0.5f

    #@3
    .line 259
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 109
    const v2, -0x33333334

    #@9
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@b
    .line 189
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@d
    .line 191
    new-instance v2, Landroid/graphics/Rect;

    #@f
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@14
    .line 194
    new-instance v2, Ljava/util/ArrayList;

    #@16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 193
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@1b
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@22
    move-result-object v2

    #@23
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    #@25
    .line 262
    .local v0, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    #@27
    mul-float/2addr v2, v0

    #@28
    add-float/2addr v2, v4

    #@29
    float-to-int v2, v2

    #@2a
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #@2c
    .line 264
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@2f
    move-result-object v1

    #@30
    .line 266
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    const/4 v2, 0x0

    #@31
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    #@34
    .line 268
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    #@36
    invoke-direct {v2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    #@39
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    #@3c
    .line 269
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@3f
    .line 271
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    #@41
    const/4 v3, 0x0

    #@42
    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;)V

    #@45
    invoke-static {p0, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    #@48
    move-result-object v2

    #@49
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@4b
    .line 272
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@4d
    const/high16 v3, 0x43c80000    # 400.0f

    #@4f
    mul-float/2addr v3, v0

    #@50
    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    #@53
    .line 258
    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 862
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 863
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@e
    .line 864
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 866
    :cond_1
    return v1
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@8
    .line 973
    .local v4, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    #@9
    cmpl-float v5, p2, v5

    #@b
    if-lez v5, :cond_3

    #@d
    if-eqz p3, :cond_3

    #@f
    .line 974
    const/high16 v5, -0x1000000

    #@11
    and-int/2addr v5, p3

    #@12
    ushr-int/lit8 v0, v5, 0x18

    #@14
    .line 975
    .local v0, "baseAlpha":I
    int-to-float v5, v0

    #@15
    mul-float/2addr v5, p2

    #@16
    float-to-int v3, v5

    #@17
    .line 976
    .local v3, "imag":I
    shl-int/lit8 v5, v3, 0x18

    #@19
    const v6, 0xffffff

    #@1c
    and-int/2addr v6, p3

    #@1d
    or-int v1, v5, v6

    #@1f
    .line 977
    .local v1, "color":I
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@21
    if-nez v5, :cond_0

    #@23
    .line 978
    new-instance v5, Landroid/graphics/Paint;

    #@25
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@28
    iput-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@2a
    .line 980
    :cond_0
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@2c
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    #@2e
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@30
    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@33
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@36
    .line 981
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    #@39
    move-result v5

    #@3a
    if-eq v5, v8, :cond_1

    #@3c
    .line 982
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@3e
    invoke-static {p1, v8, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@41
    .line 984
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    #@44
    .line 970
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v3    # "imag":I
    :cond_2
    :goto_0
    return-void

    #@45
    .line 985
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_2

    #@4b
    .line 986
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@4d
    if-eqz v5, :cond_4

    #@4f
    .line 987
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@51
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@54
    .line 989
    :cond_4
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    #@56
    invoke-direct {v2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    #@59
    .line 990
    .local v2, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    .line 991
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@61
    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1041
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    #@5
    .line 1040
    return-void
.end method

.method private isLayoutRtlSupport()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1645
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    #@0
    .prologue
    .line 943
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    if-nez v7, :cond_0

    #@4
    .line 945
    const/4 v7, 0x0

    #@5
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@7
    .line 946
    return-void

    #@8
    .line 948
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@b
    move-result v1

    #@c
    .line 949
    .local v1, "isLayoutRtl":Z
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@e
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@14
    .line 951
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@16
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    #@19
    move-result v0

    #@1a
    .line 952
    .local v0, "childWidth":I
    if-eqz v1, :cond_3

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@1f
    move-result v7

    #@20
    sub-int/2addr v7, p1

    #@21
    sub-int v4, v7, v0

    #@23
    .line 954
    .local v4, "newStart":I
    :goto_0
    if-eqz v1, :cond_4

    #@25
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@28
    move-result v5

    #@29
    .line 955
    .local v5, "paddingStart":I
    :goto_1
    if-eqz v1, :cond_5

    #@2b
    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@2d
    .line 956
    .local v3, "lpMargin":I
    :goto_2
    add-int v6, v5, v3

    #@2f
    .line 958
    .local v6, "startBound":I
    sub-int v7, v4, v6

    #@31
    int-to-float v7, v7

    #@32
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@34
    int-to-float v8, v8

    #@35
    div-float/2addr v7, v8

    #@36
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@38
    .line 960
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@3a
    if-eqz v7, :cond_1

    #@3c
    .line 961
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@3e
    invoke-direct {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    #@41
    .line 964
    :cond_1
    iget-boolean v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@43
    if-eqz v7, :cond_2

    #@45
    .line 965
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@47
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@49
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@4b
    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@4e
    .line 967
    :cond_2
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@50
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    #@53
    .line 942
    return-void

    #@54
    .line 952
    .end local v3    # "lpMargin":I
    .end local v4    # "newStart":I
    .end local v5    # "paddingStart":I
    .end local v6    # "startBound":I
    :cond_3
    move v4, p1

    #@55
    .restart local v4    # "newStart":I
    goto :goto_0

    #@56
    .line 954
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@59
    move-result v5

    #@5a
    .restart local v5    # "paddingStart":I
    goto :goto_1

    #@5b
    .line 955
    :cond_5
    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@5d
    .restart local v3    # "lpMargin":I
    goto :goto_2
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 870
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@3
    if-nez v0, :cond_0

    #@5
    const/high16 v0, 0x3f800000    # 1.0f

    #@7
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 871
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@f
    .line 872
    return v1

    #@10
    .line 874
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method private parallaxOtherViews(F)V
    .locals 12
    .param p1, "slideOffset"    # F

    #@0
    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    #@2
    .line 1189
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@5
    move-result v4

    #@6
    .line 1190
    .local v4, "isLayoutRtl":Z
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v7

    #@c
    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@e
    .line 1191
    .local v7, "slideLp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@10
    if-eqz v9, :cond_3

    #@12
    .line 1192
    if-eqz v4, :cond_1

    #@14
    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@16
    :goto_0
    if-gtz v9, :cond_2

    #@18
    const/4 v1, 0x1

    #@19
    .line 1193
    .local v1, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@1c
    move-result v0

    #@1d
    .line 1194
    .local v0, "childCount":I
    const/4 v3, 0x0

    #@1e
    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_7

    #@20
    .line 1195
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v8

    #@24
    .line 1196
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@26
    if-ne v8, v9, :cond_4

    #@28
    .line 1194
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 1192
    .end local v0    # "childCount":I
    .end local v1    # "dimViews":Z
    .end local v3    # "i":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@2d
    goto :goto_0

    #@2e
    :cond_2
    const/4 v1, 0x0

    #@2f
    .restart local v1    # "dimViews":Z
    goto :goto_1

    #@30
    .line 1191
    .end local v1    # "dimViews":Z
    :cond_3
    const/4 v1, 0x0

    #@31
    .restart local v1    # "dimViews":Z
    goto :goto_1

    #@32
    .line 1198
    .restart local v0    # "childCount":I
    .restart local v3    # "i":I
    .restart local v8    # "v":Landroid/view/View;
    :cond_4
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@34
    sub-float v9, v11, v9

    #@36
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@38
    int-to-float v10, v10

    #@39
    mul-float/2addr v9, v10

    #@3a
    float-to-int v6, v9

    #@3b
    .line 1199
    .local v6, "oldOffset":I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@3d
    .line 1200
    sub-float v9, v11, p1

    #@3f
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@41
    int-to-float v10, v10

    #@42
    mul-float/2addr v9, v10

    #@43
    float-to-int v5, v9

    #@44
    .line 1201
    .local v5, "newOffset":I
    sub-int v2, v6, v5

    #@46
    .line 1203
    .local v2, "dx":I
    if-eqz v4, :cond_5

    #@48
    neg-int v2, v2

    #@49
    .end local v2    # "dx":I
    :cond_5
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@4c
    .line 1205
    if-eqz v1, :cond_0

    #@4e
    .line 1206
    if-eqz v4, :cond_6

    #@50
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@52
    sub-float/2addr v9, v11

    #@53
    .line 1207
    :goto_4
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #@55
    .line 1206
    invoke-direct {p0, v8, v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@58
    goto :goto_3

    #@59
    .line 1207
    :cond_6
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    #@5b
    sub-float v9, v11, v9

    #@5d
    goto :goto_4

    #@5e
    .line 1188
    .end local v5    # "newOffset":I
    .end local v6    # "oldOffset":I
    .end local v8    # "v":Landroid/view/View;
    :cond_7
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 411
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    return v1

    #@9
    .line 416
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@b
    const/16 v4, 0x12

    #@d
    if-lt v3, v4, :cond_1

    #@f
    return v2

    #@10
    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 419
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@16
    .line 420
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@19
    move-result v3

    #@1a
    const/4 v4, -0x1

    #@1b
    if-ne v3, v4, :cond_2

    #@1d
    :goto_0
    return v1

    #@1e
    :cond_2
    move v1, v2

    #@1f
    goto :goto_0

    #@20
    .line 422
    :cond_3
    return v2
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    #@0
    .prologue
    .line 1224
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v7, p1

    #@5
    .line 1225
    check-cast v7, Landroid/view/ViewGroup;

    #@7
    .line 1226
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v9

    #@b
    .line 1227
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v10

    #@f
    .line 1228
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v6

    #@13
    .line 1230
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    #@15
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@17
    .line 1233
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    .line 1234
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
    .line 1235
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
    .line 1236
    add-int v0, p4, v9

    #@3d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@40
    move-result v2

    #@41
    sub-int v4, v0, v2

    #@43
    .line 1237
    add-int v0, p5, v10

    #@45
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@48
    move-result v2

    #@49
    sub-int v5, v0, v2

    #@4b
    .line 1236
    const/4 v2, 0x1

    #@4c
    move-object v0, p0

    #@4d
    move v3, p3

    #@4e
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    #@51
    move-result v0

    #@52
    .line 1234
    if-eqz v0, :cond_0

    #@54
    .line 1238
    const/4 v0, 0x1

    #@55
    return v0

    #@56
    .line 1230
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@58
    goto :goto_0

    #@59
    .line 1243
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    #@5b
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_2

    #@61
    .end local p3    # "dx":I
    :goto_1
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    #@64
    move-result v0

    #@65
    :goto_2
    return v0

    #@66
    .restart local p3    # "dx":I
    :cond_2
    neg-int p3, p3

    #@67
    goto :goto_1

    #@68
    :cond_3
    const/4 v0, 0x0

    #@69
    goto :goto_2
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 929
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1268
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

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

.method public closePane()Z
    .locals 2

    #@0
    .prologue
    .line 910
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public computeScroll()V
    .locals 2

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1080
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1081
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@f
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    #@12
    .line 1082
    return-void

    #@13
    .line 1085
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@16
    .line 1078
    :cond_1
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 350
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@6
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    #@9
    .line 352
    :cond_0
    const/16 v0, 0x20

    #@b
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    #@e
    .line 348
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 343
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@6
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    #@9
    .line 345
    :cond_0
    const/16 v0, 0x20

    #@b
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    #@e
    .line 341
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 337
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@6
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@8
    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    #@b
    .line 335
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1155
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    #@4
    .line 1156
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@7
    move-result v1

    #@8
    .line 1158
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_1

    #@a
    .line 1159
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    #@c
    .line 1164
    .local v4, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@f
    move-result v8

    #@10
    if-le v8, v9, :cond_2

    #@12
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v5

    #@16
    .line 1165
    :goto_1
    if-eqz v5, :cond_0

    #@18
    if-nez v4, :cond_3

    #@1a
    .line 1167
    :cond_0
    return-void

    #@1b
    .line 1161
    .end local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    #@1d
    .restart local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@1e
    .line 1164
    :cond_2
    const/4 v5, 0x0

    #@1f
    .local v5, "shadowView":Landroid/view/View;
    goto :goto_1

    #@20
    .line 1170
    .end local v5    # "shadowView":Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    #@23
    move-result v7

    #@24
    .line 1171
    .local v7, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@27
    move-result v0

    #@28
    .line 1173
    .local v0, "bottom":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2b
    move-result v6

    #@2c
    .line 1176
    .local v6, "shadowWidth":I
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@2f
    move-result v8

    #@30
    if-eqz v8, :cond_4

    #@32
    .line 1177
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    #@35
    move-result v2

    #@36
    .line 1178
    .local v2, "left":I
    add-int v3, v2, v6

    #@38
    .line 1184
    .local v3, "right":I
    :goto_2
    invoke-virtual {v4, v2, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3b
    .line 1185
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3e
    .line 1154
    return-void

    #@3f
    .line 1180
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    #@42
    move-result v3

    #@43
    .line 1181
    .restart local v3    # "right":I
    sub-int v2, v3, v6

    #@45
    .restart local v2    # "left":I
    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 997
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@6
    .line 999
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x2

    #@7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    #@a
    move-result v3

    #@b
    .line 1001
    .local v3, "save":I
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@d
    if-eqz v4, :cond_0

    #@f
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 1012
    :cond_0
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    #@15
    const/16 v5, 0xb

    #@17
    if-lt v4, v5, :cond_3

    #@19
    .line 1013
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@1c
    move-result v2

    #@1d
    .line 1035
    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@20
    .line 1037
    return v2

    #@21
    .line 1001
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 1003
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@27
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@2a
    .line 1004
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 1005
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@32
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@34
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@36
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@38
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@3b
    move-result v6

    #@3c
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v5

    #@40
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@42
    .line 1009
    :goto_2
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@44
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@47
    goto :goto_0

    #@48
    .line 1007
    :cond_2
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@4a
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    #@4c
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@4e
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@50
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@53
    move-result v6

    #@54
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@57
    move-result v5

    #@58
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@5a
    goto :goto_2

    #@5b
    .line 1015
    :cond_3
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@5d
    if-eqz v4, :cond_6

    #@5f
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@61
    const/4 v5, 0x0

    #@62
    cmpl-float v4, v4, v5

    #@64
    if-lez v4, :cond_6

    #@66
    .line 1016
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_4

    #@6c
    .line 1017
    const/4 v4, 0x1

    #@6d
    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@70
    .line 1019
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@73
    move-result-object v0

    #@74
    .line 1020
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    #@76
    .line 1021
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@79
    move-result v4

    #@7a
    int-to-float v4, v4

    #@7b
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@7e
    move-result v5

    #@7f
    int-to-float v5, v5

    #@80
    iget-object v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    #@82
    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@85
    .line 1022
    const/4 v2, 0x0

    #@86
    .local v2, "result":Z
    goto :goto_1

    #@87
    .line 1024
    .end local v2    # "result":Z
    :cond_5
    const-string/jumbo v4, "SlidingPaneLayout"

    #@8a
    new-instance v5, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v6, "drawChild: child view "

    #@92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v5

    #@9a
    const-string/jumbo v6, " returned null drawing cache"

    #@9d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 1025
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@ab
    move-result v2

    #@ac
    .local v2, "result":Z
    goto/16 :goto_1

    #@ae
    .line 1028
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .end local v2    # "result":Z
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    #@b1
    move-result v4

    #@b2
    if-eqz v4, :cond_7

    #@b4
    .line 1029
    const/4 v4, 0x0

    #@b5
    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    #@b8
    .line 1031
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@bb
    move-result v2

    #@bc
    .restart local v2    # "result":Z
    goto/16 :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 1256
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@2
    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1273
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1261
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1262
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@6
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@8
    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@b
    .line 1261
    :goto_0
    return-object v0

    #@c
    .line 1263
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@e
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@11
    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    #@0
    .prologue
    .line 328
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #@2
    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    #@0
    .prologue
    .line 293
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@2
    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    #@0
    .prologue
    .line 310
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@2
    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1247
    if-nez p1, :cond_0

    #@3
    .line 1248
    return v1

    #@4
    .line 1250
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@a
    .line 1251
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@10
    if-eqz v2, :cond_1

    #@12
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@14
    const/4 v3, 0x0

    #@15
    cmpl-float v2, v2, v3

    #@17
    if-lez v2, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1
    return v1
.end method

.method public isOpen()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 920
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@7
    const/high16 v2, 0x3f800000    # 1.0f

    #@9
    cmpl-float v1, v1, v2

    #@b
    if-nez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    #@0
    .prologue
    .line 939
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    #@0
    .prologue
    .line 427
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 428
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@6
    .line 426
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    #@0
    .prologue
    .line 433
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 434
    const/4 v3, 0x1

    #@4
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@6
    .line 436
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@f
    .line 437
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    #@17
    .line 438
    .local v1, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    #@1a
    .line 436
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 440
    .end local v1    # "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 432
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 762
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@5
    move-result v0

    #@6
    .line 765
    .local v0, "action":I
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@8
    if-nez v9, :cond_0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@f
    move-result v9

    #@10
    if-le v9, v11, :cond_0

    #@12
    .line 767
    invoke-virtual {p0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v5

    #@16
    .line 768
    .local v5, "secondChild":Landroid/view/View;
    if-eqz v5, :cond_0

    #@18
    .line 769
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@1a
    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1d
    move-result v12

    #@1e
    float-to-int v12, v12

    #@1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@22
    move-result v13

    #@23
    float-to-int v13, v13

    #@24
    .line 769
    invoke-virtual {v9, v5, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_2

    #@2a
    move v9, v10

    #@2b
    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@2d
    .line 774
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2f
    if-eqz v9, :cond_1

    #@31
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@33
    if-eqz v9, :cond_3

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 775
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@39
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@3c
    .line 776
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@3f
    move-result v9

    #@40
    return v9

    #@41
    .restart local v5    # "secondChild":Landroid/view/View;
    :cond_2
    move v9, v11

    #@42
    .line 769
    goto :goto_0

    #@43
    .line 779
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_3
    const/4 v9, 0x3

    #@44
    if-eq v0, v9, :cond_4

    #@46
    if-ne v0, v11, :cond_5

    #@48
    .line 780
    :cond_4
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@4a
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@4d
    .line 781
    return v10

    #@4e
    .line 784
    :cond_5
    const/4 v4, 0x0

    #@4f
    .line 786
    .local v4, "interceptTap":Z
    packed-switch v0, :pswitch_data_0

    #@52
    .line 815
    :cond_6
    :goto_1
    :pswitch_0
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@54
    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@57
    move-result v3

    #@58
    .line 817
    .local v3, "interceptForDrag":Z
    if-nez v3, :cond_7

    #@5a
    move v11, v4

    #@5b
    :cond_7
    return v11

    #@5c
    .line 788
    .end local v3    # "interceptForDrag":Z
    :pswitch_1
    iput-boolean v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@5e
    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@61
    move-result v7

    #@62
    .line 790
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@65
    move-result v8

    #@66
    .line 791
    .local v8, "y":F
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@68
    .line 792
    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@6a
    .line 794
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@6c
    iget-object v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@6e
    float-to-int v12, v7

    #@6f
    float-to-int v13, v8

    #@70
    invoke-virtual {v9, v10, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@73
    move-result v9

    #@74
    if-eqz v9, :cond_6

    #@76
    .line 795
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@78
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    #@7b
    move-result v9

    #@7c
    .line 794
    if-eqz v9, :cond_6

    #@7e
    .line 796
    const/4 v4, 0x1

    #@7f
    goto :goto_1

    #@80
    .line 802
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@83
    move-result v7

    #@84
    .line 803
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@87
    move-result v8

    #@88
    .line 804
    .restart local v8    # "y":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@8a
    sub-float v9, v7, v9

    #@8c
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@8f
    move-result v1

    #@90
    .line 805
    .local v1, "adx":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@92
    sub-float v9, v8, v9

    #@94
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    #@97
    move-result v2

    #@98
    .line 806
    .local v2, "ady":F
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@9a
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    #@9d
    move-result v6

    #@9e
    .line 807
    .local v6, "slop":I
    int-to-float v9, v6

    #@9f
    cmpl-float v9, v1, v9

    #@a1
    if-lez v9, :cond_6

    #@a3
    cmpl-float v9, v2, v1

    #@a5
    if-lez v9, :cond_6

    #@a7
    .line 808
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@a9
    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    #@ac
    .line 809
    iput-boolean v11, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    #@ae
    .line 810
    return v10

    #@af
    .line 786
    nop

    #@b0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 657
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@3
    move-result v12

    #@4
    .line 658
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    #@6
    .line 659
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@a
    move-object/from16 v25, v0

    #@c
    const/16 v26, 0x2

    #@e
    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@11
    .line 663
    :goto_0
    sub-int v23, p4, p2

    #@13
    .line 664
    .local v23, "width":I
    if-eqz v12, :cond_2

    #@15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@18
    move-result v19

    #@19
    .line 665
    .local v19, "paddingStart":I
    :goto_1
    if-eqz v12, :cond_3

    #@1b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@1e
    move-result v18

    #@1f
    .line 666
    .local v18, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@22
    move-result v20

    #@23
    .line 668
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@26
    move-result v6

    #@27
    .line 669
    .local v6, "childCount":I
    move/from16 v24, v19

    #@29
    .line 670
    .local v24, "xStart":I
    move/from16 v16, v24

    #@2b
    .line 672
    .local v16, "nextXStart":I
    move-object/from16 v0, p0

    #@2d
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@2f
    move/from16 v25, v0

    #@31
    if-eqz v25, :cond_0

    #@33
    .line 673
    move-object/from16 v0, p0

    #@35
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@37
    move/from16 v25, v0

    #@39
    if-eqz v25, :cond_4

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@3f
    move/from16 v25, v0

    #@41
    if-eqz v25, :cond_4

    #@43
    const/high16 v25, 0x3f800000    # 1.0f

    #@45
    :goto_3
    move/from16 v0, v25

    #@47
    move-object/from16 v1, p0

    #@49
    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@4b
    .line 676
    :cond_0
    const/4 v11, 0x0

    #@4c
    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_b

    #@4e
    .line 677
    move-object/from16 v0, p0

    #@50
    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@53
    move-result-object v4

    #@54
    .line 679
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    #@57
    move-result v25

    #@58
    const/16 v26, 0x8

    #@5a
    move/from16 v0, v25

    #@5c
    move/from16 v1, v26

    #@5e
    if-ne v0, v1, :cond_5

    #@60
    .line 676
    :goto_5
    add-int/lit8 v11, v11, 0x1

    #@62
    goto :goto_4

    #@63
    .line 661
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v16    # "nextXStart":I
    .end local v18    # "paddingEnd":I
    .end local v19    # "paddingStart":I
    .end local v20    # "paddingTop":I
    .end local v23    # "width":I
    .end local v24    # "xStart":I
    :cond_1
    move-object/from16 v0, p0

    #@65
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@67
    move-object/from16 v25, v0

    #@69
    const/16 v26, 0x1

    #@6b
    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@6e
    goto :goto_0

    #@6f
    .line 664
    .restart local v23    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@72
    move-result v19

    #@73
    .restart local v19    # "paddingStart":I
    goto :goto_1

    #@74
    .line 665
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@77
    move-result v18

    #@78
    .restart local v18    # "paddingEnd":I
    goto :goto_2

    #@79
    .line 673
    .restart local v6    # "childCount":I
    .restart local v16    # "nextXStart":I
    .restart local v20    # "paddingTop":I
    .restart local v24    # "xStart":I
    :cond_4
    const/16 v25, 0x0

    #@7b
    goto :goto_3

    #@7c
    .line 683
    .restart local v4    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@7f
    move-result-object v13

    #@80
    check-cast v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@82
    .line 685
    .local v13, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@85
    move-result v10

    #@86
    .line 686
    .local v10, "childWidth":I
    const/16 v17, 0x0

    #@88
    .line 688
    .local v17, "offset":I
    iget-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@8a
    move/from16 v25, v0

    #@8c
    if-eqz v25, :cond_8

    #@8e
    .line 689
    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@90
    move/from16 v25, v0

    #@92
    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@94
    move/from16 v26, v0

    #@96
    add-int v15, v25, v26

    #@98
    .line 691
    .local v15, "margin":I
    sub-int v25, v23, v18

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #@9e
    move/from16 v26, v0

    #@a0
    sub-int v25, v25, v26

    #@a2
    .line 690
    move/from16 v0, v16

    #@a4
    move/from16 v1, v25

    #@a6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@a9
    move-result v25

    #@aa
    sub-int v25, v25, v24

    #@ac
    sub-int v22, v25, v15

    #@ae
    .line 692
    .local v22, "range":I
    move/from16 v0, v22

    #@b0
    move-object/from16 v1, p0

    #@b2
    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@b4
    .line 693
    if-eqz v12, :cond_6

    #@b6
    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@b8
    .line 694
    .local v14, "lpMargin":I
    :goto_6
    add-int v25, v24, v14

    #@ba
    add-int v25, v25, v22

    #@bc
    div-int/lit8 v26, v10, 0x2

    #@be
    add-int v25, v25, v26

    #@c0
    .line 695
    sub-int v26, v23, v18

    #@c2
    .line 694
    move/from16 v0, v25

    #@c4
    move/from16 v1, v26

    #@c6
    if-le v0, v1, :cond_7

    #@c8
    const/16 v25, 0x1

    #@ca
    :goto_7
    move/from16 v0, v25

    #@cc
    iput-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@ce
    .line 696
    move/from16 v0, v22

    #@d0
    int-to-float v0, v0

    #@d1
    move/from16 v25, v0

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@d7
    move/from16 v26, v0

    #@d9
    mul-float v25, v25, v26

    #@db
    move/from16 v0, v25

    #@dd
    float-to-int v0, v0

    #@de
    move/from16 v21, v0

    #@e0
    .line 697
    .local v21, "pos":I
    add-int v25, v21, v14

    #@e2
    add-int v24, v24, v25

    #@e4
    .line 698
    move/from16 v0, v21

    #@e6
    int-to-float v0, v0

    #@e7
    move/from16 v25, v0

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@ed
    move/from16 v26, v0

    #@ef
    move/from16 v0, v26

    #@f1
    int-to-float v0, v0

    #@f2
    move/from16 v26, v0

    #@f4
    div-float v25, v25, v26

    #@f6
    move/from16 v0, v25

    #@f8
    move-object/from16 v1, p0

    #@fa
    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@fc
    .line 708
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v21    # "pos":I
    .end local v22    # "range":I
    :goto_8
    if-eqz v12, :cond_a

    #@fe
    .line 709
    sub-int v25, v23, v24

    #@100
    add-int v8, v25, v17

    #@102
    .line 710
    .local v8, "childRight":I
    sub-int v7, v8, v10

    #@104
    .line 716
    .local v7, "childLeft":I
    :goto_9
    move/from16 v9, v20

    #@106
    .line 717
    .local v9, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@109
    move-result v25

    #@10a
    add-int v5, v9, v25

    #@10c
    .line 718
    .local v5, "childBottom":I
    move/from16 v0, v20

    #@10e
    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    #@111
    .line 720
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@114
    move-result v25

    #@115
    add-int v16, v16, v25

    #@117
    goto/16 :goto_5

    #@119
    .line 693
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .restart local v15    # "margin":I
    .restart local v22    # "range":I
    :cond_6
    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@11b
    .restart local v14    # "lpMargin":I
    goto :goto_6

    #@11c
    .line 694
    :cond_7
    const/16 v25, 0x0

    #@11e
    goto :goto_7

    #@11f
    .line 699
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v22    # "range":I
    :cond_8
    move-object/from16 v0, p0

    #@121
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@123
    move/from16 v25, v0

    #@125
    if-eqz v25, :cond_9

    #@127
    move-object/from16 v0, p0

    #@129
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@12b
    move/from16 v25, v0

    #@12d
    if-eqz v25, :cond_9

    #@12f
    .line 700
    move-object/from16 v0, p0

    #@131
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@133
    move/from16 v25, v0

    #@135
    const/high16 v26, 0x3f800000    # 1.0f

    #@137
    sub-float v25, v26, v25

    #@139
    move-object/from16 v0, p0

    #@13b
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@13d
    move/from16 v26, v0

    #@13f
    move/from16 v0, v26

    #@141
    int-to-float v0, v0

    #@142
    move/from16 v26, v0

    #@144
    mul-float v25, v25, v26

    #@146
    move/from16 v0, v25

    #@148
    float-to-int v0, v0

    #@149
    move/from16 v17, v0

    #@14b
    .line 701
    move/from16 v24, v16

    #@14d
    .line 699
    goto :goto_8

    #@14e
    .line 703
    :cond_9
    move/from16 v24, v16

    #@150
    goto :goto_8

    #@151
    .line 712
    :cond_a
    sub-int v7, v24, v17

    #@153
    .line 713
    .restart local v7    # "childLeft":I
    add-int v8, v7, v10

    #@155
    .restart local v8    # "childRight":I
    goto :goto_9

    #@156
    .line 723
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    #@158
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@15a
    move/from16 v25, v0

    #@15c
    if-eqz v25, :cond_e

    #@15e
    .line 724
    move-object/from16 v0, p0

    #@160
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@162
    move/from16 v25, v0

    #@164
    if-eqz v25, :cond_f

    #@166
    .line 725
    move-object/from16 v0, p0

    #@168
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@16a
    move/from16 v25, v0

    #@16c
    if-eqz v25, :cond_c

    #@16e
    .line 726
    move-object/from16 v0, p0

    #@170
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@172
    move/from16 v25, v0

    #@174
    move-object/from16 v0, p0

    #@176
    move/from16 v1, v25

    #@178
    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    #@17b
    .line 728
    :cond_c
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@17f
    move-object/from16 v25, v0

    #@181
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@184
    move-result-object v25

    #@185
    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@187
    move-object/from16 v0, v25

    #@189
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@18b
    move/from16 v25, v0

    #@18d
    if-eqz v25, :cond_d

    #@18f
    .line 729
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@193
    move-object/from16 v25, v0

    #@195
    move-object/from16 v0, p0

    #@197
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    #@199
    move/from16 v26, v0

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@19f
    move/from16 v27, v0

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    move-object/from16 v1, v25

    #@1a5
    move/from16 v2, v26

    #@1a7
    move/from16 v3, v27

    #@1a9
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@1ac
    .line 737
    :cond_d
    move-object/from16 v0, p0

    #@1ae
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@1b0
    move-object/from16 v25, v0

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    move-object/from16 v1, v25

    #@1b6
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    #@1b9
    .line 740
    :cond_e
    const/16 v25, 0x0

    #@1bb
    move/from16 v0, v25

    #@1bd
    move-object/from16 v1, p0

    #@1bf
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@1c1
    .line 656
    return-void

    #@1c2
    .line 733
    :cond_f
    const/4 v11, 0x0

    #@1c3
    :goto_a
    if-ge v11, v6, :cond_d

    #@1c5
    .line 734
    move-object/from16 v0, p0

    #@1c7
    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@1ca
    move-result-object v25

    #@1cb
    const/16 v26, 0x0

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@1d1
    move/from16 v27, v0

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    move-object/from16 v1, v25

    #@1d7
    move/from16 v2, v26

    #@1d9
    move/from16 v3, v27

    #@1db
    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    #@1de
    .line 733
    add-int/lit8 v11, v11, 0x1

    #@1e0
    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 445
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v25

    #@4
    .line 446
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v27

    #@8
    .line 447
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v12

    #@c
    .line 448
    .local v12, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v13

    #@10
    .line 450
    .local v13, "heightSize":I
    const/high16 v29, 0x40000000    # 2.0f

    #@12
    move/from16 v0, v25

    #@14
    move/from16 v1, v29

    #@16
    if-eq v0, v1, :cond_5

    #@18
    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    #@1b
    move-result v29

    #@1c
    if-eqz v29, :cond_4

    #@1e
    .line 456
    const/high16 v29, -0x80000000

    #@20
    move/from16 v0, v25

    #@22
    move/from16 v1, v29

    #@24
    if-ne v0, v1, :cond_3

    #@26
    .line 457
    const/high16 v25, 0x40000000    # 2.0f

    #@28
    .line 479
    :cond_0
    :goto_0
    const/16 v16, 0x0

    #@2a
    .line 480
    .local v16, "layoutHeight":I
    const/16 v18, -0x1

    #@2c
    .line 481
    .local v18, "maxLayoutHeight":I
    sparse-switch v12, :sswitch_data_0

    #@2f
    .line 490
    :goto_1
    const/16 v23, 0x0

    #@31
    .line 491
    .local v23, "weightSum":F
    const/4 v4, 0x0

    #@32
    .line 492
    .local v4, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@35
    move-result v29

    #@36
    sub-int v29, v27, v29

    #@38
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@3b
    move-result v30

    #@3c
    sub-int v24, v29, v30

    #@3e
    .line 493
    .local v24, "widthAvailable":I
    move/from16 v26, v24

    #@40
    .line 494
    .local v26, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@43
    move-result v6

    #@44
    .line 496
    .local v6, "childCount":I
    const/16 v29, 0x2

    #@46
    move/from16 v0, v29

    #@48
    if-le v6, v0, :cond_1

    #@4a
    .line 497
    const-string/jumbo v29, "SlidingPaneLayout"

    #@4d
    const-string/jumbo v30, "onMeasure: More than two child views are not supported."

    #@50
    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 501
    :cond_1
    const/16 v29, 0x0

    #@55
    move-object/from16 v0, v29

    #@57
    move-object/from16 v1, p0

    #@59
    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@5b
    .line 505
    const/4 v15, 0x0

    #@5c
    .end local v4    # "canSlide":Z
    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_f

    #@5e
    .line 506
    move-object/from16 v0, p0

    #@60
    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@63
    move-result-object v5

    #@64
    .line 507
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@67
    move-result-object v17

    #@68
    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@6a
    .line 509
    .local v17, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@6d
    move-result v29

    #@6e
    const/16 v30, 0x8

    #@70
    move/from16 v0, v29

    #@72
    move/from16 v1, v30

    #@74
    if-ne v0, v1, :cond_7

    #@76
    .line 510
    const/16 v29, 0x0

    #@78
    move/from16 v0, v29

    #@7a
    move-object/from16 v1, v17

    #@7c
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    #@7e
    .line 505
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    #@80
    goto :goto_2

    #@81
    .line 458
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v16    # "layoutHeight":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18    # "maxLayoutHeight":I
    .end local v23    # "weightSum":F
    .end local v24    # "widthAvailable":I
    .end local v26    # "widthRemaining":I
    :cond_3
    if-nez v25, :cond_0

    #@83
    .line 459
    const/high16 v25, 0x40000000    # 2.0f

    #@85
    .line 460
    const/16 v27, 0x12c

    #@87
    goto :goto_0

    #@88
    .line 463
    :cond_4
    new-instance v29, Ljava/lang/IllegalStateException;

    #@8a
    const-string/jumbo v30, "Width must have an exact value or MATCH_PARENT"

    #@8d
    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@90
    throw v29

    #@91
    .line 465
    :cond_5
    if-nez v12, :cond_0

    #@93
    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    #@96
    move-result v29

    #@97
    if-eqz v29, :cond_6

    #@99
    .line 470
    if-nez v12, :cond_0

    #@9b
    .line 471
    const/high16 v12, -0x80000000

    #@9d
    .line 472
    const/16 v13, 0x12c

    #@9f
    goto :goto_0

    #@a0
    .line 475
    :cond_6
    new-instance v29, Ljava/lang/IllegalStateException;

    #@a2
    const-string/jumbo v30, "Height must not be UNSPECIFIED"

    #@a5
    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v29

    #@a9
    .line 483
    .restart local v16    # "layoutHeight":I
    .restart local v18    # "maxLayoutHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@ac
    move-result v29

    #@ad
    sub-int v29, v13, v29

    #@af
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@b2
    move-result v30

    #@b3
    sub-int v18, v29, v30

    #@b5
    move/from16 v16, v18

    #@b7
    .line 484
    goto/16 :goto_1

    #@b9
    .line 486
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@bc
    move-result v29

    #@bd
    sub-int v29, v13, v29

    #@bf
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@c2
    move-result v30

    #@c3
    sub-int v18, v29, v30

    #@c5
    .line 487
    goto/16 :goto_1

    #@c7
    .line 514
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v23    # "weightSum":F
    .restart local v24    # "widthAvailable":I
    .restart local v26    # "widthRemaining":I
    :cond_7
    move-object/from16 v0, v17

    #@c9
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@cb
    move/from16 v29, v0

    #@cd
    const/16 v30, 0x0

    #@cf
    cmpl-float v29, v29, v30

    #@d1
    if-lez v29, :cond_8

    #@d3
    .line 515
    move-object/from16 v0, v17

    #@d5
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@d7
    move/from16 v29, v0

    #@d9
    add-float v23, v23, v29

    #@db
    .line 519
    move-object/from16 v0, v17

    #@dd
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@df
    move/from16 v29, v0

    #@e1
    if-eqz v29, :cond_2

    #@e3
    .line 523
    :cond_8
    move-object/from16 v0, v17

    #@e5
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@e7
    move/from16 v29, v0

    #@e9
    move-object/from16 v0, v17

    #@eb
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@ed
    move/from16 v30, v0

    #@ef
    add-int v14, v29, v30

    #@f1
    .line 524
    .local v14, "horizontalMargin":I
    move-object/from16 v0, v17

    #@f3
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@f5
    move/from16 v29, v0

    #@f7
    const/16 v30, -0x2

    #@f9
    move/from16 v0, v29

    #@fb
    move/from16 v1, v30

    #@fd
    if-ne v0, v1, :cond_a

    #@ff
    .line 525
    sub-int v29, v24, v14

    #@101
    .line 526
    const/high16 v30, -0x80000000

    #@103
    .line 525
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@106
    move-result v10

    #@107
    .line 535
    .local v10, "childWidthSpec":I
    :goto_4
    move-object/from16 v0, v17

    #@109
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@10b
    move/from16 v29, v0

    #@10d
    const/16 v30, -0x2

    #@10f
    move/from16 v0, v29

    #@111
    move/from16 v1, v30

    #@113
    if-ne v0, v1, :cond_c

    #@115
    .line 536
    const/high16 v29, -0x80000000

    #@117
    move/from16 v0, v18

    #@119
    move/from16 v1, v29

    #@11b
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@11e
    move-result v8

    #@11f
    .line 543
    .local v8, "childHeightSpec":I
    :goto_5
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    #@122
    .line 544
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@125
    move-result v9

    #@126
    .line 545
    .local v9, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@129
    move-result v7

    #@12a
    .line 547
    .local v7, "childHeight":I
    const/high16 v29, -0x80000000

    #@12c
    move/from16 v0, v29

    #@12e
    if-ne v12, v0, :cond_9

    #@130
    move/from16 v0, v16

    #@132
    if-le v7, v0, :cond_9

    #@134
    .line 548
    move/from16 v0, v18

    #@136
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    #@139
    move-result v16

    #@13a
    .line 551
    :cond_9
    sub-int v26, v26, v9

    #@13c
    .line 552
    if-gez v26, :cond_e

    #@13e
    const/16 v29, 0x1

    #@140
    :goto_6
    move/from16 v0, v29

    #@142
    move-object/from16 v1, v17

    #@144
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@146
    or-int v4, v4, v29

    #@148
    .line 553
    .local v4, "canSlide":Z
    move-object/from16 v0, v17

    #@14a
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    #@14c
    move/from16 v29, v0

    #@14e
    if-eqz v29, :cond_2

    #@150
    .line 554
    move-object/from16 v0, p0

    #@152
    iput-object v5, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@154
    goto/16 :goto_3

    #@156
    .line 527
    .end local v4    # "canSlide":Z
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    :cond_a
    move-object/from16 v0, v17

    #@158
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@15a
    move/from16 v29, v0

    #@15c
    const/16 v30, -0x1

    #@15e
    move/from16 v0, v29

    #@160
    move/from16 v1, v30

    #@162
    if-ne v0, v1, :cond_b

    #@164
    .line 528
    sub-int v29, v24, v14

    #@166
    .line 529
    const/high16 v30, 0x40000000    # 2.0f

    #@168
    .line 528
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@16b
    move-result v10

    #@16c
    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    #@16d
    .line 531
    .end local v10    # "childWidthSpec":I
    :cond_b
    move-object/from16 v0, v17

    #@16f
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@171
    move/from16 v29, v0

    #@173
    const/high16 v30, 0x40000000    # 2.0f

    #@175
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@178
    move-result v10

    #@179
    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    #@17a
    .line 537
    :cond_c
    move-object/from16 v0, v17

    #@17c
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@17e
    move/from16 v29, v0

    #@180
    const/16 v30, -0x1

    #@182
    move/from16 v0, v29

    #@184
    move/from16 v1, v30

    #@186
    if-ne v0, v1, :cond_d

    #@188
    .line 538
    const/high16 v29, 0x40000000    # 2.0f

    #@18a
    move/from16 v0, v18

    #@18c
    move/from16 v1, v29

    #@18e
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@191
    move-result v8

    #@192
    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    #@193
    .line 540
    .end local v8    # "childHeightSpec":I
    :cond_d
    move-object/from16 v0, v17

    #@195
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@197
    move/from16 v29, v0

    #@199
    const/high16 v30, 0x40000000    # 2.0f

    #@19b
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@19e
    move-result v8

    #@19f
    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    #@1a0
    .line 552
    .restart local v7    # "childHeight":I
    .restart local v9    # "childWidth":I
    :cond_e
    const/16 v29, 0x0

    #@1a2
    goto :goto_6

    #@1a3
    .line 559
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_f
    if-nez v4, :cond_10

    #@1a5
    const/16 v29, 0x0

    #@1a7
    cmpl-float v29, v23, v29

    #@1a9
    if-lez v29, :cond_1e

    #@1ab
    .line 560
    :cond_10
    move-object/from16 v0, p0

    #@1ad
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    #@1af
    move/from16 v29, v0

    #@1b1
    sub-int v11, v24, v29

    #@1b3
    .line 562
    .local v11, "fixedPanelWidthLimit":I
    const/4 v15, 0x0

    #@1b4
    :goto_7
    if-ge v15, v6, :cond_1e

    #@1b6
    .line 563
    move-object/from16 v0, p0

    #@1b8
    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@1bb
    move-result-object v5

    #@1bc
    .line 565
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@1bf
    move-result v29

    #@1c0
    const/16 v30, 0x8

    #@1c2
    move/from16 v0, v29

    #@1c4
    move/from16 v1, v30

    #@1c6
    if-ne v0, v1, :cond_12

    #@1c8
    .line 562
    :cond_11
    :goto_8
    add-int/lit8 v15, v15, 0x1

    #@1ca
    goto :goto_7

    #@1cb
    .line 569
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1ce
    move-result-object v17

    #@1cf
    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@1d1
    .line 571
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    #@1d4
    move-result v29

    #@1d5
    const/16 v30, 0x8

    #@1d7
    move/from16 v0, v29

    #@1d9
    move/from16 v1, v30

    #@1db
    if-eq v0, v1, :cond_11

    #@1dd
    .line 575
    move-object/from16 v0, v17

    #@1df
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@1e1
    move/from16 v29, v0

    #@1e3
    if-nez v29, :cond_14

    #@1e5
    move-object/from16 v0, v17

    #@1e7
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@1e9
    move/from16 v29, v0

    #@1eb
    const/16 v30, 0x0

    #@1ed
    cmpl-float v29, v29, v30

    #@1ef
    if-lez v29, :cond_14

    #@1f1
    const/16 v22, 0x1

    #@1f3
    .line 576
    .local v22, "skippedFirstPass":Z
    :goto_9
    if-eqz v22, :cond_15

    #@1f5
    const/16 v20, 0x0

    #@1f7
    .line 577
    .local v20, "measuredWidth":I
    :goto_a
    if-eqz v4, :cond_19

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@1fd
    move-object/from16 v29, v0

    #@1ff
    move-object/from16 v0, v29

    #@201
    if-eq v5, v0, :cond_19

    #@203
    .line 578
    move-object/from16 v0, v17

    #@205
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@207
    move/from16 v29, v0

    #@209
    if-gez v29, :cond_11

    #@20b
    move/from16 v0, v20

    #@20d
    if-gt v0, v11, :cond_13

    #@20f
    move-object/from16 v0, v17

    #@211
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@213
    move/from16 v29, v0

    #@215
    const/16 v30, 0x0

    #@217
    cmpl-float v29, v29, v30

    #@219
    if-lez v29, :cond_11

    #@21b
    .line 582
    :cond_13
    if-eqz v22, :cond_18

    #@21d
    .line 585
    move-object/from16 v0, v17

    #@21f
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@221
    move/from16 v29, v0

    #@223
    const/16 v30, -0x2

    #@225
    move/from16 v0, v29

    #@227
    move/from16 v1, v30

    #@229
    if-ne v0, v1, :cond_16

    #@22b
    .line 587
    const/high16 v29, -0x80000000

    #@22d
    .line 586
    move/from16 v0, v18

    #@22f
    move/from16 v1, v29

    #@231
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@234
    move-result v8

    #@235
    .line 600
    .restart local v8    # "childHeightSpec":I
    :goto_b
    const/high16 v29, 0x40000000    # 2.0f

    #@237
    .line 599
    move/from16 v0, v29

    #@239
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@23c
    move-result v10

    #@23d
    .line 601
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    #@240
    goto :goto_8

    #@241
    .line 575
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    :cond_14
    const/16 v22, 0x0

    #@243
    .restart local v22    # "skippedFirstPass":Z
    goto :goto_9

    #@244
    .line 576
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@247
    move-result v20

    #@248
    .restart local v20    # "measuredWidth":I
    goto :goto_a

    #@249
    .line 588
    :cond_16
    move-object/from16 v0, v17

    #@24b
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@24d
    move/from16 v29, v0

    #@24f
    const/16 v30, -0x1

    #@251
    move/from16 v0, v29

    #@253
    move/from16 v1, v30

    #@255
    if-ne v0, v1, :cond_17

    #@257
    .line 590
    const/high16 v29, 0x40000000    # 2.0f

    #@259
    .line 589
    move/from16 v0, v18

    #@25b
    move/from16 v1, v29

    #@25d
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@260
    move-result v8

    #@261
    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    #@262
    .line 592
    .end local v8    # "childHeightSpec":I
    :cond_17
    move-object/from16 v0, v17

    #@264
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@266
    move/from16 v29, v0

    #@268
    .line 593
    const/high16 v30, 0x40000000    # 2.0f

    #@26a
    .line 592
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@26d
    move-result v8

    #@26e
    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    #@26f
    .line 597
    .end local v8    # "childHeightSpec":I
    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@272
    move-result v29

    #@273
    const/high16 v30, 0x40000000    # 2.0f

    #@275
    .line 596
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@278
    move-result v8

    #@279
    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    #@27a
    .line 603
    .end local v8    # "childHeightSpec":I
    :cond_19
    move-object/from16 v0, v17

    #@27c
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@27e
    move/from16 v29, v0

    #@280
    const/16 v30, 0x0

    #@282
    cmpl-float v29, v29, v30

    #@284
    if-lez v29, :cond_11

    #@286
    .line 605
    move-object/from16 v0, v17

    #@288
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    #@28a
    move/from16 v29, v0

    #@28c
    if-nez v29, :cond_1c

    #@28e
    .line 607
    move-object/from16 v0, v17

    #@290
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@292
    move/from16 v29, v0

    #@294
    const/16 v30, -0x2

    #@296
    move/from16 v0, v29

    #@298
    move/from16 v1, v30

    #@29a
    if-ne v0, v1, :cond_1a

    #@29c
    .line 609
    const/high16 v29, -0x80000000

    #@29e
    .line 608
    move/from16 v0, v18

    #@2a0
    move/from16 v1, v29

    #@2a2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2a5
    move-result v8

    #@2a6
    .line 622
    .restart local v8    # "childHeightSpec":I
    :goto_c
    if-eqz v4, :cond_1d

    #@2a8
    .line 624
    move-object/from16 v0, v17

    #@2aa
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@2ac
    move/from16 v29, v0

    #@2ae
    move-object/from16 v0, v17

    #@2b0
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@2b2
    move/from16 v30, v0

    #@2b4
    add-int v14, v29, v30

    #@2b6
    .line 625
    .restart local v14    # "horizontalMargin":I
    sub-int v21, v24, v14

    #@2b8
    .line 627
    .local v21, "newWidth":I
    const/high16 v29, 0x40000000    # 2.0f

    #@2ba
    .line 626
    move/from16 v0, v21

    #@2bc
    move/from16 v1, v29

    #@2be
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c1
    move-result v10

    #@2c2
    .line 628
    .restart local v10    # "childWidthSpec":I
    move/from16 v0, v20

    #@2c4
    move/from16 v1, v21

    #@2c6
    if-eq v0, v1, :cond_11

    #@2c8
    .line 629
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    #@2cb
    goto/16 :goto_8

    #@2cd
    .line 610
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v21    # "newWidth":I
    :cond_1a
    move-object/from16 v0, v17

    #@2cf
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@2d1
    move/from16 v29, v0

    #@2d3
    const/16 v30, -0x1

    #@2d5
    move/from16 v0, v29

    #@2d7
    move/from16 v1, v30

    #@2d9
    if-ne v0, v1, :cond_1b

    #@2db
    .line 612
    const/high16 v29, 0x40000000    # 2.0f

    #@2dd
    .line 611
    move/from16 v0, v18

    #@2df
    move/from16 v1, v29

    #@2e1
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2e4
    move-result v8

    #@2e5
    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    #@2e6
    .line 614
    .end local v8    # "childHeightSpec":I
    :cond_1b
    move-object/from16 v0, v17

    #@2e8
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    #@2ea
    move/from16 v29, v0

    #@2ec
    .line 615
    const/high16 v30, 0x40000000    # 2.0f

    #@2ee
    .line 614
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2f1
    move-result v8

    #@2f2
    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    #@2f3
    .line 619
    .end local v8    # "childHeightSpec":I
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@2f6
    move-result v29

    #@2f7
    const/high16 v30, 0x40000000    # 2.0f

    #@2f9
    .line 618
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2fc
    move-result v8

    #@2fd
    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    #@2fe
    .line 633
    :cond_1d
    const/16 v29, 0x0

    #@300
    move/from16 v0, v29

    #@302
    move/from16 v1, v26

    #@304
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@307
    move-result v28

    #@308
    .line 634
    .local v28, "widthToDistribute":I
    move-object/from16 v0, v17

    #@30a
    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    #@30c
    move/from16 v29, v0

    #@30e
    move/from16 v0, v28

    #@310
    int-to-float v0, v0

    #@311
    move/from16 v30, v0

    #@313
    mul-float v29, v29, v30

    #@315
    div-float v29, v29, v23

    #@317
    move/from16 v0, v29

    #@319
    float-to-int v3, v0

    #@31a
    .line 636
    .local v3, "addedWidth":I
    add-int v29, v20, v3

    #@31c
    const/high16 v30, 0x40000000    # 2.0f

    #@31e
    .line 635
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@321
    move-result v10

    #@322
    .line 637
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    #@325
    goto/16 :goto_8

    #@327
    .line 643
    .end local v3    # "addedWidth":I
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v11    # "fixedPanelWidthLimit":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    .end local v28    # "widthToDistribute":I
    :cond_1e
    move/from16 v20, v27

    #@329
    .line 644
    .restart local v20    # "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@32c
    move-result v29

    #@32d
    add-int v29, v29, v16

    #@32f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@332
    move-result v30

    #@333
    add-int v19, v29, v30

    #@335
    .line 646
    .local v19, "measuredHeight":I
    move-object/from16 v0, p0

    #@337
    move/from16 v1, v20

    #@339
    move/from16 v2, v19

    #@33b
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    #@33e
    .line 647
    move-object/from16 v0, p0

    #@340
    iput-boolean v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@342
    .line 649
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@346
    move-object/from16 v29, v0

    #@348
    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    #@34b
    move-result v29

    #@34c
    if-eqz v29, :cond_1f

    #@34e
    if-eqz v4, :cond_20

    #@350
    .line 444
    :cond_1f
    :goto_d
    return-void

    #@351
    .line 651
    :cond_20
    move-object/from16 v0, p0

    #@353
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@355
    move-object/from16 v29, v0

    #@357
    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    #@35a
    goto :goto_d

    #@35b
    .line 481
    nop

    #@35c
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1288
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    #@3
    .line 1289
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@a
    .line 1291
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1292
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    #@11
    .line 1296
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #@13
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@15
    .line 1287
    return-void

    #@16
    .line 1294
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    #@19
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 1278
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 1280
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    #@6
    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 1281
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    #@12
    move-result v2

    #@13
    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    #@15
    .line 1283
    return-object v0

    #@16
    .line 1281
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@18
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 745
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    #@3
    .line 747
    if-eq p1, p3, :cond_0

    #@5
    .line 748
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    #@8
    .line 744
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 822
    iget-boolean v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@2
    if-nez v7, :cond_0

    #@4
    .line 823
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 826
    :cond_0
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@b
    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@e
    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@11
    move-result v0

    #@12
    .line 829
    .local v0, "action":I
    const/4 v4, 0x1

    #@13
    .line 831
    .local v4, "wantTouchEvents":Z
    and-int/lit16 v7, v0, 0xff

    #@15
    packed-switch v7, :pswitch_data_0

    #@18
    .line 858
    :cond_1
    :goto_0
    return v4

    #@19
    .line 833
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1c
    move-result v5

    #@1d
    .line 834
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@20
    move-result v6

    #@21
    .line 835
    .local v6, "y":F
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@23
    .line 836
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@25
    goto :goto_0

    #@26
    .line 841
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@28
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_1

    #@2e
    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@31
    move-result v5

    #@32
    .line 843
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@35
    move-result v6

    #@36
    .line 844
    .restart local v6    # "y":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    #@38
    sub-float v1, v5, v7

    #@3a
    .line 845
    .local v1, "dx":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    #@3c
    sub-float v2, v6, v7

    #@3e
    .line 846
    .local v2, "dy":F
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@40
    invoke-virtual {v7}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    #@43
    move-result v3

    #@44
    .line 847
    .local v3, "slop":I
    mul-float v7, v1, v1

    #@46
    mul-float v8, v2, v2

    #@48
    add-float/2addr v7, v8

    #@49
    mul-int v8, v3, v3

    #@4b
    int-to-float v8, v8

    #@4c
    cmpg-float v7, v7, v8

    #@4e
    if-gez v7, :cond_1

    #@50
    .line 848
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@52
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@54
    float-to-int v9, v5

    #@55
    float-to-int v10, v6

    #@56
    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    #@59
    move-result v7

    #@5a
    .line 847
    if-eqz v7, :cond_1

    #@5c
    .line 850
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@5e
    const/4 v8, 0x0

    #@5f
    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    #@62
    goto :goto_0

    #@63
    .line 831
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    #@0
    .prologue
    .line 754
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@3
    .line 755
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 753
    :cond_0
    :goto_0
    return-void

    #@e
    .line 756
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@10
    if-ne p1, v0, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    #@15
    goto :goto_0

    #@16
    :cond_2
    const/4 v0, 0x0

    #@17
    goto :goto_1
.end method

.method setAllChildrenVisible()V
    .locals 5

    #@0
    .prologue
    .line 402
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@4
    move-result v1

    #@5
    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@7
    .line 403
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 404
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@e
    move-result v3

    #@f
    const/4 v4, 0x4

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 405
    const/4 v3, 0x0

    #@13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@16
    .line 402
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 401
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 320
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    #@2
    .line 319
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@0
    .prologue
    .line 332
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    #@2
    .line 331
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    #@0
    .prologue
    .line 283
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    #@2
    .line 284
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    #@5
    .line 282
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 1097
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1108
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1107
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1118
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1117
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 1128
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1139
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 1138
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1149
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 1148
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 302
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    #@2
    .line 301
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 900
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    #@3
    .line 899
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 882
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    #@3
    .line 881
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 9
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1051
    iget-boolean v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 1053
    return v8

    #@6
    .line 1056
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@9
    move-result v1

    #@a
    .line 1057
    .local v1, "isLayoutRtl":Z
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@c
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    #@12
    .line 1060
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v1, :cond_1

    #@14
    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@17
    move-result v5

    #@18
    iget v6, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    #@1a
    add-int v3, v5, v6

    #@1c
    .line 1062
    .local v3, "startBound":I
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@1e
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@21
    move-result v0

    #@22
    .line 1063
    .local v0, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@25
    move-result v5

    #@26
    int-to-float v5, v5

    #@27
    int-to-float v6, v3

    #@28
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@2a
    int-to-float v7, v7

    #@2b
    mul-float/2addr v7, p1

    #@2c
    add-float/2addr v6, v7

    #@2d
    int-to-float v7, v0

    #@2e
    add-float/2addr v6, v7

    #@2f
    sub-float/2addr v5, v6

    #@30
    float-to-int v4, v5

    #@31
    .line 1069
    .end local v0    # "childWidth":I
    .local v4, "x":I
    :goto_0
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    #@33
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@35
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    #@37
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@3a
    move-result v7

    #@3b
    invoke-virtual {v5, v6, v4, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_2

    #@41
    .line 1070
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    #@44
    .line 1071
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@47
    .line 1072
    const/4 v5, 0x1

    #@48
    return v5

    #@49
    .line 1065
    .end local v3    # "startBound":I
    .end local v4    # "x":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@4c
    move-result v5

    #@4d
    iget v6, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    #@4f
    add-int v3, v5, v6

    #@51
    .line 1066
    .restart local v3    # "startBound":I
    int-to-float v5, v3

    #@52
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    #@54
    int-to-float v6, v6

    #@55
    mul-float/2addr v6, p1

    #@56
    add-float/2addr v5, v6

    #@57
    float-to-int v4, v5

    #@58
    .restart local v4    # "x":I
    goto :goto_0

    #@59
    .line 1074
    :cond_2
    return v8
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 21
    .param p1, "panel"    # Landroid/view/View;

    #@0
    .prologue
    .line 356
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    #@3
    move-result v12

    #@4
    .line 357
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    #@6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@9
    move-result v19

    #@a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@d
    move-result v20

    #@e
    sub-int v15, v19, v20

    #@10
    .line 359
    .local v15, "startBound":I
    :goto_0
    if-eqz v12, :cond_2

    #@12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@15
    move-result v10

    #@16
    .line 361
    .local v10, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    #@19
    move-result v17

    #@1a
    .line 362
    .local v17, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    #@1d
    move-result v19

    #@1e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    #@21
    move-result v20

    #@22
    sub-int v3, v19, v20

    #@24
    .line 367
    .local v3, "bottomBound":I
    if-eqz p1, :cond_3

    #@26
    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    #@29
    move-result v19

    #@2a
    if-eqz v19, :cond_3

    #@2c
    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    #@2f
    move-result v13

    #@30
    .line 369
    .local v13, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    #@33
    move-result v14

    #@34
    .line 370
    .local v14, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    #@37
    move-result v16

    #@38
    .line 371
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    #@3b
    move-result v2

    #@3c
    .line 376
    .local v2, "bottom":I
    :goto_2
    const/4 v11, 0x0

    #@3d
    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    #@40
    move-result v5

    #@41
    .local v5, "childCount":I
    :goto_3
    if-ge v11, v5, :cond_0

    #@43
    .line 377
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    #@48
    move-result-object v4

    #@49
    .line 379
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p1

    #@4b
    if-ne v4, v0, :cond_4

    #@4d
    .line 355
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    return-void

    #@4e
    .line 358
    .end local v2    # "bottom":I
    .end local v3    # "bottomBound":I
    .end local v5    # "childCount":I
    .end local v10    # "endBound":I
    .end local v11    # "i":I
    .end local v13    # "left":I
    .end local v14    # "right":I
    .end local v15    # "startBound":I
    .end local v16    # "top":I
    .end local v17    # "topBound":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    #@51
    move-result v15

    #@52
    .restart local v15    # "startBound":I
    goto :goto_0

    #@53
    .line 360
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    #@56
    move-result v19

    #@57
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    #@5a
    move-result v20

    #@5b
    sub-int v10, v19, v20

    #@5d
    .restart local v10    # "endBound":I
    goto :goto_1

    #@5e
    .line 373
    .restart local v3    # "bottomBound":I
    .restart local v17    # "topBound":I
    :cond_3
    const/4 v2, 0x0

    #@5f
    .restart local v2    # "bottom":I
    const/16 v16, 0x0

    #@61
    .restart local v16    # "top":I
    const/4 v14, 0x0

    #@62
    .restart local v14    # "right":I
    const/4 v13, 0x0

    #@63
    .restart local v13    # "left":I
    goto :goto_2

    #@64
    .line 384
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v11    # "i":I
    :cond_4
    if-eqz v12, :cond_5

    #@66
    move/from16 v19, v10

    #@68
    .line 385
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@6b
    move-result v20

    #@6c
    .line 384
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    #@6f
    move-result v7

    #@70
    .line 386
    .local v7, "clampedChildLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@73
    move-result v19

    #@74
    move/from16 v0, v17

    #@76
    move/from16 v1, v19

    #@78
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@7b
    move-result v9

    #@7c
    .line 387
    .local v9, "clampedChildTop":I
    if-eqz v12, :cond_6

    #@7e
    move/from16 v19, v15

    #@80
    .line 388
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@83
    move-result v20

    #@84
    .line 387
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    #@87
    move-result v8

    #@88
    .line 389
    .local v8, "clampedChildRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    #@8b
    move-result v19

    #@8c
    move/from16 v0, v19

    #@8e
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    #@91
    move-result v6

    #@92
    .line 391
    .local v6, "clampedChildBottom":I
    if-lt v7, v13, :cond_7

    #@94
    move/from16 v0, v16

    #@96
    if-lt v9, v0, :cond_7

    #@98
    .line 392
    if-gt v8, v14, :cond_7

    #@9a
    if-gt v6, v2, :cond_7

    #@9c
    .line 393
    const/16 v18, 0x4

    #@9e
    .line 397
    .local v18, "vis":I
    :goto_6
    move/from16 v0, v18

    #@a0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    #@a3
    .line 376
    add-int/lit8 v11, v11, 0x1

    #@a5
    goto :goto_3

    #@a6
    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v18    # "vis":I
    :cond_5
    move/from16 v19, v15

    #@a8
    .line 385
    goto :goto_4

    #@a9
    .restart local v7    # "clampedChildLeft":I
    .restart local v9    # "clampedChildTop":I
    :cond_6
    move/from16 v19, v10

    #@ab
    .line 388
    goto :goto_5

    #@ac
    .line 395
    .restart local v6    # "clampedChildBottom":I
    .restart local v8    # "clampedChildRight":I
    :cond_7
    const/16 v18, 0x0

    #@ae
    .restart local v18    # "vis":I
    goto :goto_6
.end method
