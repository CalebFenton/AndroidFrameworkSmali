.class public Landroid/view/RenderNodeAnimator;
.super Landroid/graphics/animation/RenderNodeAnimator;
.source "RenderNodeAnimator.java"

# interfaces
.implements Landroid/graphics/animation/RenderNodeAnimator$ViewListener;


# instance fields
.field private greylist-max-o mViewTarget:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(IF)V
    .registers 3
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(IF)V

    .line 33
    return-void
.end method

.method public constructor greylist-max-o <init>(IIFF)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(IIFF)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/CanvasProperty;F)V
    .registers 3
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 36
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/CanvasProperty;IF)V
    .registers 4
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .line 40
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist invalidateParent(Z)V
    .registers 5
    .param p1, "forceRedraw"    # Z

    .line 58
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 59
    return-void
.end method

.method public blacklist onAlphaAnimationStart(F)V
    .registers 3
    .param p1, "finalAlpha"    # F

    .line 52
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 53
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlphaInternal(F)V

    .line 54
    return-void
.end method

.method public blacklist setTarget(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 63
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 64
    invoke-virtual {p0, p0}, Landroid/view/RenderNodeAnimator;->setViewListener(Landroid/graphics/animation/RenderNodeAnimator$ViewListener;)V

    .line 65
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/RenderNode;)V

    .line 66
    return-void
.end method
