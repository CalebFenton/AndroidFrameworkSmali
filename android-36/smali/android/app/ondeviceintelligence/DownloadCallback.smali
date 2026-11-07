.class public interface abstract Landroid/app/ondeviceintelligence/DownloadCallback;
.super Ljava/lang/Object;
.source "DownloadCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/DownloadCallback$DownloadFailureStatus;
    }
.end annotation


# static fields
.field public static final whitelist DOWNLOAD_FAILURE_STATUS_DOWNLOADING:I = 0x3

.field public static final whitelist DOWNLOAD_FAILURE_STATUS_NETWORK_FAILURE:I = 0x2

.field public static final whitelist DOWNLOAD_FAILURE_STATUS_NOT_ENOUGH_DISK_SPACE:I = 0x1

.field public static final whitelist DOWNLOAD_FAILURE_STATUS_UNAVAILABLE:I = 0x4

.field public static final whitelist DOWNLOAD_FAILURE_STATUS_UNKNOWN:I


# virtual methods
.method public abstract whitelist onDownloadCompleted(Landroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
.end method

.method public whitelist onDownloadProgress(J)V
    .registers 3
    .param p1, "totalBytesDownloaded"    # J

    .line 104
    return-void
.end method

.method public whitelist onDownloadStarted(J)V
    .registers 3
    .param p1, "bytesToDownload"    # J

    .line 85
    return-void
.end method
