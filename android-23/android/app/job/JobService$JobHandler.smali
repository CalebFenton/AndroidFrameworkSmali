.class Landroid/app/job/JobService$JobHandler;
.super Landroid/os/Handler;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/job/JobService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 116
    iput-object p1, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    #@2
    .line 117
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 116
    return-void
.end method

.method private ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "workOngoing"    # Z

    #@0
    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    #@3
    move-result-object v0

    #@4
    .line 164
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@7
    move-result v2

    #@8
    .line 165
    .local v2, "jobId":I
    if-eqz v0, :cond_1

    #@a
    .line 167
    :try_start_0
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 162
    :cond_0
    :goto_0
    return-void

    #@e
    .line 168
    :catch_0
    move-exception v1

    #@f
    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "JobService"

    #@12
    const-string/jumbo v4, "System unreachable for starting job."

    #@15
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0

    #@19
    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "JobService"

    #@1c
    const/4 v4, 0x3

    #@1d
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 173
    const-string/jumbo v3, "JobService"

    #@26
    const-string/jumbo v4, "Attempting to ack a job that has already been processed."

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method private ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "reschedule"    # Z

    #@0
    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@7
    move-result v2

    #@8
    .line 181
    .local v2, "jobId":I
    if-eqz v0, :cond_1

    #@a
    .line 183
    :try_start_0
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 178
    :cond_0
    :goto_0
    return-void

    #@e
    .line 184
    :catch_0
    move-exception v1

    #@f
    .line 185
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "JobService"

    #@12
    const-string/jumbo v4, "System unreachable for stopping job."

    #@15
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0

    #@19
    .line 188
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "JobService"

    #@1c
    const/4 v4, 0x3

    #@1d
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 189
    const-string/jumbo v3, "JobService"

    #@26
    const-string/jumbo v4, "Attempting to ack a job that has already been processed."

    #@29
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 122
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v4, Landroid/app/job/JobParameters;

    #@4
    .line 123
    .local v4, "params":Landroid/app/job/JobParameters;
    iget v7, p1, Landroid/os/Message;->what:I

    #@6
    packed-switch v7, :pswitch_data_0

    #@9
    .line 157
    const-string/jumbo v7, "JobService"

    #@c
    const-string/jumbo v8, "Unrecognised message received."

    #@f
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 121
    :goto_0
    return-void

    #@13
    .line 126
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    #@15
    invoke-virtual {v7, v4}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    #@18
    move-result v6

    #@19
    .line 127
    .local v6, "workOngoing":Z
    invoke-direct {p0, v4, v6}, Landroid/app/job/JobService$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    goto :goto_0

    #@1d
    .line 128
    .end local v6    # "workOngoing":Z
    :catch_0
    move-exception v2

    #@1e
    .line 129
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "JobService"

    #@21
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "Error while executing job: "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    #@30
    move-result v9

    #@31
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v8

    #@39
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 130
    new-instance v7, Ljava/lang/RuntimeException;

    #@3e
    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@41
    throw v7

    #@42
    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Landroid/app/job/JobService$JobHandler;->this$0:Landroid/app/job/JobService;

    #@44
    invoke-virtual {v7, v4}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    #@47
    move-result v5

    #@48
    .line 136
    .local v5, "ret":Z
    invoke-direct {p0, v4, v5}, Landroid/app/job/JobService$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@4b
    goto :goto_0

    #@4c
    .line 137
    .end local v5    # "ret":Z
    :catch_1
    move-exception v2

    #@4d
    .line 138
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "JobService"

    #@50
    const-string/jumbo v8, "Application unable to handle onStopJob."

    #@53
    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    .line 139
    new-instance v7, Ljava/lang/RuntimeException;

    #@58
    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@5b
    throw v7

    #@5c
    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@5e
    const/4 v8, 0x1

    #@5f
    if-ne v7, v8, :cond_0

    #@61
    const/4 v3, 0x1

    #@62
    .line 144
    .local v3, "needsReschedule":Z
    :goto_1
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    #@65
    move-result-object v0

    #@66
    .line 145
    .local v0, "callback":Landroid/app/job/IJobCallback;
    if-eqz v0, :cond_1

    #@68
    .line 147
    :try_start_2
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    #@6b
    move-result v7

    #@6c
    invoke-interface {v0, v7, v3}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@6f
    goto :goto_0

    #@70
    .line 148
    :catch_2
    move-exception v1

    #@71
    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "JobService"

    #@74
    const-string/jumbo v8, "Error reporting job finish to system: binder has goneaway."

    #@77
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_0

    #@7b
    .line 143
    .end local v0    # "callback":Landroid/app/job/IJobCallback;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "needsReschedule":Z
    :cond_0
    const/4 v3, 0x0

    #@7c
    .restart local v3    # "needsReschedule":Z
    goto :goto_1

    #@7d
    .line 153
    .restart local v0    # "callback":Landroid/app/job/IJobCallback;
    :cond_1
    const-string/jumbo v7, "JobService"

    #@80
    const-string/jumbo v8, "finishJob() called for a nonexistent job id."

    #@83
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_0

    #@87
    .line 123
    nop

    #@88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
