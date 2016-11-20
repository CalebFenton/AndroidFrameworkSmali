.class Lsun/nio/ch/PollSelectorImpl;
.super Lsun/nio/ch/AbstractPollSelectorImpl;
.source "PollSelectorImpl.java"


# instance fields
.field private fd0:I

.field private fd1:I

.field private interruptLock:Ljava/lang/Object;

.field private interruptTriggered:Z


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 56
    invoke-direct {p0, p1, v2, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;II)V

    #@7
    .line 48
    new-instance v2, Ljava/lang/Object;

    #@9
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    #@e
    .line 49
    iput-boolean v3, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    #@10
    .line 57
    invoke-static {v3}, Lsun/nio/ch/IOUtil;->makePipe(Z)J

    #@13
    move-result-wide v0

    #@14
    .line 58
    .local v0, "pipeFds":J
    const/16 v2, 0x20

    #@16
    ushr-long v2, v0, v2

    #@18
    long-to-int v2, v2

    #@19
    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    #@1b
    .line 59
    long-to-int v2, v0

    #@1c
    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    #@1e
    .line 60
    new-instance v2, Lsun/nio/ch/PollArrayWrapper;

    #@20
    invoke-direct {v2, v5}, Lsun/nio/ch/PollArrayWrapper;-><init>(I)V

    #@23
    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@25
    .line 61
    iget-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@27
    iget v3, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    #@29
    iget v4, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    #@2b
    invoke-virtual {v2, v3, v4}, Lsun/nio/ch/PollArrayWrapper;->initInterrupt(II)V

    #@2e
    .line 62
    new-array v2, v5, [Lsun/nio/ch/SelectionKeyImpl;

    #@30
    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@32
    .line 55
    return-void
.end method


# virtual methods
.method protected doSelect(J)I
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 68
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 69
    new-instance v1, Ljava/nio/channels/ClosedSelectorException;

    #@7
    invoke-direct {v1}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@a
    throw v1

    #@b
    .line 70
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->processDeregisterQueue()V

    #@e
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->begin()V

    #@11
    .line 73
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@13
    iget v2, p0, Lsun/nio/ch/PollSelectorImpl;->totalChannels:I

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v1, v2, v3, p1, p2}, Lsun/nio/ch/PollArrayWrapper;->poll(IIJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 75
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->end()V

    #@1c
    .line 77
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->processDeregisterQueue()V

    #@1f
    .line 78
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->updateSelectedKeys()I

    #@22
    move-result v0

    #@23
    .line 79
    .local v0, "numKeysUpdated":I
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@25
    invoke-virtual {v1, v4}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    .line 81
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@2d
    invoke-virtual {v1, v4, v4}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    #@30
    .line 82
    iget-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    #@32
    monitor-enter v2

    #@33
    .line 83
    :try_start_1
    iget v1, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    #@35
    invoke-static {v1}, Lsun/nio/ch/IOUtil;->drain(I)Z

    #@38
    .line 84
    const/4 v1, 0x0

    #@39
    iput-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3b
    monitor-exit v2

    #@3c
    .line 87
    :cond_1
    return v0

    #@3d
    .line 74
    .end local v0    # "numKeysUpdated":I
    :catchall_0
    move-exception v1

    #@3e
    .line 75
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->end()V

    #@41
    .line 74
    throw v1

    #@42
    .line 82
    .restart local v0    # "numKeysUpdated":I
    :catchall_1
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1
.end method

.method protected implCloseInterrupt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 92
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    #@3
    monitor-enter v0

    #@4
    .line 93
    const/4 v1, 0x1

    #@5
    :try_start_0
    iput-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    .line 95
    iget v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    #@a
    invoke-static {v0}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V

    #@d
    .line 96
    iget v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    #@f
    invoke-static {v0}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V

    #@12
    .line 97
    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    #@14
    .line 98
    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    #@16
    .line 99
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    #@1c
    .line 90
    return-void

    #@1d
    .line 92
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v0

    #@1f
    throw v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 104
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 105
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@9
    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    #@c
    .line 106
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 109
    return-object p0

    #@11
    .line 103
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
