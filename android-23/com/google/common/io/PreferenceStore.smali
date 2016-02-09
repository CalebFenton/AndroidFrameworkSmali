.class public Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;
.super Ljava/lang/Object;
.source "PreferenceStore.java"


# instance fields
.field private final persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private preferences:Ljava/util/Hashtable;

.field private preferencesChanged:Z


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;)V
    .locals 1
    .param p1, "persistentStore"    # Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 35
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    #@6
    .line 38
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z

    #@9
    .line 51
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@b
    .line 52
    return-void
.end method

.method private declared-synchronized ensurePreferencesLoaded()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    :goto_0
    monitor-exit p0

    #@6
    .line 184
    return-void

    #@7
    .line 171
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@9
    const-string/jumbo v2, "Preferences"

    #@c
    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    #@f
    move-result-object v0

    #@10
    .line 172
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    #@12
    .line 178
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@14
    const/16 v2, 0x7d0

    #@16
    new-array v2, v2, [B

    #@18
    const-string/jumbo v3, "Preferences"

    #@1b
    invoke-interface {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I

    #@1e
    .line 180
    new-instance v1, Ljava/util/Hashtable;

    #@20
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@23
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    #@25
    .line 182
    :goto_1
    const/4 v1, 0x0

    #@26
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1

    #@2c
    .line 173
    .restart local v0    # "bytes":[B
    :cond_1
    :try_start_2
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->unpackPreferences([B)Ljava/util/Hashtable;

    #@2f
    move-result-object v1

    #@30
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_1
.end method

.method public static packPreferences(Ljava/util/Hashtable;)[B
    .locals 7
    .param p0, "prefs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    .line 100
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@8
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@b
    .line 101
    .local v2, "dos":Ljava/io/DataOutput;
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    #@e
    move-result v5

    #@f
    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    #@12
    .line 102
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@15
    move-result-object v3

    #@16
    .line 103
    .local v3, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_0

    #@1c
    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1f
    move-result-object v5

    #@20
    return-object v5

    #@21
    .line 104
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/lang/String;

    #@27
    .line 106
    .local v4, "preference":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, [B

    #@2d
    move-object v1, v5

    #@2e
    check-cast v1, [B

    #@30
    .line 107
    .local v1, "data":[B
    if-eqz v1, :cond_1

    #@32
    .line 108
    :goto_1
    invoke-interface {v2, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    #@35
    .line 109
    array-length v5, v1

    #@36
    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    #@39
    .line 110
    invoke-interface {v2, v1}, Ljava/io/DataOutput;->write([B)V

    #@3c
    goto :goto_0

    #@3d
    .line 107
    :cond_1
    new-array v1, v6, [B

    #@3f
    goto :goto_1
.end method

.method private static packPreferencesBlock(Ljava/util/Hashtable;)[B
    .locals 5
    .param p0, "prefs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x7d0

    #@2
    const/4 v3, 0x0

    #@3
    .line 152
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->packPreferences(Ljava/util/Hashtable;)[B

    #@6
    move-result-object v0

    #@7
    .line 154
    .local v0, "packed":[B
    array-length v2, v0

    #@8
    if-gt v2, v4, :cond_0

    #@a
    .line 158
    new-array v1, v4, [B

    #@c
    .line 159
    .local v1, "packedBlock":[B
    array-length v2, v0

    #@d
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10
    .line 160
    return-object v1

    #@11
    .line 155
    .end local v1    # "packedBlock":[B
    :cond_0
    return-object v0
.end method

.method public static unpackPreferences([B)Ljava/util/Hashtable;
    .locals 9
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 125
    new-instance v1, Ljava/io/DataInputStream;

    #@2
    new-instance v8, Ljava/io/ByteArrayInputStream;

    #@4
    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@7
    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 127
    .local v1, "dis":Ljava/io/DataInput;
    new-instance v6, Ljava/util/Hashtable;

    #@c
    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    #@f
    .line 130
    .local v6, "prefs":Ljava/util/Hashtable;
    :try_start_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@12
    move-result v7

    #@13
    .local v7, "size":I
    const/4 v3, 0x0

    #@14
    .line 131
    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_0

    #@16
    .line 143
    .end local v3    # "i":I
    .end local v7    # "size":I
    :goto_1
    return-object v6

    #@17
    .line 132
    .restart local v3    # "i":I
    .restart local v7    # "size":I
    :cond_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    .line 133
    .local v5, "preference":Ljava/lang/String;
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@1e
    move-result v0

    #@1f
    .line 134
    .local v0, "dataSize":I
    new-array v4, v0, [B

    #@21
    .line 135
    .local v4, "prefData":[B
    invoke-interface {v1, v4}, Ljava/io/DataInput;->readFully([B)V

    #@24
    .line 136
    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 131
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 141
    .end local v0    # "dataSize":I
    .end local v3    # "i":I
    .end local v4    # "prefData":[B
    .end local v5    # "preference":Ljava/lang/String;
    .end local v7    # "size":I
    :catch_0
    move-exception v2

    #@2b
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "FLASH"

    #@2e
    .line 140
    invoke-static {v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized readPreference(Ljava/lang/String;)[B
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 86
    :try_start_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    #@4
    .line 87
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [B

    #@c
    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized savePreferences()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 200
    :try_start_0
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 205
    :try_start_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    #@7
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->packPreferencesBlock(Ljava/util/Hashtable;)[B

    #@a
    move-result-object v0

    #@b
    .line 206
    .local v0, "block":[B
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@d
    const-string/jumbo v3, "Preferences"

    #@10
    invoke-interface {v2, v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 210
    .end local v0    # "block":[B
    :goto_0
    const/4 v2, 0x0

    #@14
    :try_start_2
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 211
    return-void

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 201
    return-void

    #@1a
    .line 209
    :catch_0
    move-exception v1

    #@1b
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "FLASH"

    #@1e
    .line 208
    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@21
    goto :goto_0

    #@22
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2
.end method

.method public declared-synchronized setPreference(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 69
    :try_start_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    #@5
    .line 70
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z

    #@8
    .line 71
    if-eqz p2, :cond_0

    #@a
    .line 74
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 75
    return v0

    #@11
    .line 72
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    #@13
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v1

    #@17
    if-nez v1, :cond_1

    #@19
    const/4 v0, 0x0

    #@1a
    :cond_1
    monitor-exit p0

    #@1b
    return v0

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method
