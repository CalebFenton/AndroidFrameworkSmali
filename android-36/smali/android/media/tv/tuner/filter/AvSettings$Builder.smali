.class public Landroid/media/tv/tuner/filter/AvSettings$Builder;
.super Ljava/lang/Object;
.source "AvSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/AvSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioStreamType:I

.field private final blacklist mIsAudio:Z

.field private blacklist mIsPassthrough:Z

.field private final blacklist mMainType:I

.field blacklist mUseSecureMemory:Z

.field private blacklist mVideoStreamType:I


# direct methods
.method private constructor blacklist <init>(IZ)V
    .registers 4
    .param p1, "mainType"    # I
    .param p2, "isAudio"    # Z

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    .line 296
    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    .line 297
    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    .line 298
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mUseSecureMemory:Z

    .line 301
    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mMainType:I

    .line 302
    iput-boolean p2, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    .line 303
    return-void
.end method

.method synthetic constructor blacklist <init>(IZLandroid/media/tv/tuner/filter/AvSettings-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/AvSettings$Builder;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/filter/AvSettings;
    .registers 9

    .line 378
    new-instance v0, Landroid/media/tv/tuner/filter/AvSettings;

    iget v1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mMainType:I

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    iget v4, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    iget v5, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    iget-boolean v6, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mUseSecureMemory:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/media/tv/tuner/filter/AvSettings;-><init>(IZZIIZLandroid/media/tv/tuner/filter/AvSettings-IA;)V

    return-object v0
.end method

.method public whitelist setAudioStreamType(I)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 4
    .param p1, "audioStreamType"    # I

    .line 328
    const v0, 0x10001

    const-string/jumbo v1, "setAudioStreamType"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    if-eqz v0, :cond_15

    .line 330
    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    .line 333
    :cond_15
    return-object p0
.end method

.method public whitelist setPassthrough(Z)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 2
    .param p1, "isPassthrough"    # Z

    .line 312
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsPassthrough:Z

    .line 313
    return-object p0
.end method

.method public whitelist setUseSecureMemory(Z)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 4
    .param p1, "useSecureMemory"    # Z

    .line 366
    const/high16 v0, 0x20000

    const-string/jumbo v1, "setSecureMemory"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mUseSecureMemory:Z

    .line 370
    :cond_d
    return-object p0
.end method

.method public whitelist setVideoStreamType(I)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 4
    .param p1, "videoStreamType"    # I

    .line 348
    const v0, 0x10001

    const-string/jumbo v1, "setVideoStreamType"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mIsAudio:Z

    if-nez v0, :cond_15

    .line 350
    iput p1, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mVideoStreamType:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings$Builder;->mAudioStreamType:I

    .line 353
    :cond_15
    return-object p0
.end method
