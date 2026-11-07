.class public Landroid/media/tv/ITvInputHardware$Default;
.super Ljava/lang/Object;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist overrideAudioSink(ILjava/lang/String;III)V
    .registers 6
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setStreamVolume(F)V
    .registers 2
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method
