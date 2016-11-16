.class Lcom/android/server/pm/BackgroundDexOptService$2;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$lowThreshold:J

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;JLcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p4, "val$lowThreshold"    # J
    .param p6, "val$pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p7, "val$jobParams"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 202
    .local p3, "val$pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@2
    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    #@4
    iput-wide p4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$lowThreshold:J

    #@6
    iput-object p6, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    #@8
    iput-object p7, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    #@a
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 205
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    #@3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_2

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    .line 206
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@15
    iget-object v4, v4, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 208
    return-void

    #@1e
    .line 210
    :cond_1
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@20
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_0

    #@26
    .line 215
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@28
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->-get0(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/io/File;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    #@2f
    move-result-wide v2

    #@30
    .line 216
    .local v2, "usableSpace":J
    iget-wide v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$lowThreshold:J

    #@32
    cmp-long v4, v2, v4

    #@34
    if-gez v4, :cond_3

    #@36
    .line 218
    const-string/jumbo v4, "BackgroundDexOptService"

    #@39
    new-instance v5, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v6, "Aborting background dex opt job due to low storage: "

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 241
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v2    # "usableSpace":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@52
    iget-object v5, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    #@54
    invoke-virtual {v4, v5, v7}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    #@57
    .line 204
    return-void

    #@58
    .line 225
    .restart local v0    # "pkg":Ljava/lang/String;
    .restart local v2    # "usableSpace":J
    :cond_3
    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@5a
    monitor-enter v5

    #@5b
    .line 226
    :try_start_0
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@5d
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    monitor-exit v5

    #@61
    .line 230
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    #@63
    .line 231
    const/4 v5, 0x1

    #@64
    .line 232
    const/4 v6, 0x3

    #@65
    .line 230
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_0

    #@6b
    .line 235
    sget-object v5, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@6d
    monitor-enter v5

    #@6e
    .line 236
    :try_start_1
    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@70
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@73
    monitor-exit v5

    #@74
    goto :goto_0

    #@75
    .line 225
    :catchall_0
    move-exception v4

    #@76
    monitor-exit v5

    #@77
    throw v4

    #@78
    .line 235
    :catchall_1
    move-exception v4

    #@79
    monitor-exit v5

    #@7a
    throw v4
.end method
