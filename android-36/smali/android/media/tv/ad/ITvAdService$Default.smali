.class public Landroid/media/tv/ad/ITvAdService$Default;
.super Ljava/lang/Object;
.source "ITvAdService.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdService;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Landroid/media/tv/ad/ITvAdSessionCallback;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/tv/ad/ITvAdServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist sendAppLinkCommand(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "command"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/tv/ad/ITvAdServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
