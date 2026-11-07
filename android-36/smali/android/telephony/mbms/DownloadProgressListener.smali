.class public Landroid/telephony/mbms/DownloadProgressListener;
.super Ljava/lang/Object;
.source "DownloadProgressListener.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 7
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .param p3, "currentDownloadSize"    # I
    .param p4, "fullDownloadSize"    # I
    .param p5, "currentDecodedSize"    # I
    .param p6, "fullDecodedSize"    # I

    .line 47
    return-void
.end method
