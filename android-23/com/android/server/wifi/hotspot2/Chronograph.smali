.class public Lcom/android/server/wifi/hotspot2/Chronograph;
.super Ljava/lang/Thread;
.source "Chronograph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    }
.end annotation


# instance fields
.field private final mAlarmEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecalculate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 12
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@a
    .line 33
    const-string/jumbo v0, "Chronograph"

    #@d
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->setName(Ljava/lang/String;)V

    #@10
    .line 34
    const/4 v0, 0x1

    #@11
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->setDaemon(Z)V

    #@14
    .line 31
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    new-instance v0, Lcom/android/server/wifi/hotspot2/Chronograph;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;-><init>()V

    #@5
    .line 127
    .local v0, "chronograph":Lcom/android/server/wifi/hotspot2/Chronograph;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->start()V

    #@8
    .line 129
    new-instance v2, Lcom/android/server/wifi/hotspot2/Chronograph$1;

    #@a
    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/Chronograph$1;-><init>()V

    #@d
    .line 134
    const-string/jumbo v3, "3s"

    #@10
    .line 129
    const-wide/16 v4, 0xbb8

    #@12
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 136
    new-instance v2, Lcom/android/server/wifi/hotspot2/Chronograph$2;

    #@17
    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/Chronograph$2;-><init>()V

    #@1a
    .line 141
    const-string/jumbo v3, "7.5s"

    #@1d
    .line 136
    const-wide/16 v4, 0x1d4c

    #@1f
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    .line 143
    .local v1, "key":Ljava/lang/Object;
    new-instance v2, Lcom/android/server/wifi/hotspot2/Chronograph$3;

    #@25
    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/Chronograph$3;-><init>()V

    #@28
    .line 148
    const-string/jumbo v3, "10.00s"

    #@2b
    .line 143
    const-wide/16 v4, 0x2710

    #@2d
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/server/wifi/hotspot2/Chronograph;->addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 150
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/Chronograph;->cancelAlarm(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Z)V

    #@39
    .line 152
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/Chronograph;->join()V

    #@3c
    .line 125
    return-void
.end method


