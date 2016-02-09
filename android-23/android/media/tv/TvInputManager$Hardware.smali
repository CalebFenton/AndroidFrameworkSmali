.class public final Landroid/media/tv/TvInputManager$Hardware;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hardware"
.end annotation


# instance fields
.field private final mInterface:Landroid/media/tv/ITvInputHardware;


# direct methods
.method static synthetic -wrap0(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Hardware;->getInterface()Landroid/media/tv/ITvInputHardware;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Landroid/media/tv/ITvInputHardware;)V
    .locals 0
    .param p1, "hardwareInterface"    # Landroid/media/tv/ITvInputHardware;

    #@0
    .prologue
    .line 2140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2141
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    #@5
    .line 2140
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware;)V
    .locals 0
    .param p1, "hardwareInterface"    # Landroid/media/tv/ITvInputHardware;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;)V

    #@3
    return-void
.end method

.method private getInterface()Landroid/media/tv/ITvInputHardware;
    .locals 1

    #@0
    .prologue
    .line 2145
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    #@2
    return-object v0
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 2166
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputHardware;->dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2167
    :catch_0
    move-exception v0

    #@8
    .line 2168
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .locals 7
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    #@0
    .prologue
    .line 2175
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 2173
    return-void

    #@b
    .line 2177
    :catch_0
    move-exception v6

    #@c
    .line 2178
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v0
.end method

.method public setStreamVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 2158
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    #@2
    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputHardware;->setStreamVolume(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2156
    return-void

    #@6
    .line 2159
    :catch_0
    move-exception v0

    #@7
    .line 2160
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@c
    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    .line 2150
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/tv/ITvInputHardware;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 2151
    :catch_0
    move-exception v0

    #@8
    .line 2152
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method
