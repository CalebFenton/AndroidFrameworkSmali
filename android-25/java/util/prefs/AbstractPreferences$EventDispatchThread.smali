.class Ljava/util/prefs/AbstractPreferences$EventDispatchThread;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatchThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1435
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/AbstractPreferences$EventDispatchThread;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    #@0
    .prologue
    .line 1439
    :cond_0
    const/4 v1, 0x0

    #@1
    .line 1440
    .local v1, "event":Ljava/util/EventObject;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@4
    move-result-object v9

    #@5
    monitor-enter v9

    #@6
    .line 1442
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@9
    move-result-object v8

    #@a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_1

    #@10
    .line 1443
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    goto :goto_0

    #@18
    .line 1445
    .end local v1    # "event":Ljava/util/EventObject;
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit v9

    #@1a
    .line 1447
    return-void

    #@1b
    .line 1444
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "event":Ljava/util/EventObject;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    #@1e
    move-result-object v8

    #@1f
    const/4 v10, 0x0

    #@20
    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    .end local v1    # "event":Ljava/util/EventObject;
    check-cast v1, Ljava/util/EventObject;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .local v1, "event":Ljava/util/EventObject;
    monitor-exit v9

    #@27
    .line 1452
    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@2a
    move-result-object v7

    #@2b
    check-cast v7, Ljava/util/prefs/AbstractPreferences;

    #@2d
    .line 1453
    .local v7, "src":Ljava/util/prefs/AbstractPreferences;
    instance-of v8, v1, Ljava/util/prefs/PreferenceChangeEvent;

    #@2f
    if-eqz v8, :cond_2

    #@31
    move-object v6, v1

    #@32
    .line 1454
    nop

    #@33
    nop

    #@34
    .line 1455
    .local v6, "pce":Ljava/util/prefs/PreferenceChangeEvent;
    invoke-virtual {v7}, Ljava/util/prefs/AbstractPreferences;->prefListeners()[Ljava/util/prefs/PreferenceChangeListener;

    #@37
    move-result-object v4

    #@38
    .line 1456
    .local v4, "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    const/4 v2, 0x0

    #@39
    .local v2, "i":I
    :goto_1
    array-length v8, v4

    #@3a
    if-ge v2, v8, :cond_0

    #@3c
    .line 1457
    aget-object v8, v4, v2

    #@3e
    invoke-interface {v8, v6}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    #@41
    .line 1456
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 1440
    .end local v1    # "event":Ljava/util/EventObject;
    .end local v2    # "i":I
    .end local v4    # "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    .end local v6    # "pce":Ljava/util/prefs/PreferenceChangeEvent;
    .end local v7    # "src":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v8

    #@45
    monitor-exit v9

    #@46
    throw v8

    #@47
    .restart local v1    # "event":Ljava/util/EventObject;
    .restart local v7    # "src":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    move-object v5, v1

    #@48
    .line 1459
    check-cast v5, Ljava/util/prefs/NodeChangeEvent;

    #@4a
    .line 1460
    .local v5, "nce":Ljava/util/prefs/NodeChangeEvent;
    invoke-virtual {v7}, Ljava/util/prefs/AbstractPreferences;->nodeListeners()[Ljava/util/prefs/NodeChangeListener;

    #@4d
    move-result-object v3

    #@4e
    .line 1461
    .local v3, "listeners":[Ljava/util/prefs/NodeChangeListener;
    instance-of v8, v5, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    #@50
    if-eqz v8, :cond_3

    #@52
    .line 1462
    const/4 v2, 0x0

    #@53
    .restart local v2    # "i":I
    :goto_2
    array-length v8, v3

    #@54
    if-ge v2, v8, :cond_0

    #@56
    .line 1463
    aget-object v8, v3, v2

    #@58
    invoke-interface {v8, v5}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    #@5b
    .line 1462
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_2

    #@5e
    .line 1466
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    #@5f
    .restart local v2    # "i":I
    :goto_3
    array-length v8, v3

    #@60
    if-ge v2, v8, :cond_0

    #@62
    .line 1467
    aget-object v8, v3, v2

    #@64
    invoke-interface {v8, v5}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    #@67
    .line 1466
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_3
.end method
