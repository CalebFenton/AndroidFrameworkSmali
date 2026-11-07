.class public Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "IsdbsFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCodeRate:I

.field private blacklist mFrequency:J

.field private blacklist mModulation:I

.field private blacklist mRolloff:I

.field private blacklist mStreamId:I

.field private blacklist mStreamIdType:I

.field private blacklist mSymbolRate:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mFrequency:J

    .line 209
    const v0, 0xffff

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamId:I

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamIdType:I

    .line 211
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mModulation:I

    .line 212
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mCodeRate:I

    .line 213
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mSymbolRate:I

    .line 214
    iput v0, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mRolloff:I

    .line 217
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;
    .registers 11

    .line 310
    new-instance v0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamId:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamIdType:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mModulation:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mCodeRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mSymbolRate:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mRolloff:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings;-><init>(JIIIIIILandroid/media/tv/tuner/frontend/IsdbsFrontendSettings-IA;)V

    return-object v0
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2
    .param p1, "codeRate"    # I

    .line 281
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mCodeRate:I

    .line 282
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 240
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mFrequency:J

    .line 241
    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2
    .param p1, "modulation"    # I

    .line 271
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mModulation:I

    .line 272
    return-object p0
.end method

.method public whitelist setRolloff(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2
    .param p1, "rolloff"    # I

    .line 301
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mRolloff:I

    .line 302
    return-object p0
.end method

.method public whitelist setStreamId(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2
    .param p1, "streamId"    # I

    .line 251
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamId:I

    .line 252
    return-object p0
.end method

.method public whitelist setStreamIdType(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2
    .param p1, "streamIdType"    # I

    .line 261
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mStreamIdType:I

    .line 262
    return-object p0
.end method

.method public whitelist setSymbolRate(I)Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;
    .registers 2
    .param p1, "symbolRate"    # I

    .line 291
    iput p1, p0, Landroid/media/tv/tuner/frontend/IsdbsFrontendSettings$Builder;->mSymbolRate:I

    .line 292
    return-object p0
.end method
