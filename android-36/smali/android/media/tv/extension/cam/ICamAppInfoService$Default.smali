.class public Landroid/media/tv/extension/cam/ICamAppInfoService$Default;
.super Ljava/lang/Object;
.source "ICamAppInfoService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamAppInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamAppInfoService;
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
.method public blacklist addCamAppInfoListener(Landroid/media/tv/extension/cam/ICamAppInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/cam/ICamAppInfoListener;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCamAppInfo(ILandroid/os/Bundle;)I
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "appInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeCamAppInfoListener(Landroid/media/tv/extension/cam/ICamAppInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/tv/extension/cam/ICamAppInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
