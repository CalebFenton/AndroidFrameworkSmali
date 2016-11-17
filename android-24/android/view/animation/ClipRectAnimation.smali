.class public Landroid/view/animation/ClipRectAnimation;
.super Landroid/view/animation/Animation;
.source "ClipRectAnimation.java"


# instance fields
.field protected mFromRect:Landroid/graphics/Rect;

.field protected mToRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 1
    .param p1, "fromL"    # I
    .param p2, "fromT"    # I
    .param p3, "fromR"    # I
    .param p4, "fromB"    # I
    .param p5, "toL"    # I
    .param p6, "toT"    # I
    .param p7, "toR"    # I
    .param p8, "toB"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@3
    .line 29
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@a
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@11
    .line 51
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@16
    .line 52
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v0, p5, p6, p7, p8}, Landroid/graphics/Rect;->set(IIII)V

    #@1b
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@3
    .line 29
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@a
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@11
    .line 39
    if-eqz p1, :cond_0

    #@13
    if-nez p2, :cond_1

    #@15
    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v1, "Expected non-null animation clip rects"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 42
    :cond_1
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@23
    .line 43
    iget-object v0, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@28
    .line 38
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 57
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@2
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@4
    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@6
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@8
    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@a
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@c
    sub-int/2addr v5, v6

    #@d
    int-to-float v5, v5

    #@e
    mul-float/2addr v5, p1

    #@f
    float-to-int v5, v5

    #@10
    add-int v1, v4, v5

    #@12
    .line 58
    .local v1, "l":I
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@14
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@16
    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@18
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@1a
    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@1c
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@1e
    sub-int/2addr v5, v6

    #@1f
    int-to-float v5, v5

    #@20
    mul-float/2addr v5, p1

    #@21
    float-to-int v5, v5

    #@22
    add-int v3, v4, v5

    #@24
    .line 59
    .local v3, "t":I
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@26
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@28
    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@2a
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@2c
    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@2e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@30
    sub-int/2addr v5, v6

    #@31
    int-to-float v5, v5

    #@32
    mul-float/2addr v5, p1

    #@33
    float-to-int v5, v5

    #@34
    add-int v2, v4, v5

    #@36
    .line 60
    .local v2, "r":I
    iget-object v4, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@38
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@3a
    iget-object v5, p0, Landroid/view/animation/ClipRectAnimation;->mToRect:Landroid/graphics/Rect;

    #@3c
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3e
    iget-object v6, p0, Landroid/view/animation/ClipRectAnimation;->mFromRect:Landroid/graphics/Rect;

    #@40
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@42
    sub-int/2addr v5, v6

    #@43
    int-to-float v5, v5

    #@44
    mul-float/2addr v5, p1

    #@45
    float-to-int v5, v5

    #@46
    add-int v0, v4, v5

    #@48
    .line 61
    .local v0, "b":I
    invoke-virtual {p2, v1, v3, v2, v0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@4b
    .line 56
    return-void
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return v0
.end method
