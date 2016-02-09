.class public Landroid/media/AudioDevicePortConfig;
.super Landroid/media/AudioPortConfig;
.source "AudioDevicePortConfig.java"


# direct methods
.method constructor <init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V
    .locals 0
    .param p1, "devicePort"    # Landroid/media/AudioDevicePort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    #@3
    .line 30
    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePortConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/media/AudioDevicePortConfig;

    #@0
    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->samplingRate()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->channelMask()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->format()I

    #@f
    move-result v4

    #@10
    .line 36
    invoke-virtual {p1}, Landroid/media/AudioDevicePortConfig;->gain()Landroid/media/AudioGainConfig;

    #@13
    move-result-object v5

    #@14
    move-object v0, p0

    #@15
    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    #@18
    .line 34
    return-void
.end method


# virtual methods
.method public port()Landroid/media/AudioDevicePort;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/AudioDevicePortConfig;->mPort:Landroid/media/AudioPort;

    #@2
    check-cast v0, Landroid/media/AudioDevicePort;

    #@4
    return-object v0
.end method

.method public bridge synthetic port()Landroid/media/AudioPort;
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/media/AudioDevicePortConfig;->port()Landroid/media/AudioDevicePort;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
