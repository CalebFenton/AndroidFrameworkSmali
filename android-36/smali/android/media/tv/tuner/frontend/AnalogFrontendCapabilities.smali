.class public Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "AnalogFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mSifStandardCap:I

.field private final blacklist mTypeCap:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "typeCap"    # I
    .param p2, "sifStandardCap"    # I

    .line 34
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 35
    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mTypeCap:I

    .line 36
    iput p2, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mSifStandardCap:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getSifStandardCapability()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mSifStandardCap:I

    return v0
.end method

.method public whitelist getSignalTypeCapability()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendCapabilities;->mTypeCap:I

    return v0
.end method
