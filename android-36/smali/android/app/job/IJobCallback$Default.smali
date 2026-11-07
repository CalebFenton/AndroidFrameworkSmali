.class public Landroid/app/job/IJobCallback$Default;
.super Ljava/lang/Object;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    .registers 5
    .param p1, "jobId"    # I
    .param p2, "workId"    # I
    .param p3, "transferredBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    .registers 5
    .param p1, "jobId"    # I
    .param p2, "workId"    # I
    .param p3, "transferredBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist acknowledgeStartMessage(IZ)V
    .registers 3
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist acknowledgeStopMessage(IZ)V
    .registers 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist completeWork(II)Z
    .registers 4
    .param p1, "jobId"    # I
    .param p2, "workId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dequeueWork(I)Landroid/app/job/JobWorkItem;
    .registers 3
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleAbandonedJob(I)V
    .registers 2
    .param p1, "jobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist jobFinished(IZ)V
    .registers 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist setNotification(IILandroid/app/Notification;I)V
    .registers 5
    .param p1, "jobId"    # I
    .param p2, "notificationId"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "jobEndNotificationPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    return-void
.end method

.method public blacklist updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .registers 7
    .param p1, "jobId"    # I
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "downloadBytes"    # J
    .param p5, "uploadBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .registers 7
    .param p1, "jobId"    # I
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "transferredDownloadBytes"    # J
    .param p5, "transferredUploadBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method
