.class public Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbtFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBandwidthCap:I

.field private final blacklist mCodeRateCap:I

.field private final blacklist mConstellationCap:I

.field private final blacklist mGuardIntervalCap:I

.field private final blacklist mHierarchyCap:I

.field private final blacklist mIsMisoSupported:Z

.field private final blacklist mIsT2Supported:Z

.field private final blacklist mTransmissionModeCap:I


# direct methods
.method private constructor blacklist <init>(IIIIIIZZ)V
    .registers 9
    .param p1, "transmissionModeCap"    # I
    .param p2, "bandwidthCap"    # I
    .param p3, "constellationCap"    # I
    .param p4, "codeRateCap"    # I
    .param p5, "hierarchyCap"    # I
    .param p6, "guardIntervalCap"    # I
    .param p7, "isT2Supported"    # Z
    .param p8, "isMisoSupported"    # Z

    .line 39
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 40
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mTransmissionModeCap:I

    .line 41
    iput p2, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mBandwidthCap:I

    .line 42
    iput p3, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mConstellationCap:I

    .line 43
    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mCodeRateCap:I

    .line 44
    iput p5, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mHierarchyCap:I

    .line 45
    iput p6, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mGuardIntervalCap:I

    .line 46
    iput-boolean p7, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsT2Supported:Z

    .line 47
    iput-boolean p8, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsMisoSupported:Z

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist getBandwidthCapability()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mBandwidthCap:I

    return v0
.end method

.method public whitelist getCodeRateCapability()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getConstellationCapability()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mConstellationCap:I

    return v0
.end method

.method public whitelist getGuardIntervalCapability()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mGuardIntervalCap:I

    return v0
.end method

.method public whitelist getHierarchyCapability()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mHierarchyCap:I

    return v0
.end method

.method public whitelist getTransmissionModeCapability()I
    .registers 2

    .line 55
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mTransmissionModeCap:I

    return v0
.end method

.method public whitelist isMisoSupported()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsMisoSupported:Z

    return v0
.end method

.method public whitelist isT2Supported()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/DvbtFrontendCapabilities;->mIsT2Supported:Z

    return v0
.end method
