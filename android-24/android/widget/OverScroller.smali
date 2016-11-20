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
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@4
    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    #@4
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    #@0
    .prologue
    .line 96
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    #@4
    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    #@0
    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    #@3
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    if-nez p2, :cond_0

    #@5
    .line 73
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    #@7
    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    #@a
    iput-object v0, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@c
    .line 77
    :goto_0
    iput-boolean p3, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    #@e
    .line 78
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    #@10
    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    #@13
    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@15
    .line 79
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    #@17
    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    #@1a
    iput-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@1c
    .line 71
    return-void

    #@1d
    .line 75
    :cond_0
    iput-object p2, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    #@5
    .line 512
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@7
    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    #@a
    .line 510
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    #@0
    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    #@3
    move-result v6

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 298
    const/4 v6, 0x0

    #@7
    return v6

    #@8
    .line 301
    :cond_0
    iget v6, p0, Landroid/widget/OverScroller;->mMode:I

    #@a
    packed-switch v6, :pswitch_data_0

    #@d
    .line 338
    :cond_1
    :goto_0
    const/4 v6, 0x1

    #@e
    return v6

    #@f
    .line 303
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@12
    move-result-wide v4

    #@13
    .line 306
    .local v4, "time":J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@15
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->-get6(Landroid/widget/OverScroller$SplineOverScroller;)J

    #@18
    move-result-wide v6

    #@19
    sub-long v2, v4, v6

    #@1b
    .line 308
    .local v2, "elapsedTime":J
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@1d
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->-get2(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@20
    move-result v0

    #@21
    .line 309
    .local v0, "duration":I
    int-to-long v6, v0

    #@22
    cmp-long v6, v2, v6

    #@24
    if-gez v6, :cond_2

    #@26
    .line 310
    iget-object v6, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@28
    long-to-float v7, v2

    #@29
    int-to-float v8, v0

    #@2a
    div-float/2addr v7, v8

    #@2b
    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@2e
    move-result v1

    #@2f
    .line 311
    .local v1, "q":F
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@31
    invoke-virtual {v6, v1}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    #@34
    .line 312
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@36
    invoke-virtual {v6, v1}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    #@39
    goto :goto_0

    #@3a
    .line 314
    .end local v1    # "q":F
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@3d
    goto :goto_0

    #@3e
    .line 319
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@40
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->-get4(Landroid/widget/OverScroller$SplineOverScroller;)Z

    #@43
    move-result v6

    #@44
    if-nez v6, :cond_3

    #@46
    .line 320
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@48
    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    #@4b
    move-result v6

    #@4c
    if-nez v6, :cond_3

    #@4e
    .line 321
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@50
    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    #@53
    move-result v6

    #@54
    if-nez v6, :cond_3

    #@56
    .line 322
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@58
    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    #@5b
    .line 327
    :cond_3
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@5d
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->-get4(Landroid/widget/OverScroller$SplineOverScroller;)Z

    #@60
    move-result v6

    #@61
    if-nez v6, :cond_1

    #@63
    .line 328
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@65
    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    #@68
    move-result v6

    #@69
    if-nez v6, :cond_1

    #@6b
    .line 329
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@6d
    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    #@70
    move-result v6

    #@71
    if-nez v6, :cond_1

    #@73
    .line 330
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@75
    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    #@78
    goto :goto_0

    #@79
    .line 301
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    #@5
    .line 253
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    #@a
    .line 251
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    #@0
    .prologue
    .line 401
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move/from16 v5, p5

    #@9
    move/from16 v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move/from16 v8, p8

    #@f
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@12
    .line 400
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
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

    #@0
    .prologue
    .line 434
    iget-boolean v0, p0, Landroid/widget/OverScroller;->mFlywheel:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 444
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@b
    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    #@d
    .line 445
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@f
    move v1, p1

    #@10
    move v2, p3

    #@11
    move v3, p5

    #@12
    move v4, p6

    #@13
    move/from16 v5, p9

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    #@18
    .line 446
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@1a
    move v1, p2

    #@1b
    move v2, p4

    #@1c
    move v3, p7

    #@1d
    move/from16 v4, p8

    #@1f
    move/from16 v5, p10

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    #@24
    .line 432
    return-void

    #@25
    .line 435
    :cond_1
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@27
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get0(Landroid/widget/OverScroller$SplineOverScroller;)F

    #@2a
    move-result v6

    #@2b
    .line 436
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@2d
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get0(Landroid/widget/OverScroller$SplineOverScroller;)F

    #@30
    move-result v7

    #@31
    .line 437
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    #@32
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@35
    move-result v0

    #@36
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    #@39
    move-result v1

    #@3a
    cmpl-float v0, v0, v1

    #@3c
    if-nez v0, :cond_0

    #@3e
    .line 438
    int-to-float v0, p4

    #@3f
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@42
    move-result v0

    #@43
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    #@46
    move-result v1

    #@47
    cmpl-float v0, v0, v1

    #@49
    if-nez v0, :cond_0

    #@4b
    .line 439
    int-to-float v0, p3

    #@4c
    add-float/2addr v0, v6

    #@4d
    float-to-int p3, v0

    #@4e
    .line 440
    int-to-float v0, p4

    #@4f
    add-float/2addr v0, v7

    #@50
    float-to-int p4, v0

    #@51
    goto :goto_0
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@4
    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->-set0(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->-set0(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    #@b
    .line 155
    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get0(Landroid/widget/OverScroller$SplineOverScroller;)F

    #@5
    move-result v0

    #@6
    float-to-double v0, v0

    #@7
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@9
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-get0(Landroid/widget/OverScroller$SplineOverScroller;)F

    #@c
    move-result v2

    #@d
    float-to-double v2, v2

    #@e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@11
    move-result-wide v0

    #@12
    double-to-float v0, v0

    #@13
    return v0
.end method

.method public final getCurrX()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get1(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getCurrY()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get1(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get2(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@8
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->-get2(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public final getFinalX()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get3(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getFinalY()I
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get3(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getStartX()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get5(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getStartY()I
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get5(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isFinished()Z
    .locals 1

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get4(Landroid/widget/OverScroller$SplineOverScroller;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@a
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->-get4(Landroid/widget/OverScroller$SplineOverScroller;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 497
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@4
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-get4(Landroid/widget/OverScroller$SplineOverScroller;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 498
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@c
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-get7(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 497
    :cond_0
    :goto_0
    return v0

    #@13
    .line 499
    :cond_1
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@15
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-get4(Landroid/widget/OverScroller$SplineOverScroller;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_2

    #@1b
    .line 500
    iget-object v2, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@1d
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->-get7(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    move v0, v1

    #@24
    goto :goto_0

    #@25
    :cond_2
    move v0, v1

    #@26
    .line 499
    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 5
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 532
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@3
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->-get3(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@6
    move-result v3

    #@7
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@9
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-get5(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@c
    move-result v4

    #@d
    sub-int v0, v3, v4

    #@f
    .line 533
    .local v0, "dx":I
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@11
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->-get3(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@14
    move-result v3

    #@15
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@17
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-get5(Landroid/widget/OverScroller$SplineOverScroller;)I

    #@1a
    move-result v4

    #@1b
    sub-int v1, v3, v4

    #@1d
    .line 534
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_0

    #@23
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    #@26
    move-result v3

    #@27
    int-to-float v4, v0

    #@28
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    #@2b
    move-result v4

    #@2c
    cmpl-float v3, v3, v4

    #@2e
    if-nez v3, :cond_0

    #@30
    .line 535
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    #@33
    move-result v3

    #@34
    int-to-float v4, v1

    #@35
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    #@38
    move-result v4

    #@39
    cmpl-float v3, v3, v4

    #@3b
    if-nez v3, :cond_0

    #@3d
    const/4 v2, 0x1

    #@3e
    .line 534
    :cond_0
    return v2
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    #@5
    .line 462
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    #@5
    .line 479
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    #@5
    .line 270
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    #@5
    .line 288
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    #@5
    .line 134
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    #@a
    .line 132
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 118
    if-nez p1, :cond_0

    #@2
    .line 119
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    #@4
    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    #@7
    iput-object v0, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@9
    .line 117
    :goto_0
    return-void

    #@a
    .line 121
    :cond_0
    iput-object p1, p0, Landroid/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@c
    goto :goto_0
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 391
    iput v2, p0, Landroid/widget/OverScroller;->mMode:I

    #@3
    .line 394
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@5
    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    #@8
    move-result v0

    #@9
    .line 395
    .local v0, "spingbackX":Z
    iget-object v3, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@b
    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    #@e
    move-result v1

    #@f
    .line 396
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    #@11
    .end local v1    # "spingbackY":Z
    :goto_0
    return v1

    #@12
    .restart local v1    # "spingbackY":Z
    :cond_0
    move v1, v2

    #@13
    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    #@0
    .prologue
    .line 356
    const/16 v5, 0xfa

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@a
    .line 355
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    #@0
    .prologue
    .line 373
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/widget/OverScroller;->mMode:I

    #@3
    .line 374
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@5
    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    #@8
    .line 375
    iget-object v0, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@a
    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    #@d
    .line 372
    return-void
.end method

.method public timePassed()I
    .locals 8

    #@0
    .prologue
    .line 523
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 524
    .local v2, "time":J
    iget-object v4, p0, Landroid/widget/OverScroller;->mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    #@6
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->-get6(Landroid/widget/OverScroller$SplineOverScroller;)J

    #@9
    move-result-wide v4

    #@a
    iget-object v6, p0, Landroid/widget/OverScroller;->mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    #@c
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->-get6(Landroid/widget/OverScroller$SplineOverScroller;)J

    #@f
    move-result-wide v6

    #@10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@13
    move-result-wide v0

    #@14
    .line 525
    .local v0, "startTime":J
    sub-long v4, v2, v0

    #@16
    long-to-int v4, v4

    #@17
    return v4
.end method
