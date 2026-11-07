.class public Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
.super Ljava/lang/Object;
.source "AnalogFrontendSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAftFlag:I

.field private blacklist mFrequency:J

.field private blacklist mSifStandard:I

.field private blacklist mSignalType:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:J

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    .line 243
    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    .line 244
    iput v0, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mAftFlag:I

    .line 246
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/AnalogFrontendSettings-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;
    .registers 8

    .line 318
    new-instance v0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:J

    iget v3, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    iget v4, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    iget v5, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mAftFlag:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings;-><init>(JIIILandroid/media/tv/tuner/frontend/AnalogFrontendSettings-IA;)V

    return-object v0
.end method

.method public whitelist setAftFlag(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 4
    .param p1, "aftFlag"    # I

    .line 284
    const v0, 0x10001

    const-string/jumbo v1, "setAftFlag"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 286
    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mAftFlag:I

    .line 288
    :cond_e
    return-object p0
.end method

.method public whitelist setFrequency(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 4
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFrequencyLong(J)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 3
    .param p1, "frequency"    # J

    .line 269
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mFrequency:J

    .line 270
    return-object p0
.end method

.method public whitelist setSifStandard(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2
    .param p1, "sifStandard"    # I

    .line 309
    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSifStandard:I

    .line 310
    return-object p0
.end method

.method public whitelist setSignalType(I)Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;
    .registers 2
    .param p1, "signalType"    # I

    .line 298
    iput p1, p0, Landroid/media/tv/tuner/frontend/AnalogFrontendSettings$Builder;->mSignalType:I

    .line 299
    return-object p0
.end method
