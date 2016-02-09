.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 4446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4472
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@7
    .line 4473
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    #@b
    .line 4446
    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4498
    const/4 v6, 0x0

    #@1
    cmpl-float v6, p1, v6

    #@3
    if-lez v6, :cond_3

    #@5
    .line 4499
    const/high16 v6, 0x43160000    # 150.0f

    #@7
    mul-float/2addr v6, p1

    #@8
    float-to-long v4, v6

    #@9
    .line 4500
    .local v4, "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    #@b
    if-gez v6, :cond_0

    #@d
    .line 4502
    const/4 v6, 0x0

    #@e
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@10
    .line 4503
    const/4 v6, 0x0

    #@11
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    #@13
    .line 4504
    const/high16 v6, 0x3f800000    # 1.0f

    #@15
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@17
    .line 4505
    const-wide/16 v6, 0x0

    #@19
    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    #@1b
    .line 4507
    :cond_0
    const/4 v6, 0x1

    #@1c
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    #@1e
    .line 4525
    :goto_0
    const-wide/16 v6, 0x0

    #@20
    cmp-long v6, v4, v6

    #@22
    if-lez v6, :cond_2

    #@24
    .line 4526
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    #@26
    sub-long v2, p2, v6

    #@28
    .line 4527
    .local v2, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    #@2a
    .line 4528
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@2c
    .line 4529
    .local v0, "acc":F
    cmp-long v6, v2, v4

    #@2e
    if-gez v6, :cond_7

    #@30
    .line 4531
    sub-long v6, v4, v2

    #@32
    long-to-float v6, v6

    #@33
    const v7, 0x3ccccccd    # 0.025f

    #@36
    mul-float v1, v6, v7

    #@38
    .line 4532
    .local v1, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    #@3a
    cmpl-float v6, v1, v6

    #@3c
    if-lez v6, :cond_1

    #@3e
    mul-float/2addr v0, v1

    #@3f
    .line 4536
    :cond_1
    const/high16 v6, 0x41a00000    # 20.0f

    #@41
    cmpg-float v6, v0, v6

    #@43
    if-gez v6, :cond_6

    #@45
    .end local v0    # "acc":F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@47
    .line 4547
    .end local v1    # "scale":F
    .end local v2    # "delta":J
    :cond_2
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@49
    add-float/2addr v6, p1

    #@4a
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@4c
    .line 4548
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@4e
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@51
    move-result v6

    #@52
    return v6

    #@53
    .line 4508
    .end local v4    # "normTime":J
    :cond_3
    const/4 v6, 0x0

    #@54
    cmpg-float v6, p1, v6

    #@56
    if-gez v6, :cond_5

    #@58
    .line 4509
    neg-float v6, p1

    #@59
    const/high16 v7, 0x43160000    # 150.0f

    #@5b
    mul-float/2addr v6, v7

    #@5c
    float-to-long v4, v6

    #@5d
    .line 4510
    .restart local v4    # "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    #@5f
    if-lez v6, :cond_4

    #@61
    .line 4512
    const/4 v6, 0x0

    #@62
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@64
    .line 4513
    const/4 v6, 0x0

    #@65
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    #@67
    .line 4514
    const/high16 v6, 0x3f800000    # 1.0f

    #@69
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@6b
    .line 4515
    const-wide/16 v6, 0x0

    #@6d
    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    #@6f
    .line 4517
    :cond_4
    const/4 v6, -0x1

    #@70
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    #@72
    goto :goto_0

    #@73
    .line 4519
    .end local v4    # "normTime":J
    :cond_5
    const-wide/16 v4, 0x0

    #@75
    .restart local v4    # "normTime":J
    goto :goto_0

    #@76
    .line 4536
    .restart local v0    # "acc":F
    .restart local v1    # "scale":F
    .restart local v2    # "delta":J
    :cond_6
    const/high16 v0, 0x41a00000    # 20.0f

    #@78
    goto :goto_1

    #@79
    .line 4539
    .end local v1    # "scale":F
    :cond_7
    sub-long v6, v2, v4

    #@7b
    long-to-float v6, v6

    #@7c
    const v7, 0x3ccccccd    # 0.025f

    #@7f
    mul-float v1, v6, v7

    #@81
    .line 4540
    .restart local v1    # "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    #@83
    cmpl-float v6, v1, v6

    #@85
    if-lez v6, :cond_8

    #@87
    div-float/2addr v0, v1

    #@88
    .line 4544
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    #@8a
    cmpl-float v6, v0, v6

    #@8c
    if-lez v6, :cond_9

    #@8e
    .end local v0    # "acc":F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@90
    goto :goto_2

    #@91
    .restart local v0    # "acc":F
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    #@93
    goto :goto_3
