.class public interface abstract Landroid/telephony/mbms/IDownloadStatusListener;
.super Ljava/lang/Object;
.source "IDownloadStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IDownloadStatusListener$Stub;,
        Landroid/telephony/mbms/IDownloadStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
