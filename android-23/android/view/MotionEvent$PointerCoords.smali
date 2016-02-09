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
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    #@0
    .prologue
    .line 3324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3325
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    #@6
    .line 3324
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    #@0
    .prologue
    .line 3330
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    #@2
    .line 3331
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    #@5
    .line 3332
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    #@7
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@a
    aput-object v2, v0, v1

    #@c
    .line 3331
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 3334
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3437
    const-wide/16 v0, 0x0

    #@3
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    #@5
    .line 3439
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@7
    .line 3440
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@9
    .line 3441
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@b
    .line 3442
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@d
    .line 3443
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@f
    .line 3444
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@11
    .line 3445
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@13
    .line 3446
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@15
    .line 3447
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@17
    .line 3436
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 9
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3456
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    #@3
    .line 3457
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    #@5
    .line 3458
    const-wide/16 v6, 0x0

    #@7
    cmp-long v5, v0, v6

    #@9
    if-eqz v5, :cond_2

    #@b
    .line 3459
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@d
    .line 3460
    .local v3, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    #@10
    move-result v2

    #@11
    .line 3461
    .local v2, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@13
    .line 3462
    .local v4, "values":[F
    if-eqz v4, :cond_0

    #@15
    array-length v5, v4

    #@16
    if-le v2, v5, :cond_1

    #@18
    .line 3463
    :cond_0
    array-length v5, v3

    #@19
    new-array v4, v5, [F

    #@1b
    .line 3464
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@1d
    .line 3466
    :cond_1
    invoke-static {v3, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@20
    .line 3469
    .end local v2    # "count":I
    .end local v3    # "otherValues":[F
    .end local v4    # "values":[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@22
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@24
    .line 3470
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@26
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@28
    .line 3471
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@2a
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@2c
    .line 3472
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@2e
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@30
    .line 3473
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@32
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@34
    .line 3474
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@36
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@38
    .line 3475
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@3a
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@3c
    .line 3476
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@3e
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@40
    .line 3477
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@42
    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@44
    .line 3455
    return-void
.end method

.method public getAxisValue(I)F
    .locals 10
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 3490
    packed-switch p1, :pswitch_data_0

    #@3
    .line 3510
    if-ltz p1, :cond_0

    #@5
    const/16 v5, 0x3f

    #@7
    if-le p1, v5, :cond_1

    #@9
    .line 3511
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v6, "Axis out of range."

    #@e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5

    #@12
    .line 3492
    :pswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@14
    return v5

    #@15
    .line 3494
    :pswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@17
    return v5

    #@18
    .line 3496
    :pswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@1a
    return v5

    #@1b
    .line 3498
    :pswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@1d
    return v5

    #@1e
    .line 3500
    :pswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@20
    return v5

    #@21
    .line 3502
    :pswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@23
    return v5

    #@24
    .line 3504
    :pswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@26
    return v5

    #@27
    .line 3506
    :pswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@29
    return v5

    #@2a
    .line 3508
    :pswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@2c
    return v5

    #@2d
    .line 3513
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    #@2f
    .line 3514
    .local v2, "bits":J
    const-wide/high16 v6, -0x8000000000000000L

    #@31
    ushr-long v0, v6, p1

    #@33
    .line 3515
    .local v0, "axisBit":J
    and-long v6, v2, v0

    #@35
    const-wide/16 v8, 0x0

    #@37
    cmp-long v5, v6, v8

    #@39
    if-nez v5, :cond_2

    #@3b
    .line 3516
    const/4 v5, 0x0

    #@3c
    return v5

    #@3d
    .line 3518
    :cond_2
    const-wide/16 v6, -0x1

    #@3f
    ushr-long/2addr v6, p1

    #@40
    not-long v6, v6

    #@41
    and-long/2addr v6, v2

    #@42
    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    #@45
    move-result v4

    #@46
    .line 3519
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@48
    aget v5, v5, v4

    #@4a
    return v5

    #@4b
    .line 3490
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 3534
    packed-switch p1, :pswitch_data_0

    #@4
    .line 3563
    if-ltz p1, :cond_0

    #@6
    const/16 v8, 0x3f

    #@8
    if-le p1, v8, :cond_1

    #@a
    .line 3564
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v9, "Axis out of range."

    #@f
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v8

    #@13
    .line 3536
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@15
    .line 3533
    :goto_0
    return-void

    #@16
    .line 3539
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@18
    goto :goto_0

    #@19
    .line 3542
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@1b
    goto :goto_0

    #@1c
    .line 3545
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@1e
    goto :goto_0

    #@1f
    .line 3548
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    #@21
    goto :goto_0

    #@22
    .line 3551
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    #@24
    goto :goto_0

    #@25
    .line 3554
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    #@27
    goto :goto_0

    #@28
    .line 3557
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    #@2a
    goto :goto_0

    #@2b
    .line 3560
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    #@2d
    goto :goto_0

    #@2e
    .line 3566
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    #@30
    .line 3567
    .local v2, "bits":J
    const-wide/high16 v8, -0x8000000000000000L

    #@32
    ushr-long v0, v8, p1

    #@34
    .line 3568
    .local v0, "axisBit":J
    const-wide/16 v8, -0x1

    #@36
    ushr-long/2addr v8, p1

    #@37
    not-long v8, v8

    #@38
    and-long/2addr v8, v2

    #@39
    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    #@3c
    move-result v5

    #@3d
    .line 3569
    .local v5, "index":I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@3f
    .line 3570
    .local v7, "values":[F
    and-long v8, v2, v0

    #@41
    const-wide/16 v10, 0x0

    #@43
    cmp-long v8, v8, v10

    #@45
    if-nez v8, :cond_3

    #@47
    .line 3571
    if-nez v7, :cond_4

    #@49
    .line 3572
    const/16 v8, 0x8

    #@4b
    new-array v7, v8, [F

    #@4d
    .line 3573
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@4f
    .line 3590
    :cond_2
    :goto_1
    or-long v8, v2, v0

    #@51
    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    #@53
    .line 3592
    :cond_3
    aput p2, v7, v5

    #@55
    goto :goto_0

    #@56
    .line 3575
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@59
    move-result v4

    #@5a
    .line 3576
    .local v4, "count":I
    array-length v8, v7

    #@5b
    if-ge v4, v8, :cond_5

    #@5d
    .line 3577
    if-eq v5, v4, :cond_2

    #@5f
    .line 3578
    add-int/lit8 v8, v5, 0x1

    #@61
    .line 3579
    sub-int v9, v4, v5

    #@63
    .line 3578
    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@66
    goto :goto_1

    #@67
    .line 3582
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    #@69
    new-array v6, v8, [F

    #@6b
    .line 3583
    .local v6, "newValues":[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@6e
    .line 3584
    add-int/lit8 v8, v5, 0x1

    #@70
    .line 3585
    sub-int v9, v4, v5

    #@72
    .line 3584
    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@75
    .line 3586
    move-object v7, v6

    #@76
    .line 3587
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    #@78
    goto :goto_1

    #@79
    .line 3534
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
