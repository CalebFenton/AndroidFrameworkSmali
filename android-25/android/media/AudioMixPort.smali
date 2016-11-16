.class public Landroid/media/AudioMixPort;
.super Landroid/media/AudioPort;
.source "AudioMixPort.java"


# instance fields
.field private final mIoHandle:I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;IILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 9
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "ioHandle"    # I
    .param p3, "role"    # I
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "samplingRates"    # [I
    .param p6, "channelMasks"    # [I
    .param p7, "channelIndexMasks"    # [I
    .param p8, "formats"    # [I
    .param p9, "gains"    # [Landroid/media/AudioGain;

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move v2, p3

    #@3
    move-object v3, p4

    #@4
    move-object v4, p5

    #@5
    move-object v5, p6

    #@6
    move-object/from16 v6, p7

    #@8
    move-object/from16 v7, p8

    #@a
    move-object/from16 v8, p9

    #@c
    .line 36
    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    #@f
    .line 38
    iput p2, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    #@11
    .line 35
    return-void
.end method


# virtual methods
.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;
    .locals 6
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/media/AudioMixPortConfig;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioMixPortConfig;-><init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V

    #@a
    return-object v0
.end method

.method public bridge synthetic buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 1
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioMixPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 59
    if-eqz p1, :cond_0

    #@3
    instance-of v1, p1, Landroid/media/AudioMixPort;

    #@5
    if-eqz v1, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 62
    check-cast v0, Landroid/media/AudioMixPort;

    #@a
    .line 63
    .local v0, "other":Landroid/media/AudioMixPort;
    iget v1, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    #@c
    invoke-virtual {v0}, Landroid/media/AudioMixPort;->ioHandle()I

    #@f
    move-result v2

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 64
    return v3

    #@13
    .line 60
    .end local v0    # "other":Landroid/media/AudioMixPort;
    :cond_0
    return v3

    #@14
    .line 67
    .restart local v0    # "other":Landroid/media/AudioMixPort;
    :cond_1
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public ioHandle()I
    .locals 1

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    #@2
    return v0
.end method
