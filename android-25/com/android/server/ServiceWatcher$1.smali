.class Lcom/android/server/ServiceWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ServiceWatcher;

    #@0
    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@9
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 340
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-static {v1, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 337
    return-void

    #@19
    .line 338
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@9
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 356
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-static {v1, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 354
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@9
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 348
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-static {v1, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 345
    return-void

    #@19
    .line 346
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@2
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@9
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    .line 332
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-static {v1, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 329
    return-void

    #@19
    .line 330
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method
