.class public Landroid/service/media/IMediaBrowserService$Default;
.super Ljava/lang/Object;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/ResultReceiver;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