.end method

.method generate()I
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    #@2
    const/high16 v5, 0x3f800000    # 1.0f

    #@4
    .line 4560
    const/4 v2, 0x0

    #@5
    .line 4561
    .local v2, "movement":I
    const/4 v3, 0x0

    #@6
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    #@8
    .line 4563
    :goto_0
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@a
    const/4 v4, 0x0

    #@b
    cmpl-float v3, v3, v4

    #@d
    if-ltz v3, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    .line 4564
    .local v1, "dir":I
    :goto_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    #@12
    packed-switch v3, :pswitch_data_0

    #@15
    .line 4596
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@17
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@1a
    move-result v3

    #@1b
    cmpg-float v3, v3, v5

    #@1d
    if-gez v3, :cond_3

    #@1f
    .line 4597
    return v2

    #@20
    .line 4563
    .end local v1    # "dir":I
    :cond_0
    const/4 v1, -0x1

    #@21
    .restart local v1    # "dir":I
    goto :goto_1

    #@22
    .line 4569
    :pswitch_0
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@24
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@27
    move-result v3

    #@28
    const/high16 v4, 0x3f000000    # 0.5f

    #@2a
    cmpg-float v3, v3, v4

    #@2c
    if-gez v3, :cond_1

    #@2e
    .line 4570
    return v2

    #@2f
    .line 4572
    :cond_1
    add-int/2addr v2, v1

    #@30
    .line 4573
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    #@32
    add-int/2addr v3, v1

    #@33
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    #@35
    .line 4574
    const/4 v3, 0x1

    #@36
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    #@38
    goto :goto_0

    #@39
    .line 4580
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@3b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@3e
    move-result v3

    #@3f
    cmpg-float v3, v3, v6

    #@41
    if-gez v3, :cond_2

    #@43
    .line 4581
    return v2

    #@44
    .line 4583
    :cond_2
    add-int/2addr v2, v1

    #@45
    .line 4584
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    #@47
    add-int/2addr v3, v1

    #@48
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    #@4a
    .line 4585
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@4c
    int-to-float v4, v1

    #@4d
    mul-float/2addr v4, v6

    #@4e
    sub-float/2addr v3, v4

    #@4f
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@51
    .line 4586
    const/4 v3, 0x2

    #@52
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    #@54
    goto :goto_0

    #@55
    .line 4599
    :cond_3
    add-int/2addr v2, v1

    #@56
    .line 4600
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@58
    int-to-float v4, v1

    #@59
    mul-float/2addr v4, v5

    #@5a
    sub-float/2addr v3, v4

    #@5b
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@5d
    .line 4601
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@5f
    .line 4602
    .local v0, "acc":F
    const v3, 0x3f8ccccd    # 1.1f

    #@62
    mul-float/2addr v0, v3

    #@63
    .line 4603
    const/high16 v3, 0x41a00000    # 20.0f

    #@65
    cmpg-float v3, v0, v3

    #@67
    if-gez v3, :cond_4

    #@69
    .end local v0    # "acc":F
    :goto_2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@6b
    goto :goto_0

    #@6c
    .restart local v0    # "acc":F
    :cond_4
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@6e
    goto :goto_2

    #@6f
    .line 4564
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .param p1, "_step"    # I

    #@0
    .prologue
    .line 4479
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    #@3
    .line 4480
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@7
    .line 4481
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    #@b
    .line 4482
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    #@d
    .line 4483
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    #@10
    .line 4478
    return-void
.end method
