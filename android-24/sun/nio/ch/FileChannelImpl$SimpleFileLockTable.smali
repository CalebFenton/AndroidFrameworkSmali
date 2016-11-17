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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final lockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;

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
    sput-boolean v0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->-assertionsDisabled:Z

    #@b
    .line 1108
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1112
    invoke-direct {p0}, Lsun/nio/ch/FileLockTable;-><init>()V

    #@3
    .line 1110
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@b
    .line 1112
    return-void
.end method

.method private checkList(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    #@0
    .prologue
    .line 1118
    sget-boolean v2, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->-assertionsDisabled:Z

    #@2
    if-nez v2, :cond_0

    #@4
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@6
    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    new-instance v2, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v2

    #@12
    .line 1119
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "fl$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/nio/channels/FileLock;

    #@24
    .line 1120
    .local v0, "fl":Ljava/nio/channels/FileLock;
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 1121
    new-instance v2, Ljava/nio/channels/OverlappingFileLockException;

    #@2c
    invoke-direct {v2}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    #@2f
    throw v2

    #@30
    .line 1116
    .end local v0    # "fl":Ljava/nio/channels/FileLock;
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/channels/FileLock;)V
    .locals 6
    .param p1, "fl"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    #@0
    .prologue
    .line 1127
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 1128
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    #@6
    move-result-wide v2

    #@7
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    #@a
    move-result-wide v4

    #@b
    invoke-direct {p0, v2, v3, v4, v5}, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->checkList(JJ)V

    #@e
    .line 1129
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 1126
    return-void

    #@15
    .line 1127
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public remove(Ljava/nio/channels/FileLock;)V
    .locals 2
    .param p1, "fl"    # Ljava/nio/channels/FileLock;

    #@0
    .prologue
    .line 1134
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 1135
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1133
    return-void

    #@a
    .line 1134
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public removeAll()Ljava/util/List;
    .locals 3
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
    .line 1140
    iget-object v2, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@2
    monitor-enter v2

    #@3
    .line 1141
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@5
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a
    .line 1142
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@c
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 1143
    return-object v0

    #@11
    .line 1140
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileLock;>;"
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method public replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
    .locals 2
    .param p1, "fl1"    # Ljava/nio/channels/FileLock;
    .param p2, "fl2"    # Ljava/nio/channels/FileLock;

    #@0
    .prologue
    .line 1148
    iget-object v1, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 1149
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8
    .line 1150
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl$SimpleFileLockTable;->lockList:Ljava/util/List;

    #@a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1147
    return-void

    #@f
    .line 1148
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method
