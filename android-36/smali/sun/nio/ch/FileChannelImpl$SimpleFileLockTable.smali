.class Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;
.super Lsun/nio/ch/FileLockTable;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleFileLockTable"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist lockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1219
    const-class v0, Lsun/nio/ch/FileChannelImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 1223
    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    .line 1221
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    .line 1224
    return-void
.end method

.method private blacklist checkList(JJ)V
    .registers 8
    .param p1, "position"    # J
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .line 1229
    nop

    .line 1230
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/FileLock;

    .line 1231
    .local v1, "fl":Ljava/nio/channels/FileLock;
    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1234
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    goto :goto_7

    .line 1232
    .restart local v1    # "fl":Ljava/nio/channels/FileLock;
    :cond_1a
    new-instance v0, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v0}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v0

    .line 1235
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    :cond_20
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/nio/channels/FileLock;)V
    .registers 7
    .param p1, "fl"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v0

    .line 1239
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->checkList(JJ)V

    .line 1240
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist remove(Ljava/nio/channels/FileLock;)V
    .registers 4
    .param p1, "fl"    # Ljava/nio/channels/FileLock;

    .line 1245
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v0

    .line 1246
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1247
    monitor-exit v0

    .line 1248
    return-void

    .line 1247
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist removeAll()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v0

    .line 1252
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1253
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1254
    monitor-exit v0

    return-object v1

    .line 1255
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .registers 5
    .param p1, "fl1"    # Ljava/nio/channels/FileLock;
    .param p2, "fl2"    # Ljava/nio/channels/FileLock;

    .line 1259
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    monitor-enter v0

    .line 1260
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1261
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    monitor-exit v0

    .line 1263
    return-void

    .line 1262
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
