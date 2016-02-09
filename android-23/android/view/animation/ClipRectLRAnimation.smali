.class public Landroid/view/animation/ClipRectLRAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectLRAnimation.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "fromL"    # I
    .param p2, "fromR"    # I
    .param p3, "toL"    # I
    .param p4, "toR"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v3, p2

    #@4
    move v4, v2

    #@5
    move v5, p3

    #@6
    move v6, v2

    #@7
    move v7, p4

    #@8
    move v8, v2

    #@9
    .line 34
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    #@c
    .line 33
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
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
    iget-object v1, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    #@6
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@8
    iget-object v2, p0, Landroid/view/animation/ClipRectLRAnimation;->mToRect:Landroid/graphics/Rect;

    #@a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@c
    iget-object v3, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    #@e
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@10
    sub-int/2addr v2, v3

    #@11
    int-to-float v2, v2

    #@12
    mul-float/2addr v2, p1

    #@13
    float-to-int v2, v2

    #@14
    add-int/2addr v1, v2

    #@15
    .line 45
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@17
    .line 46
    iget-object v3, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    #@19
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@1b
    iget-object v4, p0, Landroid/view/animation/ClipRectLRAnimation;->mToRect:Landroid/graphics/Rect;

    #@1d
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@1f
    iget-object v5, p0, Landroid/view/animation/ClipRectLRAnimation;->mFromRect:Landroid/graphics/Rect;

    #@21
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@23
    sub-int/2addr v4, v5

    #@24
    int-to-float v4, v4

    #@25
    mul-float/2addr v4, p1

    #@26
    float-to-int v4, v4

    #@27
    add-int/2addr v3, v4

    #@28
    .line 47
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 44
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@2d
    .line 42
    return-void
.end method
