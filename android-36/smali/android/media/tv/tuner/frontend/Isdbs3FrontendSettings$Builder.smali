.class public Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
.super Ljava/lang/Object;
.source "Isdbs3FrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
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

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:J

    .line 224
    const v0, 0xffff

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    .line 226
    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    .line 227
    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    .line 228
    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    .line 229
    iput v0, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    .line 232
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;
    .registers 11

    .line 325
    new-instance v0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    iget v6, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    iget v7, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    iget v8, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings;-><init>(JIIIIIILandroid/media/tv/tuner/frontend/Isdbs3FrontendSettings-IA;)V

    return-object v0
.end method

.method public whitelist setCodeRate(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2
    .param p1, "codeRate"    # I

    .line 296
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mCodeRate:I

    .line 297
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 255
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mFrequency:J

    .line 256
    return-object p0
.end method

.method public whitelist setModulation(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2
    .param p1, "modulation"    # I

    .line 286
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mModulation:I

    .line 287
    return-object p0
.end method

.method public whitelist setRolloff(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2
    .param p1, "rolloff"    # I

    .line 316
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mRolloff:I

    .line 317
    return-object p0
.end method

.method public whitelist setStreamId(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2
    .param p1, "streamId"    # I

    .line 266
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamId:I

    .line 267
    return-object p0
.end method

.method public whitelist setStreamIdType(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2
    .param p1, "streamIdType"    # I

    .line 276
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mStreamIdType:I

    .line 277
    return-object p0
.end method

.method public whitelist setSymbolRate(I)Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;
    .registers 2
    .param p1, "symbolRate"    # I

    .line 306
    iput p1, p0, Landroid/media/tv/tuner/frontend/Isdbs3FrontendSettings$Builder;->mSymbolRate:I

    .line 307
    return-object p0
.end method
