.class Lcom/android/server/job/JobSchedulerService$LocalService$1;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService$LocalService;->getSystemScheduledPendingJobs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobSchedulerService$LocalService;

.field final synthetic val$pendingJobs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService$LocalService;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/JobSchedulerService$LocalService;

    #@0
    .prologue
    .line 1472
    .local p2, "val$pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->this$1:Lcom/android/server/job/JobSchedulerService$LocalService;

    #@2
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->val$pendingJobs:Ljava/util/List;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 1475
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->this$1:Lcom/android/server/job/JobSchedulerService$LocalService;

    #@c
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$LocalService;->this$0:Lcom/android/server/job/JobSchedulerService;

    #@e
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1474
    :goto_0
    return-void

    #@15
    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService$1;->val$pendingJobs:Ljava/util/List;

    #@17
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0
.end method
