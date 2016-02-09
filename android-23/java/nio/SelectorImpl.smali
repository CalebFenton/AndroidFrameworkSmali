.class final Ljava/nio/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SelectorImpl$UnaddableSet;
    }
.end annotation


# instance fields
.field final keysLock:Ljava/lang/Object;

.field private final mutableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/SelectionKeyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final pollFds:Ljava/util/UnsafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/UnsafeArrayList",
            "<",
            "Landroid/system/StructPollfd;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final wakeupIn:Ljava/io/FileDescriptor;

.field private final wakeupOut:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 58
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    #@a
    .line 60
    new-instance v2, Ljava/util/HashSet;

    #@c
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@11
    .line 67
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@13
    .line 66
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@16
    move-result-object v2

    #@17
    iput-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    #@19
    .line 69
    new-instance v2, Ljava/util/HashSet;

    #@1b
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@1e
    iput-object v2, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    #@20
    .line 76
    new-instance v2, Ljava/nio/SelectorImpl$UnaddableSet;

    #@22
    iget-object v3, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    #@24
    invoke-direct {v2, v3}, Ljava/nio/SelectorImpl$UnaddableSet;-><init>(Ljava/util/Set;)V

    #@27
    .line 75
    iput-object v2, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    #@29
    .line 85
    new-instance v2, Ljava/util/UnsafeArrayList;

    #@2b
    const-class v3, Landroid/system/StructPollfd;

    #@2d
    const/16 v4, 0x8

    #@2f
    invoke-direct {v2, v3, v4}, Ljava/util/UnsafeArrayList;-><init>(Ljava/lang/Class;I)V

    #@32
    iput-object v2, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@34
    .line 96
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@36
    const/4 v3, 0x0

    #@37
    invoke-interface {v2, v3}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    #@3a
    move-result-object v1

    #@3b
    .line 97
    .local v1, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    #@3c
    aget-object v2, v1, v2

    #@3e
    iput-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    #@40
    .line 98
    const/4 v2, 0x1

    #@41
    aget-object v2, v1, v2

    #@43
    iput-object v2, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    #@45
    .line 99
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    #@47
    const/4 v3, 0x0

    #@48
    invoke-static {v2, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@4b
    .line 100
    iget-object v2, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@4d
    new-instance v3, Landroid/system/StructPollfd;

    #@4f
    invoke-direct {v3}, Landroid/system/StructPollfd;-><init>()V

    #@52
    invoke-virtual {v2, v3}, Ljava/util/UnsafeArrayList;->add(Ljava/lang/Object;)Z

    #@55
    .line 101
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    #@57
    sget v3, Landroid/system/OsConstants;->POLLIN:I

    #@59
    const/4 v4, 0x0

    #@5a
    const/4 v5, 0x0

    #@5b
    invoke-direct {p0, v4, v2, v3, v5}, Ljava/nio/SelectorImpl;->setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 87
    return-void

    #@5f
    .line 102
    .end local v1    # "pipeFds":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    #@60
    .line 103
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@63
    move-result-object v2

    #@64
    throw v2
.end method

.method private checkClosed()V
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 146
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    #@b
    throw v0

    #@c
    .line 144
    :cond_0
    return-void
.end method

.method private doCancel()I
    .locals 6

    #@0
    .prologue
    .line 303
    const/4 v4, 0x0

    #@1
    .line 305
    .local v4, "deselected":I
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    #@4
    move-result-object v1

    #@5
    .line 306
    .local v1, "cancelledKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v1

    #@6
    .line 307
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@9
    move-result v5

    #@a
    if-lez v5, :cond_2

    #@c
    .line 308
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    .local v3, "currentKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_1

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/nio/channels/SelectionKey;

    #@1c
    .line 309
    .local v2, "currentKey":Ljava/nio/channels/SelectionKey;
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@1e
    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@21
    .line 310
    move-object v0, v2

    #@22
    check-cast v0, Ljava/nio/channels/spi/AbstractSelectionKey;

    #@24
    move-object v5, v0

    #@25
    invoke-virtual {p0, v5}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    #@28
    .line 311
    iget-object v5, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    #@2a
    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    .line 312
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 315
    .end local v2    # "currentKey":Ljava/nio/channels/SelectionKey;
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .end local v3    # "currentKey$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v1

    #@37
    .line 319
    return v4

    #@38
    .line 306
    :catchall_0
    move-exception v5

    #@39
    monitor-exit v1

    #@3a
    throw v5
.end method

.method private ensurePollFdsCapacity()V
    .locals 2

    #@0
    .prologue
    .line 227
    :goto_0
    iget-object v0, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/UnsafeArrayList;->size()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@8
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v1, v1, 0x1

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 228
    iget-object v0, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@12
    new-instance v1, Landroid/system/StructPollfd;

    #@14
    invoke-direct {v1}, Landroid/system/StructPollfd;-><init>()V

    #@17
    invoke-virtual {v0, v1}, Ljava/util/UnsafeArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 225
    :cond_0
    return-void
.end method

.method private preparePollFds()V
    .locals 7

    #@0
    .prologue
    .line 209
    const/4 v1, 0x1

    #@1
    .line 210
    .local v1, "i":I
    iget-object v6, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v5

    #@7
    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_3

    #@d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Ljava/nio/SelectionKeyImpl;

    #@13
    .line 211
    .local v4, "key":Ljava/nio/SelectionKeyImpl;
    invoke-virtual {v4}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    #@16
    move-result v3

    #@17
    .line 212
    .local v3, "interestOps":I
    const/4 v0, 0x0

    #@18
    .line 213
    .local v0, "eventMask":S
    and-int/lit8 v6, v3, 0x11

    #@1a
    if-eqz v6, :cond_1

    #@1c
    .line 214
    sget v6, Landroid/system/OsConstants;->POLLIN:I

    #@1e
    or-int/lit8 v6, v6, 0x0

    #@20
    int-to-short v0, v6

    #@21
    .line 216
    .end local v0    # "eventMask":S
    :cond_1
    and-int/lit8 v6, v3, 0xc

    #@23
    if-eqz v6, :cond_2

    #@25
    .line 217
    sget v6, Landroid/system/OsConstants;->POLLOUT:I

    #@27
    or-int/2addr v6, v0

    #@28
    int-to-short v0, v6

    #@29
    .line 219
    :cond_2
    if-eqz v0, :cond_0

    #@2b
    .line 220
    add-int/lit8 v2, v1, 0x1

    #@2d
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Ljava/nio/FileDescriptorChannel;

    #@33
    invoke-interface {v6}, Ljava/nio/FileDescriptorChannel;->getFD()Ljava/io/FileDescriptor;

    #@36
    move-result-object v6

    #@37
    invoke-direct {p0, v1, v6, v0, v4}, Ljava/nio/SelectorImpl;->setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V

    #@3a
    move v1, v2

    #@3b
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@3c
    .line 208
    .end local v3    # "interestOps":I
    .end local v4    # "key":Ljava/nio/SelectionKeyImpl;
    :cond_3
    return-void
.end method

.method private processPollFds()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 236
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@4
    invoke-virtual {v8, v10}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v8

    #@8
    check-cast v8, Landroid/system/StructPollfd;

    #@a
    iget-short v8, v8, Landroid/system/StructPollfd;->revents:S

    #@c
    sget v9, Landroid/system/OsConstants;->POLLIN:I

    #@e
    if-ne v8, v9, :cond_1

    #@10
    .line 238
    const/16 v8, 0x8

    #@12
    new-array v0, v8, [B

    #@14
    .line 239
    .local v0, "buffer":[B
    :cond_0
    iget-object v8, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    #@16
    const/4 v9, 0x1

    #@17
    invoke-static {v8, v0, v10, v9}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@1a
    move-result v8

    #@1b
    if-gtz v8, :cond_0

    #@1d
    .line 243
    .end local v0    # "buffer":[B
    :cond_1
    const/4 v5, 0x0

    #@1e
    .line 244
    .local v5, "readyKeyCount":I
    const/4 v1, 0x1

    #@1f
    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@21
    invoke-virtual {v8}, Ljava/util/UnsafeArrayList;->size()I

    #@24
    move-result v8

    #@25
    if-ge v1, v8, :cond_4

    #@27
    .line 245
    iget-object v8, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@29
    invoke-virtual {v8, v1}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid/system/StructPollfd;

    #@2f
    .line 246
    .local v4, "pollFd":Landroid/system/StructPollfd;
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    #@31
    if-nez v8, :cond_3

    #@33
    .line 244
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 249
    :cond_3
    iget-object v8, v4, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    #@38
    if-nez v8, :cond_5

    #@3a
    .line 289
    .end local v4    # "pollFd":Landroid/system/StructPollfd;
    :cond_4
    return v5

    #@3b
    .line 253
    .restart local v4    # "pollFd":Landroid/system/StructPollfd;
    :cond_5
    iget-object v2, v4, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    #@3d
    check-cast v2, Ljava/nio/SelectionKeyImpl;

    #@3f
    .line 255
    .local v2, "key":Ljava/nio/SelectionKeyImpl;
    iput-object v11, v4, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    #@41
    .line 256
    iput-object v11, v4, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    #@43
    .line 258
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->interestOpsNoCheck()I

    #@46
    move-result v3

    #@47
    .line 259
    .local v3, "ops":I
    const/4 v6, 0x0

    #@48
    .line 260
    .local v6, "selectedOps":I
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    #@4a
    sget v9, Landroid/system/OsConstants;->POLLHUP:I

    #@4c
    and-int/2addr v8, v9

    #@4d
    if-nez v8, :cond_6

    #@4f
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    #@51
    sget v9, Landroid/system/OsConstants;->POLLERR:I

    #@53
    and-int/2addr v8, v9

    #@54
    if-eqz v8, :cond_7

    #@56
    .line 263
    :cond_6
    or-int/lit8 v6, v3, 0x0

    #@58
    .line 265
    :cond_7
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    #@5a
    sget v9, Landroid/system/OsConstants;->POLLIN:I

    #@5c
    and-int/2addr v8, v9

    #@5d
    if-eqz v8, :cond_8

    #@5f
    .line 266
    and-int/lit8 v8, v3, 0x11

    #@61
    or-int/2addr v6, v8

    #@62
    .line 268
    :cond_8
    iget-short v8, v4, Landroid/system/StructPollfd;->revents:S

    #@64
    sget v9, Landroid/system/OsConstants;->POLLOUT:I

    #@66
    and-int/2addr v8, v9

    #@67
    if-eqz v8, :cond_9

    #@69
    .line 269
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->isConnected()Z

    #@6c
    move-result v8

    #@6d
    if-eqz v8, :cond_a

    #@6f
    .line 270
    and-int/lit8 v8, v3, 0x4

    #@71
    or-int/2addr v6, v8

    #@72
    .line 276
    :cond_9
    :goto_2
    if-eqz v6, :cond_2

    #@74
    .line 277
    iget-object v8, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    #@76
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@79
    move-result v7

    #@7a
    .line 278
    .local v7, "wasSelected":Z
    if-eqz v7, :cond_b

    #@7c
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    #@7f
    move-result v8

    #@80
    if-eq v8, v6, :cond_b

    #@82
    .line 279
    invoke-virtual {v2}, Ljava/nio/SelectionKeyImpl;->readyOps()I

    #@85
    move-result v8

    #@86
    or-int/2addr v8, v6

    #@87
    invoke-virtual {v2, v8}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    #@8a
    .line 280
    add-int/lit8 v5, v5, 0x1

    #@8c
    .line 278
    goto :goto_1

    #@8d
    .line 272
    .end local v7    # "wasSelected":Z
    :cond_a
    and-int/lit8 v8, v3, 0x8

    #@8f
    or-int/2addr v6, v8

    #@90
    goto :goto_2

    #@91
    .line 281
    .restart local v7    # "wasSelected":Z
    :cond_b
    if-nez v7, :cond_2

    #@93
    .line 282
    invoke-virtual {v2, v6}, Ljava/nio/SelectionKeyImpl;->setReadyOps(I)V

    #@96
    .line 283
    iget-object v8, p0, Ljava/nio/SelectorImpl;->mutableSelectedKeys:Ljava/util/Set;

    #@98
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9b
    .line 284
    add-int/lit8 v5, v5, 0x1

    #@9d
    goto :goto_1
.end method

.method private selectInternal(J)I
    .locals 11
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    #@3
    .line 169
    monitor-enter p0

    #@4
    .line 170
    :try_start_0
    iget-object v5, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    #@6
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@7
    .line 171
    :try_start_1
    iget-object v6, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    #@9
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@a
    .line 172
    :try_start_2
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    #@d
    .line 173
    const-wide/16 v8, 0x0

    #@f
    cmp-long v4, p1, v8

    #@11
    if-eqz v4, :cond_2

    #@13
    const/4 v1, 0x1

    #@14
    .line 174
    .local v1, "isBlocking":Z
    :goto_0
    iget-object v4, p0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    #@16
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    .line 175
    :try_start_3
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->preparePollFds()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1a
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1b
    .line 177
    const/4 v2, -0x1

    #@1c
    .line 179
    .local v2, "rc":I
    if-eqz v1, :cond_0

    #@1e
    .line 180
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->begin()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@21
    .line 183
    :cond_0
    :try_start_6
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@23
    iget-object v4, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@25
    invoke-virtual {v4}, Ljava/util/UnsafeArrayList;->array()[Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, [Landroid/system/StructPollfd;

    #@2b
    long-to-int v8, p1

    #@2c
    invoke-interface {v7, v4, v8}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    #@2f
    move-result v2

    #@30
    .line 188
    if-eqz v1, :cond_1

    #@32
    .line 189
    :try_start_7
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->end()V

    #@35
    .line 193
    :cond_1
    if-lez v2, :cond_4

    #@37
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->processPollFds()I

    #@3a
    move-result v3

    #@3b
    .line 194
    .local v3, "readyCount":I
    :goto_1
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3e
    move-result v4

    #@3f
    sub-int/2addr v3, v4

    #@40
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@41
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@42
    monitor-exit p0

    #@43
    .line 195
    return v3

    #@44
    .line 173
    .end local v1    # "isBlocking":Z
    .end local v2    # "rc":I
    .end local v3    # "readyCount":I
    :cond_2
    const/4 v1, 0x0

    #@45
    .restart local v1    # "isBlocking":Z
    goto :goto_0

    #@46
    .line 174
    :catchall_0
    move-exception v7

    #@47
    :try_start_a
    monitor-exit v4

    #@48
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@49
    .line 171
    .end local v1    # "isBlocking":Z
    :catchall_1
    move-exception v4

    #@4a
    :try_start_b
    monitor-exit v6

    #@4b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@4c
    .line 170
    :catchall_2
    move-exception v4

    #@4d
    :try_start_c
    monitor-exit v5

    #@4e
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@4f
    .line 169
    :catchall_3
    move-exception v4

    #@50
    monitor-exit p0

    #@51
    throw v4

    #@52
    .line 184
    .restart local v1    # "isBlocking":Z
    .restart local v2    # "rc":I
    :catch_0
    move-exception v0

    #@53
    .line 185
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_d
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@56
    move-result-object v4

    #@57
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@58
    .line 187
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_4
    move-exception v4

    #@59
    .line 188
    if-eqz v1, :cond_3

    #@5b
    .line 189
    :try_start_e
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->end()V

    #@5e
    .line 187
    :cond_3
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@5f
    .line 193
    :cond_4
    const/4 v3, 0x0

    #@60
    .restart local v3    # "readyCount":I
    goto :goto_1
.end method

.method private setPollFd(ILjava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "events"    # I
    .param p4, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 202
    iget-object v1, p0, Ljava/nio/SelectorImpl;->pollFds:Ljava/util/UnsafeArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/UnsafeArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/system/StructPollfd;

    #@8
    .line 203
    .local v0, "pollFd":Landroid/system/StructPollfd;
    iput-object p2, v0, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    #@a
    .line 204
    int-to-short v1, p3

    #@b
    iput-short v1, v0, Landroid/system/StructPollfd;->events:S

    #@d
    .line 205
    iput-object p4, v0, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    #@f
    .line 201
    return-void
.end method


# virtual methods
.method protected implCloseSelector()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    #@3
    .line 109
    monitor-enter p0

    #@4
    .line 110
    :try_start_0
    iget-object v3, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    #@6
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@7
    .line 111
    :try_start_1
    iget-object v4, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;

    #@9
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a
    .line 112
    :try_start_2
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupIn:Ljava/io/FileDescriptor;

    #@c
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    #@f
    .line 113
    iget-object v2, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    #@11
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    #@14
    .line 114
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->doCancel()I

    #@17
    .line 115
    iget-object v2, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "sk$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/nio/SelectionKeyImpl;

    #@29
    .line 116
    .local v0, "sk":Ljava/nio/channels/SelectionKey;
    check-cast v0, Ljava/nio/channels/spi/AbstractSelectionKey;

    #@2b
    .end local v0    # "sk":Ljava/nio/channels/SelectionKey;
    invoke-virtual {p0, v0}, Ljava/nio/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 111
    .end local v1    # "sk$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@30
    :try_start_3
    monitor-exit v4

    #@31
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@32
    .line 110
    :catchall_1
    move-exception v2

    #@33
    :try_start_4
    monitor-exit v3

    #@34
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@35
    .line 109
    :catchall_2
    move-exception v2

    #@36
    monitor-exit p0

    #@37
    throw v2

    #@38
    .restart local v1    # "sk$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@39
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@3a
    monitor-exit p0

    #@3b
    .line 107
    return-void
.end method

.method public declared-synchronized keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 140
    :try_start_0
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    #@4
    .line 141
    iget-object v0, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method protected register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/spi/AbstractSelectableChannel;
    .param p2, "operations"    # I
    .param p3, "attachment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/nio/SelectorImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/nio/channels/spi/SelectorProvider;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 126
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    #@10
    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    #@13
    throw v1

    #@14
    .line 128
    :cond_0
    monitor-enter p0

    #@15
    .line 129
    :try_start_0
    iget-object v2, p0, Ljava/nio/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    #@17
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    .line 130
    :try_start_1
    new-instance v0, Ljava/nio/SelectionKeyImpl;

    #@1a
    invoke-direct {v0, p1, p2, p3, p0}, Ljava/nio/SelectionKeyImpl;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V

    #@1d
    .line 132
    .local v0, "selectionKey":Ljava/nio/SelectionKeyImpl;
    iget-object v1, p0, Ljava/nio/SelectorImpl;->mutableKeys:Ljava/util/Set;

    #@1f
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 133
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->ensurePollFdsCapacity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    monitor-exit p0

    #@27
    .line 134
    return-object v0

    #@28
    .line 129
    .end local v0    # "selectionKey":Ljava/nio/SelectionKeyImpl;
    :catchall_0
    move-exception v1

    #@29
    :try_start_3
    monitor-exit v2

    #@2a
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2b
    .line 128
    :catchall_1
    move-exception v1

    #@2c
    monitor-exit p0

    #@2d
    throw v1
.end method

.method public select()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public select(J)I
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 156
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "timeout < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 160
    :cond_0
    cmp-long v0, p1, v2

    #@22
    if-nez v0, :cond_1

    #@24
    const-wide/16 p1, -0x1

    #@26
    .end local p1    # "timeout":J
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public selectNow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Ljava/nio/SelectorImpl;->selectInternal(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized selectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 293
    :try_start_0
    invoke-direct {p0}, Ljava/nio/SelectorImpl;->checkClosed()V

    #@4
    .line 294
    iget-object v0, p0, Ljava/nio/SelectorImpl;->selectedKeys:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return-object v0

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .locals 7

    #@0
    .prologue
    .line 324
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v3, p0, Ljava/nio/SelectorImpl;->wakeupOut:Ljava/io/FileDescriptor;

    #@4
    const/4 v4, 0x1

    #@5
    new-array v4, v4, [B

    #@7
    const/4 v5, 0x1

    #@8
    const/4 v6, 0x0

    #@9
    aput-byte v5, v4, v6

    #@b
    const/4 v5, 0x0

    #@c
    const/4 v6, 0x1

    #@d
    invoke-interface {v2, v3, v4, v5, v6}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1

    #@10
    .line 328
    :goto_0
    return-object p0

    #@11
    .line 325
    :catch_0
    move-exception v0

    #@12
    .local v0, "ignored":Landroid/system/ErrnoException;
    goto :goto_0

    #@13
    .line 326
    .end local v0    # "ignored":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@14
    .local v1, "ignored":Ljava/io/InterruptedIOException;
    goto :goto_0
.end method
