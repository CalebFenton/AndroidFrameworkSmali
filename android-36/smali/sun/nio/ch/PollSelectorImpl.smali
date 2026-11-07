.class Lsun/nio/ch/PollSelectorImpl;
.super Lsun/nio/ch/AbstractPollSelectorImpl;
.source "PollSelectorImpl.java"


# instance fields
.field private blacklist fd0:I

.field private blacklist fd1:I

.field private blacklist interruptLock:Ljava/lang/Object;

.field private blacklist interruptTriggered:Z


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 8
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lsun/nio/ch/AbstractPollSelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;II)V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    .line 57
    invoke-static {v0}, Lsun/nio/ch/IOUtil;->makePipe(Z)J

    move-result-wide v0

    .line 58
    .local v0, "pipeFds":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    .line 59
    long-to-int v2, v0

    iput v2, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    .line 61
    :try_start_1c
    new-instance v2, Lsun/nio/ch/PollArrayWrapper;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lsun/nio/ch/PollArrayWrapper;-><init>(I)V

    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 62
    iget-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v4, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    iget v5, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    invoke-virtual {v2, v4, v5}, Lsun/nio/ch/PollArrayWrapper;->initInterrupt(II)V

    .line 63
    new-array v2, v3, [Lsun/nio/ch/SelectionKeyImpl;

    iput-object v2, p0, Lsun/nio/ch/PollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_34

    .line 76
    nop

    .line 77
    return-void

    .line 64
    :catchall_34
    move-exception v2

    .line 66
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_35
    iget v3, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    invoke-static {v3}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 69
    goto :goto_3f

    .line 67
    :catch_3b
    move-exception v3

    .line 68
    .local v3, "ioe0":Ljava/io/IOException;
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    .end local v3    # "ioe0":Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    iget v3, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    invoke-static {v3}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_45

    .line 74
    goto :goto_49

    .line 72
    :catch_45
    move-exception v3

    .line 73
    .local v3, "ioe1":Ljava/io/IOException;
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .end local v3    # "ioe1":Ljava/io/IOException;
    :goto_49
    throw v2
.end method


# virtual methods
.method protected blacklist doSelect(J)I
    .registers 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    if-eqz v0, :cond_3f

    .line 84
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->processDeregisterQueue()V

    .line 86
    :try_start_7
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->begin()V

    .line 87
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v1, p0, Lsun/nio/ch/PollSelectorImpl;->totalChannels:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lsun/nio/ch/PollArrayWrapper;->poll(IIJ)I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_3a

    .line 89
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->end()V

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->processDeregisterQueue()V

    .line 92
    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->updateSelectedKeys()I

    move-result v0

    .line 93
    .local v0, "numKeysUpdated":I
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1, v2}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v1

    if-eqz v1, :cond_39

    .line 95
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1, v2, v2}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 96
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_2d
    iget v3, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    invoke-static {v3}, Lsun/nio/ch/IOUtil;->drain(I)Z

    .line 98
    iput-boolean v2, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    .line 99
    monitor-exit v1

    goto :goto_39

    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_36

    throw v2

    .line 101
    :cond_39
    :goto_39
    return v0

    .line 89
    .end local v0    # "numKeysUpdated":I
    :catchall_3a
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/PollSelectorImpl;->end()V

    .line 90
    throw v0

    .line 83
    :cond_3f
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0
.end method

.method protected blacklist implCloseInterrupt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    .line 108
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1d

    .line 109
    iget v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    invoke-static {v0}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V

    .line 110
    iget v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    invoke-static {v0}, Lsun/nio/ch/FileDispatcherImpl;->closeIntFD(I)V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd0:I

    .line 112
    iput v0, p0, Lsun/nio/ch/PollSelectorImpl;->fd1:I

    .line 113
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    .line 114
    return-void

    .line 108
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api wakeup()Ljava/nio/channels/Selector;
    .registers 3

    .line 117
    iget-object v0, p0, Lsun/nio/ch/PollSelectorImpl;->interruptLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    if-nez v1, :cond_f

    .line 119
    iget-object v1, p0, Lsun/nio/ch/PollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/PollSelectorImpl;->interruptTriggered:Z

    .line 122
    :cond_f
    monitor-exit v0

    .line 123
    return-object p0

    .line 122
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