# virtual methods
.method public addAlarm(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "interval"    # J
    .param p3, "handler"    # Lcom/android/server/wifi/hotspot2/AlarmHandler;
    .param p4, "token"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    add-long v2, v4, p1

    #@6
    .line 39
    .local v2, "at":J
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@8
    monitor-enter v7

    #@9
    .line 40
    :try_start_0
    new-instance v1, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    #@b
    const/4 v6, 0x0

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;-><init>(JLcom/android/server/wifi/hotspot2/AlarmHandler;Ljava/lang/Object;Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V

    #@11
    .line 41
    .local v1, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Set;

    #@1d
    .line 42
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    if-nez v0, :cond_0

    #@1f
    .line 43
    new-instance v0, Ljava/util/HashSet;

    #@21
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    const/4 v4, 0x1

    #@22
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    #@25
    .line 44
    .restart local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 46
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@31
    .line 47
    const/4 v4, 0x1

    #@32
    iput-boolean v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    #@34
    .line 48
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@36
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit v7

    #@3a
    .line 49
    return-object v1

    #@3b
    .line 39
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    .end local v1    # "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    :catchall_0
    move-exception v4

    #@3c
    monitor-exit v7

    #@3d
    throw v4
.end method

.method public cancelAlarm(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 54
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    const-class v3, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    #@a
    if-eq v2, v3, :cond_1

    #@c
    .line 55
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v3, "Not an alarm key"

    #@11
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    :cond_1
    move-object v0, p1

    #@16
    .line 58
    check-cast v0, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    #@18
    .line 60
    .local v0, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@1a
    monitor-enter v3

    #@1b
    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@1d
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->-get0(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)J

    #@20
    move-result-wide v4

    #@21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 62
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    if-nez v1, :cond_2

    #@2d
    monitor-exit v3

    #@2e
    .line 63
    return v6

    #@2f
    .line 65
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_3

    #@35
    .line 66
    const/4 v2, 0x1

    #@36
    iput-boolean v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    #@38
    .line 67
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@3a
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    monitor-exit v3

    #@3e
    .line 68
    return v7

    #@3f
    :cond_3
    monitor-exit v3

    #@40
    .line 70
    return v6

    #@41
    .line 60
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    :catchall_0
    move-exception v2

    #@42
    monitor-exit v3

    #@43
    throw v2
.end method

.method public run()V
    .locals 20

    #@0
    .prologue
    .line 79
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v12

    #@4
    .line 80
    .local v12, "now":J
    new-instance v9, Ljava/util/ArrayList;

    #@6
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 82
    .local v9, "pending":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    const-wide/16 v10, 0x0

    #@b
    .line 84
    .local v10, "nextExpiration":J
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@f
    move-object/from16 v17, v0

    #@11
    monitor-enter v17

    #@12
    .line 87
    :try_start_0
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@16
    move-object/from16 v16, v0

    #@18
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1b
    move-result-object v16

    #@1c
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v6

    #@20
    .line 89
    .local v6, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v16

    #@24
    if-eqz v16, :cond_1

    #@26
    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v7

    #@2a
    check-cast v7, Ljava/util/Map$Entry;

    #@2c
    .line 91
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2f
    move-result-object v16

    #@30
    check-cast v16, Ljava/lang/Long;

    #@32
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    #@35
    move-result-wide v18

    #@36
    cmp-long v16, v18, v12

    #@38
    if-gtz v16, :cond_0

    #@3a
    .line 92
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3d
    move-result-object v16

    #@3e
    check-cast v16, Ljava/util/Set;

    #@40
    move-object/from16 v0, v16

    #@42
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 93
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    goto :goto_1

    #@49
    .line 84
    .end local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :catchall_0
    move-exception v16

    #@4a
    monitor-exit v17

    #@4b
    throw v16

    #@4c
    .line 96
    .restart local v6    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;>;"
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :cond_0
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@4f
    move-result-object v16

    #@50
    check-cast v16, Ljava/lang/Long;

    #@52
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    move-result-wide v10

    #@56
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;>;"
    :cond_1
    monitor-exit v17

    #@57
    .line 102
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v3

    #@5b
    .local v3, "alarmEntries$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v16

    #@5f
    if-eqz v16, :cond_3

    #@61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    check-cast v2, Ljava/util/Set;

    #@67
    .line 103
    .local v2, "alarmEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v5

    #@6b
    .local v5, "alarmEntry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v16

    #@6f
    if-eqz v16, :cond_2

    #@71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v4

    #@75
    check-cast v4, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;

    #@77
    .line 104
    .local v4, "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;->-wrap0(Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;)V

    #@7a
    goto :goto_2

    #@7b
    .line 108
    .end local v2    # "alarmEntries":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;>;"
    .end local v4    # "alarmEntry":Lcom/android/server/wifi/hotspot2/Chronograph$AlarmEntry;
    .end local v5    # "alarmEntry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7e
    move-result-wide v12

    #@7f
    .line 110
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@83
    move-object/from16 v17, v0

    #@85
    monitor-enter v17

    #@86
    .line 111
    sub-long v14, v10, v12

    #@88
    .line 112
    .local v14, "sleep":J
    :goto_3
    const-wide/16 v18, 0x0

    #@8a
    cmp-long v16, v14, v18

    #@8c
    if-lez v16, :cond_4

    #@8e
    :try_start_2
    move-object/from16 v0, p0

    #@90
    iget-boolean v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mRecalculate:Z

    #@92
    move/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@94
    if-eqz v16, :cond_5

    #@96
    :cond_4
    monitor-exit v17

    #@97
    goto/16 :goto_0

    #@99
    .line 114
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/Chronograph;->mAlarmEntryMap:Ljava/util/Map;

    #@9d
    move-object/from16 v16, v0

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-virtual {v0, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a4
    .line 119
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a7
    move-result-wide v18

    #@a8
    sub-long v14, v10, v18

    #@aa
    goto :goto_3

    #@ab
    .line 110
    :catchall_1
    move-exception v16

    #@ac
    monitor-exit v17

    #@ad
    throw v16

    #@ae
    .line 116
    :catch_0
    move-exception v8

    #@af
    .local v8, "ie":Ljava/lang/InterruptedException;
    goto :goto_4
.end method
