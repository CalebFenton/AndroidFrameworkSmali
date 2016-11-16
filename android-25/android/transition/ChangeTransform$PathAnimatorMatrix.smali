.class Landroid/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    #@0
    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 504
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@a
    .line 511
    iput-object p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    #@c
    .line 512
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [F

    #@12
    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@14
    .line 513
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@16
    const/4 v1, 0x2

    #@17
    aget v0, v0, v1

    #@19
    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    #@1b
    .line 514
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@1d
    const/4 v1, 0x5

    #@1e
    aget v0, v0, v1

    #@20
    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    #@22
    .line 515
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    #@25
    .line 510
    return-void
.end method

.method private setAnimationMatrix()V
    .locals 3

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@2
    iget v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    #@4
    const/4 v2, 0x2

    #@5
    aput v1, v0, v2

    #@7
    .line 531
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@9
    iget v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    #@b
    const/4 v2, 0x5

    #@c
    aput v1, v0, v2

    #@e
    .line 532
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@10
    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@12
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    #@15
    .line 533
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    #@17
    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@19
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    #@1c
    .line 529
    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public setTranslation(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "translation"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 524
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    #@4
    .line 525
    iget v0, p1, Landroid/graphics/PointF;->y:F

    #@6
    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    #@8
    .line 526
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    #@b
    .line 523
    return-void
.end method

.method public setValues([F)V
    .locals 3
    .param p1, "values"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 519
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    #@3
    array-length v1, p1

    #@4
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@7
    .line 520
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    #@a
    .line 518
    return-void
.end method
