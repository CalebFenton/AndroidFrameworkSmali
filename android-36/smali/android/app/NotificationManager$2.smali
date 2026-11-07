.class Landroid/app/NotificationManager$2;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Landroid/app/NotificationChannelGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/NotificationManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/NotificationManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/NotificationManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1532
    iput-object p1, p0, Landroid/app/NotificationManager$2;->this$0:Landroid/app/NotificationManager;

    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1532
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$2;->apply(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 1535
    iget-object v0, p0, Landroid/app/NotificationManager$2;->this$0:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->service()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1536
    .local v0, "service":Landroid/app/INotificationManager;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1538
    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    nop

    .line 1539
    :try_start_c
    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 1540
    .local v2, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/NotificationChannelGroup;>;"
    if-eqz v2, :cond_2f

    .line 1541
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 1542
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2d} :catch_31

    .line 1543
    nop

    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_1a

    .line 1547
    .end local v2    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/NotificationChannelGroup;>;"
    :cond_2f
    nop

    .line 1548
    return-object v1

    .line 1545
    :catch_31
    move-exception v2

    .line 1546
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public bridge synthetic blacklist shouldBypassCache(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1532
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager$2;->shouldBypassCache(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldBypassCache(Ljava/lang/String;)Z
    .registers 4
    .param p1, "query"    # Ljava/lang/String;

    .line 1555
    invoke-static {}, Landroid/app/Flags;->nmBinderPerfCacheChannels()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1556
    invoke-static {}, Landroid/app/NotificationManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shouldBypassCache called when nm_binder_perf_cache_channels off"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v0, 0x1

    return v0

    .line 1560
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
