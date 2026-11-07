.class public Landroid/media/tv/extension/cam/ICamHostControlService$Default;
.super Ljava/lang/Object;
.source "ICamHostControlService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamHostControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamHostControlService;
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
.method public blacklist addCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
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

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/cam/ICamHostControlInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist sendCamHostControlAskRelease(Ljava/lang/String;Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;)I
    .registers 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setHostControlMode(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method
