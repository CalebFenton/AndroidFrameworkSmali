.class final Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/16 v11, 0x41

    #@2
    const/4 v10, 0x4

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    const/16 v7, -0x19

    #@7
    .line 510
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    #@9
    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    #@c
    .line 465
    new-array v4, v10, [[I

    #@e
    .line 466
    const/16 v5, 0x46

    #@10
    filled-new-array {v7, v5}, [I

    #@13
    move-result-object v5

    #@14
    aput-object v5, v4, v8

    #@16
    .line 467
    filled-new-array {v7, v11}, [I

    #@19
    move-result-object v5

    #@1a
    aput-object v5, v4, v9

    #@1c
    .line 468
    const/16 v5, 0x3c

    #@1e
    filled-new-array {v7, v5}, [I

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x2

    #@23
    aput-object v5, v4, v6

    #@25
    .line 469
    filled-new-array {v7, v11}, [I

    #@28
    move-result-object v5

    #@29
    const/4 v6, 0x3

    #@2a
    aput-object v5, v4, v6

    #@2c
    .line 465
    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@2e
    .line 498
    const-wide/high16 v4, -0x8000000000000000L

    #@30
    iput-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    #@32
    .line 506
    const/16 v4, 0xc8

    #@34
    new-array v4, v4, [F

    #@36
    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    #@38
    .line 507
    const/16 v4, 0xc8

    #@3a
    new-array v4, v4, [J

    #@3c
    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@3e
    .line 512
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v4

    #@42
    .line 513
    const v5, 0x107001c

    #@45
    .line 512
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@48
    move-result-object v3

    #@49
    .line 514
    .local v3, "tiltTolerance":[I
    array-length v4, v3

    #@4a
    const/16 v5, 0x8

    #@4c
    if-ne v4, v5, :cond_1

    #@4e
    .line 515
    const/4 v0, 0x0

    #@4f
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    #@51
    .line 516
    mul-int/lit8 v4, v0, 0x2

    #@53
    aget v2, v3, v4

    #@55
    .line 517
    .local v2, "min":I
    mul-int/lit8 v4, v0, 0x2

    #@57
    add-int/lit8 v4, v4, 0x1

    #@59
    aget v1, v3, v4

    #@5b
    .line 518
    .local v1, "max":I
    const/16 v4, -0x5a

    #@5d
    if-lt v2, v4, :cond_0

    #@5f
    if-gt v2, v1, :cond_0

    #@61
    const/16 v4, 0x5a

    #@63
    if-gt v1, v4, :cond_0

    #@65
    .line 519
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@67
    aget-object v4, v4, v0

    #@69
    aput v2, v4, v8

    #@6b
    .line 520
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@6d
    aget-object v4, v4, v0

    #@6f
    aput v1, v4, v9

    #@71
    .line 515
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_0

    #@74
    .line 522
    :cond_0
    const-string/jumbo v4, "WindowOrientationListener"

    #@77
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v6, "config_autoRotationTiltTolerance contains invalid range: min="

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    .line 523
    const-string/jumbo v6, ", max="

    #@8a
    .line 522
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    goto :goto_1

    #@9a
    .line 527
    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_1
    const-string/jumbo v4, "WindowOrientationListener"

    #@9d
    const-string/jumbo v5, "config_autoRotationTiltTolerance should have exactly 8 elements"

    #@a0
    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 510
    :cond_2
    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    #@2
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@4
    aput p3, v0, v1

    #@6
    .line 918
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@8
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@a
    aput-wide p1, v0, v1

    #@c
    .line 919
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    rem-int/lit16 v0, v0, 0xc8

    #@12
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@14
    .line 920
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@16
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@18
    const-wide/high16 v2, -0x8000000000000000L

    #@1a
    aput-wide v2, v0, v1

    #@1c
    .line 916
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    #@0
    .prologue
    .line 895
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@3
    .line 896
    const-wide/high16 v0, -0x8000000000000000L

    #@5
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    #@7
    .line 894
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@2
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    const/4 v1, 0x0

    #@5
    aput-wide v2, v0, v1

    #@7
    .line 913
    const/4 v0, 0x1

    #@8
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@a
    .line 911
    return-void
.end method

.method private getLastTiltLocked()F
    .locals 2

    #@0
    .prologue
    .line 955
    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@2
    invoke-direct {p0, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    #@5
    move-result v0

    #@6
    .line 956
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    #@a
    aget v1, v1, v0

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    #@f
    goto :goto_0
.end method

.method private isAcceleratingLocked(F)Z
    .locals 2
    .param p1, "magnitude"    # F

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 907
    const v1, 0x40b9d014

    #@4
    cmpg-float v1, p1, v1

    #@6
    if-ltz v1, :cond_0

    #@8
    .line 908
    const v1, 0x415ce80a

    #@b
    cmpl-float v1, p1, v1

    #@d
    if-lez v1, :cond_1

    #@f
    .line 907
    :cond_0
    :goto_0
    return v0

    #@10
    .line 908
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method private isFlatLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 924
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@3
    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_1

    #@9
    .line 925
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    #@b
    aget v1, v1, v0

    #@d
    const/high16 v2, 0x42a00000    # 80.0f

    #@f
    cmpg-float v1, v1, v2

    #@11
    if-gez v1, :cond_2

    #@13
    .line 933
    :cond_1
    return v6

    #@14
    .line 928
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@16
    aget-wide v2, v1, v0

    #@18
    const-wide/32 v4, 0x3b9aca00

    #@1b
    add-long/2addr v2, v4

    #@1c
    cmp-long v1, v2, p1

    #@1e
    if-gtz v1, :cond_0

    #@20
    .line 930
    const/4 v1, 0x1

    #@21
    return v1
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 814
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    #@3
    invoke-static {v3}, Lcom/android/server/policy/WindowOrientationListener;->-get1(Lcom/android/server/policy/WindowOrientationListener;)I

    #@6
    move-result v0

    #@7
    .line 815
    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    #@9
    .line 820
    if-eq p1, v0, :cond_0

    #@b
    .line 821
    add-int/lit8 v3, v0, 0x1

    #@d
    rem-int/lit8 v3, v3, 0x4

    #@f
    if-ne p1, v3, :cond_2

    #@11
    .line 822
    :cond_0
    mul-int/lit8 v3, p1, 0x5a

    #@13
    add-int/lit8 v3, v3, -0x2d

    #@15
    add-int/lit8 v1, v3, 0x16

    #@17
    .line 824
    .local v1, "lowerBound":I
    if-nez p1, :cond_1

    #@19
    .line 825
    const/16 v3, 0x13b

    #@1b
    if-lt p2, v3, :cond_2

    #@1d
    add-int/lit16 v3, v1, 0x168

    #@1f
    if-ge p2, v3, :cond_2

    #@21
    .line 826
    return v4

    #@22
    .line 829
    :cond_1
    if-ge p2, v1, :cond_2

    #@24
    .line 830
    return v4

    #@25
    .line 839
    .end local v1    # "lowerBound":I
    :cond_2
    if-eq p1, v0, :cond_3

    #@27
    .line 840
    add-int/lit8 v3, v0, 0x3

    #@29
    rem-int/lit8 v3, v3, 0x4

    #@2b
    if-ne p1, v3, :cond_5

    #@2d
    .line 841
    :cond_3
    mul-int/lit8 v3, p1, 0x5a

    #@2f
    add-int/lit8 v3, v3, 0x2d

    #@31
    add-int/lit8 v2, v3, -0x16

    #@33
    .line 843
    .local v2, "upperBound":I
    if-nez p1, :cond_4

    #@35
    .line 844
    const/16 v3, 0x2d

    #@37
    if-gt p2, v3, :cond_5

    #@39
    if-le p2, v2, :cond_5

    #@3b
    .line 845
    return v4

    #@3c
    .line 848
    :cond_4
    if-le p2, v2, :cond_5

    #@3e
    .line 849
    return v4

    #@3f
    .line 854
    .end local v2    # "upperBound":I
    :cond_5
    const/4 v3, 0x1

    #@40
    return v3
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 9
    .param p1, "now"    # J

    #@0
    .prologue
    const-wide/32 v6, 0x1dcd6500

    #@3
    const/4 v4, 0x0

    #@4
    .line 863
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    #@6
    const-wide/32 v2, 0x2625a00

    #@9
    add-long/2addr v0, v2

    #@a
    cmp-long v0, p1, v0

    #@c
    if-gez v0, :cond_0

    #@e
    .line 864
    return v4

    #@f
    .line 868
    :cond_0
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    #@11
    add-long/2addr v0, v6

    #@12
    cmp-long v0, p1, v0

    #@14
    if-gez v0, :cond_1

    #@16
    .line 869
    return v4

    #@17
    .line 874
    :cond_1
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    #@19
    const-wide/32 v2, 0x11e1a300

    #@1c
    add-long/2addr v0, v2

    #@1d
    cmp-long v0, p1, v0

    #@1f
    if-gez v0, :cond_2

    #@21
    .line 875
    return v4

    #@22
    .line 879
    :cond_2
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    #@24
    add-long/2addr v0, v6

    #@25
    cmp-long v0, p1, v0

    #@27
    if-gez v0, :cond_3

    #@29
    .line 881
    return v4

    #@2a
    .line 885
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    #@2c
    if-nez v0, :cond_4

    #@2e
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    #@30
    add-long/2addr v0, v6

    #@31
    cmp-long v0, p1, v0

    #@33
    if-gez v0, :cond_5

    #@35
    .line 887
    :cond_4
    return v4

    #@36
    .line 891
    :cond_5
    const/4 v0, 0x1

    #@37
    return v0
.end method

.method private isSwingingLocked(JF)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 937
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    #@3
    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_1

    #@9
    .line 938
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@b
    aget-wide v2, v1, v0

    #@d
    const-wide/32 v4, 0x11e1a300

    #@10
    add-long/2addr v2, v4

    #@11
    cmp-long v1, v2, p1

    #@13
    if-gez v1, :cond_2

    #@15
    .line 946
    :cond_1
    return v6

    #@16
    .line 941
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    #@18
    aget v1, v1, v0

    #@1a
    const/high16 v2, 0x41a00000    # 20.0f

    #@1c
    add-float/2addr v1, v2

    #@1d
    cmpg-float v1, v1, p3

    #@1f
    if-gtz v1, :cond_0

    #@21
    .line 943
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 800
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@4
    aget-object v2, v2, p1

    #@6
    aget v2, v2, v1

    #@8
    if-lt p2, v2, :cond_1

    #@a
    .line 801
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@c
    aget-object v2, v2, p1

    #@e
    aget v2, v2, v0

    #@10
    if-gt p2, v2, :cond_0

    #@12
    .line 800
    :goto_0
    return v0

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 801
    goto :goto_0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 800
    goto :goto_0
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 950
    if-nez p1, :cond_0

    #@2
    const/16 p1, 0xc8

    #@4
    .end local p1    # "index":I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@6
    .line 951
    .restart local p1    # "index":I
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    #@8
    aget-wide v0, v0, p1

    #@a
    const-wide/high16 v2, -0x8000000000000000L

    #@c
    cmp-long v0, v0, v2

    #@e
    if-eqz v0, :cond_1

    #@10
    .end local p1    # "index":I
    :goto_0
    return p1

    #@11
    .restart local p1    # "index":I
    :cond_1
    const/4 p1, -0x1

    #@12
    goto :goto_0
.end method

.method private remainingMS(JJ)F
    .locals 3
    .param p1, "now"    # J
    .param p3, "until"    # J

    #@0
    .prologue
    .line 960
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    sub-long v0, p3, p1

    #@8
    long-to-float v0, v0

    #@9
    const v1, 0x358637bd    # 1.0E-6f

    #@c
    mul-float/2addr v0, v1

    #@d
    goto :goto_0
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    #@0
    .prologue
    .line 900
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@2
    if-eq v0, p3, :cond_0

    #@4
    .line 901
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@6
    .line 902
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    #@8
    .line 899
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "AccelSensorJudge"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "  "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p2

    #@2c
    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    const-string/jumbo v4, "mProposedRotation="

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, "mPredictedRotation="

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    const-string/jumbo v4, "mLastFilteredX="

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    const-string/jumbo v4, "mLastFilteredY="

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a0
    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    const-string/jumbo v4, "mLastFilteredZ="

    #@ac
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@c0
    move-result-wide v4

    #@c1
    iget-wide v6, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    #@c3
    sub-long v0, v4, v6

    #@c5
    .line 546
    .local v0, "delta":J
    new-instance v3, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v3

    #@ce
    const-string/jumbo v4, "mLastFilteredTimestampNanos="

    #@d1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v3

    #@d5
    iget-wide v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    #@d7
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@da
    move-result-object v3

    #@db
    .line 547
    const-string/jumbo v4, " ("

    #@de
    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v3

    #@e2
    .line 547
    long-to-float v4, v0

    #@e3
    const v5, 0x358637bd    # 1.0E-6f

    #@e6
    mul-float/2addr v4, v5

    #@e7
    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v3

    #@eb
    .line 547
    const-string/jumbo v4, "ms ago)"

    #@ee
    .line 546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v3

    #@f2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f9
    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v3

    #@102
    const-string/jumbo v4, "mTiltHistory={last: "

    #@105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v3

    #@109
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    #@10c
    move-result v4

    #@10d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@110
    move-result-object v3

    #@111
    const-string/jumbo v4, "}"

    #@114
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v3

    #@118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v3

    #@11c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11f
    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v3

    #@128
    const-string/jumbo v4, "mFlat="

    #@12b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v3

    #@12f
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    #@131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@134
    move-result-object v3

    #@135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v3

    #@139
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13c
    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v3

    #@145
    const-string/jumbo v4, "mSwinging="

    #@148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v3

    #@14c
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    #@14e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@151
    move-result-object v3

    #@152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v3

    #@156
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@159
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v3

    #@162
    const-string/jumbo v4, "mAccelerating="

    #@165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v3

    #@169
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    #@16b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v3

    #@16f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v3

    #@173
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@176
    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v3

    #@17f
    const-string/jumbo v4, "mOverhead="

    #@182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v3

    #@186
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    #@188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v3

    #@18c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v3

    #@190
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@193
    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v3

    #@19c
    const-string/jumbo v4, "mTouched="

    #@19f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v3

    #@1a3
    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    #@1a5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v3

    #@1a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v3

    #@1ad
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b0
    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v3

    #@1b9
    const-string/jumbo v4, "mTiltToleranceConfig=["

    #@1bc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v3

    #@1c0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v3

    #@1c4
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    .line 555
    const/4 v2, 0x0

    #@1c8
    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    #@1c9
    if-ge v2, v3, :cond_1

    #@1cb
    .line 556
    if-eqz v2, :cond_0

    #@1cd
    .line 557
    const-string/jumbo v3, ", "

    #@1d0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d3
    .line 559
    :cond_0
    const-string/jumbo v3, "["

    #@1d6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d9
    .line 560
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@1db
    aget-object v3, v3, v2

    #@1dd
    aget v3, v3, v8

    #@1df
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@1e2
    .line 561
    const-string/jumbo v3, ", "

    #@1e5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    .line 562
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    #@1ea
    aget-object v3, v3, v2

    #@1ec
    const/4 v4, 0x1

    #@1ed
    aget v3, v3, v4

    #@1ef
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@1f2
    .line 563
    const-string/jumbo v3, "]"

    #@1f5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f8
    .line 555
    add-int/lit8 v2, v2, 0x1

    #@1fa
    goto :goto_0

    #@1fb
    .line 565
    :cond_1
    const-string/jumbo v3, "]"

    #@1fe
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@201
    .line 537
    return-void
.end method

.method public getProposedRotationLocked()I
    .locals 1

    #@0
    .prologue
    .line 533
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    #@2
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 569
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    #@0
    .prologue
    .line 577
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    #@4
    move-object/from16 v23, v0

    #@6
    invoke-static/range {v23 .. v23}, Lcom/android/server/policy/WindowOrientationListener;->-get3(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    #@9
    move-result-object v24

    #@a
    monitor-enter v24

    #@b
    .line 581
    :try_start_0
    move-object/from16 v0, p1

    #@d
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    #@f
    move-object/from16 v23, v0

    #@11
    const/16 v25, 0x0

    #@13
    aget v20, v23, v25

    #@15
    .line 582
    .local v20, "x":F
    move-object/from16 v0, p1

    #@17
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    #@19
    move-object/from16 v23, v0

    #@1b
    const/16 v25, 0x1

    #@1d
    aget v21, v23, v25

    #@1f
    .line 583
    .local v21, "y":F
    move-object/from16 v0, p1

    #@21
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    #@23
    move-object/from16 v23, v0

    #@25
    const/16 v25, 0x2

    #@27
    aget v22, v23, v25

    #@29
    .line 585
    .local v22, "z":F
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@2c
    move-result v23

    #@2d
    if-eqz v23, :cond_0

    #@2f
    .line 586
    const-string/jumbo v23, "WindowOrientationListener"

    #@32
    new-instance v25, Ljava/lang/StringBuilder;

    #@34
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v26, "Raw acceleration vector: x="

    #@3a
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v25

    #@3e
    move-object/from16 v0, v25

    #@40
    move/from16 v1, v20

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@45
    move-result-object v25

    #@46
    .line 587
    const-string/jumbo v26, ", y="

    #@49
    .line 586
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v25

    #@4d
    move-object/from16 v0, v25

    #@4f
    move/from16 v1, v21

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@54
    move-result-object v25

    #@55
    .line 587
    const-string/jumbo v26, ", z="

    #@58
    .line 586
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v25

    #@5c
    move-object/from16 v0, v25

    #@5e
    move/from16 v1, v22

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@63
    move-result-object v25

    #@64
    .line 588
    const-string/jumbo v26, ", magnitude="

    #@67
    .line 586
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v25

    #@6b
    .line 588
    mul-float v26, v20, v20

    #@6d
    mul-float v27, v21, v21

    #@6f
    add-float v26, v26, v27

    #@71
    mul-float v27, v22, v22

    #@73
    add-float v26, v26, v27

    #@75
    move/from16 v0, v26

    #@77
    float-to-double v0, v0

    #@78
    move-wide/from16 v26, v0

    #@7a
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    #@7d
    move-result-wide v26

    #@7e
    .line 586
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@81
    move-result-object v25

    #@82
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v25

    #@86
    move-object/from16 v0, v23

    #@88
    move-object/from16 v1, v25

    #@8a
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    .line 595
    :cond_0
    move-object/from16 v0, p1

    #@8f
    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    #@91
    .line 596
    .local v10, "now":J
    move-object/from16 v0, p0

    #@93
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    #@95
    move-wide/from16 v16, v0

    #@97
    .line 597
    .local v16, "then":J
    sub-long v26, v10, v16

    #@99
    move-wide/from16 v0, v26

    #@9b
    long-to-float v0, v0

    #@9c
    move/from16 v23, v0

    #@9e
    const v25, 0x358637bd    # 1.0E-6f

    #@a1
    mul-float v19, v23, v25

    #@a3
    .line 599
    .local v19, "timeDeltaMS":F
    cmp-long v23, v10, v16

    #@a5
    if-ltz v23, :cond_1

    #@a7
    .line 600
    const-wide/32 v26, 0x3b9aca00

    #@aa
    add-long v26, v26, v16

    #@ac
    cmp-long v23, v10, v26

    #@ae
    if-lez v23, :cond_a

    #@b0
    .line 602
    :cond_1
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@b3
    move-result v23

    #@b4
    if-eqz v23, :cond_2

    #@b6
    .line 603
    const-string/jumbo v23, "WindowOrientationListener"

    #@b9
    const-string/jumbo v25, "Resetting orientation listener."

    #@bc
    move-object/from16 v0, v23

    #@be
    move-object/from16 v1, v25

    #@c0
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    .line 605
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->resetLocked()V

    #@c6
    .line 606
    const/4 v15, 0x1

    #@c7
    .line 619
    .local v15, "skipSample":Z
    :goto_0
    move-object/from16 v0, p0

    #@c9
    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    #@cb
    .line 620
    move/from16 v0, v20

    #@cd
    move-object/from16 v1, p0

    #@cf
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    #@d1
    .line 621
    move/from16 v0, v21

    #@d3
    move-object/from16 v1, p0

    #@d5
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    #@d7
    .line 622
    move/from16 v0, v22

    #@d9
    move-object/from16 v1, p0

    #@db
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    #@dd
    .line 624
    const/4 v5, 0x0

    #@de
    .line 625
    .local v5, "isAccelerating":Z
    const/4 v6, 0x0

    #@df
    .line 626
    .local v6, "isFlat":Z
    const/4 v7, 0x0

    #@e0
    .line 627
    .local v7, "isSwinging":Z
    if-nez v15, :cond_4

    #@e2
    .line 629
    mul-float v23, v20, v20

    #@e4
    mul-float v25, v21, v21

    #@e6
    add-float v23, v23, v25

    #@e8
    mul-float v25, v22, v22

    #@ea
    add-float v23, v23, v25

    #@ec
    move/from16 v0, v23

    #@ee
    float-to-double v0, v0

    #@ef
    move-wide/from16 v26, v0

    #@f1
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    #@f4
    move-result-wide v26

    #@f5
    move-wide/from16 v0, v26

    #@f7
    double-to-float v8, v0

    #@f8
    .line 630
    .local v8, "magnitude":F
    const/high16 v23, 0x3f800000    # 1.0f

    #@fa
    cmpg-float v23, v8, v23

    #@fc
    if-gez v23, :cond_d

    #@fe
    .line 631
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@101
    move-result v23

    #@102
    if-eqz v23, :cond_3

    #@104
    .line 632
    const-string/jumbo v23, "WindowOrientationListener"

    #@107
    const-string/jumbo v25, "Ignoring sensor data, magnitude too close to zero."

    #@10a
    move-object/from16 v0, v23

    #@10c
    move-object/from16 v1, v25

    #@10e
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@111
    .line 634
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    #@114
    .line 724
    .end local v8    # "magnitude":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    #@116
    iput-boolean v6, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    #@118
    .line 725
    move-object/from16 v0, p0

    #@11a
    iput-boolean v7, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    #@11c
    .line 726
    move-object/from16 v0, p0

    #@11e
    iput-boolean v5, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    #@120
    .line 729
    move-object/from16 v0, p0

    #@122
    iget v12, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    #@124
    .line 730
    .local v12, "oldProposedRotation":I
    move-object/from16 v0, p0

    #@126
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@128
    move/from16 v23, v0

    #@12a
    if-ltz v23, :cond_5

    #@12c
    move-object/from16 v0, p0

    #@12e
    invoke-direct {v0, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    #@131
    move-result v23

    #@132
    if-eqz v23, :cond_6

    #@134
    .line 731
    :cond_5
    move-object/from16 v0, p0

    #@136
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@138
    move/from16 v23, v0

    #@13a
    move/from16 v0, v23

    #@13c
    move-object/from16 v1, p0

    #@13e
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    #@140
    .line 733
    :cond_6
    move-object/from16 v0, p0

    #@142
    iget v14, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    #@144
    .line 736
    .local v14, "proposedRotation":I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@147
    move-result v23

    #@148
    if-eqz v23, :cond_7

    #@14a
    .line 737
    const-string/jumbo v23, "WindowOrientationListener"

    #@14d
    new-instance v25, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v26, "Result: currentRotation="

    #@155
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v25

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    #@15d
    move-object/from16 v26, v0

    #@15f
    invoke-static/range {v26 .. v26}, Lcom/android/server/policy/WindowOrientationListener;->-get1(Lcom/android/server/policy/WindowOrientationListener;)I

    #@162
    move-result v26

    #@163
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@166
    move-result-object v25

    #@167
    .line 738
    const-string/jumbo v26, ", proposedRotation="

    #@16a
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v25

    #@16e
    move-object/from16 v0, v25

    #@170
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v25

    #@174
    .line 739
    const-string/jumbo v26, ", predictedRotation="

    #@177
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v25

    #@17b
    .line 739
    move-object/from16 v0, p0

    #@17d
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@17f
    move/from16 v26, v0

    #@181
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@184
    move-result-object v25

    #@185
    .line 740
    const-string/jumbo v26, ", timeDeltaMS="

    #@188
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v25

    #@18c
    move-object/from16 v0, v25

    #@18e
    move/from16 v1, v19

    #@190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@193
    move-result-object v25

    #@194
    .line 741
    const-string/jumbo v26, ", isAccelerating="

    #@197
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v25

    #@19b
    move-object/from16 v0, v25

    #@19d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v25

    #@1a1
    .line 742
    const-string/jumbo v26, ", isFlat="

    #@1a4
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v25

    #@1a8
    move-object/from16 v0, v25

    #@1aa
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v25

    #@1ae
    .line 743
    const-string/jumbo v26, ", isSwinging="

    #@1b1
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v25

    #@1b5
    move-object/from16 v0, v25

    #@1b7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v25

    #@1bb
    .line 744
    const-string/jumbo v26, ", isOverhead="

    #@1be
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v25

    #@1c2
    .line 744
    move-object/from16 v0, p0

    #@1c4
    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    #@1c6
    move/from16 v26, v0

    #@1c8
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v25

    #@1cc
    .line 745
    const-string/jumbo v26, ", isTouched="

    #@1cf
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v25

    #@1d3
    .line 745
    move-object/from16 v0, p0

    #@1d5
    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    #@1d7
    move/from16 v26, v0

    #@1d9
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v25

    #@1dd
    .line 746
    const-string/jumbo v26, ", timeUntilSettledMS="

    #@1e0
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v25

    #@1e4
    .line 747
    move-object/from16 v0, p0

    #@1e6
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    #@1e8
    move-wide/from16 v26, v0

    #@1ea
    const-wide/32 v28, 0x2625a00

    #@1ed
    add-long v26, v26, v28

    #@1ef
    .line 746
    move-object/from16 v0, p0

    #@1f1
    move-wide/from16 v1, v26

    #@1f3
    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    #@1f6
    move-result v26

    #@1f7
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v25

    #@1fb
    .line 748
    const-string/jumbo v26, ", timeUntilAccelerationDelayExpiredMS="

    #@1fe
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v25

    #@202
    .line 749
    move-object/from16 v0, p0

    #@204
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    #@206
    move-wide/from16 v26, v0

    #@208
    const-wide/32 v28, 0x1dcd6500

    #@20b
    add-long v26, v26, v28

    #@20d
    .line 748
    move-object/from16 v0, p0

    #@20f
    move-wide/from16 v1, v26

    #@211
    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    #@214
    move-result v26

    #@215
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@218
    move-result-object v25

    #@219
    .line 750
    const-string/jumbo v26, ", timeUntilFlatDelayExpiredMS="

    #@21c
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v25

    #@220
    .line 751
    move-object/from16 v0, p0

    #@222
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    #@224
    move-wide/from16 v26, v0

    #@226
    const-wide/32 v28, 0x1dcd6500

    #@229
    add-long v26, v26, v28

    #@22b
    .line 750
    move-object/from16 v0, p0

    #@22d
    move-wide/from16 v1, v26

    #@22f
    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    #@232
    move-result v26

    #@233
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@236
    move-result-object v25

    #@237
    .line 752
    const-string/jumbo v26, ", timeUntilSwingDelayExpiredMS="

    #@23a
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v25

    #@23e
    .line 753
    move-object/from16 v0, p0

    #@240
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    #@242
    move-wide/from16 v26, v0

    #@244
    const-wide/32 v28, 0x11e1a300

    #@247
    add-long v26, v26, v28

    #@249
    .line 752
    move-object/from16 v0, p0

    #@24b
    move-wide/from16 v1, v26

    #@24d
    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    #@250
    move-result v26

    #@251
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@254
    move-result-object v25

    #@255
    .line 754
    const-string/jumbo v26, ", timeUntilTouchDelayExpiredMS="

    #@258
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v25

    #@25c
    .line 755
    move-object/from16 v0, p0

    #@25e
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    #@260
    move-wide/from16 v26, v0

    #@262
    const-wide/32 v28, 0x1dcd6500

    #@265
    add-long v26, v26, v28

    #@267
    .line 754
    move-object/from16 v0, p0

    #@269
    move-wide/from16 v1, v26

    #@26b
    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    #@26e
    move-result v26

    #@26f
    .line 737
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@272
    move-result-object v25

    #@273
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@276
    move-result-object v25

    #@277
    move-object/from16 v0, v23

    #@279
    move-object/from16 v1, v25

    #@27b
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27e
    :cond_7
    monitor-exit v24

    #@27f
    .line 760
    if-eq v14, v12, :cond_9

    #@281
    if-ltz v14, :cond_9

    #@283
    .line 761
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@286
    move-result v23

    #@287
    if-eqz v23, :cond_8

    #@289
    .line 762
    const-string/jumbo v23, "WindowOrientationListener"

    #@28c
    new-instance v24, Ljava/lang/StringBuilder;

    #@28e
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@291
    const-string/jumbo v25, "Proposed rotation changed!  proposedRotation="

    #@294
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v24

    #@298
    move-object/from16 v0, v24

    #@29a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29d
    move-result-object v24

    #@29e
    .line 763
    const-string/jumbo v25, ", oldProposedRotation="

    #@2a1
    .line 762
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v24

    #@2a5
    move-object/from16 v0, v24

    #@2a7
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v24

    #@2ab
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ae
    move-result-object v24

    #@2af
    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b2
    .line 765
    :cond_8
    move-object/from16 v0, p0

    #@2b4
    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    #@2b6
    move-object/from16 v23, v0

    #@2b8
    move-object/from16 v0, v23

    #@2ba
    invoke-virtual {v0, v14}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    #@2bd
    .line 573
    :cond_9
    return-void

    #@2be
    .line 601
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v12    # "oldProposedRotation":I
    .end local v14    # "proposedRotation":I
    .end local v15    # "skipSample":Z
    :cond_a
    const/16 v23, 0x0

    #@2c0
    cmpl-float v23, v20, v23

    #@2c2
    if-nez v23, :cond_b

    #@2c4
    const/16 v23, 0x0

    #@2c6
    cmpl-float v23, v21, v23

    #@2c8
    if-nez v23, :cond_b

    #@2ca
    const/16 v23, 0x0

    #@2cc
    cmpl-float v23, v22, v23

    #@2ce
    if-eqz v23, :cond_1

    #@2d0
    .line 608
    :cond_b
    const/high16 v23, 0x43480000    # 200.0f

    #@2d2
    add-float v23, v23, v19

    #@2d4
    div-float v4, v19, v23

    #@2d6
    .line 609
    .local v4, "alpha":F
    :try_start_1
    move-object/from16 v0, p0

    #@2d8
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    #@2da
    move/from16 v23, v0

    #@2dc
    sub-float v23, v20, v23

    #@2de
    mul-float v23, v23, v4

    #@2e0
    move-object/from16 v0, p0

    #@2e2
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    #@2e4
    move/from16 v25, v0

    #@2e6
    add-float v20, v23, v25

    #@2e8
    .line 610
    move-object/from16 v0, p0

    #@2ea
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    #@2ec
    move/from16 v23, v0

    #@2ee
    sub-float v23, v21, v23

    #@2f0
    mul-float v23, v23, v4

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    #@2f6
    move/from16 v25, v0

    #@2f8
    add-float v21, v23, v25

    #@2fa
    .line 611
    move-object/from16 v0, p0

    #@2fc
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    #@2fe
    move/from16 v23, v0

    #@300
    sub-float v23, v22, v23

    #@302
    mul-float v23, v23, v4

    #@304
    move-object/from16 v0, p0

    #@306
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    #@308
    move/from16 v25, v0

    #@30a
    add-float v22, v23, v25

    #@30c
    .line 612
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@30f
    move-result v23

    #@310
    if-eqz v23, :cond_c

    #@312
    .line 613
    const-string/jumbo v23, "WindowOrientationListener"

    #@315
    new-instance v25, Ljava/lang/StringBuilder;

    #@317
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@31a
    const-string/jumbo v26, "Filtered acceleration vector: x="

    #@31d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v25

    #@321
    move-object/from16 v0, v25

    #@323
    move/from16 v1, v20

    #@325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@328
    move-result-object v25

    #@329
    .line 614
    const-string/jumbo v26, ", y="

    #@32c
    .line 613
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32f
    move-result-object v25

    #@330
    move-object/from16 v0, v25

    #@332
    move/from16 v1, v21

    #@334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@337
    move-result-object v25

    #@338
    .line 614
    const-string/jumbo v26, ", z="

    #@33b
    .line 613
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v25

    #@33f
    move-object/from16 v0, v25

    #@341
    move/from16 v1, v22

    #@343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@346
    move-result-object v25

    #@347
    .line 615
    const-string/jumbo v26, ", magnitude="

    #@34a
    .line 613
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34d
    move-result-object v25

    #@34e
    .line 615
    mul-float v26, v20, v20

    #@350
    mul-float v27, v21, v21

    #@352
    add-float v26, v26, v27

    #@354
    mul-float v27, v22, v22

    #@356
    add-float v26, v26, v27

    #@358
    move/from16 v0, v26

    #@35a
    float-to-double v0, v0

    #@35b
    move-wide/from16 v26, v0

    #@35d
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    #@360
    move-result-wide v26

    #@361
    .line 613
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@364
    move-result-object v25

    #@365
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@368
    move-result-object v25

    #@369
    move-object/from16 v0, v23

    #@36b
    move-object/from16 v1, v25

    #@36d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@370
    .line 617
    :cond_c
    const/4 v15, 0x0

    #@371
    .restart local v15    # "skipSample":Z
    goto/16 :goto_0

    #@373
    .line 638
    .end local v4    # "alpha":F
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    :cond_d
    move-object/from16 v0, p0

    #@375
    invoke-direct {v0, v8}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    #@378
    move-result v23

    #@379
    if-eqz v23, :cond_e

    #@37b
    .line 639
    const/4 v5, 0x1

    #@37c
    .line 640
    move-object/from16 v0, p0

    #@37e
    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    #@380
    .line 650
    :cond_e
    div-float v23, v22, v8

    #@382
    move/from16 v0, v23

    #@384
    float-to-double v0, v0

    #@385
    move-wide/from16 v26, v0

    #@387
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    #@38a
    move-result-wide v26

    #@38b
    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    #@390
    mul-double v26, v26, v28

    #@392
    .line 649
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    #@395
    move-result-wide v26

    #@396
    move-wide/from16 v0, v26

    #@398
    long-to-int v0, v0

    #@399
    move/from16 v18, v0

    #@39b
    .line 651
    .local v18, "tiltAngle":I
    move/from16 v0, v18

    #@39d
    int-to-float v0, v0

    #@39e
    move/from16 v23, v0

    #@3a0
    move-object/from16 v0, p0

    #@3a2
    move/from16 v1, v23

    #@3a4
    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    #@3a7
    .line 654
    move-object/from16 v0, p0

    #@3a9
    invoke-direct {v0, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    #@3ac
    move-result v23

    #@3ad
    if-eqz v23, :cond_f

    #@3af
    .line 655
    const/4 v6, 0x1

    #@3b0
    .line 656
    move-object/from16 v0, p0

    #@3b2
    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    #@3b4
    .line 658
    :cond_f
    move/from16 v0, v18

    #@3b6
    int-to-float v0, v0

    #@3b7
    move/from16 v23, v0

    #@3b9
    move-object/from16 v0, p0

    #@3bb
    move/from16 v1, v23

    #@3bd
    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    #@3c0
    move-result v23

    #@3c1
    if-eqz v23, :cond_10

    #@3c3
    .line 659
    const/4 v7, 0x1

    #@3c4
    .line 660
    move-object/from16 v0, p0

    #@3c6
    iput-wide v10, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    #@3c8
    .line 665
    :cond_10
    const/16 v23, -0x28

    #@3ca
    move/from16 v0, v18

    #@3cc
    move/from16 v1, v23

    #@3ce
    if-gt v0, v1, :cond_13

    #@3d0
    .line 666
    const/16 v23, 0x1

    #@3d2
    move/from16 v0, v23

    #@3d4
    move-object/from16 v1, p0

    #@3d6
    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    #@3d8
    .line 670
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    #@3da
    iget-boolean v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    #@3dc
    move/from16 v23, v0

    #@3de
    if-eqz v23, :cond_14

    #@3e0
    .line 671
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@3e3
    move-result v23

    #@3e4
    if-eqz v23, :cond_12

    #@3e6
    .line 672
    const-string/jumbo v23, "WindowOrientationListener"

    #@3e9
    new-instance v25, Ljava/lang/StringBuilder;

    #@3eb
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@3ee
    const-string/jumbo v26, "Ignoring sensor data, device is overhead: tiltAngle="

    #@3f1
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f4
    move-result-object v25

    #@3f5
    move-object/from16 v0, v25

    #@3f7
    move/from16 v1, v18

    #@3f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3fc
    move-result-object v25

    #@3fd
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@400
    move-result-object v25

    #@401
    move-object/from16 v0, v23

    #@403
    move-object/from16 v1, v25

    #@405
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@408
    .line 675
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40b
    goto/16 :goto_1

    #@40d
    .line 577
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v8    # "magnitude":F
    .end local v10    # "now":J
    .end local v15    # "skipSample":Z
    .end local v16    # "then":J
    .end local v18    # "tiltAngle":I
    .end local v19    # "timeDeltaMS":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v22    # "z":F
    :catchall_0
    move-exception v23

    #@40e
    monitor-exit v24

    #@40f
    throw v23

    #@410
    .line 667
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    .restart local v10    # "now":J
    .restart local v15    # "skipSample":Z
    .restart local v16    # "then":J
    .restart local v18    # "tiltAngle":I
    .restart local v19    # "timeDeltaMS":F
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    .restart local v22    # "z":F
    :cond_13
    const/16 v23, -0xf

    #@412
    move/from16 v0, v18

    #@414
    move/from16 v1, v23

    #@416
    if-lt v0, v1, :cond_11

    #@418
    .line 668
    const/16 v23, 0x0

    #@41a
    :try_start_2
    move/from16 v0, v23

    #@41c
    move-object/from16 v1, p0

    #@41e
    iput-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    #@420
    goto :goto_2

    #@421
    .line 676
    :cond_14
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    #@424
    move-result v23

    #@425
    const/16 v25, 0x50

    #@427
    move/from16 v0, v23

    #@429
    move/from16 v1, v25

    #@42b
    if-le v0, v1, :cond_16

    #@42d
    .line 677
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@430
    move-result v23

    #@431
    if-eqz v23, :cond_15

    #@433
    .line 678
    const-string/jumbo v23, "WindowOrientationListener"

    #@436
    new-instance v25, Ljava/lang/StringBuilder;

    #@438
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@43b
    const-string/jumbo v26, "Ignoring sensor data, tilt angle too high: tiltAngle="

    #@43e
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@441
    move-result-object v25

    #@442
    move-object/from16 v0, v25

    #@444
    move/from16 v1, v18

    #@446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@449
    move-result-object v25

    #@44a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44d
    move-result-object v25

    #@44e
    move-object/from16 v0, v23

    #@450
    move-object/from16 v1, v25

    #@452
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@455
    .line 681
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    #@458
    goto/16 :goto_1

    #@45a
    .line 687
    :cond_16
    move/from16 v0, v20

    #@45c
    neg-float v0, v0

    #@45d
    move/from16 v23, v0

    #@45f
    move/from16 v0, v23

    #@461
    float-to-double v0, v0

    #@462
    move-wide/from16 v26, v0

    #@464
    move/from16 v0, v21

    #@466
    float-to-double v0, v0

    #@467
    move-wide/from16 v28, v0

    #@469
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    #@46c
    move-result-wide v26

    #@46d
    move-wide/from16 v0, v26

    #@46f
    neg-double v0, v0

    #@470
    move-wide/from16 v26, v0

    #@472
    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    #@477
    mul-double v26, v26, v28

    #@479
    .line 686
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    #@47c
    move-result-wide v26

    #@47d
    move-wide/from16 v0, v26

    #@47f
    long-to-int v13, v0

    #@480
    .line 688
    .local v13, "orientationAngle":I
    if-gez v13, :cond_17

    #@482
    .line 690
    add-int/lit16 v13, v13, 0x168

    #@484
    .line 694
    :cond_17
    add-int/lit8 v23, v13, 0x2d

    #@486
    div-int/lit8 v9, v23, 0x5a

    #@488
    .line 695
    .local v9, "nearestRotation":I
    const/16 v23, 0x4

    #@48a
    move/from16 v0, v23

    #@48c
    if-ne v9, v0, :cond_18

    #@48e
    .line 696
    const/4 v9, 0x0

    #@48f
    .line 700
    :cond_18
    move-object/from16 v0, p0

    #@491
    move/from16 v1, v18

    #@493
    invoke-direct {v0, v9, v1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    #@496
    move-result v23

    #@497
    if-eqz v23, :cond_19

    #@499
    .line 701
    move-object/from16 v0, p0

    #@49b
    invoke-direct {v0, v9, v13}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    #@49e
    move-result v23

    #@49f
    .line 700
    if-eqz v23, :cond_19

    #@4a1
    .line 703
    move-object/from16 v0, p0

    #@4a3
    invoke-direct {v0, v10, v11, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    #@4a6
    .line 704
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@4a9
    move-result v23

    #@4aa
    if-eqz v23, :cond_4

    #@4ac
    .line 705
    const-string/jumbo v23, "WindowOrientationListener"

    #@4af
    new-instance v25, Ljava/lang/StringBuilder;

    #@4b1
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@4b4
    const-string/jumbo v26, "Predicted: tiltAngle="

    #@4b7
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v25

    #@4bb
    move-object/from16 v0, v25

    #@4bd
    move/from16 v1, v18

    #@4bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c2
    move-result-object v25

    #@4c3
    .line 707
    const-string/jumbo v26, ", orientationAngle="

    #@4c6
    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c9
    move-result-object v25

    #@4ca
    move-object/from16 v0, v25

    #@4cc
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4cf
    move-result-object v25

    #@4d0
    .line 708
    const-string/jumbo v26, ", predictedRotation="

    #@4d3
    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d6
    move-result-object v25

    #@4d7
    .line 708
    move-object/from16 v0, p0

    #@4d9
    iget v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    #@4db
    move/from16 v26, v0

    #@4dd
    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e0
    move-result-object v25

    #@4e1
    .line 709
    const-string/jumbo v26, ", predictedRotationAgeMS="

    #@4e4
    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e7
    move-result-object v25

    #@4e8
    .line 710
    move-object/from16 v0, p0

    #@4ea
    iget-wide v0, v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    #@4ec
    move-wide/from16 v26, v0

    #@4ee
    sub-long v26, v10, v26

    #@4f0
    move-wide/from16 v0, v26

    #@4f2
    long-to-float v0, v0

    #@4f3
    move/from16 v26, v0

    #@4f5
    .line 711
    const v27, 0x358637bd    # 1.0E-6f

    #@4f8
    .line 710
    mul-float v26, v26, v27

    #@4fa
    .line 705
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4fd
    move-result-object v25

    #@4fe
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@501
    move-result-object v25

    #@502
    move-object/from16 v0, v23

    #@504
    move-object/from16 v1, v25

    #@506
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@509
    goto/16 :goto_1

    #@50b
    .line 714
    :cond_19
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->-get0()Z

    #@50e
    move-result v23

    #@50f
    if-eqz v23, :cond_1a

    #@511
    .line 715
    const-string/jumbo v23, "WindowOrientationListener"

    #@514
    new-instance v25, Ljava/lang/StringBuilder;

    #@516
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@519
    const-string/jumbo v26, "Ignoring sensor data, no predicted rotation: tiltAngle="

    #@51c
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51f
    move-result-object v25

    #@520
    move-object/from16 v0, v25

    #@522
    move/from16 v1, v18

    #@524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@527
    move-result-object v25

    #@528
    .line 717
    const-string/jumbo v26, ", orientationAngle="

    #@52b
    .line 715
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52e
    move-result-object v25

    #@52f
    move-object/from16 v0, v25

    #@531
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@534
    move-result-object v25

    #@535
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@538
    move-result-object v25

    #@539
    move-object/from16 v0, v23

    #@53b
    move-object/from16 v1, v25

    #@53d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@540
    .line 719
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@543
    goto/16 :goto_1
.end method

.method public onTouchEndLocked(J)V
    .locals 1
    .param p1, "whenElapsedNanos"    # J

    #@0
    .prologue
    .line 776
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    #@3
    .line 777
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    #@5
    .line 775
    return-void
.end method

.method public onTouchStartLocked()V
    .locals 1

    #@0
    .prologue
    .line 771
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    #@3
    .line 770
    return-void
.end method

.method public resetLocked()V
    .locals 4

    #@0
    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    const/4 v1, 0x0

    #@3
    .line 782
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    #@5
    .line 783
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    #@8
    .line 784
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    #@a
    .line 785
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    #@c
    .line 786
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    #@e
    .line 787
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    #@10
    .line 788
    iput-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    #@12
    .line 789
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    #@14
    .line 790
    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    #@16
    .line 791
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    #@19
    .line 792
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    #@1c
    .line 781
    return-void
.end method
