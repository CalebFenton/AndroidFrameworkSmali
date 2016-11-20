.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field blocking:Z

.field private keyCount:I

.field private final keyLock:Ljava/lang/Object;

.field private keys:[Ljava/nio/channels/SelectionKey;

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final regLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

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
    sput-boolean v0, Ljava/nio/channels/spi/AbstractSelectableChannel;->-assertionsDisabled:Z

    #@b
    .line 50
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    #@3
    .line 61
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@6
    .line 62
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@9
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@10
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    #@17
    .line 71
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    #@1a
    .line 77
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@1c
    .line 76
    return-void
.end method

.method private addKey(Ljava/nio/channels/SelectionKey;)V
    .locals 5
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    #@0
    .prologue
    .line 93
    sget-boolean v3, Ljava/nio/channels/spi/AbstractSelectableChannel;->-assertionsDisabled:Z

    #@2
    if-nez v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@6
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    new-instance v3, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v3

    #@12
    .line 94
    :cond_0
    const/4 v0, 0x0

    #@13
    .line 95
    .local v0, "i":I
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@15
    if-eqz v3, :cond_3

    #@17
    iget v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@19
    iget-object v4, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@1b
    array-length v4, v4

    #@1c
    if-ge v3, v4, :cond_3

    #@1e
    .line 97
    const/4 v0, 0x0

    #@1f
    :goto_0
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@21
    array-length v3, v3

    #@22
    if-ge v0, v3, :cond_1

    #@24
    .line 98
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@26
    aget-object v3, v3, v0

    #@28
    if-nez v3, :cond_2

    #@2a
    .line 111
    :cond_1
    :goto_1
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@2c
    aput-object p1, v3, v0

    #@2e
    .line 112
    iget v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@30
    add-int/lit8 v3, v3, 0x1

    #@32
    iput v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@34
    .line 92
    return-void

    #@35
    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 100
    :cond_3
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@3a
    if-nez v3, :cond_4

    #@3c
    .line 101
    const/4 v3, 0x3

    #@3d
    new-array v3, v3, [Ljava/nio/channels/SelectionKey;

    #@3f
    iput-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@41
    goto :goto_1

    #@42
    .line 104
    :cond_4
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@44
    array-length v3, v3

    #@45
    mul-int/lit8 v2, v3, 0x2

    #@47
    .line 105
    .local v2, "n":I
    new-array v1, v2, [Ljava/nio/channels/SelectionKey;

    #@49
    .line 106
    .local v1, "ks":[Ljava/nio/channels/SelectionKey;
    const/4 v0, 0x0

    #@4a
    :goto_2
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@4c
    array-length v3, v3

    #@4d
    if-ge v0, v3, :cond_5

    #@4f
    .line 107
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@51
    aget-object v3, v3, v0

    #@53
    aput-object v3, v1, v0

    #@55
    .line 106
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_2

    #@58
    .line 108
    :cond_5
    iput-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@5a
    .line 109
    iget v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@5c
    goto :goto_1
.end method

.method private findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 116
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 117
    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 118
    return-object v3

    #@a
    .line 119
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@d
    array-length v1, v1

    #@e
    if-ge v0, v1, :cond_2

    #@10
    .line 120
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@12
    aget-object v1, v1, v0

    #@14
    if-eqz v1, :cond_1

    #@16
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@18
    aget-object v1, v1, v0

    #@1a
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    #@1d
    move-result-object v1

    #@1e
    if-ne v1, p1, :cond_1

    #@20
    .line 121
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@22
    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    monitor-exit v2

    #@25
    return-object v1

    #@26
    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    :cond_2
    monitor-exit v2

    #@2a
    .line 122
    return-object v3

    #@2b
    .line 116
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1
.end method

.method private haveValidKeys()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 138
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 139
    :try_start_0
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 140
    return v3

    #@a
    .line 141
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@d
    array-length v1, v1

    #@e
    if-ge v0, v1, :cond_2

    #@10
    .line 142
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@12
    aget-object v1, v1, v0

    #@14
    if-eqz v1, :cond_1

    #@16
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@18
    aget-object v1, v1, v0

    #@1a
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 143
    const/4 v1, 0x1

    #@21
    monitor-exit v2

    #@22
    return v1

    #@23
    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    :cond_2
    monitor-exit v2

    #@27
    .line 145
    return v3

    #@28
    .line 138
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 2
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 282
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 283
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 281
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 284
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-ne v0, p1, :cond_1

    #@16
    monitor-exit v1

    #@17
    .line 285
    return-object p0

    #@18
    .line 286
    :cond_1
    if-eqz p1, :cond_2

    #@1a
    :try_start_2
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->haveValidKeys()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 287
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    #@22
    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@25
    throw v0

    #@26
    .line 288
    :cond_2
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    #@29
    .line 289
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    monitor-exit v1

    #@2c
    .line 291
    return-object p0
.end method

.method protected final implCloseChannel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    #@3
    .line 232
    iget-object v4, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 233
    :try_start_0
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@8
    if-nez v3, :cond_1

    #@a
    const/4 v0, 0x0

    #@b
    .line 234
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@e
    .line 235
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@10
    aget-object v2, v3, v1

    #@12
    .line 236
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v2, :cond_0

    #@14
    .line 237
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    #@17
    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 233
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    :cond_1
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@1c
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .restart local v0    # "count":I
    goto :goto_0

    #@1e
    .restart local v1    # "i":I
    :cond_2
    monitor-exit v4

    #@1f
    .line 230
    return-void

    #@20
    .line 232
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@21
    monitor-exit v4

    #@22
    throw v3
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
    .line 261
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 262
    :try_start_0
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 261
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public final isRegistered()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 153
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 154
    :try_start_0
    iget v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 153
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public final keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 1
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    #@0
    .prologue
    .line 159
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    #@2
    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 4
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .param p2, "ops"    # I
    .param p3, "att"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 193
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 194
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 192
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1

    #@12
    .line 195
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    #@15
    move-result v1

    #@16
    not-int v1, v1

    #@17
    and-int/2addr v1, p2

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 196
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1f
    throw v1

    #@20
    .line 197
    :cond_1
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 198
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@26
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@29
    throw v1

    #@2a
    .line 199
    :cond_2
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    #@2d
    move-result-object v0

    #@2e
    .line 200
    .local v0, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_3

    #@30
    .line 201
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    #@33
    .line 202
    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 204
    :cond_3
    if-nez v0, :cond_5

    #@38
    .line 206
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@3a
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 207
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_4

    #@41
    .line 208
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    #@43
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@46
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@47
    .line 206
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    :catchall_1
    move-exception v1

    #@48
    :try_start_3
    monitor-exit v3

    #@49
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    .line 209
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    :cond_4
    :try_start_4
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    #@4c
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    #@4f
    move-result-object v0

    #@50
    .line 210
    invoke-direct {p0, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->addKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@53
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@54
    :cond_5
    monitor-exit v2

    #@55
    .line 213
    return-object v0
.end method

.method removeKey(Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    #@0
    .prologue
    .line 127
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 128
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 129
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@b
    aget-object v1, v1, v0

    #@d
    if-ne v1, p1, :cond_0

    #@f
    .line 130
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v3, v1, v0

    #@14
    .line 131
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    iput v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    #@1a
    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 133
    :cond_1
    check-cast p1, Ljava/nio/channels/spi/AbstractSelectionKey;

    #@1f
    .end local p1    # "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v2

    #@23
    .line 126
    return-void

    #@24
    .line 127
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method
