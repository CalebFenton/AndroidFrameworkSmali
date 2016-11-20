.class Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService$JobHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaybeReadyJobQueueFunctor"
.end annotation


# instance fields
.field backoffCount:I

.field chargingCount:I

.field connectivityCount:I

.field contentCount:I

.field idleCount:I

.field runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@0
    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1138
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->reset()V

    #@8
    .line 1137
    return-void
.end method

.method private reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1206
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    #@3
    .line 1207
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    #@5
    .line 1208
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    #@7
    .line 1209
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    #@9
    .line 1210
    iput v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    #@b
    .line 1211
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@e
    .line 1205
    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 2

    #@0
    .prologue
    .line 1183
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    #@2
    if-gtz v0, :cond_0

    #@4
    .line 1184
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    #@6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@8
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@a
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@c
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_IDLE_COUNT:I

    #@e
    if-lt v0, v1, :cond_2

    #@10
    .line 1193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@12
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@14
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    #@19
    .line 1194
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@1b
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@1d
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@1f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@24
    .line 1202
    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->reset()V

    #@27
    .line 1182
    return-void

    #@28
    .line 1185
    :cond_2
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    #@2a
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2c
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@2e
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@30
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONNECTIVITY_COUNT:I

    #@32
    if-ge v0, v1, :cond_0

    #@34
    .line 1186
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    #@36
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@38
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@3a
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@3c
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CHARGING_COUNT:I

    #@3e
    if-ge v0, v1, :cond_0

    #@40
    .line 1187
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    #@42
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@44
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@46
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@48
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_CONTENT_COUNT:I

    #@4a
    if-ge v0, v1, :cond_0

    #@4c
    .line 1188
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@4e
    if-eqz v0, :cond_1

    #@50
    .line 1189
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@52
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@55
    move-result v0

    #@56
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@58
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@5a
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    #@5c
    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_JOBS_COUNT:I

    #@5e
    if-lt v0, v1, :cond_1

    #@60
    goto :goto_0
.end method

.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 1144
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@3
    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_9

    #@9
    .line 1146
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@10
    move-result v2

    #@11
    .line 1147
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 1146
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getAppStartMode(ILjava/lang/String;)I

    #@20
    move-result v1

    #@21
    if-ne v1, v4, :cond_0

    #@23
    .line 1149
    const-string/jumbo v1, "JobSchedulerService"

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Aborting job "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    const-string/jumbo v3, ":"

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 1150
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 1149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 1150
    const-string/jumbo v3, " -- package not allowed to start"

    #@50
    .line 1149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 1151
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@5d
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@5f
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@61
    const/4 v2, 0x2

    #@62
    invoke-virtual {v1, v2, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 1152
    return-void

    #@6a
    .line 1154
    :catch_0
    move-exception v0

    #@6b
    .line 1156
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    #@6e
    move-result v1

    #@6f
    if-lez v1, :cond_1

    #@71
    .line 1157
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    #@73
    add-int/lit8 v1, v1, 0x1

    #@75
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->backoffCount:I

    #@77
    .line 1159
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@7a
    move-result v1

    #@7b
    if-eqz v1, :cond_2

    #@7d
    .line 1160
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    #@7f
    add-int/lit8 v1, v1, 0x1

    #@81
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->idleCount:I

    #@83
    .line 1162
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@86
    move-result v1

    #@87
    if-nez v1, :cond_3

    #@89
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@8c
    move-result v1

    #@8d
    if-nez v1, :cond_3

    #@8f
    .line 1163
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotRoamingConstraint()Z

    #@92
    move-result v1

    #@93
    .line 1162
    if-eqz v1, :cond_4

    #@95
    .line 1164
    :cond_3
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    #@97
    add-int/lit8 v1, v1, 0x1

    #@99
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->connectivityCount:I

    #@9b
    .line 1166
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@9e
    move-result v1

    #@9f
    if-eqz v1, :cond_5

    #@a1
    .line 1167
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    #@a3
    add-int/lit8 v1, v1, 0x1

    #@a5
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->chargingCount:I

    #@a7
    .line 1169
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_6

    #@ad
    .line 1170
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    #@af
    add-int/lit8 v1, v1, 0x1

    #@b1
    iput v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->contentCount:I

    #@b3
    .line 1172
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@b5
    if-nez v1, :cond_7

    #@b7
    .line 1173
    new-instance v1, Ljava/util/ArrayList;

    #@b9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@bc
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@be
    .line 1175
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    #@c0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c3
    .line 1143
    :cond_8
    :goto_0
    return-void

    #@c4
    .line 1176
    :cond_9
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@c6
    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap0(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    #@c9
    move-result v1

    #@ca
    if-eqz v1, :cond_8

    #@cc
    .line 1177
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$MaybeReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@ce
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@d0
    .line 1178
    const/4 v2, 0x1

    #@d1
    .line 1177
    invoke-static {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService;->-wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;I)Z

    #@d4
    goto :goto_0
.end method
