.class public Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "Isdbs3FrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mCodeRateCap:I

.field private final blacklist mModulationCap:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "modulationCap"    # I
    .param p2, "codeRateCap"    # I

    .line 31
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 32
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mModulationCap:I

    .line 33
    iput p2, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mCodeRateCap:I

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist getCodeRateCapability()I
    .registers 2

    .line 48
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mCodeRateCap:I

    return v0
.end method

.method public whitelist getModulationCapability()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendCapabilities;->mModulationCap:I

    return v0
.end method
