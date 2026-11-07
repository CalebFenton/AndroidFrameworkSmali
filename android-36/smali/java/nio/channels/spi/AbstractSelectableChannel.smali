.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o keyCount:I

.field private final greylist-max-o keyLock:Ljava/lang/Object;

.field private greylist-max-o keys:[Ljava/nio/channels/SelectionKey;

.field private volatile blacklist nonBlocking:Z

.field private final greylist-max-o provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final greylist-max-o regLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 57
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 86
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 88
    return-void
.end method

.method private greylist-max-o addKey(Ljava/nio/channels/SelectionKey;)V
    .registers 6
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_1d

    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 107
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 108
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-nez v1, :cond_1a

    .line 109
    goto :goto_40

    .line 107
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 110
    :cond_1d
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x2

    if-nez v1, :cond_27

    .line 111
    new-array v1, v2, [Ljava/nio/channels/SelectionKey;

    iput-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    goto :goto_40

    .line 114
    :cond_27
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    mul-int/2addr v1, v2

    .line 115
    .local v1, "n":I
    new-array v2, v1, [Ljava/nio/channels/SelectionKey;

    .line 116
    .local v2, "ks":[Ljava/nio/channels/SelectionKey;
    const/4 v0, 0x0

    :goto_2e
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    if-ge v0, v3, :cond_3c

    .line 117
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 118
    :cond_3c
    iput-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    .line 119
    iget v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 121
    .end local v1    # "n":I
    .end local v2    # "ks":[Ljava/nio/channels/SelectionKey;
    :cond_40
    :goto_40
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aput-object p1, v1, v0

    .line 122
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 123
    return-void
.end method

.method private greylist-max-o findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 5
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    .line 126
    nop

    .line 127
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 128
    return-object v1

    .line 129
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v2, v2

    if-ge v0, v2, :cond_25

    .line 130
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v2, v0

    if-eqz v2, :cond_22

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v2

    if-ne v2, p1, :cond_22

    .line 131
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    return-object v1

    .line 129
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 132
    .end local v0    # "i":I
    :cond_25
    return-object v1
.end method

.method private greylist-max-o haveValidKeys()Z
    .registers 5

    .line 148
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 150
    monitor-exit v0

    return v2

    .line 151
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    if-ge v1, v3, :cond_26

    .line 152
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v1

    if-eqz v3, :cond_23

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 153
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 151
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 155
    .end local v1    # "i":I
    :cond_26
    monitor-exit v0

    return v2

    .line 156
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method public final whitelist test-api blockingLock()Ljava/lang/Object;
    .registers 2

    .line 287
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 6
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 304
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->nonBlocking:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 305
    .local v1, "blocking":Z
    if-eq p1, v1, :cond_27

    .line 306
    if-eqz p1, :cond_1e

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->haveValidKeys()Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_1e

    .line 307
    :cond_18
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "block":Z
    throw v2

    .line 308
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "block":Z
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    .line 309
    if-nez p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    iput-boolean v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->nonBlocking:Z

    .line 311
    .end local v1    # "blocking":Z
    :cond_27
    monitor-exit v0

    .line 312
    return-object p0

    .line 303
    :cond_29
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "block":Z
    throw v1

    .line 311
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "block":Z
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected final whitelist test-api implCloseChannel()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "copyOfKeys":[Ljava/nio/channels/SelectionKey;
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_7
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_14

    .line 248
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, [Ljava/nio/channels/SelectionKey;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/channels/SelectionKey;

    move-object v0, v2

    .line 250
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_26

    .line 252
    if-eqz v0, :cond_25

    .line 253
    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 254
    .local v3, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v3, :cond_22

    .line 255
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 253
    .end local v3    # "k":Ljava/nio/channels/SelectionKey;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 259
    :cond_25
    return-void

    .line 250
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method

.method protected abstract whitelist test-api implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api isBlocking()Z
    .registers 2

    .line 283
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->nonBlocking:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist test-api isRegistered()Z
    .registers 3

    .line 163
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 165
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final whitelist test-api keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 4
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    .line 169
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 171
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public final whitelist test-api provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .line 96
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final whitelist test-api register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 8
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .param p2, "ops"    # I
    .param p3, "att"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p2

    if-nez v0, :cond_53

    .line 205
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 207
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_11
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_44

    .line 210
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_4a

    .line 212
    :try_start_1a
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 214
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    .line 215
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v2, :cond_2d

    .line 216
    invoke-virtual {v2, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v2, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_38

    .line 220
    :cond_2d
    move-object v3, p1

    check-cast v3, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v3, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    move-object v2, v3

    .line 221
    invoke-direct {p0, v2}, Ljava/nio/channels/spi/AbstractSelectableChannel;->addKey(Ljava/nio/channels/SelectionKey;)V

    .line 223
    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_41

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_4a

    return-object v2

    .line 213
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    :cond_3b
    :try_start_3b
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    throw v2

    .line 224
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_41

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    :try_start_43
    throw v2

    .line 209
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :cond_44
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    throw v1

    .line 225
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4a

    throw v1

    .line 206
    :cond_4d
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 204
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method greylist-max-o removeKey(Ljava/nio/channels/SelectionKey;)V
    .registers 6
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 137
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 139
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1a

    .line 140
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 141
    iget v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 138
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 143
    .end local v1    # "i":I
    :cond_1d
    move-object v1, p1

    check-cast v1, Ljava/nio/channels/spi/AbstractSelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractSelectionKey;->invalidate()V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method
