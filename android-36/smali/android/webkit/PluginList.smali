.class public Landroid/webkit/PluginList;
.super Ljava/lang/Object;
.source "PluginList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/webkit/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o addPlugin(Landroid/webkit/Plugin;)V
    .registers 3
    .param p1, "plugin"    # Landroid/webkit/Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 70
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 72
    .end local p0    # "this":Landroid/webkit/PluginList;
    :cond_e
    monitor-exit p0

    return-void

    .line 68
    .end local p1    # "plugin":Landroid/webkit/Plugin;
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized greylist-max-o clear()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 99
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Landroid/webkit/PluginList;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized greylist-max-o getList()Ljava/util/List;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 57
    .end local p0    # "this":Landroid/webkit/PluginList;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o pluginClicked(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/Plugin;

    .line 112
    .local v0, "plugin":Landroid/webkit/Plugin;
    invoke-virtual {v0, p1}, Landroid/webkit/Plugin;->dispatchClickEvent(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_c} :catch_10
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 116
    .end local v0    # "plugin":Landroid/webkit/Plugin;
    goto :goto_11

    .line 110
    .end local p0    # "this":Landroid/webkit/PluginList;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "position":I
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1

    .line 113
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "position":I
    :catch_10
    move-exception v0

    .line 117
    :goto_11
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized greylist-max-o removePlugin(Landroid/webkit/Plugin;)V
    .registers 4
    .param p1, "plugin"    # Landroid/webkit/Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 85
    iget-object v1, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 87
    .end local p0    # "this":Landroid/webkit/PluginList;
    :cond_f
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "location":I
    .end local p1    # "plugin":Landroid/webkit/Plugin;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method
