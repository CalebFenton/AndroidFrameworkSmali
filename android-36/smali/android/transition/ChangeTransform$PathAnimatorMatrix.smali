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
.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mTranslationX:F

.field private greylist-max-o mTranslationY:F

.field private final greylist-max-o mValues:[F

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;[F)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 517
    iput-object p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 518
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 519
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 520
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 521
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 522
    return-void
.end method

.method private greylist-max-o setAnimationMatrix()V
    .registers 4

    .line 536
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x2

    iget v2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    aput v2, v0, v1

    .line 537
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    const/4 v1, 0x5

    iget v2, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    aput v2, v0, v1

    .line 538
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 539
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 540
    return-void
.end method


# virtual methods
.method public greylist-max-o getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 543
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public greylist-max-o setTranslation(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "translation"    # Landroid/graphics/PointF;

    .line 530
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 531
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 532
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 533
    return-void
.end method

.method public greylist-max-o setValues([F)V
    .registers 5
    .param p1, "values"    # [F

    .line 525
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 527
    return-void
.end method
