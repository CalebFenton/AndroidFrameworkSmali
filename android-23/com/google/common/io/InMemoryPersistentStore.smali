.class public Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;
.super Ljava/lang/Object;
.source "InMemoryPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private blocks:Ljava/util/Hashtable;

.field private final prefs:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    #@a
    .line 27
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@11
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAllBlocks(Ljava/lang/String;)V
    .locals 4
    .param p1, "namePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 88
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@6
    move-result-object v1

    #@7
    .line 89
    .local v1, "keys":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/Hashtable;

    #@9
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@c
    .line 90
    .local v2, "newBlocks":Ljava/util/Hashtable;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 96
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 97
    return-void

    #@16
    .line 91
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    .line 92
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_0

    #@22
    .line 93
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@24
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Enumeration;
    .end local v2    # "newBlocks":Ljava/util/Hashtable;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit p0

    #@2e
    throw v3
.end method

.method public declared-synchronized deleteBlock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 76
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    monitor-exit p0

    #@b
    .line 81
    return v1

    #@c
    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 78
    const/4 v0, 0x1

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "namePrefix"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 163
    :try_start_0
    new-instance v2, Ljava/util/Vector;

    #@3
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@6
    .line 164
    .local v2, "resultVector":Ljava/util/Vector;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@b
    move-result-object v1

    #@c
    .line 165
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 171
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@15
    move-result v4

    #@16
    new-array v3, v4, [Ljava/lang/String;

    #@18
    .line 172
    .local v3, "results":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 174
    return-object v3

    #@1d
    .line 166
    .end local v3    # "results":[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 167
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_0

    #@29
    .line 168
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Enumeration;
    .end local v2    # "resultVector":Ljava/util/Vector;
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit p0

    #@2f
    throw v4
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public savePreferences()V
    .locals 0

    #@0
    .prologue
    .line 213
    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 181
    if-eqz p2, :cond_0

    #@2
    .line 184
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 187
    :goto_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 182
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    goto :goto_0
.end method

.method public declared-synchronized writeBlock([BLjava/lang/String;)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 123
    if-eqz p1, :cond_0

    #@3
    .line 126
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 127
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 124
    :try_start_1
    new-array p1, v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    goto :goto_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->writeBlock([BLjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method
