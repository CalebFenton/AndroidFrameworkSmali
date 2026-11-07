.class public Landroid/media/AudioDevicePort;
.super Landroid/media/AudioPort;
.source "AudioDevicePort.java"


# instance fields
.field private final greylist-max-o mAddress:Ljava/lang/String;

.field private final blacklist mEncapsulationMetadataTypes:[I

.field private final blacklist mEncapsulationModes:[I

.field private final blacklist mSpeakerLayoutChannelMask:I

.field private final greylist-max-o mType:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioHandle;Ljava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;ILjava/lang/String;I[I[ILjava/util/List;)V
    .registers 18
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p4, "gains"    # [Landroid/media/AudioGain;
    .param p5, "type"    # I
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "speakerLayoutChannelMask"    # I
    .param p8, "encapsulationModes"    # [I
    .param p9, "encapsulationMetadataTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;[",
            "Landroid/media/AudioGain;",
            "I",
            "Ljava/lang/String;",
            "I[I[I",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioProfile;>;"
    .local p10, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDescriptor;>;"
    nop

    .line 116
    invoke-static {p5}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x2

    :goto_a
    move v2, v0

    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;Ljava/util/List;)V

    .line 118
    iput p5, p0, Landroid/media/AudioDevicePort;->mType:I

    .line 119
    iput-object p6, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    .line 120
    iput p7, p0, Landroid/media/AudioDevicePort;->mSpeakerLayoutChannelMask:I

    .line 121
    iput-object p8, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    .line 122
    move-object/from16 v5, p9

    iput-object v5, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    .line 123
    return-void
.end method

.method constructor greylist-max-r <init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;[I[I)V
    .registers 21
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "samplingRates"    # [I
    .param p4, "channelMasks"    # [I
    .param p5, "channelIndexMasks"    # [I
    .param p6, "formats"    # [I
    .param p7, "gains"    # [Landroid/media/AudioGain;
    .param p8, "type"    # I
    .param p9, "address"    # Ljava/lang/String;
    .param p10, "encapsulationModes"    # [I
    .param p11, "encapsulationMetadataTypes"    # [I

    .line 93
    nop

    .line 94
    invoke-static/range {p8 .. p8}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 95
    goto :goto_a

    :cond_9
    const/4 v1, 0x2

    :goto_a
    move v2, v1

    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    .line 97
    move/from16 v1, p8

    iput v1, p0, Landroid/media/AudioDevicePort;->mType:I

    .line 98
    move-object/from16 v2, p9

    iput-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    .line 99
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/AudioDevicePort;->mSpeakerLayoutChannelMask:I

    .line 100
    move-object/from16 v3, p10

    iput-object v3, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    .line 101
    move-object/from16 v4, p11

    iput-object v4, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    .line 102
    return-void
.end method

.method public static blacklist createForTesting(I)Landroid/media/AudioDevicePort;
    .registers 12
    .param p0, "speakerLayoutChannelMask"    # I

    .line 69
    new-instance v0, Landroid/media/AudioDevicePort;

    new-instance v1, Landroid/media/AudioHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/AudioHandle;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "testAudioDevicePort"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "testAddress"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v7, p0

    .end local p0    # "speakerLayoutChannelMask":I
    .local v7, "speakerLayoutChannelMask":I
    invoke-direct/range {v0 .. v10}, Landroid/media/AudioDevicePort;-><init>(Landroid/media/AudioHandle;Ljava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;ILjava/lang/String;I[I[ILjava/util/List;)V

    return-object v0
.end method

.method public static blacklist createForTesting(ILjava/lang/String;Ljava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 15
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/media/AudioDevicePort;

    new-instance v1, Landroid/media/AudioHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/AudioHandle;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p0

    move-object v2, p1

    move-object v9, p2

    .end local p0    # "type":I
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "address":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .local v8, "type":I
    .local v9, "address":Ljava/lang/String;
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioDevicePort;-><init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;[I[I)V

    return-object v0
.end method

.method static synthetic blacklist lambda$encapsulationModes$0(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "mode"    # Ljava/lang/Integer;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public greylist-max-o address()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;
    .registers 11
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    .line 192
    new-instance v0, Landroid/media/AudioDevicePortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .end local p1    # "samplingRate":I
    .end local p2    # "channelMask":I
    .end local p3    # "format":I
    .end local p4    # "gain":Landroid/media/AudioGainConfig;
    .local v2, "samplingRate":I
    .local v3, "channelMask":I
    .local v4, "format":I
    .local v5, "gain":Landroid/media/AudioGainConfig;
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public bridge synthetic blacklist buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist encapsulationMetadataTypes()[I
    .registers 5

    .line 177
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 178
    new-array v0, v1, [I

    return-object v0

    .line 180
    :cond_8
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 181
    .local v0, "encapsulationMetadataTypes":[I
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    iget-object v3, p0, Landroid/media/AudioDevicePort;->mEncapsulationMetadataTypes:[I

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object v0
.end method

.method public blacklist encapsulationModes()[I
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    if-nez v0, :cond_8

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 168
    :cond_8
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mEncapsulationModes:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDevicePort$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioDevicePort$$ExternalSyntheticLambda0;-><init>()V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 170
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    instance-of v1, p1, Landroid/media/AudioDevicePort;

    if-nez v1, :cond_8

    goto :goto_31

    .line 200
    :cond_8
    move-object v1, p1

    check-cast v1, Landroid/media/AudioDevicePort;

    .line 201
    .local v1, "other":Landroid/media/AudioDevicePort;
    iget v2, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 202
    return v0

    .line 204
    :cond_14
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 205
    return v0

    .line 207
    :cond_1f
    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 208
    return v0

    .line 210
    :cond_2c
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 198
    .end local v1    # "other":Landroid/media/AudioDevicePort;
    :cond_31
    :goto_31
    return v0
.end method

.method public blacklist isSameAs(Landroid/media/AudioDevicePort;)Z
    .registers 5
    .param p1, "other"    # Landroid/media/AudioDevicePort;

    .line 222
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-virtual {p1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 223
    return v2

    .line 225
    :cond_a
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 226
    return v2

    .line 228
    :cond_15
    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 229
    return v2

    .line 231
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist speakerLayoutChannelMask()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/media/AudioDevicePort;->mSpeakerLayoutChannelMask:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 236
    iget v0, p0, Landroid/media/AudioDevicePort;->mRole:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 237
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 238
    :cond_c
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    nop

    .line 239
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/media/AudioPort;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDevicePort;->mType:I

    iget-object v3, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    .line 241
    invoke-static {v2, v3}, Landroid/media/Utils;->anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    return-object v1
.end method

.method public greylist type()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    return v0
.end method
