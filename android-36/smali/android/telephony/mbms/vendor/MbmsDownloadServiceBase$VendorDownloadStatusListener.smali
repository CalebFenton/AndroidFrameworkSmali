.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;
.super Landroid/telephony/mbms/DownloadStatusListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadStatusListener"
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/telephony/mbms/IDownloadStatusListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/IDownloadStatusListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;

    .line 56
    invoke-direct {p0}, Landroid/telephony/mbms/DownloadStatusListener;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->mListener:Landroid/telephony/mbms/IDownloadStatusListener;

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o onRemoteException(Landroid/os/RemoteException;)V
.end method

.method public whitelist onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "state"    # I

    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->mListener:Landroid/telephony/mbms/IDownloadStatusListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/mbms/IDownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 67
    goto :goto_a

    .line 65
    :catch_6
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;->onRemoteException(Landroid/os/RemoteException;)V

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
