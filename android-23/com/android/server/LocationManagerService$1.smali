.class Lcom/android/server/LocationManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
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
    .line 2358
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 2362
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #@2
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 2363
    const/4 v0, 0x0

    #@8
    .line 2365
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #@a
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->-get7(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    move-result-object v3

    #@16
    .local v3, "receiver$iterator":Ljava/util/Iterator;
    move-object v1, v0

    #@17
    .end local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    #@23
    .line 2366
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@25
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_3

    #@2b
    .line 2367
    if-nez v1, :cond_2

    #@2d
    .line 2368
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 2370
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    :goto_2
    move-object v1, v0

    #@36
    .end local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    goto :goto_0

    #@37
    .line 2375
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_0
    if-eqz v1, :cond_1

    #@39
    .line 2376
    :try_start_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v3

    #@3d
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_1

    #@43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    #@49
    .line 2377
    .restart local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    #@4b
    invoke-static {v4, v2}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    goto :goto_3

    #@4f
    .line 2362
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v4

    #@50
    move-object v0, v1

    #@51
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v3    # "receiver$iterator":Ljava/util/Iterator;
    :goto_4
    monitor-exit v5

    #@52
    throw v4

    #@53
    .restart local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v3    # "receiver$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@54
    .line 2360
    return-void

    #@55
    .line 2362
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v3    # "receiver$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    #@56
    goto :goto_4

    #@57
    .restart local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v3    # "receiver$iterator":Ljava/util/Iterator;
    :cond_2
    move-object v0, v1

    #@58
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    goto :goto_1

    #@59
    .end local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_3
    move-object v0, v1

    #@5a
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v0    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    goto :goto_2
.end method
