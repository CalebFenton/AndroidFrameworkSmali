.class public Lsun/nio/ch/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field final blacklist channel:Lsun/nio/ch/SelChImpl;

.field private blacklist index:I

.field private volatile blacklist interestOps:I

.field private blacklist readyOps:I

.field public final blacklist selector:Lsun/nio/ch/SelectorImpl;


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V
    .registers 3
    .param p1, "ch"    # Lsun/nio/ch/SelChImpl;
    .param p2, "sel"    # Lsun/nio/ch/SelectorImpl;

    .line 50
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    .line 52
    iput-object p2, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    .line 53
    return-void
.end method

.method private blacklist ensureValid()V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    return-void

    .line 73
    :cond_7
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api channel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .line 56
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method blacklist getIndex()I
    .registers 2

    .line 64
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    return v0
.end method

.method public whitelist test-api interestOps()I
    .registers 2

    .line 77
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    .line 78
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return v0
.end method

.method public whitelist test-api interestOps(I)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "ops"    # I

    .line 82
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    .line 83
    invoke-virtual {p0, p1}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps(I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nioInterestOps()I
    .registers 2

    .line 111
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return v0
.end method

.method public blacklist nioInterestOps(I)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "ops"    # I

    .line 103
    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p1

    if-nez v0, :cond_14

    .line 105
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v0, p1, p0}, Lsun/nio/ch/SelChImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    .line 106
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    .line 107
    return-object p0

    .line 104
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist nioReadyOps()I
    .registers 2

    .line 99
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public blacklist nioReadyOps(I)V
    .registers 2
    .param p1, "ops"    # I

    .line 95
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    .line 96
    return-void
.end method

.method public whitelist test-api readyOps()I
    .registers 2

    .line 87
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    .line 88
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public whitelist test-api selector()Ljava/nio/channels/Selector;
    .registers 2

    .line 60
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    return-object v0
.end method

.method blacklist setIndex(I)V
    .registers 2
    .param p1, "i"    # I

    .line 68
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    .line 69
    return-void
.end method
