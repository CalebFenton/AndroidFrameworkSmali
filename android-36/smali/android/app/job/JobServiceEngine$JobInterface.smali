.class final Landroid/app/job/JobServiceEngine$JobInterface;
.super Landroid/app/job/IJobService$Stub;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobInterface"
.end annotation


# instance fields
.field final greylist-max-o mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/job/JobServiceEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/job/JobServiceEngine;)V
    .registers 3
    .param p1, "service"    # Landroid/app/job/JobServiceEngine;

    .line 93
    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method


# virtual methods
.method public blacklist getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .registers 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "jobWorkItem"    # Landroid/app/job/JobWorkItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 101
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_1c

    .line 102
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 103
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 104
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 105
    iget-object v2, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 108
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_1c
    return-void
.end method

.method public blacklist getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .registers 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "jobWorkItem"    # Landroid/app/job/JobWorkItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 114
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_1c

    .line 115
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 116
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 117
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 118
    iget-object v2, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 121
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_1c
    return-void
.end method

.method public blacklist onNetworkChanged(Landroid/app/job/JobParameters;)V
    .registers 5
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 135
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_1a

    .line 136
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/job/JobServiceEngine$JobHandler;->removeMessages(I)V

    .line 137
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {v1, v2, p1}, Landroid/app/job/JobServiceEngine$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_1a
    return-void
.end method

.method public greylist-max-o startJob(Landroid/app/job/JobParameters;)V
    .registers 5
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 126
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_14

    .line 127
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 128
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 130
    .end local v1    # "m":Landroid/os/Message;
    :cond_14
    return-void
.end method

.method public greylist-max-o stopJob(Landroid/app/job/JobParameters;)V
    .registers 5
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/app/job/JobServiceEngine$JobInterface;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobServiceEngine;

    .line 145
    .local v0, "service":Landroid/app/job/JobServiceEngine;
    if-eqz v0, :cond_14

    .line 146
    iget-object v1, v0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .end local v1    # "m":Landroid/os/Message;
    :cond_14
    return-void
.end method
