.class public final Landroid/hardware/camera2/params/OisSample;
.super Ljava/lang/Object;
.source "OisSample.java"


# instance fields
.field private final greylist-max-o mTimestampNs:J

.field private final greylist-max-o mXShift:F

.field private final greylist-max-o mYShift:F


# direct methods
.method public constructor whitelist <init>(JFF)V
    .registers 6
    .param p1, "timestamp"    # J
    .param p3, "xShift"    # F
    .param p4, "yShift"    # F

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    .line 55
    const-string v0, "xShift must be finite"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    .line 56
    const-string v0, "yShift must be finite"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 99
    return v0

    .line 100
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 101
    return v1

    .line 102
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/OisSample;

    if-eqz v2, :cond_29

    .line 103
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OisSample;

    .line 104
    .local v2, "other":Landroid/hardware/camera2/params/OisSample;
    iget-wide v3, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    iget v3, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    iget v4, v2, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    iget v3, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    iget v4, v2, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_28

    move v0, v1

    :cond_28
    return v0

    .line 108
    .end local v2    # "other":Landroid/hardware/camera2/params/OisSample;
    :cond_29
    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 68
    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    return-wide v0
.end method

.method public whitelist getXshift()F
    .registers 2

    .line 77
    iget v0, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    return v0
.end method

.method public whitelist getYshift()F
    .registers 2

    .line 86
    iget v0, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 116
    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    long-to-float v0, v0

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    .line 117
    .local v0, "timestampHash":I
    iget v2, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    iget v4, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    int-to-float v5, v0

    const/4 v6, 0x3

    new-array v6, v6, [F

    aput v2, v6, v3

    aput v4, v6, v1

    const/4 v1, 0x2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 130
    iget-wide v0, p0, Landroid/hardware/camera2/params/OisSample;->mTimestampNs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/OisSample;->mXShift:F

    .line 131
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/OisSample;->mYShift:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 130
    const-string v1, "OisSample{timestamp:%d, shift_x:%f, shift_y:%f}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
