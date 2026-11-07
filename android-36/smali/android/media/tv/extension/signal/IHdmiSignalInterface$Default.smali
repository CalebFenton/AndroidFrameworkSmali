.class public Landroid/media/tv/extension/signal/IHdmiSignalInterface$Default;
.super Ljava/lang/Object;
.source "IHdmiSignalInterface.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IHdmiSignalInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IHdmiSignalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addHdmiSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHdmiSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeHdmiSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;)V
    .registers 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist setForceVrr(Ljava/lang/String;I)V
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setLowLatency(Ljava/lang/String;I)V
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
