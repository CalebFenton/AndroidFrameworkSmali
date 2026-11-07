.class public abstract Ljava/nio/channels/SelectionKey;
.super Ljava/lang/Object;
.source "SelectionKey.java"


# static fields
.field public static final whitelist test-api OP_ACCEPT:I = 0x10

.field public static final whitelist test-api OP_CONNECT:I = 0x8

.field public static final whitelist test-api OP_READ:I = 0x1

.field public static final whitelist test-api OP_WRITE:I = 0x4

.field private static final greylist-max-o attachmentUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile greylist-max-o attachment:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 434
    const-class v0, Ljava/lang/Object;

    const-string v1, "attachment"

    const-class v2, Ljava/nio/channels/SelectionKey;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/nio/channels/SelectionKey;->attachmentUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api attach(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "ob"    # Ljava/lang/Object;

    .line 453
    sget-object v0, Ljava/nio/channels/SelectionKey;->attachmentUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api attachment()Ljava/lang/Object;
    .registers 2

    .line 463
    iget-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract whitelist test-api cancel()V
.end method

.method public abstract whitelist test-api channel()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract whitelist test-api interestOps()I
.end method

.method public abstract whitelist test-api interestOps(I)Ljava/nio/channels/SelectionKey;
.end method

.method public whitelist test-api interestOpsAnd(I)I
    .registers 4
    .param p1, "ops"    # I

    .line 262
    monitor-enter p0

    .line 263
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    .line 264
    .local v0, "oldVal":I
    and-int v1, v0, p1

    invoke-virtual {p0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 265
    monitor-exit p0

    return v0

    .line 266
    .end local v0    # "oldVal":I
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public whitelist test-api interestOpsOr(I)I
    .registers 4
    .param p1, "ops"    # I

    .line 222
    monitor-enter p0

    .line 223
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    .line 224
    .local v0, "oldVal":I
    or-int v1, v0, p1

    invoke-virtual {p0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 225
    monitor-exit p0

    return v0

    .line 226
    .end local v0    # "oldVal":I
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public final whitelist test-api isAcceptable()Z
    .registers 2

    .line 425
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist test-api isConnectable()Z
    .registers 2

    .line 401
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist test-api isReadable()Z
    .registers 3

    .line 354
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public abstract whitelist test-api isValid()Z
.end method

.method public final whitelist test-api isWritable()Z
    .registers 2

    .line 377
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public abstract whitelist test-api readyOps()I
.end method

.method public abstract whitelist test-api selector()Ljava/nio/channels/Selector;
.end method
