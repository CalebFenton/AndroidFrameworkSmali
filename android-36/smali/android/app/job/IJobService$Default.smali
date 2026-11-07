.class public Landroid/app/job/IJobService$Default;
.super Ljava/lang/Object;
.source "IJobService.java"

# interfaces
.implements Landroid/app/job/IJobService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .registers 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "jobWorkItem"    # Landroid/app/job/JobWorkItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .registers 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "jobWorkItem"    # Landroid/app/job/JobWorkItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 2
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist startJob(Landroid/app/job/JobParameters;)V
    .registers 2
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist stopJob(Landroid/app/job/JobParameters;)V
    .registers 2
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
