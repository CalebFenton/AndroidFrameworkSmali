.class Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;
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
    name = "ReadyJobQueueFunctor"
.end annotation


# instance fields
.field newReadyJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$JobHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@0
    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public postProcess()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1111
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1112
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@7
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@9
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobsPending(Ljava/util/List;)V

    #@e
    .line 1113
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@10
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@12
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    #@14
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@19
    .line 1115
    :cond_0
    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@1b
    .line 1110
    return-void
.end method

.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap1(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 1100
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@13
    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->newReadyJobs:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 1095
    :cond_1
    :goto_0
    return-void

    #@19
    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@1b
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->-wrap0(Lcom/android/server/job/JobSchedulerService$JobHandler;Lcom/android/server/job/controllers/JobStatus;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 1105
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler$ReadyJobQueueFunctor;->this$1:Lcom/android/server/job/JobSchedulerService$JobHandler;

    #@23
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@25
    .line 1106
    const/4 v1, 0x1

    #@26
    .line 1105
    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->-wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;I)Z

    #@29
    goto :goto_0
.end method
