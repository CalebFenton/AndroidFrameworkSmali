.class public final Landroid/media/tv/TvInputManager$Hardware;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hardware"
.end annotation


# instance fields
.field private final greylist-max-o mInterface:Landroid/media/tv/ITvInputHardware;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetInterface(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Hardware;->getInterface()Landroid/media/tv/ITvInputHardware;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/media/tv/ITvInputHardware;)V
    .registers 2
    .param p1, "hardwareInterface"    # Landroid/media/tv/ITvInputHardware;

    .line 4219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4220
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    .line 4221
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;)V

    return-void
.end method

.method private greylist-max-o getInterface()Landroid/media/tv/ITvInputHardware;
    .registers 2

    .line 4224
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-object v0
.end method


# virtual methods
.method public greylist dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4246
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist overrideAudioSink(ILjava/lang/String;III)V
    .registers 12
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .line 4262
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "audioType":I
    .end local p2    # "audioAddress":Ljava/lang/String;
    .end local p3    # "samplingRate":I
    .end local p4    # "channelMask":I
    .end local p5    # "format":I
    .local v1, "audioType":I
    .local v2, "audioAddress":Ljava/lang/String;
    .local v3, "samplingRate":I
    .local v4, "channelMask":I
    .local v5, "format":I
    :try_start_7
    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 4266
    nop

    .line 4267
    return-void

    .line 4264
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "audioType":I
    .end local v2    # "audioAddress":Ljava/lang/String;
    .end local v3    # "samplingRate":I
    .end local v4    # "channelMask":I
    .end local v5    # "format":I
    .restart local p1    # "audioType":I
    .restart local p2    # "audioAddress":Ljava/lang/String;
    .restart local p3    # "samplingRate":I
    .restart local p4    # "channelMask":I
    .restart local p5    # "format":I
    :catch_f
    move-exception v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 4265
    .end local p2    # "audioAddress":Ljava/lang/String;
    .end local p3    # "samplingRate":I
    .end local p4    # "channelMask":I
    .end local p5    # "format":I
    .restart local v1    # "audioType":I
    .restart local v2    # "audioAddress":Ljava/lang/String;
    .restart local v3    # "samplingRate":I
    .restart local v4    # "channelMask":I
    .restart local v5    # "format":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist overrideAudioSink(Landroid/media/AudioDeviceInfo;III)V
    .registers 11
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I

    .line 4281
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4283
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    .line 4284
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    .line 4285
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_1c

    .line 4283
    move v3, p2

    move v4, p3

    move v5, p4

    .end local p2    # "samplingRate":I
    .end local p3    # "channelMask":I
    .end local p4    # "format":I
    .local v3, "samplingRate":I
    .local v4, "channelMask":I
    .local v5, "format":I
    :try_start_14
    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    .line 4288
    nop

    .line 4289
    return-void

    .line 4286
    :catch_19
    move-exception v0

    move-object p2, v0

    goto :goto_21

    .end local v3    # "samplingRate":I
    .end local v4    # "channelMask":I
    .end local v5    # "format":I
    .restart local p2    # "samplingRate":I
    .restart local p3    # "channelMask":I
    .restart local p4    # "format":I
    :catch_1c
    move-exception v0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object p2, v0

    .line 4287
    .end local p3    # "channelMask":I
    .end local p4    # "format":I
    .restart local v3    # "samplingRate":I
    .restart local v4    # "channelMask":I
    .restart local v5    # "format":I
    .local p2, "e":Landroid/os/RemoteException;
    :goto_21
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p3
.end method

.method public whitelist setStreamVolume(F)V
    .registers 4
    .param p1, "volume"    # F

    .line 4237
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputHardware;->setStreamVolume(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 4240
    nop

    .line 4241
    return-void

    .line 4238
    :catch_7
    move-exception v0

    .line 4239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .line 4229
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputHardware;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 4230
    :catch_7
    move-exception v0

    .line 4231
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
