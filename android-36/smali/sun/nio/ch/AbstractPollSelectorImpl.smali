.class abstract Lsun/nio/ch/AbstractPollSelectorImpl;
.super Lsun/nio/ch/SelectorImpl;
.source "AbstractPollSelectorImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected final blacklist INIT_CAP:I

.field protected blacklist channelArray:[Lsun/nio/ch/SelectionKeyImpl;

.field protected blacklist channelOffset:I

.field private blacklist closeLock:Ljava/lang/Object;

.field private blacklist closed:Z

.field blacklist pollWrapper:Lsun/nio/ch/PollArrayWrapper;

.field protected blacklist totalChannels:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 39
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;II)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "channels"    # I
    .param p3, "offset"    # I

    .line 65
    invoke-direct {p0, p1}, Lsun/nio/ch/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->INIT_CAP:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .line 59
    iput-boolean v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    .line 66
    iput p2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 67
    iput p3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .line 68
    return-void
.end method


# virtual methods
.method protected abstract blacklist doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected blacklist implClose()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-eqz v1, :cond_9

    .line 88
    monitor-exit v0

    return-void

    .line 89
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    .line 91
    iget v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v1, "i":I
    :goto_e
    iget v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v1, v2, :cond_3b

    .line 92
    iget-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v2, v2, v1

    .line 93
    .local v2, "ski":Lsun/nio/ch/SelectionKeyImpl;
    nop

    .line 94
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 95
    invoke-virtual {p0, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 96
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    .line 97
    .local v3, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v4

    if-nez v4, :cond_38

    .line 98
    move-object v4, v3

    check-cast v4, Lsun/nio/ch/SelChImpl;

    invoke-interface {v4}, Lsun/nio/ch/SelChImpl;->kill()V

    .line 91
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    .end local v3    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 100
    .end local v1    # "i":I
    :cond_3b
    invoke-virtual {p0}, Lsun/nio/ch/AbstractPollSelectorImpl;->implCloseInterrupt()V

    .line 101
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1}, Lsun/nio/ch/PollArrayWrapper;->free()V

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    .line 103
    iput-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 104
    iput-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method protected abstract blacklist implCloseInterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected blacklist implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .registers 7
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v0

    .line 171
    .local v0, "i":I
    nop

    .line 172
    iget v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 174
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 175
    .local v1, "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aput-object v1, v2, v0

    .line 176
    invoke-virtual {v1, v0}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 177
    iget-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v2, v0}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    .line 178
    iget-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-static {v2, v3, v4, v0}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    .line 180
    .end local v1    # "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    goto :goto_30

    .line 181
    :cond_2b
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v1, v0}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    .line 184
    :goto_30
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 185
    iget v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 186
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v2, v1, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    .line 187
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 189
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0, p1}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 192
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 193
    .local v1, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 194
    move-object v2, v1

    check-cast v2, Lsun/nio/ch/SelChImpl;

    invoke-interface {v2}, Lsun/nio/ch/SelChImpl;->kill()V

    .line 195
    :cond_6e
    return-void
.end method

.method protected blacklist implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    .registers 7
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 141
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-nez v1, :cond_4b

    .line 146
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    array-length v1, v1

    iget v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ne v1, v2, :cond_2c

    .line 148
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget v1, v1, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    mul-int/lit8 v1, v1, 0x2

    .line 149
    .local v1, "newSize":I
    new-array v2, v1, [Lsun/nio/ch/SelectionKeyImpl;

    .line 151
    .local v2, "temp":[Lsun/nio/ch/SelectionKeyImpl;
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v3, "i":I
    :goto_18
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v3, v4, :cond_25

    .line 152
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 153
    .end local v3    # "i":I
    :cond_25
    iput-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    .line 155
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->grow(I)V

    .line 157
    .end local v1    # "newSize":I
    .end local v2    # "temp":[Lsun/nio/ch/SelectionKeyImpl;
    :cond_2c
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    iget v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    aput-object p1, v1, v2

    .line 158
    iget v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    invoke-virtual {p1, v1}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    .line 159
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    iget-object v2, p1, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-virtual {v1, v2}, Lsun/nio/ch/PollArrayWrapper;->addEntry(Lsun/nio/ch/SelChImpl;)V

    .line 160
    iget v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    .line 161
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 143
    :cond_4b
    new-instance v1, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/AbstractPollSelectorImpl;
    .end local p1    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    throw v1

    .line 162
    .restart local p0    # "this":Lsun/nio/ch/AbstractPollSelectorImpl;
    .restart local p1    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public blacklist putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .registers 6
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    .line 71
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    if-nez v1, :cond_12

    .line 74
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 73
    :cond_12
    new-instance v1, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/AbstractPollSelectorImpl;
    .end local p1    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    .end local p2    # "ops":I
    throw v1

    .line 75
    .restart local p0    # "this":Lsun/nio/ch/AbstractPollSelectorImpl;
    .restart local p1    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    .restart local p2    # "ops":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method protected blacklist updateSelectedKeys()I
    .registers 7

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "numKeysUpdated":I
    iget v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    if-ge v1, v2, :cond_46

    .line 120
    iget-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v2, v1}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    move-result v2

    .line 121
    .local v2, "rOps":I
    if-eqz v2, :cond_43

    .line 122
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    aget-object v3, v3, v1

    .line 123
    .local v3, "sk":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    .line 124
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 125
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 129
    :cond_2c
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    .line 130
    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v4

    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_43

    .line 131
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 119
    .end local v2    # "rOps":I
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 137
    .end local v1    # "i":I
    :cond_46
    return v0
.end method

.method public whitelist test-api wakeup()Ljava/nio/channels/Selector;
    .registers 2

    .line 79
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    .line 80
    return-object p0
.end method
