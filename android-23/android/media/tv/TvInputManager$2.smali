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
.field final synthetic this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;

    #@0
    .prologue
    .line 880
    iput-object p1, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputManagerCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onInputAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 893
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 894
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    #@c
    move-result-object v2

    #@d
    const/4 v4, 0x0

    #@e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 895
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@17
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    #@1a
    move-result-object v2

    #@1b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@2b
    .line 896
    .local v0, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputAdded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 893
    .end local v0    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@30
    monitor-exit v3

    #@31
    throw v2

    #@32
    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@33
    .line 892
    return-void
.end method

.method public onInputRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 903
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 904
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 905
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@12
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@26
    .line 906
    .local v0, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputRemoved(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 903
    .end local v0    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2

    #@2d
    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@2e
    .line 902
    return-void
.end method

.method public onInputStateChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 883
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 884
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;

    #@c
    move-result-object v2

    #@d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 885
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@16
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@2a
    .line 886
    .local v0, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 883
    .end local v0    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2

    #@31
    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@32
    .line 882
    return-void
.end method

.method public onInputUpdated(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 913
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 914
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$2;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@1d
    .line 915
    .local v0, "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 913
    .end local v0    # "record":Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@25
    .line 912
    return-void
.end method
