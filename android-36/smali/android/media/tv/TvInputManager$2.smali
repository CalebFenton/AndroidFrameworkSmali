.class Landroid/media/tv/TvInputManager$2;
.super Landroid/media/tv/ITvInputManagerCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2075
    iput-object p1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCurrentTunedInfosUpdated(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;)V"
        }
    .end annotation

    .line 2126
    .local p1, "currentTunedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2127
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2128
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postCurrentTunedInfosUpdated(Ljava/util/List;)V

    .line 2129
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_11

    .line 2130
    :cond_21
    monitor-exit v0

    .line 2131
    return-void

    .line 2130
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onInputAdded(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2078
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2079
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmStateMap(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2081
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputAdded(Ljava/lang/String;)V

    .line 2082
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_1f

    .line 2083
    :cond_2f
    monitor-exit v0

    .line 2084
    return-void

    .line 2083
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist onInputRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2088
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2089
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmStateMap(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2091
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputRemoved(Ljava/lang/String;)V

    .line 2092
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_1a

    .line 2093
    :cond_2a
    monitor-exit v0

    .line 2094
    return-void

    .line 2093
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist onInputStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 2107
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2108
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmStateMap(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2110
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputStateChanged(Ljava/lang/String;I)V

    .line 2111
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_1e

    .line 2112
    :cond_2e
    monitor-exit v0

    .line 2113
    return-void

    .line 2112
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public blacklist onInputUpdated(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2098
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2099
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2100
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V

    .line 2101
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_11

    .line 2102
    :cond_21
    monitor-exit v0

    .line 2103
    return-void

    .line 2102
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public blacklist onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .registers 5
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 2117
    iget-object v0, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmLock(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2118
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmCallbackRecords(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    .line 2119
    .local v2, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 2120
    .end local v2    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    goto :goto_11

    .line 2121
    :cond_21
    monitor-exit v0

    .line 2122
    return-void

    .line 2121
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
