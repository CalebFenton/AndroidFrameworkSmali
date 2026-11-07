.class public final Landroid/hardware/camera2/params/LensIntrinsicsSample;
.super Ljava/lang/Object;
.source "LensIntrinsicsSample.java"


# instance fields
.field private final blacklist mLensIntrinsics:[F

.field private final blacklist mTimestampNs:J


# direct methods
.method public constructor whitelist <init>(J[F)V
    .registers 6
    .param p1, "timestampNs"    # J
    .param p3, "lensIntrinsics"    # [F

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    .line 50
    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 51
    iput-object p3, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 87
    return v0

    .line 88
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 89
    return v1

    .line 90
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/LensIntrinsicsSample;

    if-eqz v2, :cond_27

    .line 91
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/LensIntrinsicsSample;

    .line 92
    .local v2, "other":Landroid/hardware/camera2/params/LensIntrinsicsSample;
    iget-wide v3, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    iget-object v3, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    .line 93
    invoke-virtual {v2}, Landroid/hardware/camera2/params/LensIntrinsicsSample;->getLensIntrinsics()[F

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    nop

    .line 92
    :goto_26
    return v0

    .line 95
    .end local v2    # "other":Landroid/hardware/camera2/params/LensIntrinsicsSample;
    :cond_27
    return v0
.end method

.method public whitelist getLensIntrinsics()[F
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    return-object v0
.end method

.method public whitelist getTimestampNanos()J
    .registers 3

    .line 63
    iget-wide v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 103
    iget-wide v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    long-to-float v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    .line 104
    .local v0, "timestampHash":I
    iget-object v1, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 117
    iget-wide v0, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mTimestampNs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/params/LensIntrinsicsSample;->mLensIntrinsics:[F

    .line 118
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 117
    const-string v1, "LensIntrinsicsSample{timestamp:%d, sample:%s}"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
