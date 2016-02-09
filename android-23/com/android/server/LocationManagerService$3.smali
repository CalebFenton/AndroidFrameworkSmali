.class Lcom/android/server/LocationManagerService$3;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    #@0
    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    #@9
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get7(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@10
    move-result-object v2

    #@11
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "receiver$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    #@21
    .line 265
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v2, 0x1

    #@22
    invoke-virtual {v0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 263
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v1    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3

    #@28
    throw v2

    #@29
    .line 267
    .restart local v1    # "receiver$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    #@2b
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit v3

    #@2f
    .line 262
    return-void
.end method
