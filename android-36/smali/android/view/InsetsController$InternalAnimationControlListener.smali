.class public Landroid/view/InsetsController$InternalAnimationControlListener;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;
.implements Landroid/view/InsetsAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalAnimationControlListener"
.end annotation


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mBehavior:I

.field private blacklist mController:Landroid/view/WindowInsetsAnimationController;

.field private final blacklist mDisable:Z

.field private final blacklist mFloatingImeBottomInset:I

.field private final blacklist mHasAnimationCallbacks:Z

.field private final blacklist mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

.field private final blacklist mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private final blacklist mRequestedTypes:I

.field private final blacklist mShow:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$BJTEi7zfHhP2W08t256nzVrDzao(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vYENjUMLI1MBNXf4d_zEaIcueRE(Landroid/view/InsetsController$InternalAnimationControlListener;F)F
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getInsetsInterpolator$1(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasAnimationCallbacks(Landroid/view/InsetsController$InternalAnimationControlListener;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputMethodJankContext(Landroid/view/InsetsController$InternalAnimationControlListener;)Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAnimationType(Landroid/view/InsetsController$InternalAnimationControlListener;)I
    .registers 1

    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAnimationType()I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(ZZIIZILandroid/view/WindowInsetsAnimationControlListener;Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;)V
    .registers 9
    .param p1, "show"    # Z
    .param p2, "hasAnimationCallbacks"    # Z
    .param p3, "requestedTypes"    # I
    .param p4, "behavior"    # I
    .param p5, "disable"    # Z
    .param p6, "floatingImeBottomInset"    # I
    .param p7, "loggingListener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p8, "jankContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    .line 387
    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    .line 388
    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 389
    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    .line 390
    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    .line 391
    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    .line 392
    iput-object p7, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 393
    iput-object p8, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInputMethodJankContext:Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;

    .line 394
    return-void
.end method

.method private blacklist getAnimationType()I
    .registers 2

    .line 558
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$2(F)F
    .registers 2
    .param p0, "input"    # F

    .line 511
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$3(F)F
    .registers 3
    .param p0, "input"    # F

    .line 514
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$4(F)F
    .registers 2
    .param p0, "input"    # F

    .line 520
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private synthetic blacklist lambda$getInsetsInterpolator$1(F)F
    .registers 3
    .param p1, "input"    # F

    .line 503
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private synthetic blacklist lambda$onReady$0(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .registers 12
    .param p1, "insetsInterpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p3, "start"    # Landroid/graphics/Insets;
    .param p4, "end"    # Landroid/graphics/Insets;
    .param p5, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animation"    # Landroid/animation/ValueAnimator;

    .line 428
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 429
    .local v0, "rawFraction":F
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_a

    .line 430
    move v1, v0

    goto :goto_d

    .line 431
    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    :goto_d
    nop

    .line 432
    .local v1, "alphaFraction":F
    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 433
    .local v2, "insetsFraction":F
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    .line 434
    invoke-interface {v3, v2, p3, p4}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Insets;

    .line 435
    invoke-interface {p5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 433
    invoke-interface {p2, v3, v4, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 439
    return-void
.end method


# virtual methods
.method blacklist getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 509
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_28

    .line 510
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 511
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;-><init>()V

    return-object v0

    .line 512
    :cond_1b
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_25

    .line 514
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 516
    :cond_25
    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 519
    :cond_28
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 520
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 522
    :cond_33
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_3c

    .line 523
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 525
    :cond_3c
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDurationMs(Z)J
    .registers 4
    .param p1, "hasZeroInsetsIme"    # Z

    .line 538
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 539
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 540
    const-wide/16 v0, 0x11d

    return-wide v0

    .line 542
    :cond_12
    const-wide/16 v0, 0xc8

    return-wide v0

    .line 545
    :cond_15
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 546
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_21

    const-wide/16 v0, 0x113

    goto :goto_23

    :cond_21
    const-wide/16 v0, 0x154

    :goto_23
    return-wide v0

    .line 548
    :cond_24
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_2b

    const-wide/16 v0, 0x1f4

    goto :goto_2d

    :cond_2b
    const-wide/16 v0, 0x5dc

    :goto_2d
    return-wide v0
.end method

.method public blacklist getInsetsInterpolator(Z)Landroid/view/animation/Interpolator;
    .registers 4
    .param p1, "hasZeroInsetsIme"    # Z

    .line 490
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 491
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_12

    .line 492
    sget-object v0, Landroid/view/InsetsController;->SYNC_IME_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 493
    :cond_12
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_1b

    .line 494
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 496
    :cond_1b
    sget-object v0, Landroid/view/InsetsController;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0

    .line 499
    :cond_1e
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 500
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 503
    :cond_28
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    return-object v0
.end method

.method protected blacklist onAnimationFinish()V
    .registers 3

    .line 532
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 534
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 478
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 479
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 483
    :cond_9
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_12

    .line 484
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 486
    :cond_12
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 470
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    .line 473
    :cond_9
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 13
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 398
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    .line 400
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    if-eqz v0, :cond_b

    .line 401
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mLoggingListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 404
    :cond_b
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    if-eqz v0, :cond_13

    .line 405
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 406
    return-void

    .line 408
    :cond_13
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v0

    .line 409
    .local v0, "hasZeroInsetsIme":Z
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_86

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 410
    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getDurationMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 411
    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 412
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 415
    .local v1, "hiddenInsets":Landroid/graphics/Insets;
    if-eqz v0, :cond_49

    .line 416
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    iget v5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_4a

    .line 418
    :cond_49
    move-object v2, v1

    :goto_4a
    nop

    .line 419
    .end local v1    # "hiddenInsets":Landroid/graphics/Insets;
    .local v2, "hiddenInsets":Landroid/graphics/Insets;
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_51

    .line 420
    move-object v1, v2

    goto :goto_55

    .line 421
    :cond_51
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    :goto_55
    move-object v7, v1

    .line 422
    .local v7, "start":Landroid/graphics/Insets;
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_60

    .line 423
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v8, v1

    goto :goto_61

    .line 424
    :cond_60
    move-object v8, v2

    :goto_61
    nop

    .line 425
    .local v8, "end":Landroid/graphics/Insets;
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 426
    .local v5, "insetsInterpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 427
    .local v9, "alphaInterpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v6, p1

    .end local p1    # "controller":Landroid/view/WindowInsetsAnimationController;
    .local v6, "controller":Landroid/view/WindowInsetsAnimationController;
    invoke-direct/range {v3 .. v9}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 440
    iget-object p1, v4, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    iget-object p1, v4, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 464
    return-void

    :array_86
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
