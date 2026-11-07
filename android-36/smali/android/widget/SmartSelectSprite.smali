.class final Landroid/widget/SmartSelectSprite;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList;,
        Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;,
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    }
.end annotation


# static fields
.field private static final greylist-max-o EXPAND_DURATION:I = 0xc8

.field static final greylist-max-o RECTANGLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mActiveAnimator:Landroid/animation/Animator;

.field private greylist-max-o mExistingDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

.field private final greylist-max-o mExpandInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-o mFillColor:I

.field private final greylist-max-o mInvalidator:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$i_KshA4950qAwOA-tjEY7NQ_fbc(Landroid/widget/SmartSelectSprite;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite;->lambda$startAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExistingRectangleList(Landroid/widget/SmartSelectSprite;)Landroid/widget/SmartSelectSprite$RectangleList;
    .registers 1

    iget-object p0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvalidator(Landroid/widget/SmartSelectSprite;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;-><init>()V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/widget/SmartSelectSprite;->RECTANGLE_COMPARATOR:Ljava/util/Comparator;

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "highlightColor"    # I
    .param p3, "invalidator"    # Ljava/lang/Runnable;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    .line 66
    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    .line 335
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 338
    iput p2, p0, Landroid/widget/SmartSelectSprite;->mFillColor:I

    .line 339
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    .line 340
    return-void
.end method

.method private static greylist-max-o contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .registers 5
    .param p0, "rectangle"    # Landroid/graphics/RectF;
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 521
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 522
    .local v0, "x":F
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 523
    .local v1, "y":F
    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1e

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1e

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1e

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    return v2
.end method

.method private blacklist createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .registers 13
    .param p1, "rectangleList"    # Landroid/widget/SmartSelectSprite$RectangleList;
    .param p2, "startingOffsetLeft"    # F
    .param p3, "startingOffsetRight"    # F
    .param p4, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p5, "onAnimationEnd"    # Ljava/lang/Runnable;

    .line 431
    nop

    .line 435
    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->-$$Nest$mgetTotalWidth(Landroid/widget/SmartSelectSprite$RectangleList;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    .line 431
    const-string/jumbo v0, "rightBoundary"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 437
    .local v0, "rightBoundaryAnimator":Landroid/animation/ObjectAnimator;
    new-array v2, v1, [F

    aput p2, v2, v3

    const/4 v5, 0x0

    aput v5, v2, v4

    const-string v5, "leftBoundary"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 443
    .local v2, "leftBoundaryAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 444
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 446
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 447
    invoke-virtual {v2, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    iget-object v5, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    iget-object v5, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 453
    .local v5, "boundaryAnimator":Landroid/animation/AnimatorSet;
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 455
    invoke-direct {p0, v5, p5}, Landroid/widget/SmartSelectSprite;->setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    .line 457
    return-object v5
.end method

.method private static greylist-max-o generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I
    .registers 8
    .param p0, "centerRectangle"    # Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;)[I"
        }
    .end annotation

    .line 487
    .local p1, "rectangles":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 489
    .local v0, "result":[I
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 491
    .local v1, "centerRectangleIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    add-int/lit8 v3, v1, -0x1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_15

    .line 492
    aput v4, v0, v2

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 495
    .end local v2    # "i":I
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_20

    .line 496
    aput v3, v0, v1

    goto :goto_31

    .line 497
    :cond_20
    if-nez v1, :cond_25

    .line 498
    aput v4, v0, v1

    goto :goto_31

    .line 499
    :cond_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_2f

    .line 500
    aput v5, v0, v1

    goto :goto_31

    .line 502
    :cond_2f
    aput v3, v0, v1

    .line 505
    :goto_31
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "i":I
    :goto_33
    array-length v3, v0

    if-ge v2, v3, :cond_3b

    .line 506
    aput v5, v0, v2

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 509
    .end local v2    # "i":I
    :cond_3b
    return-object v0
.end method

.method private synthetic blacklist lambda$startAnimation$2(Landroid/animation/ValueAnimator;)V
    .registers 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 365
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;)D
    .registers 3
    .param p0, "e"    # Landroid/graphics/RectF;

    .line 63
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;)D
    .registers 3
    .param p0, "e"    # Landroid/graphics/RectF;

    .line 64
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    return-wide v0
.end method

.method private greylist-max-o removeExistingDrawables()V
    .registers 2

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    .line 529
    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    .line 530
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 531
    return-void
.end method

.method private greylist-max-o setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "onAnimationEnd"    # Ljava/lang/Runnable;

    .line 461
    new-instance v0, Landroid/widget/SmartSelectSprite$1;

    invoke-direct {v0, p0, p2}, Landroid/widget/SmartSelectSprite$1;-><init>(Landroid/widget/SmartSelectSprite;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    return-void
.end method


# virtual methods
.method public greylist-max-o cancelAnimation()V
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    .line 538
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    .line 540
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite;->removeExistingDrawables()V

    .line 542
    :cond_f
    return-void
.end method

.method public greylist-max-o draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 545
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 548
    :cond_9
    return-void
.end method

.method public greylist-max-o isAnimationActive()Z
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o startAnimation(Landroid/graphics/PointF;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 20
    .param p1, "start"    # Landroid/graphics/PointF;
    .param p3, "onAnimationEnd"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 362
    .local p2, "destinationRectangles":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;>;"
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v0}, Landroid/widget/SmartSelectSprite;->cancelAnimation()V

    .line 364
    new-instance v4, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SmartSelectSprite;)V

    .line 367
    .local v4, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 369
    .local v8, "rectangleCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v1

    .line 371
    .local v9, "shapes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RoundedRectangleShape;>;"
    const/4 v1, 0x0

    .line 373
    .local v1, "centerRectangle":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    const/4 v2, 0x0

    .line 375
    .local v2, "startingOffset":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    .line 376
    .local v5, "rectangleWithTextSelectionLayout":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    invoke-virtual {v5}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v10

    .line 377
    .local v10, "rectangle":Landroid/graphics/RectF;
    invoke-static {v10, v6}, Landroid/widget/SmartSelectSprite;->contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 378
    move-object v1, v5

    .line 379
    move-object v10, v1

    goto :goto_40

    .line 381
    :cond_37
    int-to-float v11, v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v12

    add-float/2addr v11, v12

    float-to-int v2, v11

    .line 382
    .end local v5    # "rectangleWithTextSelectionLayout":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    .end local v10    # "rectangle":Landroid/graphics/RectF;
    goto :goto_1e

    .line 375
    :cond_3f
    move-object v10, v1

    .line 384
    .end local v1    # "centerRectangle":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    .local v10, "centerRectangle":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    :goto_40
    if-eqz v10, :cond_a5

    .line 388
    int-to-float v1, v2

    iget v3, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    add-float/2addr v1, v3

    float-to-int v11, v1

    .line 390
    .end local v2    # "startingOffset":I
    .local v11, "startingOffset":I
    nop

    .line 391
    invoke-static {v10, v7}, Landroid/widget/SmartSelectSprite;->generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I

    move-result-object v12

    .line 393
    .local v12, "expansionDirections":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_54
    const/4 v2, 0x0

    if-ge v1, v8, :cond_78

    .line 394
    nop

    .line 395
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    .line 396
    .local v3, "rectangleWithTextSelectionLayout":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    invoke-virtual {v3}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v5

    .line 397
    .local v5, "rectangle":Landroid/graphics/RectF;
    new-instance v13, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    aget v14, v12, v1

    .line 400
    invoke-virtual {v3}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getTextSelectionLayout()I

    move-result v15

    if-nez v15, :cond_6e

    const/4 v15, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v15, 0x0

    :goto_6f
    invoke-direct {v13, v5, v14, v15, v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite-IA;)V

    .line 402
    .local v13, "shape":Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v3    # "rectangleWithTextSelectionLayout":Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    .end local v5    # "rectangle":Landroid/graphics/RectF;
    .end local v13    # "shape":Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 405
    .end local v1    # "index":I
    :cond_78
    new-instance v1, Landroid/widget/SmartSelectSprite$RectangleList;

    invoke-direct {v1, v9, v2}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;Landroid/widget/SmartSelectSprite-IA;)V

    .line 406
    .local v1, "rectangleList":Landroid/widget/SmartSelectSprite$RectangleList;
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v13, v2

    .line 408
    .local v13, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    .line 409
    .local v14, "paint":Landroid/graphics/Paint;
    iget v2, v0, Landroid/widget/SmartSelectSprite;->mFillColor:I

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 412
    iput-object v1, v0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    .line 413
    iput-object v13, v0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    .line 415
    int-to-float v2, v11

    int-to-float v3, v11

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SmartSelectSprite;->createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    .line 417
    iget-object v2, v0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 418
    return-void

    .line 385
    .end local v1    # "rectangleList":Landroid/widget/SmartSelectSprite$RectangleList;
    .end local v11    # "startingOffset":I
    .end local v12    # "expansionDirections":[I
    .end local v13    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v14    # "paint":Landroid/graphics/Paint;
    .restart local v2    # "startingOffset":I
    :cond_a5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Center point is not inside any of the rectangles!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
