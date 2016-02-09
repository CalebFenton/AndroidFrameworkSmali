.class Ljava/util/prefs/AbstractPreferences$EventDispatcher;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatcher"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 820
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@3
    .line 819
    return-void
.end method

.method private dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .locals 5
    .param p1, "event"    # Ljava/util/prefs/NodeChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 878
    .local p2, "nodeChangeListeners":Ljava/util/List;, "Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    #@1
    .line 879
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v3

    #@5
    .local v3, "nodeChangeListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Ljava/util/EventListener;

    #@11
    .line 880
    .local v2, "nodeChangeListener":Ljava/util/EventListener;
    move-object v0, v2

    #@12
    check-cast v0, Ljava/util/prefs/NodeChangeListener;

    #@14
    move-object v1, v0

    #@15
    .line 881
    .local v1, "ncl":Ljava/util/prefs/NodeChangeListener;
    invoke-interface {v1, p1}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 878
    .end local v1    # "ncl":Ljava/util/prefs/NodeChangeListener;
    .end local v2    # "nodeChangeListener":Ljava/util/EventListener;
    .end local v3    # "nodeChangeListener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit p2

    #@1b
    throw v4

    #@1c
    .restart local v3    # "nodeChangeListener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p2

    #@1d
    .line 877
    return-void
.end method

.method private dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V
    .locals 3
    .param p1, "event"    # Ljava/util/prefs/NodeChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/NodeChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 869
    .local p2, "nodeChangeListeners":Ljava/util/List;, "Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    #@1
    .line 870
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "nodeChangeListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/EventListener;

    #@11
    .line 871
    .local v0, "nodeChangeListener":Ljava/util/EventListener;
    check-cast v0, Ljava/util/prefs/NodeChangeListener;

    #@13
    .end local v0    # "nodeChangeListener":Ljava/util/EventListener;
    invoke-interface {v0, p1}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    goto :goto_0

    #@17
    .line 869
    .end local v1    # "nodeChangeListener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@18
    monitor-exit p2

    #@19
    throw v2

    #@1a
    .restart local v1    # "nodeChangeListener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p2

    #@1b
    .line 868
    return-void
.end method

.method private dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V
    .locals 3
    .param p1, "event"    # Ljava/util/prefs/PreferenceChangeEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/prefs/PreferenceChangeEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 860
    .local p2, "preferenceChangeListeners":Ljava/util/List;, "Ljava/util/List<Ljava/util/EventListener;>;"
    monitor-enter p2

    #@1
    .line 861
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .local v1, "preferenceChangeListener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/EventListener;

    #@11
    .line 862
    .local v0, "preferenceChangeListener":Ljava/util/EventListener;
    check-cast v0, Ljava/util/prefs/PreferenceChangeListener;

    #@13
    .end local v0    # "preferenceChangeListener":Ljava/util/EventListener;
    invoke-interface {v0, p1}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    goto :goto_0

    #@17
    .line 860
    .end local v1    # "preferenceChangeListener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@18
    monitor-exit p2

    #@19
    throw v2

    #@1a
    .restart local v1    # "preferenceChangeListener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p2

    #@1b
    .line 859
    return-void
.end method

.method private getEventObject()Ljava/util/EventObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 848
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    monitor-enter v2

    #@5
    .line 849
    :try_start_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 850
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    #@16
    .line 852
    :cond_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@19
    move-result-object v1

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/EventObject;

    #@21
    .line 853
    .local v0, "event":Ljava/util/EventObject;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@24
    move-result-object v1

    #@25
    const/4 v3, 0x0

    #@26
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 854
    return-object v0

    #@2b
    .line 848
    .end local v0    # "event":Ljava/util/EventObject;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 828
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->getEventObject()Ljava/util/EventObject;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 833
    .local v1, "event":Ljava/util/EventObject;
    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Ljava/util/prefs/AbstractPreferences;

    #@a
    .line 834
    .local v2, "pref":Ljava/util/prefs/AbstractPreferences;
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeAddEvent;

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 835
    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    #@10
    .line 836
    .end local v1    # "event":Ljava/util/EventObject;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->-get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    #@13
    move-result-object v3

    #@14
    .line 835
    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeAdd(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    #@17
    goto :goto_0

    #@18
    .line 829
    .end local v2    # "pref":Ljava/util/prefs/AbstractPreferences;
    :catch_0
    move-exception v0

    #@19
    .line 830
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    #@1c
    goto :goto_0

    #@1d
    .line 837
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "event":Ljava/util/EventObject;
    .restart local v2    # "pref":Ljava/util/prefs/AbstractPreferences;
    :cond_1
    instance-of v3, v1, Ljava/util/prefs/AbstractPreferences$NodeRemoveEvent;

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 838
    check-cast v1, Ljava/util/prefs/NodeChangeEvent;

    #@23
    .line 839
    .end local v1    # "event":Ljava/util/EventObject;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->-get1(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    #@26
    move-result-object v3

    #@27
    .line 838
    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchNodeRemove(Ljava/util/prefs/NodeChangeEvent;Ljava/util/List;)V

    #@2a
    goto :goto_0

    #@2b
    .line 840
    .restart local v1    # "event":Ljava/util/EventObject;
    :cond_2
    instance-of v3, v1, Ljava/util/prefs/PreferenceChangeEvent;

    #@2d
    if-eqz v3, :cond_0

    #@2f
    .line 841
    check-cast v1, Ljava/util/prefs/PreferenceChangeEvent;

    #@31
    .line 842
    .end local v1    # "event":Ljava/util/EventObject;
    invoke-static {v2}, Ljava/util/prefs/AbstractPreferences;->-get2(Ljava/util/prefs/AbstractPreferences;)Ljava/util/List;

    #@34
    move-result-object v3

    #@35
    .line 841
    invoke-direct {p0, v1, v3}, Ljava/util/prefs/AbstractPreferences$EventDispatcher;->dispatchPrefChange(Ljava/util/prefs/PreferenceChangeEvent;Ljava/util/List;)V

    #@38
    goto :goto_0
.end method
