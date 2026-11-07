.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final greylist-max-o SCROLL_MODE:I


# instance fields
.field private final greylist-max-o mFlywheel:Z

.field private greylist-max-r mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMode:I

.field private final greylist-max-o mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final greylist mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 103
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 122
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p2, :cond_d

    .line 78
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_f

    .line 80
    :cond_d
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    :goto_f
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    .line 83
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 84
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .registers 2

    .line 504
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 505
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 506
    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .registers 10

    .line 288
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_8
    iget v0, p0, Landroid/widget/OverScroller;->mMode:I

    packed-switch v0, :pswitch_data_88

    goto/16 :goto_86

    .line 312
    :pswitch_f
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 313
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 314
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 315
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 320
    :cond_2c
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 321
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_86

    .line 322
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_86

    .line 323
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_86

    .line 294
    :pswitch_4a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 299
    .local v2, "elapsedTime":J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v4

    .line 300
    .local v4, "duration":I
    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_82

    .line 301
    iget-object v5, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 302
    .local v5, "q":F
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0x1

    sub-long v7, v2, v7

    long-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    .line 303
    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 304
    .local v6, "q2":F
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v5, v6}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(FF)V

    .line 305
    iget-object v7, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v7, v5, v6}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(FF)V

    .line 306
    .end local v5    # "q":F
    .end local v6    # "q2":F
    goto :goto_86

    .line 307
    :cond_82
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 309
    nop

    .line 331
    .end local v0    # "time":J
    .end local v2    # "elapsedTime":J
    .end local v4    # "duration":I
    :cond_86
    :goto_86
    const/4 v0, 0x1

    return v0

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_f
    .end packed-switch
.end method

.method public greylist extendDuration(I)V
    .registers 3
    .param p1, "extend"    # I

    .line 253
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 254
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 255
    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .registers 20
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 394
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 395
    return-void
.end method

.method public whitelist fling(IIIIIIIIII)V
    .registers 21
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .line 427
    iget-boolean v2, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_39

    .line 428
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    .line 429
    .local v2, "oldVelocityX":F
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v3

    .line 430
    .local v3, "oldVelocityY":F
    int-to-float v4, p3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_39

    int-to-float v4, p4

    .line 431
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_39

    .line 432
    int-to-float v4, p3

    add-float/2addr v4, v2

    float-to-int v0, v4

    .line 433
    .end local p3    # "velocityX":I
    .local v0, "velocityX":I
    int-to-float v4, p4

    add-float/2addr v4, v3

    float-to-int v1, v4

    move v6, v0

    move v2, v1

    .end local p4    # "velocityY":I
    .local v1, "velocityY":I
    goto :goto_3b

    .line 437
    .end local v0    # "velocityX":I
    .end local v1    # "velocityY":I
    .end local v2    # "oldVelocityX":F
    .end local v3    # "oldVelocityY":F
    .restart local p3    # "velocityX":I
    .restart local p4    # "velocityY":I
    :cond_39
    move v6, p3

    move v2, p4

    .end local p3    # "velocityX":I
    .end local p4    # "velocityY":I
    .local v2, "velocityY":I
    .local v6, "velocityX":I
    :goto_3b
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 438
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v5, p1

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 439
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 440
    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .registers 4
    .param p1, "finished"    # Z

    .line 164
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V

    .line 165
    return-void
.end method

.method public whitelist getCurrVelocity()F
    .registers 5

    .line 191
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final whitelist getCurrX()I
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getCurrY()I
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getDuration()I
    .registers 3

    .line 238
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final whitelist getFinalX()I
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getFinalY()I
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method blacklist getSplineFlingDistance(I)D
    .registers 4
    .param p1, "velocity"    # I

    .line 533
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$mgetSplineFlingDistance(Landroid/widget/OverScroller$SplineOverScroller;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getStartX()I
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist getStartY()I
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final whitelist isFinished()Z
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist isOverScrolled()Z
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public greylist isScrollingInDirection(FF)Z
    .registers 7
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 526
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 527
    .local v0, "dx":I
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 528
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    .line 529
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 528
    :goto_3d
    return v2
.end method

.method public whitelist notifyHorizontalEdgeReached(III)V
    .registers 5
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 456
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 457
    return-void
.end method

.method public whitelist notifyVerticalEdgeReached(III)V
    .registers 5
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 473
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 474
    return-void
.end method

.method public greylist-max-o setFinalX(I)V
    .registers 3
    .param p1, "newX"    # I

    .line 267
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 268
    return-void
.end method

.method public greylist-max-o setFinalY(I)V
    .registers 3
    .param p1, "newY"    # I

    .line 280
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 281
    return-void
.end method

.method public final whitelist setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 141
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 142
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 143
    return-void
.end method

.method greylist setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 126
    if-nez p1, :cond_a

    .line 127
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c

    .line 129
    :cond_a
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 131
    :goto_c
    return-void
.end method

.method public whitelist springBack(IIIIII)Z
    .registers 10
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 384
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 387
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 388
    .local v1, "spingbackX":Z
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v2

    .line 389
    .local v2, "spingbackY":Z
    if-nez v1, :cond_15

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0
.end method

.method public whitelist startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 349
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "startX":I
    .end local p2    # "startY":I
    .end local p3    # "dx":I
    .end local p4    # "dy":I
    .local v1, "startX":I
    .local v2, "startY":I
    .local v3, "dx":I
    .local v4, "dy":I
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 350
    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    .line 367
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 368
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 369
    return-void
.end method

.method public greylist-max-o timePassed()I
    .registers 7

    .line 516
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 517
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 518
    .local v2, "startTime":J
    sub-long v4, v0, v2

    long-to-int v4, v4

    return v4
.end method
