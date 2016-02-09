.class public Landroid/view/animation/ClipRectTBAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectTBAnimation.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "fromT"    # I
    .param p2, "fromB"    # I
    .param p3, "toT"    # I
    .param p4, "toB"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move v3, v1

    #@4
    move v4, p2

    #@5
    move v5, v1

    #@6
    move v6, p3

    #@7
    move v7, v1

    #@8
    move v8, p4

    #@9
    .line 34
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    #@c
    .line 33
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    .line 44
    .local v0, "oldClipRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@6
    iget-object v2, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@8
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@a
    iget-object v3, p0, Landroid/view/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    #@c
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@e
    iget-object v4, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@10
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@12
    sub-int/2addr v3, v4

    #@13
    int-to-float v3, v3

    #@14
    mul-float/2addr v3, p1

    #@15
    float-to-int v3, v3

    #@16
    add-int/2addr v2, v3

    #@17
    .line 45
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@19
    .line 46
    iget-object v4, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@1b
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@1d
    iget-object v5, p0, Landroid/view/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    #@1f
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@21
    iget-object v6, p0, Landroid/view/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@23
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@25
    sub-int/2addr v5, v6

    #@26
    int-to-float v5, v5

    #@27
    mul-float/2addr v5, p1

    #@28
    float-to-int v5, v5

    #@29
    add-int/2addr v4, v5

    #@2a
    .line 44
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@2d
    .line 42
    return-void
.end method
