.class public Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Default;
.super Ljava/lang/Object;
.source "IScanBackgroundServiceUpdateListener.java"

# interfaces
.implements Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onChannelListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "updateInfos"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onNetworkListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "updateInfos"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onTransportStreamingListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "updateInfos"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
