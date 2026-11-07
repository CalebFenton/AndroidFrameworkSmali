.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final blacklist mLightRadius:F

.field private final greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surface"    # Landroid/view/Surface;

    .line 844
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 845
    invoke-virtual {p0, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setName(Ljava/lang/String;)V

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setOpaque(Z)V

    .line 847
    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    .line 848
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 849
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    .line 850
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    .line 851
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    .line 852
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 853
    .local v0, "ambientShadowAlpha":F
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 854
    .local v2, "spotShadowAlpha":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 855
    invoke-virtual {p0, v0, v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceAlpha(FF)V

    .line 856
    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    .line 886
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 887
    .local v0, "vsync":J
    if-eqz p1, :cond_d

    .line 888
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 890
    :cond_d
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v2

    .line 891
    invoke-virtual {v2, v0, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v2

    .line 892
    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    .line 893
    return-void
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .registers 2

    .line 879
    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method public greylist-max-o setLightCenter(Landroid/view/Display;II)V
    .registers 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "windowLeft"    # I
    .param p3, "windowTop"    # I

    .line 864
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 865
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 866
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, p2

    sub-float/2addr v1, v3

    .line 867
    .local v1, "lightX":F
    iget v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float v4, p3

    sub-float/2addr v3, v4

    .line 870
    .local v3, "lightY":F
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43e10000    # 450.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    div-float/2addr v4, v6

    .line 872
    .local v4, "zRatio":F
    add-float/2addr v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    .line 873
    .local v2, "zWeightedAdjustment":F
    iget v5, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    mul-float/2addr v5, v2

    .line 875
    .local v5, "lightZ":F
    iget v6, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceGeometry(FFFF)V

    .line 876
    return-void
.end method
