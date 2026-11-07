.class public Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;
.super Ljava/lang/Object;
.source "Atsc3PlpInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mLlsFlag:Z

.field private final blacklist mPlpId:I


# direct methods
.method private constructor blacklist <init>(IZ)V
    .registers 3
    .param p1, "plpId"    # I
    .param p2, "llsFlag"    # Z

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mPlpId:I

    .line 31
    iput-boolean p2, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mLlsFlag:Z

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist getLlsFlag()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mLlsFlag:Z

    return v0
.end method

.method public whitelist getPlpId()I
    .registers 2

    .line 36
    iget v0, p0, Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;->mPlpId:I

    return v0
.end method
