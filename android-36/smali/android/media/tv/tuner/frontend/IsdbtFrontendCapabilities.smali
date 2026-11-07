.class public Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "IsdbtFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBandwidthCap:I

.field private final blacklist mCodeRateCap:I

.field private final blacklist mGuardIntervalCap:I

.field private final blacklist mIsFullSegmentSupported:Z

.field private final blacklist mIsSegmentAutoSupported:Z

.field private final blacklist mModeCap:I

.field private final blacklist mModulationCap:I

.field private final blacklist mTimeInterleaveCap:I


# direct methods
.method private constructor blacklist <init>(IIIIIIZZ)V
    .registers 9
    .param p1, "modeCap"    # I
    .param p2, "bandwidthCap"    # I
    .param p3, "modulationCap"    # I
    .param p4, "codeRateCap"    # I
    .param p5, "guardIntervalCap"    # I
    .param p6, "timeInterleaveCap"    # I
    .param p7, "isSegmentAutoSupported"    # Z
    .param p8, "isFullSegmentSupported"    # Z

    .line 40
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 41
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    .line 42
    iput p2, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    .line 43
    iput p3, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    .line 44
    iput p4, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    .line 45
    iput p5, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    .line 46
    iput p6, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mTimeInterleaveCap:I

    .line 47
    iput-boolean p7, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsSegmentAutoSupported:Z

    .line 48
    iput-boolean p8, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsFullSegmentSupported:Z

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist getBandwidthCapability()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getGuardIntervalCapability()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public whitelist getModeCapability()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModeCap:I

    return v0
.end method

.method public whitelist getModulationCapability()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public whitelist getTimeInterleaveModeCapability()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mTimeInterleaveCap:I

    return v0
.end method

.method public whitelist isFullSegmentSupported()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsFullSegmentSupported:Z

    return v0
.end method

.method public whitelist isSegmentAutoSupported()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/IsdbtFrontendCapabilities;->mIsSegmentAutoSupported:Z

    return v0
.end method
