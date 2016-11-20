.class public Lsun/nio/ch/FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileLockImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private volatile valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/FileLockImpl;

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
    sput-boolean v0, Lsun/nio/ch/FileLockImpl;->-assertionsDisabled:Z

    #@b
    .line 31
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    #@0
    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@3
    .line 34
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    #@6
    .line 36
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    #@0
    .prologue
    .line 46
    sget-boolean v0, Lsun/nio/ch/FileLockImpl;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

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
    .line 47
    :cond_0
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    #@13
    .line 45
    return-void
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 42
    iget-boolean v0, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    #@2
    return v0
.end method

.method public declared-synchronized release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/FileLockImpl;->acquiredBy()Ljava/nio/channels/Channel;

    #@4
    move-result-object v0

    #@5
    .line 52
    .local v0, "ch":Ljava/nio/channels/Channel;
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 53
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    #@d
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@10
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .end local v0    # "ch":Ljava/nio/channels/Channel;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1

    #@14
    .line 54
    .restart local v0    # "ch":Ljava/nio/channels/Channel;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 55
    instance-of v1, v0, Lsun/nio/ch/FileChannelImpl;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 56
    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    #@1e
    .end local v0    # "ch":Ljava/nio/channels/Channel;
    invoke-virtual {v0, p0}, Lsun/nio/ch/FileChannelImpl;->release(Lsun/nio/ch/FileLockImpl;)V

    #@21
    .line 58
    const/4 v1, 0x0

    #@22
    iput-boolean v1, p0, Lsun/nio/ch/FileLockImpl;->valid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    :cond_1
    monitor-exit p0

    #@25
    .line 50
    return-void

    #@26
    .line 57
    .restart local v0    # "ch":Ljava/nio/channels/Channel;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
