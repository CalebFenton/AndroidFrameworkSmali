.class abstract Lsun/nio/ch/AbstractPollSelectorImpl;
.super Lsun/nio/ch/SelectorImpl;
.source "AbstractPollSelectorImpl.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final INIT_CAP:I

.field protected channelArray:[Lsun/nio/ch/SelectionKeyImpl;

.field protected channelOffset:I

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field pollWrapper:Lsun/nio/ch/PollArrayWrapper;

.field protected totalChannels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/AbstractPollSelectorImpl;

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
    sput-boolean v0, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    #@b
    .line 39
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;II)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "channels"    # I
    .param p3, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    invoke-direct {p0, p1}, Lsun/nio/ch/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@4
    .line 47
    const/16 v0, 0xa

    #@6
    iput v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->INIT_CAP:I

    #@8
    .line 53
    iput v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    #@a
    .line 59
    iput-boolean v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    #@c
    .line 62
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    #@13
    .line 66
    iput p2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@15
    .line 67
    iput p3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    #@17
    .line 64
    return-void
.end method


# virtual methods
.method protected abstract doSelect(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected implClose()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v7, -0x1

    #@3
    .line 86
    iget-object v6, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    #@5
    monitor-enter v6

    #@6
    .line 87
    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    if-eqz v3, :cond_0

    #@a
    monitor-exit v6

    #@b
    .line 88
    return-void

    #@c
    .line 89
    :cond_0
    const/4 v3, 0x1

    #@d
    :try_start_1
    iput-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    #@f
    .line 91
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    #@11
    .local v0, "i":I
    :goto_0
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@13
    if-ge v0, v3, :cond_5

    #@15
    .line 92
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@17
    aget-object v2, v3, v0

    #@19
    .line 93
    .local v2, "ski":Lsun/nio/ch/SelectionKeyImpl;
    sget-boolean v3, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    #@1b
    if-nez v3, :cond_2

    #@1d
    invoke-virtual {v2}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    #@20
    move-result v3

    #@21
    if-eq v3, v7, :cond_1

    #@23
    move v3, v4

    #@24
    :goto_1
    if-nez v3, :cond_2

    #@26
    new-instance v3, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 86
    .end local v0    # "i":I
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit v6

    #@2e
    throw v3

    #@2f
    .restart local v0    # "i":I
    .restart local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_1
    move v3, v5

    #@30
    .line 93
    goto :goto_1

    #@31
    .line 94
    :cond_2
    const/4 v3, -0x1

    #@32
    :try_start_2
    invoke-virtual {v2, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    #@35
    .line 95
    invoke-virtual {p0, v2}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    #@38
    .line 96
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@3a
    aget-object v3, v3, v0

    #@3c
    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    #@3f
    move-result-object v1

    #@40
    .line 97
    .local v1, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    #@43
    move-result v3

    #@44
    if-nez v3, :cond_3

    #@46
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_4

    #@4c
    .line 91
    .end local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 98
    .restart local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_4
    check-cast v1, Lsun/nio/ch/SelChImpl;

    #@51
    .end local v1    # "selch":Ljava/nio/channels/SelectableChannel;
    invoke-interface {v1}, Lsun/nio/ch/SelChImpl;->kill()V

    #@54
    goto :goto_2

    #@55
    .line 100
    .end local v2    # "ski":Lsun/nio/ch/SelectionKeyImpl;
    :cond_5
    invoke-virtual {p0}, Lsun/nio/ch/AbstractPollSelectorImpl;->implCloseInterrupt()V

    #@58
    .line 101
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@5a
    invoke-virtual {v3}, Lsun/nio/ch/PollArrayWrapper;->free()V

    #@5d
    .line 102
    const/4 v3, 0x0

    #@5e
    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@60
    .line 103
    const/4 v3, 0x0

    #@61
    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    #@63
    .line 104
    const/4 v3, 0x0

    #@64
    iput-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@66
    .line 105
    const/4 v3, 0x0

    #@67
    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    monitor-exit v6

    #@6a
    .line 85
    return-void
.end method

.method protected abstract implCloseInterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected implDereg(Lsun/nio/ch/SelectionKeyImpl;)V
    .locals 6
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 170
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    #@4
    move-result v1

    #@5
    .line 171
    .local v1, "i":I
    sget-boolean v4, Lsun/nio/ch/AbstractPollSelectorImpl;->-assertionsDisabled:Z

    #@7
    if-nez v4, :cond_1

    #@9
    if-ltz v1, :cond_0

    #@b
    const/4 v3, 0x1

    #@c
    :cond_0
    if-nez v3, :cond_1

    #@e
    new-instance v3, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v3

    #@14
    .line 172
    :cond_1
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    if-eq v1, v3, :cond_3

    #@1a
    .line 174
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@1c
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@1e
    add-int/lit8 v4, v4, -0x1

    #@20
    aget-object v0, v3, v4

    #@22
    .line 175
    .local v0, "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@24
    aput-object v0, v3, v1

    #@26
    .line 176
    invoke-virtual {v0, v1}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    #@29
    .line 177
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@2b
    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    #@2e
    .line 178
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@30
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@32
    add-int/lit8 v4, v4, -0x1

    #@34
    .line 179
    iget-object v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@36
    .line 178
    invoke-static {v3, v4, v5, v1}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    #@39
    .line 184
    .end local v0    # "endChannel":Lsun/nio/ch/SelectionKeyImpl;
    :goto_0
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@3b
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@3d
    add-int/lit8 v4, v4, -0x1

    #@3f
    const/4 v5, 0x0

    #@40
    aput-object v5, v3, v4

    #@42
    .line 185
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@44
    add-int/lit8 v3, v3, -0x1

    #@46
    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@48
    .line 186
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@4a
    iget v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@4c
    add-int/lit8 v4, v4, -0x1

    #@4e
    iput v4, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@50
    .line 187
    const/4 v3, -0x1

    #@51
    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    #@54
    .line 189
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    #@56
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@59
    .line 190
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    #@5b
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5e
    .line 191
    invoke-virtual {p0, p1}, Lsun/nio/ch/AbstractPollSelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    #@61
    .line 192
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    #@64
    move-result-object v2

    #@65
    .line 193
    .local v2, "selch":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    #@68
    move-result v3

    #@69
    if-nez v3, :cond_2

    #@6b
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_4

    #@71
    .line 165
    .end local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_2
    :goto_1
    return-void

    #@72
    .line 181
    :cond_3
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@74
    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->release(I)V

    #@77
    goto :goto_0

    #@78
    .line 194
    .restart local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    :cond_4
    check-cast v2, Lsun/nio/ch/SelChImpl;

    #@7a
    .end local v2    # "selch":Ljava/nio/channels/SelectableChannel;
    invoke-interface {v2}, Lsun/nio/ch/SelChImpl;->kill()V

    #@7d
    goto :goto_1
.end method

.method protected implRegister(Lsun/nio/ch/SelectionKeyImpl;)V
    .locals 6
    .param p1, "ski"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 141
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 142
    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 143
    new-instance v3, Ljava/nio/channels/ClosedSelectorException;

    #@9
    invoke-direct {v3}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@c
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 141
    :catchall_0
    move-exception v3

    #@e
    monitor-exit v4

    #@f
    throw v3

    #@10
    .line 146
    :cond_0
    :try_start_1
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@12
    array-length v3, v3

    #@13
    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@15
    if-ne v3, v5, :cond_2

    #@17
    .line 148
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@19
    iget v3, v3, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@1b
    mul-int/lit8 v1, v3, 0x2

    #@1d
    .line 149
    .local v1, "newSize":I
    new-array v2, v1, [Lsun/nio/ch/SelectionKeyImpl;

    #@1f
    .line 151
    .local v2, "temp":[Lsun/nio/ch/SelectionKeyImpl;
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    #@21
    .local v0, "i":I
    :goto_0
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@23
    if-ge v0, v3, :cond_1

    #@25
    .line 152
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@27
    aget-object v3, v3, v0

    #@29
    aput-object v3, v2, v0

    #@2b
    .line 151
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 153
    :cond_1
    iput-object v2, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@30
    .line 155
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@32
    invoke-virtual {v3, v1}, Lsun/nio/ch/PollArrayWrapper;->grow(I)V

    #@35
    .line 157
    .end local v0    # "i":I
    .end local v1    # "newSize":I
    .end local v2    # "temp":[Lsun/nio/ch/SelectionKeyImpl;
    :cond_2
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@37
    iget v5, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@39
    aput-object p1, v3, v5

    #@3b
    .line 158
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@3d
    invoke-virtual {p1, v3}, Lsun/nio/ch/SelectionKeyImpl;->setIndex(I)V

    #@40
    .line 159
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@42
    iget-object v5, p1, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    #@44
    invoke-virtual {v3, v5}, Lsun/nio/ch/PollArrayWrapper;->addEntry(Lsun/nio/ch/SelChImpl;)V

    #@47
    .line 160
    iget v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@49
    add-int/lit8 v3, v3, 0x1

    #@4b
    iput v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@4d
    .line 161
    iget-object v3, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->keys:Ljava/util/HashSet;

    #@4f
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    monitor-exit v4

    #@53
    .line 140
    return-void
.end method

.method putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V
    .locals 3
    .param p1, "sk"    # Lsun/nio/ch/SelectionKeyImpl;
    .param p2, "ops"    # I

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 72
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->closed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 73
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    #@9
    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 71
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@12
    invoke-virtual {p1}, Lsun/nio/ch/SelectionKeyImpl;->getIndex()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v0, v2, p2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 70
    return-void
.end method

.method protected updateSelectedKeys()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 117
    const/4 v1, 0x0

    #@2
    .line 119
    .local v1, "numKeysUpdated":I
    iget v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelOffset:I

    #@4
    .local v0, "i":I
    :goto_0
    iget v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->totalChannels:I

    #@6
    if-ge v0, v4, :cond_2

    #@8
    .line 120
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@a
    invoke-virtual {v4, v0}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    #@d
    move-result v2

    #@e
    .line 121
    .local v2, "rOps":I
    if-eqz v2, :cond_0

    #@10
    .line 122
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->channelArray:[Lsun/nio/ch/SelectionKeyImpl;

    #@12
    aget-object v3, v4, v0

    #@14
    .line 123
    .local v3, "sk":Lsun/nio/ch/SelectionKeyImpl;
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@16
    invoke-virtual {v4, v0, v6}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    #@19
    .line 124
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    #@1b
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 125
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    #@23
    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_0

    #@29
    .line 126
    add-int/lit8 v1, v1, 0x1

    #@2b
    .line 119
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 129
    .restart local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_1
    iget-object v4, v3, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    #@30
    invoke-interface {v4, v2, v3}, Lsun/nio/ch/SelChImpl;->translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z

    #@33
    .line 130
    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@36
    move-result v4

    #@37
    invoke-virtual {v3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    #@3a
    move-result v5

    #@3b
    and-int/2addr v4, v5

    #@3c
    if-eqz v4, :cond_0

    #@3e
    .line 131
    iget-object v4, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->selectedKeys:Ljava/util/Set;

    #@40
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@43
    .line 132
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_1

    #@46
    .line 137
    .end local v2    # "rOps":I
    .end local v3    # "sk":Lsun/nio/ch/SelectionKeyImpl;
    :cond_2
    return v1
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lsun/nio/ch/AbstractPollSelectorImpl;->pollWrapper:Lsun/nio/ch/PollArrayWrapper;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt()V

    #@5
    .line 80
    return-object p0
.end method
