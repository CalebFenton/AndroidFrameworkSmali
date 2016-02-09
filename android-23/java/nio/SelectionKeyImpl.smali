.class final Ljava/nio/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field private channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

.field private interestOps:I

.field private readyOps:I

.field private selector:Ljava/nio/SelectorImpl;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "operations"    # I
    .param p3, "attachment"    # Ljava/lang/Object;
    .param p4, "selector"    # Ljava/nio/SelectorImpl;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    #@5
    .line 43
    iput p2, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    #@7
    .line 44
    iput-object p4, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    #@9
    .line 45
    invoke-virtual {p0, p3}, Ljava/nio/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 41
    return-void
.end method

.method private checkValid()V
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/nio/SelectionKeyImpl;->isValid()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 101
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    #@b
    throw v0

    #@c
    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    #@2
    return-object v0
.end method

.method public interestOps()I
    .locals 2

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    #@3
    .line 56
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    #@5
    iget-object v0, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    #@7
    monitor-enter v0

    #@8
    .line 57
    :try_start_0
    iget v1, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v0

    #@b
    return v1

    #@c
    .line 56
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 2
    .param p1, "operations"    # I

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    #@3
    .line 70
    invoke-virtual {p0}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    #@a
    move-result v0

    #@b
    not-int v0, v0

    #@c
    and-int/2addr v0, p1

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v0

    #@15
    .line 73
    :cond_0
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    #@17
    iget-object v0, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    #@19
    monitor-enter v0

    #@1a
    .line 74
    :try_start_0
    iput p1, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v0

    #@1d
    .line 76
    return-object p0

    #@1e
    .line 73
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v0

    #@20
    throw v1
.end method

.method interestOpsNoCheck()I
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    #@2
    iget-object v0, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    #@4
    monitor-enter v0

    #@5
    .line 63
    :try_start_0
    iget v1, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 62
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    #@2
    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    #@8
    check-cast v0, Ljava/nio/channels/SocketChannel;

    #@a
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public readyOps()I
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    #@3
    .line 82
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->readyOps:I

    #@5
    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    #@2
    return-object v0
.end method

.method setReadyOps(I)V
    .locals 1
    .param p1, "readyOps"    # I

    #@0
    .prologue
    .line 96
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    #@2
    and-int/2addr v0, p1

    #@3
    iput v0, p0, Ljava/nio/SelectionKeyImpl;->readyOps:I

    #@5
    .line 93
    return-void
.end method
