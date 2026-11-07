.class public final Landroid/location/GpsSatellite;
.super Ljava/lang/Object;
.source "GpsSatellite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mAzimuth:F

.field greylist-max-o mElevation:F

.field greylist-max-o mHasAlmanac:Z

.field greylist-max-o mHasEphemeris:Z

.field greylist-max-o mPrn:I

.field greylist-max-o mSnr:F

.field greylist-max-o mUsedInFix:Z

.field greylist-max-o mValid:Z


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "prn"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/location/GpsSatellite;->mPrn:I

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getAzimuth()F
    .registers 2

    .line 95
    iget v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    return v0
.end method

.method public whitelist getElevation()F
    .registers 2

    .line 85
    iget v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    return v0
.end method

.method public whitelist getPrn()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/location/GpsSatellite;->mPrn:I

    return v0
.end method

.method public whitelist getSnr()F
    .registers 2

    .line 75
    iget v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    return v0
.end method

.method public whitelist hasAlmanac()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    return v0
.end method

.method public whitelist hasEphemeris()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    return v0
.end method

.method greylist-max-o setStatus(Landroid/location/GpsSatellite;)V
    .registers 3
    .param p1, "satellite"    # Landroid/location/GpsSatellite;

    .line 47
    if-nez p1, :cond_6

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    goto :goto_22

    .line 50
    :cond_6
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mValid:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    .line 51
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 52
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 53
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 54
    iget v0, p1, Landroid/location/GpsSatellite;->mSnr:F

    iput v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    .line 55
    iget v0, p1, Landroid/location/GpsSatellite;->mElevation:F

    iput v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    .line 56
    iget v0, p1, Landroid/location/GpsSatellite;->mAzimuth:F

    iput v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 58
    :goto_22
    return-void
.end method

.method public whitelist usedInFix()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    return v0
.end method
