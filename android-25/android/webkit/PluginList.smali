.class public Landroid/webkit/PluginList;
.super Ljava/lang/Object;
.source "PluginList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@a
    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized addPlugin(Landroid/webkit/Plugin;)V
    .locals 1
    .param p1, "plugin"    # Landroid/webkit/Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 70
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 68
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 97
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized getList()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 57
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized pluginClicked(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 111
    :try_start_0
    iget-object v2, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/webkit/Plugin;

    #@9
    .line 112
    .local v1, "plugin":Landroid/webkit/Plugin;
    invoke-virtual {v1, p1}, Landroid/webkit/Plugin;->dispatchClickEvent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .end local v1    # "plugin":Landroid/webkit/Plugin;
    :goto_0
    monitor-exit p0

    #@d
    .line 109
    return-void

    #@e
    :catchall_0
    move-exception v2

    #@f
    monitor-exit p0

    #@10
    throw v2

    #@11
    .line 113
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public declared-synchronized removePlugin(Landroid/webkit/Plugin;)V
    .locals 2
    .param p1, "plugin"    # Landroid/webkit/Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 84
    .local v0, "location":I
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 85
    iget-object v1, p0, Landroid/webkit/PluginList;->mPlugins:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 82
    return-void

    #@11
    .end local v0    # "location":I
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method
