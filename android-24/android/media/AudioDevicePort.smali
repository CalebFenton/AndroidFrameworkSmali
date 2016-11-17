.class public Landroid/media/AudioDevicePort;
.super Landroid/media/AudioPort;
.source "AudioDevicePort.java"


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;)V
    .locals 10
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "samplingRates"    # [I
    .param p4, "channelMasks"    # [I
    .param p5, "channelIndexMasks"    # [I
    .param p6, "formats"    # [I
    .param p7, "gains"    # [Landroid/media/AudioGain;
    .param p8, "type"    # I
    .param p9, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-static/range {p8 .. p8}, Landroid/media/AudioManager;->isInputDevice(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 44
    const/4 v3, 0x1

    #@7
    :goto_0
    move-object v1, p0

    #@8
    move-object v2, p1

    #@9
    move-object v4, p2

    #@a
    move-object v5, p3

    #@b
    move-object v6, p4

    #@c
    move-object v7, p5

    #@d
    move-object/from16 v8, p6

    #@f
    move-object/from16 v9, p7

    #@11
    .line 42
    invoke-direct/range {v1 .. v9}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    #@14
    .line 46
    move/from16 v0, p8

    #@16
    iput v0, p0, Landroid/media/AudioDevicePort;->mType:I

    #@18
    .line 47
    move-object/from16 v0, p9

    #@1a
    iput-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    #@1c
    .line 41
    return-void

    #@1d
    .line 44
    :cond_0
    const/4 v3, 0x2

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public address()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;
    .locals 6
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 78
    new-instance v0, Landroid/media/AudioDevicePortConfig;

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
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

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
    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

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
    .line 83
    if-eqz p1, :cond_0

    #@3
    instance-of v1, p1, Landroid/media/AudioDevicePort;

    #@5
    if-eqz v1, :cond_0

    #@7
    move-object v0, p1

    #@8
    .line 86
    check-cast v0, Landroid/media/AudioDevicePort;

    #@a
    .line 87
    .local v0, "other":Landroid/media/AudioDevicePort;
    iget v1, p0, Landroid/media/AudioDevicePort;->mType:I

    #@c
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    #@f
    move-result v2

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 88
    return v3

    #@13
    .line 84
    .end local v0    # "other":Landroid/media/AudioDevicePort;
    :cond_0
    return v3

    #@14
    .line 90
    .restart local v0    # "other":Landroid/media/AudioDevicePort;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    #@16
    if-nez v1, :cond_2

    #@18
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 91
    return v3

    #@1f
    .line 93
    :cond_2
    iget-object v1, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    #@21
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 94
    return v3

    #@2c
    .line 96
    :cond_3
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 101
    iget v1, p0, Landroid/media/AudioDevicePort;->mRole:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 102
    iget v1, p0, Landroid/media/AudioDevicePort;->mType:I

    #@7
    invoke-static {v1}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 104
    .local v0, "type":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "{"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-super {p0}, Landroid/media/AudioPort;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 105
    const-string/jumbo v2, ", mType: "

    #@22
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 106
    const-string/jumbo v2, ", mAddress: "

    #@2d
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 106
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    #@33
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 107
    const-string/jumbo v2, "}"

    #@3a
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1

    #@43
    .line 103
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    iget v1, p0, Landroid/media/AudioDevicePort;->mType:I

    #@45
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public type()I
    .locals 1

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    #@2
    return v0
.end method
