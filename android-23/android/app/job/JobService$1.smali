.class Landroid/app/job/JobService$1;
.super Landroid/app/job/IJobService$Stub;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/job/JobService;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    #@2
    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    #@2
    invoke-virtual {v1}, Landroid/app/job/JobService;->ensureHandler()V

    #@5
    .line 90
    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    #@7
    iget-object v1, v1, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 91
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 88
    return-void
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 95
    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    #@2
    invoke-virtual {v1}, Landroid/app/job/JobService;->ensureHandler()V

    #@5
    .line 96
    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    #@7
    iget-object v1, v1, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 97
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@11
    .line 94
    return-void
.end method
