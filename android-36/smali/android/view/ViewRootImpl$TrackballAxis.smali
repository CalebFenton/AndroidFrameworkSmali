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
.field static final greylist-max-o ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final greylist-max-o FAST_MOVE_TIME:J = 0x96L

.field static final greylist-max-o FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final greylist-max-o MAX_ACCELERATION:F = 20.0f

.field static final greylist-max-o SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final greylist-max-o SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field greylist-max-o acceleration:F

.field greylist-max-o dir:I

.field greylist-max-o lastMoveTime:J

.field greylist-max-o nonAccelMovement:I

.field greylist-max-o position:F

.field greylist-max-o step:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 8631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8657
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8658
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method greylist-max-o collect(FJLjava/lang/String;)F
    .registers 16
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .line 8683
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x43160000    # 150.0f

    const-wide/16 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v1, :cond_1e

    .line 8684
    mul-float/2addr v3, p1

    float-to-long v7, v3

    .line 8685
    .local v7, "normTime":J
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v1, :cond_1a

    .line 8687
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8688
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8689
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8690
    iput-wide v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8692
    :cond_1a
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_37

    .line 8693
    .end local v7    # "normTime":J
    :cond_1e
    cmpg-float v1, p1, v0

    if-gez v1, :cond_35

    .line 8694
    neg-float v1, p1

    mul-float/2addr v1, v3

    float-to-long v7, v1

    .line 8695
    .restart local v7    # "normTime":J
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v1, :cond_31

    .line 8697
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8698
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8699
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8700
    iput-wide v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8702
    :cond_31
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_37

    .line 8704
    .end local v7    # "normTime":J
    :cond_35
    const-wide/16 v7, 0x0

    .line 8710
    .restart local v7    # "normTime":J
    :goto_37
    cmp-long v0, v7, v4

    if-lez v0, :cond_6d

    .line 8711
    iget-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v0, p2, v0

    .line 8712
    .local v0, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8713
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8714
    .local v2, "acc":F
    cmp-long v3, v0, v7

    const v4, 0x3ccccccd    # 0.025f

    if-gez v3, :cond_5d

    .line 8716
    sub-long v9, v7, v0

    long-to-float v3, v9

    mul-float/2addr v3, v4

    .line 8717
    .local v3, "scale":F
    cmpl-float v4, v3, v6

    if-lez v4, :cond_53

    mul-float/2addr v2, v3

    .line 8721
    :cond_53
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_5a

    move v4, v2

    :cond_5a
    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8722
    .end local v3    # "scale":F
    goto :goto_6d

    .line 8724
    :cond_5d
    sub-long v9, v0, v7

    long-to-float v3, v9

    mul-float/2addr v3, v4

    .line 8725
    .restart local v3    # "scale":F
    cmpl-float v4, v3, v6

    if-lez v4, :cond_66

    div-float/2addr v2, v3

    .line 8729
    :cond_66
    cmpl-float v4, v2, v6

    if-lez v4, :cond_6b

    move v6, v2

    :cond_6b
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8732
    .end local v0    # "delta":J
    .end local v2    # "acc":F
    .end local v3    # "scale":F
    :cond_6d
    :goto_6d
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8733
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method greylist-max-o generate()I
    .registers 6

    .line 8745
    const/4 v0, 0x0

    .line 8746
    .local v0, "movement":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8748
    :goto_4
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, -0x1

    .line 8749
    .local v1, "dir":I
    :goto_f
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_70

    .line 8781
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_55

    .line 8782
    return v0

    .line 8765
    :pswitch_21
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    .line 8766
    return v0

    .line 8768
    :cond_2e
    add-int/2addr v0, v1

    .line 8769
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8770
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8771
    const/4 v2, 0x2

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8772
    goto :goto_6f

    .line 8754
    :pswitch_3f
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    .line 8755
    return v0

    .line 8757
    :cond_4c
    add-int/2addr v0, v1

    .line 8758
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8759
    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8760
    goto :goto_6f

    .line 8784
    :cond_55
    add-int/2addr v0, v1

    .line 8785
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8786
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8787
    .local v2, "acc":F
    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    .line 8788
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6b

    move v3, v2

    goto :goto_6d

    :cond_6b
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :goto_6d
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8791
    .end local v1    # "dir":I
    .end local v2    # "acc":F
    :goto_6f
    goto :goto_4

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_21
    .end packed-switch
.end method

.method greylist-max-o reset(I)V
    .registers 4
    .param p1, "_step"    # I

    .line 8664
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8665
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8667
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8668
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 8669
    return-void
.end method
