.class Landroid/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field public final rotationX:F

.field public final rotationY:F

.field public final rotationZ:F

.field public final scaleX:F

.field public final scaleY:F

.field public final translationX:F

.field public final translationY:F

.field public final translationZ:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    #@9
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    #@f
    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    #@15
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    #@1b
    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    #@21
    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    #@27
    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    #@2d
    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    #@33
    .line 434
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 452
    instance-of v2, p1, Landroid/transition/ChangeTransform$Transforms;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 453
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 455
    check-cast v0, Landroid/transition/ChangeTransform$Transforms;

    #@9
    .line 456
    .local v0, "thatTransform":Landroid/transition/ChangeTransform$Transforms;
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    #@b
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    #@d
    cmpl-float v2, v2, v3

    #@f
    if-nez v2, :cond_1

    #@11
    .line 457
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    #@13
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    #@15
    cmpl-float v2, v2, v3

    #@17
    if-nez v2, :cond_1

    #@19
    .line 458
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    #@1b
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    #@1d
    cmpl-float v2, v2, v3

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 459
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    #@23
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    #@25
    cmpl-float v2, v2, v3

    #@27
    if-nez v2, :cond_1

    #@29
    .line 460
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    #@2b
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    #@2d
    cmpl-float v2, v2, v3

    #@2f
    if-nez v2, :cond_1

    #@31
    .line 461
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    #@33
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    #@35
    cmpl-float v2, v2, v3

    #@37
    if-nez v2, :cond_1

    #@39
    .line 462
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    #@3b
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    #@3d
    cmpl-float v2, v2, v3

    #@3f
    if-nez v2, :cond_1

    #@41
    .line 463
    iget v2, v0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    #@43
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    #@45
    cmpl-float v2, v2, v3

    #@47
    if-nez v2, :cond_1

    #@49
    const/4 v1, 0x1

    #@4a
    .line 456
    :cond_1
    return v1
.end method

.method public restore(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 446
    iget v1, p0, Landroid/transition/ChangeTransform$Transforms;->translationX:F

    #@2
    iget v2, p0, Landroid/transition/ChangeTransform$Transforms;->translationY:F

    #@4
    iget v3, p0, Landroid/transition/ChangeTransform$Transforms;->translationZ:F

    #@6
    iget v4, p0, Landroid/transition/ChangeTransform$Transforms;->scaleX:F

    #@8
    iget v5, p0, Landroid/transition/ChangeTransform$Transforms;->scaleY:F

    #@a
    .line 447
    iget v6, p0, Landroid/transition/ChangeTransform$Transforms;->rotationX:F

    #@c
    iget v7, p0, Landroid/transition/ChangeTransform$Transforms;->rotationY:F

    #@e
    iget v8, p0, Landroid/transition/ChangeTransform$Transforms;->rotationZ:F

    #@10
    move-object v0, p1

    #@11
    .line 446
    invoke-static/range {v0 .. v8}, Landroid/transition/ChangeTransform;->-wrap1(Landroid/view/View;FFFFFFFF)V

    #@14
    .line 445
    return-void
.end method
