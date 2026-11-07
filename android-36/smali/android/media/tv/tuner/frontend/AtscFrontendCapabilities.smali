.class public Landroid/media/tv/tuner/frontend/AtscFrontendCapabilities;
.super Landroid/media/tv/tuner/frontend/FrontendCapabilities;
.source "AtscFrontendCapabilities.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mModulationCap:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "modulationCap"    # I

    .line 30
    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/FrontendCapabilities;-><init>()V

    .line 31
    iput p1, p0, Landroid/media/tv/tuner/frontend/AtscFrontendCapabilities;->mModulationCap:I

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist getModulationCapability()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/media/tv/tuner/frontend/AtscFrontendCapabilities;->mModulationCap:I

    return v0
.end method
