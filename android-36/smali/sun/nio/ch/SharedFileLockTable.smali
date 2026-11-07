.class Lsun/nio/ch/SharedFileLockTable;
.super Lsun/nio/ch/FileLockTable;
.source "FileLockTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist lockMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lsun/nio/ch/FileKey;",
            "Ljava/util/List<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist channel:Ljava/nio/channels/Channel;

.field private final blacklist fileKey:Lsun/nio/ch/FileKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    nop

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/Channel;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    .line 119
    iput-object p1, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    .line 120
    invoke-static {p2}, Lsun/nio/ch/FileKey;->create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    .line 121
    return-void
.end method

.method private blacklist checkList(Ljava/util/List;JJ)V
    .registers 10
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .line 251
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    nop

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 253
    .local v1, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v1}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/FileLock;

    .line 254
    .local v2, "fl":Ljava/nio/channels/FileLock;
    if-eqz v2, :cond_26

    invoke-virtual {v2, p2, p3, p4, p5}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_26

    .line 255
    :cond_20
    new-instance v0, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v0}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v0

    .line 256
    .end local v1    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    .end local v2    # "fl":Ljava/nio/channels/FileLock;
    :cond_26
    :goto_26
    goto :goto_5

    .line 257
    :cond_27
    return-void
.end method

.method private blacklist removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    .registers 4
    .param p1, "fk"    # Lsun/nio/ch/FileKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/FileKey;",
            "Ljava/util/List<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    nop

    .line 167
    nop

    .line 168
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 169
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_d
    return-void
.end method

.method private blacklist removeStaleEntries()V
    .registers 5

    .line 262
    nop

    :goto_1
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    move-object v1, v0

    .local v1, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    if-eqz v0, :cond_27

    .line 263
    invoke-virtual {v1}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey()Lsun/nio/ch/FileKey;

    move-result-object v0

    .line 264
    .local v0, "fk":Lsun/nio/ch/FileKey;
    sget-object v2, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 265
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-eqz v2, :cond_26

    .line 266
    monitor-enter v2

    .line 267
    :try_start_1b
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0, v0, v2}, Lsun/nio/ch/SharedFileLockTable;->removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V

    .line 269
    monitor-exit v2

    goto :goto_26

    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v3

    .line 271
    .end local v0    # "fk":Lsun/nio/ch/FileKey;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_26
    :goto_26
    goto :goto_1

    .line 272
    :cond_27
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/nio/channels/FileLock;)V
    .registers 10
    .param p1, "fl"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .line 125
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_a
    if-nez v0, :cond_35

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    monitor-enter v1

    .line 134
    :try_start_13
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    .local v0, "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-nez v0, :cond_2e

    .line 137
    new-instance v2, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    sget-object v3, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    iget-object v4, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {v2, p1, v3, v4}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    move-object v2, p0

    goto :goto_5d

    .line 140
    :cond_2e
    monitor-exit v1

    .line 142
    move-object v1, v0

    move-object v3, v1

    goto :goto_36

    .line 140
    .end local v0    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v0

    .line 130
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_35
    move-object v3, v0

    .line 149
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_36
    monitor-enter v3

    .line 150
    :try_start_37
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_6d

    .line 151
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-ne v3, v0, :cond_68

    .line 152
    :try_start_43
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_64

    move-object v2, p0

    :try_start_4c
    invoke-direct/range {v2 .. v7}, Lsun/nio/ch/SharedFileLockTable;->checkList(Ljava/util/List;JJ)V

    .line 153
    new-instance v1, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    sget-object v4, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    iget-object v5, v2, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {v1, p1, v4, v5}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_61

    move-object v1, v3

    .line 162
    .end local v0    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_5d
    invoke-direct {p0}, Lsun/nio/ch/SharedFileLockTable;->removeStaleEntries()V

    .line 163
    return-void

    .line 157
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :catchall_61
    move-exception v0

    move-object v1, v3

    goto :goto_70

    :catchall_64
    move-exception v0

    move-object v2, p0

    move-object v1, v3

    goto :goto_70

    .line 156
    .restart local v0    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_68
    move-object v2, p0

    move-object v1, v0

    .line 157
    .end local v0    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :try_start_6a
    monitor-exit v3

    move-object v0, v1

    goto :goto_a

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :catchall_6d
    move-exception v0

    move-object v2, p0

    move-object v1, v3

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_70
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_72

    throw v0

    :catchall_72
    move-exception v0

    goto :goto_70
.end method

.method public blacklist remove(Ljava/nio/channels/FileLock;)V
    .registers 6
    .param p1, "fl"    # Ljava/nio/channels/FileLock;

    .line 175
    nop

    .line 178
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-nez v0, :cond_e

    return-void

    .line 181
    :cond_e
    monitor-enter v0

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "index":I
    :goto_10
    :try_start_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 185
    .local v2, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v2}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/FileLock;

    .line 186
    .local v3, "lock":Ljava/nio/channels/FileLock;
    if-ne v3, p1, :cond_2c

    .line 187
    nop

    .line 188
    invoke-virtual {v2}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    goto :goto_30

    .line 192
    :cond_2c
    nop

    .end local v2    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    .end local v3    # "lock":Ljava/nio/channels/FileLock;
    add-int/lit8 v1, v1, 0x1

    .line 193
    goto :goto_10

    .line 194
    .end local v1    # "index":I
    :cond_30
    :goto_30
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public blacklist removeAll()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    sget-object v1, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 201
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-eqz v1, :cond_46

    .line 202
    monitor-enter v1

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "index":I
    :goto_13
    :try_start_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 206
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/FileLock;

    .line 209
    .local v4, "lock":Ljava/nio/channels/FileLock;
    if-eqz v4, :cond_39

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    move-result-object v5

    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    if-ne v5, v6, :cond_39

    .line 211
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    .line 212
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 217
    :cond_39
    add-int/lit8 v2, v2, 0x1

    .line 219
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    .end local v4    # "lock":Ljava/nio/channels/FileLock;
    :goto_3b
    goto :goto_13

    .line 222
    :cond_3c
    iget-object v3, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {p0, v3, v1}, Lsun/nio/ch/SharedFileLockTable;->removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V

    .line 223
    .end local v2    # "index":I
    monitor-exit v1

    goto :goto_46

    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_43

    throw v2

    .line 225
    :cond_46
    :goto_46
    return-object v0
.end method

.method public blacklist replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .registers 10
    .param p1, "fromLock"    # Ljava/nio/channels/FileLock;
    .param p2, "toLock"    # Ljava/nio/channels/FileLock;

    .line 231
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    nop

    .line 234
    monitor-enter v0

    .line 235
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_d
    :try_start_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    .line 237
    .local v2, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v2}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/FileLock;

    .line 238
    .local v3, "lock":Ljava/nio/channels/FileLock;
    if-ne v3, p1, :cond_31

    .line 239
    invoke-virtual {v2}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    .line 240
    new-instance v4, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    sget-object v5, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    invoke-direct {v4, p2, v5, v6}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 241
    goto :goto_34

    .line 235
    .end local v2    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    .end local v3    # "lock":Ljava/nio/channels/FileLock;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 244
    .end local v1    # "index":I
    :cond_34
    :goto_34
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_36

    throw v1
.end method
