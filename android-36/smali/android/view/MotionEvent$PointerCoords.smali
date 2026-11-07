.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public blacklist isResampled:Z

.field private greylist mPackedAxisBits:J

.field private greylist mPackedAxisValues:[F

.field public whitelist orientation:F

.field public whitelist pressure:F

.field public blacklist relativeX:F

.field public blacklist relativeY:F

.field public whitelist size:F

.field public whitelist toolMajor:F

.field public whitelist toolMinor:F

.field public whitelist touchMajor:F

.field public whitelist touchMinor:F

.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4313
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4322
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 4323
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4
    .param p0, "size"    # I

    .line 4328
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 4329
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 4330
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 4329
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4332
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 3

    .line 4479
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4481
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4482
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4483
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4484
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4485
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4486
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4487
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4488
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4489
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4490
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4491
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4492
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    .line 4493
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 8
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4501
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4502
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4503
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    .line 4504
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4505
    .local v2, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 4506
    .local v3, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4507
    .local v4, "values":[F
    if-eqz v4, :cond_17

    array-length v5, v4

    if-le v3, v5, :cond_1c

    .line 4508
    :cond_17
    array-length v5, v2

    new-array v4, v5, [F

    .line 4509
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4511
    :cond_1c
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4514
    .end local v2    # "otherValues":[F
    .end local v3    # "count":I
    .end local v4    # "values":[F
    :cond_20
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4515
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4516
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4517
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4518
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4519
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4520
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4521
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4522
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4523
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4524
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4525
    iget-boolean v2, p1, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    iput-boolean v2, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    .line 4526
    return-void
.end method

.method public whitelist getAxisValue(I)F
    .registers 10
    .param p1, "axis"    # I

    .line 4538
    sparse-switch p1, :sswitch_data_50

    .line 4562
    if-ltz p1, :cond_47

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_47

    .line 4565
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4566
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4567
    .local v2, "axisBit":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_39

    .line 4568
    const/4 v4, 0x0

    return v4

    .line 4560
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    :sswitch_18
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    .line 4558
    :sswitch_1b
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    .line 4556
    :sswitch_1e
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    .line 4554
    :sswitch_21
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    .line 4552
    :sswitch_24
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    .line 4550
    :sswitch_27
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    .line 4548
    :sswitch_2a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    .line 4546
    :sswitch_2d
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    .line 4544
    :sswitch_30
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    .line 4542
    :sswitch_33
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    .line 4540
    :sswitch_36
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    .line 4570
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    :cond_39
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4571
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 4563
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_36
        0x1 -> :sswitch_33
        0x2 -> :sswitch_30
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_2a
        0x5 -> :sswitch_27
        0x6 -> :sswitch_24
        0x7 -> :sswitch_21
        0x8 -> :sswitch_1e
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_18
    .end sparse-switch
.end method

.method public whitelist isResampled()Z
    .registers 2

    .line 4471
    iget-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    return v0
.end method

.method public whitelist setAxisValue(IF)V
    .registers 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .line 4586
    sparse-switch p1, :sswitch_data_7e

    .line 4621
    if-ltz p1, :cond_75

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_75

    .line 4624
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4625
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 4626
    .local v2, "axisBit":J
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4627
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4628
    .local v5, "values":[F
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_72

    .line 4629
    if-nez v5, :cond_4b

    .line 4630
    const/16 v6, 0x8

    new-array v5, v6, [F

    .line 4631
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_6e

    .line 4618
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :sswitch_2a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 4619
    goto :goto_74

    .line 4615
    :sswitch_2d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 4616
    goto :goto_74

    .line 4612
    :sswitch_30
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4613
    goto :goto_74

    .line 4609
    :sswitch_33
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 4610
    goto :goto_74

    .line 4606
    :sswitch_36
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 4607
    goto :goto_74

    .line 4603
    :sswitch_39
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 4604
    goto :goto_74

    .line 4600
    :sswitch_3c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 4601
    goto :goto_74

    .line 4597
    :sswitch_3f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 4598
    goto :goto_74

    .line 4594
    :sswitch_42
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 4595
    goto :goto_74

    .line 4591
    :sswitch_45
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4592
    goto :goto_74

    .line 4588
    :sswitch_48
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4589
    goto :goto_74

    .line 4633
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    .restart local v4    # "index":I
    .restart local v5    # "values":[F
    :cond_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    .line 4634
    .local v6, "count":I
    array-length v7, v5

    if-ge v6, v7, :cond_5c

    .line 4635
    if-eq v4, v6, :cond_6e

    .line 4636
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6e

    .line 4640
    :cond_5c
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    .line 4641
    .local v7, "newValues":[F
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4642
    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4644
    move-object v5, v7

    .line 4645
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4648
    .end local v6    # "count":I
    .end local v7    # "newValues":[F
    :cond_6e
    :goto_6e
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4650
    :cond_72
    aput p2, v5, v4

    .line 4653
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :goto_74
    return-void

    .line 4622
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_48
        0x1 -> :sswitch_45
        0x2 -> :sswitch_42
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_39
        0x6 -> :sswitch_36
        0x7 -> :sswitch_33
        0x8 -> :sswitch_30
        0x1b -> :sswitch_2d
        0x1c -> :sswitch_2a
    .end sparse-switch
.end method
