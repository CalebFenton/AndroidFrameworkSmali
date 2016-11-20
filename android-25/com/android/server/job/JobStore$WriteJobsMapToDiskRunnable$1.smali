.class Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable$1;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;

.field final synthetic val$storeCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;

    #@0
    .prologue
    .line 262
    .local p2, "val$storeCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iput-object p1, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable$1;->this$1:Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;

    #@2
    iput-object p2, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable$1;->val$storeCopy:Ljava/util/List;

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
    .line 265
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 266
    iget-object v0, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable$1;->val$storeCopy:Ljava/util/List;

    #@8
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    #@a
    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 264
    :cond_0
    return-void
.end method
