.class public Landroid/service/storage/IExternalStorageService$Default;
.super Ljava/lang/Object;
.source "IExternalStorageService.java"

# interfaces
.implements Landroid/service/storage/IExternalStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/storage/IExternalStorageService;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "bytes"    # J
    .param p5, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist notifyAnrDelayStarted(Ljava/lang/String;III)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "deviceFd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "upperPath"    # Ljava/lang/String;
    .param p5, "lowerPath"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
