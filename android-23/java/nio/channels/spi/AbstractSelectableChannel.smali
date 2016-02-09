.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# instance fields
.field private final blockingLock:Ljava/lang/Object;

.field isBlocking:Z

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@a
    .line 45
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    #@11
    .line 47
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    #@14
    .line 56
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@16
    .line 55
    return-void
.end method

.method private declared-synchronized containsValidKeys()Z
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 275
    :try_start_0
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/nio/channels/SelectionKey;

    #@13
    .line 276
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    #@15
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 277
    const/4 v2, 0x1

    #@1c
    monitor-exit p0

    #@1d
    return v2

    #@1e
    .line 280
    .end local v0    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1
    const/4 v2, 0x0

    #@1f
    monitor-exit p0

    #@20
    return v2

    #@21
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit p0

    #@23
    throw v2
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 2
    .param p1, "blockingMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 237
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v0

    #@c
    .line 239
    :cond_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    #@e
    monitor-enter v1

    #@f
    .line 240
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    if-ne v0, p1, :cond_1

    #@13
    monitor-exit v1

    #@14
    .line 241
    return-object p0

    #@15
    .line 243
    :cond_1
    if-eqz p1, :cond_2

    #@17
    :try_start_1
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->containsValidKeys()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 244
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    #@1f
    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@22
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 239
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 246
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    #@29
    .line 247
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    monitor-exit v1

    #@2c
    .line 249
    return-object p0
.end method

.method declared-synchronized deregister(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 265
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 266
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 264
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method protected final declared-synchronized implCloseChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    #@4
    .line 175
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/nio/channels/SelectionKey;

    #@16
    .line 176
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    #@18
    .line 177
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .end local v0    # "key":Ljava/nio/channels/SelectionKey;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit p0

    #@1e
    throw v2

    #@1f
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    #@20
    .line 173
    return-void
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .locals 2

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 200
    :try_start_0
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 199
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public final declared-synchronized isRegistered()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 78
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    monitor-exit p0

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public final declared-synchronized keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .param p1, "selector"    # Ljava/nio/channels/Selector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 91
    :try_start_0
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/nio/channels/SelectionKey;

    #@14
    .line 92
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    #@16
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v2

    #@1a
    if-ne v2, p1, :cond_0

    #@1c
    monitor-exit p0

    #@1d
    .line 93
    return-object v0

    #@1e
    .end local v0    # "key":Ljava/nio/channels/SelectionKey;
    :cond_1
    monitor-exit p0

    #@1f
    .line 96
    return-object v3

    #@20
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@2
    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "interestSet"    # I
    .param p3, "attachment"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 130
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v1

    #@c
    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    #@f
    move-result v1

    #@10
    not-int v1, v1

    #@11
    and-int/2addr v1, p2

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "no valid ops in interest set: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 136
    :cond_1
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    #@30
    monitor-enter v2

    #@31
    .line 137
    :try_start_0
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 138
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@37
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@3a
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 136
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1

    #@3e
    .line 140
    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_4

    #@44
    .line 141
    if-nez p2, :cond_3

    #@46
    .line 143
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    #@48
    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    #@4b
    throw v1

    #@4c
    .line 146
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    #@4e
    const-string/jumbo v3, "selector not open"

    #@51
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@54
    throw v1

    #@55
    .line 148
    :cond_4
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    #@58
    move-result-object v0

    #@59
    .line 149
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_5

    #@5b
    .line 150
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    #@5d
    .end local p1    # "selector":Ljava/nio/channels/Selector;
    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    #@60
    move-result-object v0

    #@61
    .line 151
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    #@63
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    :goto_0
    monitor-exit v2

    #@67
    .line 159
    return-object v0

    #@68
    .line 153
    .restart local p1    # "selector":Ljava/nio/channels/Selector;
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    #@6b
    move-result v1

    #@6c
    if-nez v1, :cond_6

    #@6e
    .line 154
    new-instance v1, Ljava/nio/channels/CancelledKeyException;

    #@70
    invoke-direct {v1}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    #@73
    throw v1

    #@74
    .line 156
    :cond_6
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    #@77
    .line 157
    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    goto :goto_0
.end method
