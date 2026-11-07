.class public Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "DvbsFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mInnerFecCap:J

.field private final blacklist mModulationCap:I

.field private final blacklist mStandard:I


# direct methods
.method private constructor blacklist <init>(IJI)V
    .registers 5
    .param p1, "modulationCap"    # I
    .param p2, "innerFecCap"    # J
    .param p4, "standard"    # I

    .line 32
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 33
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mModulationCap:I

    .line 34
    iput-wide p2, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mInnerFecCap:J

    .line 35
    iput p4, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mStandard:I

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getInnerFecCapability()J
    .registers 3

    .line 50
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mInnerFecCap:J

    return-wide v0
.end method

.method public whitelist getModulationCapability()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mModulationCap:I

    return v0
.end method

.method public whitelist getStandardCapability()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/media/tv/tuner/frontend/DvbsFrontendCapabilities;->mStandard:I

    return v0
.end method
