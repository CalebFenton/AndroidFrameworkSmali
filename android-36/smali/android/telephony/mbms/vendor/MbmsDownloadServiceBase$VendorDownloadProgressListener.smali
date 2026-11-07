.class abstract Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;
.super Landroid/telephony/mbms/DownloadProgressListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VendorDownloadProgressListener"
.end annotation


# instance fields
.field private final greylist-max-o mListener:Landroid/telephony/mbms/IDownloadProgressListener;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/IDownloadProgressListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;

    .line 76
    invoke-direct {p0}, Landroid/telephony/mbms/DownloadProgressListener;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 14
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->mListener:Landroid/telephony/mbms/IDownloadProgressListener;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    .end local p3    # "currentDownloadSize":I
    .end local p4    # "fullDownloadSize":I
    .end local p5    # "currentDecodedSize":I
    .end local p6    # "fullDecodedSize":I
    .local v1, "request":Landroid/telephony/mbms/DownloadRequest;
    .local v2, "fileInfo":Landroid/telephony/mbms/FileInfo;
    .local v3, "currentDownloadSize":I
    .local v4, "fullDownloadSize":I
    .local v5, "currentDecodedSize":I
    .local v6, "fullDecodedSize":I
    :try_start_8
    invoke-interface/range {v0 .. v6}, Landroid/telephony/mbms/IDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 89
    goto :goto_1a

    .line 87
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .end local v1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local v2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    .end local v3    # "currentDownloadSize":I
    .end local v4    # "fullDownloadSize":I
    .end local v5    # "currentDecodedSize":I
    .end local v6    # "fullDecodedSize":I
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    .restart local p3    # "currentDownloadSize":I
    .restart local p4    # "fullDownloadSize":I
    .restart local p5    # "currentDecodedSize":I
    .restart local p6    # "fullDecodedSize":I
    :catch_f
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object p1, v0

    .line 88
    .end local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    .end local p3    # "currentDownloadSize":I
    .end local p4    # "fullDownloadSize":I
    .end local p5    # "currentDecodedSize":I
    .end local p6    # "fullDecodedSize":I
    .restart local v1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local v2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    .restart local v3    # "currentDownloadSize":I
    .restart local v4    # "fullDownloadSize":I
    .restart local v5    # "currentDecodedSize":I
    .restart local v6    # "fullDecodedSize":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_17
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;->onRemoteException(Landroid/os/RemoteException;)V

    .line 90
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method protected abstract greylist-max-o onRemoteException(Landroid/os/RemoteException;)V
.end method
