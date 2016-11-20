.class Lcom/android/server/content/SyncManager$7;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->cleanupJobs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 445
    iget-object v6, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-wrap7(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 446
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    new-instance v0, Ljava/util/HashSet;

    #@8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b
    .line 447
    .local v0, "cleanedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v3

    #@f
    .local v3, "opx$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_2

    #@15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lcom/android/server/content/SyncOperation;

    #@1b
    .line 448
    .local v2, "opx":Lcom/android/server/content/SyncOperation;
    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@1d
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v6

    #@21
    if-nez v6, :cond_0

    #@23
    .line 451
    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@25
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@28
    .line 452
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v5

    #@2c
    .local v5, "opy$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_0

    #@32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Lcom/android/server/content/SyncOperation;

    #@38
    .line 453
    .local v4, "opy":Lcom/android/server/content/SyncOperation;
    if-eq v2, v4, :cond_1

    #@3a
    .line 456
    iget-object v6, v2, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@3c
    iget-object v7, v4, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_1

    #@44
    .line 457
    iget-object v6, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    #@46
    invoke-static {v6}, Lcom/android/server/content/SyncManager;->-get5(Lcom/android/server/content/SyncManager;)Landroid/app/job/JobScheduler;

    #@49
    move-result-object v6

    #@4a
    iget v7, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    #@4c
    invoke-virtual {v6, v7}, Landroid/app/job/JobScheduler;->cancel(I)V

    #@4f
    goto :goto_0

    #@50
    .line 444
    .end local v2    # "opx":Lcom/android/server/content/SyncOperation;
    .end local v4    # "opy":Lcom/android/server/content/SyncOperation;
    .end local v5    # "opy$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
