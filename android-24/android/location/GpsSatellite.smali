.class public final Landroid/location/GpsSatellite;
.super Ljava/lang/Object;
.source "GpsSatellite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "prn"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput p1, p0, Landroid/location/GpsSatellite;->mPrn:I

    #@5
    .line 38
    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    #@2
    return v0
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    #@2
    return v0
.end method

.method public getPrn()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/location/GpsSatellite;->mPrn:I

    #@2
    return v0
.end method

.method public getSnr()F
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    #@2
    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    #@2
    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    #@2
    return v0
.end method

.method setStatus(Landroid/location/GpsSatellite;)V
    .locals 1
    .param p1, "satellite"    # Landroid/location/GpsSatellite;

    #@0
    .prologue
    .line 47
    if-nez p1, :cond_0

    #@2
    .line 48
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    #@5
    .line 46
    :goto_0
    return-void

    #@6
    .line 50
    :cond_0
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mValid:Z

    #@8
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    #@a
    .line 51
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    #@c
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    #@e
    .line 52
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    #@10
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    #@12
    .line 53
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mUsedInFix:Z

    #@14
    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    #@16
    .line 54
    iget v0, p1, Landroid/location/GpsSatellite;->mSnr:F

    #@18
    iput v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    #@1a
    .line 55
    iget v0, p1, Landroid/location/GpsSatellite;->mElevation:F

    #@1c
    iput v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    #@1e
    .line 56
    iget v0, p1, Landroid/location/GpsSatellite;->mAzimuth:F

    #@20
    iput v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    #@22
    goto :goto_0
.end method

.method public usedInFix()Z
    .locals 1

    #@0
    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    #@2
    return v0
.end method
