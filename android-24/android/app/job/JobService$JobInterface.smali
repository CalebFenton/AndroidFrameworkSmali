.class final Landroid/app/job/JobService$JobInterface;
.super Landroid/app/job/IJobService$Stub;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobInterface"
.end annotation


# instance fields
.field final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/job/JobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/job/JobService;)V
    .locals 1
    .param p1, "service"    # Landroid/app/job/JobService;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    #@3
    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/job/JobService$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    #@a
    .line 90
    return-void
.end method


# virtual methods
.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 4
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v2, p0, Landroid/app/job/JobService$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/job/JobService;

    #@8
    .line 97
    .local v1, "service":Landroid/app/job/JobService;
    if-eqz v1, :cond_0

    #@a
    .line 98
    invoke-virtual {v1}, Landroid/app/job/JobService;->ensureHandler()V

    #@d
    .line 99
    iget-object v2, v1, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 100
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 95
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 4
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v2, p0, Landroid/app/job/JobService$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/app/job/JobService;

    #@8
    .line 107
    .local v1, "service":Landroid/app/job/JobService;
    if-eqz v1, :cond_0

    #@a
    .line 108
    invoke-virtual {v1}, Landroid/app/job/JobService;->ensureHandler()V

    #@d
    .line 109
    iget-object v2, v1, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@f
    const/4 v3, 0x1

    #@10
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v0

    #@14
    .line 110
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 105
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
