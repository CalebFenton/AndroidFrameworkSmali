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
.field static final synthetic -assertionsDisabled:Z

.field private static lockMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lsun/nio/ch/FileKey;",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;>;"
        }
    .end annotation
.end field

.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channel:Ljava/nio/channels/Channel;

.field private final fileKey:Lsun/nio/ch/FileKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/SharedFileLockTable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@b
    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@10
    .line 106
    sput-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    .line 110
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@14
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@17
    sput-object v0, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@19
    .line 80
    return-void

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/Channel;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    #@3
    .line 119
    iput-object p1, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    #@5
    .line 120
    invoke-static {p2}, Lsun/nio/ch/FileKey;->create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@b
    .line 118
    return-void
.end method

.method private checkList(Ljava/util/List;JJ)V
    .locals 4
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    sget-boolean v3, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@2
    if-nez v3, :cond_0

    #@4
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    new-instance v3, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v3

    #@10
    .line 252
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@20
    .line 253
    .local v1, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v1}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/nio/channels/FileLock;

    #@26
    .line 254
    .local v0, "fl":Ljava/nio/channels/FileLock;
    if-eqz v0, :cond_1

    #@28
    invoke-virtual {v0, p2, p3, p4, p5}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 255
    new-instance v3, Ljava/nio/channels/OverlappingFileLockException;

    #@30
    invoke-direct {v3}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    #@33
    throw v3

    #@34
    .line 249
    .end local v0    # "fl":Ljava/nio/channels/FileLock;
    .end local v1    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_2
    return-void
.end method

.method private removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    .locals 1
    .param p1, "fk"    # Lsun/nio/ch/FileKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/FileKey;",
            "Ljava/util/List",
            "<",
            "Lsun/nio/ch/SharedFileLockTable$FileLockReference;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    sget-boolean v0, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-static {p2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    new-instance v0, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v0

    #@10
    .line 167
    :cond_0
    sget-boolean v0, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@12
    if-nez v0, :cond_2

    #@14
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    if-ne v0, p2, :cond_1

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_0
    if-nez v0, :cond_2

    #@1f
    new-instance v0, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@24
    throw v0

    #@25
    :cond_1
    const/4 v0, 0x0

    #@26
    goto :goto_0

    #@27
    .line 168
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 169
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2f
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 165
    :cond_3
    return-void
.end method

