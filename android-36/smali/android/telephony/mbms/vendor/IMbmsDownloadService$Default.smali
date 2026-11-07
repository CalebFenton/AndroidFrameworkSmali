.class public Landroid/telephony/mbms/vendor/IMbmsDownloadService$Default;
.super Ljava/lang/Object;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService;
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
.method public blacklist addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .registers 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addServiceAnnouncement(I[B)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .registers 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 3
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispose(I)V
    .registers 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist download(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 3
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listPendingDownloads(I)Ljava/util/List;
    .registers 3
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .registers 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .registers 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .registers 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestUpdateFileServices(ILjava/util/List;)I
    .registers 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    .local p2, "serviceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .registers 3
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTempFileRootDirectory(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "rootDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method
