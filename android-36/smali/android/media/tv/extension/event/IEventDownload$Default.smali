.class public Landroid/media/tv/extension/event/IEventDownload$Default;
.super Ljava/lang/Object;
.source "IEventDownload.java"

# interfaces
.implements Landroid/media/tv/extension/event/IEventDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/event/IEventDownload;
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

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(Landroid/os/Bundle;Landroid/media/tv/extension/event/IEventDownloadListener;)Landroid/os/IBinder;
    .registers 4
    .param p1, "eventDownloadParams"    # Landroid/os/Bundle;
    .param p2, "listener"    # Landroid/media/tv/extension/event/IEventDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