.method private removeStaleEntries()V
    .locals 4

    #@0
    .prologue
    .line 262
    :cond_0
    :goto_0
    sget-object v3, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@8
    .local v2, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    if-eqz v2, :cond_1

    #@a
    .line 263
    invoke-virtual {v2}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->fileKey()Lsun/nio/ch/FileKey;

    #@d
    move-result-object v0

    #@e
    .line 264
    .local v0, "fk":Lsun/nio/ch/FileKey;
    sget-object v3, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/List;

    #@16
    .line 265
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-eqz v1, :cond_0

    #@18
    .line 266
    monitor-enter v1

    #@19
    .line 267
    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@1c
    .line 268
    invoke-direct {p0, v0, v1}, Lsun/nio/ch/SharedFileLockTable;->removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    goto :goto_0

    #@21
    .line 266
    :catchall_0
    move-exception v3

    #@22
    monitor-exit v1

    #@23
    throw v3

    #@24
    .line 260
    .end local v0    # "fk":Lsun/nio/ch/FileKey;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/channels/FileLock;)V
    .locals 9
    .param p1, "fl"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/List;

    #@a
    .line 130
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_0
    if-nez v1, :cond_1

    #@c
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    #@e
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    const/4 v0, 0x2

    #@f
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 133
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    monitor-enter v1

    #@13
    .line 134
    :try_start_0
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@17
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v8

    #@1b
    check-cast v8, Ljava/util/List;

    #@1d
    .line 135
    .local v8, "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-nez v8, :cond_0

    #@1f
    .line 137
    new-instance v0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@21
    sget-object v2, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@23
    iget-object v3, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@25
    invoke-direct {v0, p1, v2, v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    #@28
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2b
    .end local v8    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :goto_1
    monitor-exit v1

    #@2c
    .line 162
    invoke-direct {p0}, Lsun/nio/ch/SharedFileLockTable;->removeStaleEntries()V

    #@2f
    .line 124
    return-void

    #@30
    .restart local v8    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_0
    monitor-exit v1

    #@31
    .line 142
    move-object v1, v8

    #@32
    .line 149
    .end local v8    # "prev":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_1
    monitor-enter v1

    #@33
    .line 150
    :try_start_1
    sget-object v0, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@35
    iget-object v2, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@37
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v6

    #@3b
    check-cast v6, Ljava/util/List;

    #@3d
    .line 151
    .local v6, "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-ne v1, v6, :cond_2

    #@3f
    .line 152
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    #@42
    move-result-wide v2

    #@43
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    #@46
    move-result-wide v4

    #@47
    move-object v0, p0

    #@48
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/SharedFileLockTable;->checkList(Ljava/util/List;JJ)V

    #@4b
    .line 153
    new-instance v0, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@4d
    sget-object v2, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@4f
    iget-object v3, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@51
    invoke-direct {v0, p1, v2, v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    #@54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_1

    #@58
    .line 149
    .end local v6    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :catchall_0
    move-exception v0

    #@59
    monitor-exit v1

    #@5a
    throw v0

    #@5b
    .line 133
    :catchall_1
    move-exception v0

    #@5c
    monitor-exit v1

    #@5d
    throw v0

    #@5e
    .line 156
    .restart local v6    # "current":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    :cond_2
    move-object v7, v6

    #@5f
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    monitor-exit v1

    #@60
    move-object v1, v7

    #@61
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    goto :goto_0
.end method

.method public remove(Ljava/nio/channels/FileLock;)V
    .locals 8
    .param p1, "fl"    # Ljava/nio/channels/FileLock;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 175
    sget-boolean v6, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    if-eqz p1, :cond_0

    #@8
    move v6, v4

    #@9
    :goto_0
    if-nez v6, :cond_1

    #@b
    new-instance v4, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v4

    #@11
    :cond_0
    move v6, v5

    #@12
    goto :goto_0

    #@13
    .line 178
    :cond_1
    sget-object v6, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    iget-object v7, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@17
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/util/List;

    #@1d
    .line 179
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-nez v1, :cond_2

    #@1f
    return-void

    #@20
    .line 181
    :cond_2
    monitor-enter v1

    #@21
    .line 182
    const/4 v0, 0x0

    #@22
    .line 183
    .local v0, "index":I
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@25
    move-result v6

    #@26
    if-ge v0, v6, :cond_5

    #@28
    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@2e
    .line 185
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/nio/channels/FileLock;

    #@34
    .line 186
    .local v2, "lock":Ljava/nio/channels/FileLock;
    if-ne v2, p1, :cond_6

    #@36
    .line 187
    sget-boolean v6, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@38
    if-nez v6, :cond_4

    #@3a
    if-eqz v2, :cond_3

    #@3c
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    #@3f
    move-result-object v6

    #@40
    iget-object v7, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    #@42
    if-ne v6, v7, :cond_3

    #@44
    :goto_2
    if-nez v4, :cond_4

    #@46
    new-instance v4, Ljava/lang/AssertionError;

    #@48
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@4b
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    .line 181
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :catchall_0
    move-exception v4

    #@4d
    monitor-exit v1

    #@4e
    throw v4

    #@4f
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_3
    move v4, v5

    #@50
    .line 187
    goto :goto_2

    #@51
    .line 188
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    #@54
    .line 189
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_5
    monitor-exit v1

    #@58
    .line 174
    return-void

    #@59
    .line 192
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_1
.end method

.method public removeAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 200
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    sget-object v5, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@9
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/util/List;

    #@f
    .line 201
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    if-eqz v1, :cond_2

    #@11
    .line 202
    monitor-enter v1

    #@12
    .line 203
    const/4 v0, 0x0

    #@13
    .line 204
    .local v0, "index":I
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@16
    move-result v5

    #@17
    if-ge v0, v5, :cond_1

    #@19
    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@1f
    .line 206
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/nio/channels/FileLock;

    #@25
    .line 209
    .local v2, "lock":Ljava/nio/channels/FileLock;
    if-eqz v2, :cond_0

    #@27
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->acquiredBy()Ljava/nio/channels/Channel;

    #@2a
    move-result-object v5

    #@2b
    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->channel:Ljava/nio/channels/Channel;

    #@2d
    if-ne v5, v6, :cond_0

    #@2f
    .line 211
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    #@32
    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@35
    .line 215
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 202
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :catchall_0
    move-exception v5

    #@3a
    monitor-exit v1

    #@3b
    throw v5

    #@3c
    .line 217
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 222
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@41
    invoke-direct {p0, v5, v1}, Lsun/nio/ch/SharedFileLockTable;->removeKeyIfEmpty(Lsun/nio/ch/FileKey;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v1

    #@45
    .line 225
    .end local v0    # "index":I
    :cond_2
    return-object v4
.end method

.method public replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .locals 7
    .param p1, "fromLock"    # Ljava/nio/channels/FileLock;
    .param p2, "toLock"    # Ljava/nio/channels/FileLock;

    #@0
    .prologue
    .line 231
    sget-object v4, Lsun/nio/ch/SharedFileLockTable;->lockMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    iget-object v5, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@4
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/List;

    #@a
    .line 232
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/nio/ch/SharedFileLockTable$FileLockReference;>;"
    sget-boolean v4, Lsun/nio/ch/SharedFileLockTable;->-assertionsDisabled:Z

    #@c
    if-nez v4, :cond_1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v4, 0x1

    #@11
    :goto_0
    if-nez v4, :cond_1

    #@13
    new-instance v4, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v4

    #@19
    :cond_0
    const/4 v4, 0x0

    #@1a
    goto :goto_0

    #@1b
    .line 234
    :cond_1
    monitor-enter v1

    #@1c
    .line 235
    const/4 v0, 0x0

    #@1d
    .local v0, "index":I
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@20
    move-result v4

    #@21
    if-ge v0, v4, :cond_2

    #@23
    .line 236
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@29
    .line 237
    .local v3, "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->get()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Ljava/nio/channels/FileLock;

    #@2f
    .line 238
    .local v2, "lock":Ljava/nio/channels/FileLock;
    if-ne v2, p1, :cond_3

    #@31
    .line 239
    invoke-virtual {v3}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;->clear()V

    #@34
    .line 240
    new-instance v4, Lsun/nio/ch/SharedFileLockTable$FileLockReference;

    #@36
    sget-object v5, Lsun/nio/ch/SharedFileLockTable;->queue:Ljava/lang/ref/ReferenceQueue;

    #@38
    iget-object v6, p0, Lsun/nio/ch/SharedFileLockTable;->fileKey:Lsun/nio/ch/FileKey;

    #@3a
    invoke-direct {v4, p2, v5, v6}, Lsun/nio/ch/SharedFileLockTable$FileLockReference;-><init>(Ljava/nio/channels/FileLock;Ljava/lang/ref/ReferenceQueue;Lsun/nio/ch/FileKey;)V

    #@3d
    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_2
    monitor-exit v1

    #@41
    .line 229
    return-void

    #@42
    .line 235
    .restart local v2    # "lock":Ljava/nio/channels/FileLock;
    .restart local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_1

    #@45
    .line 234
    .end local v2    # "lock":Ljava/nio/channels/FileLock;
    .end local v3    # "ref":Lsun/nio/ch/SharedFileLockTable$FileLockReference;
    :catchall_0
    move-exception v4

    #@46
    monitor-exit v1

    #@47
    throw v4
.end method
