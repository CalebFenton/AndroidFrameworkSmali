.class Lsun/nio/ch/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field final channel:Lsun/nio/ch/SelChImpl;

.field private index:I

.field private volatile interestOps:I

.field private readyOps:I

.field final selector:Lsun/nio/ch/SelectorImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V
    .locals 0
    .param p1, "ch"    # Lsun/nio/ch/SelChImpl;
    .param p2, "sel"    # Lsun/nio/ch/SelectorImpl;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    #@5
    .line 52
    iput-object p2, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    #@7
    .line 50
    return-void
.end method

.method private ensureValid()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->isValid()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 73
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    #@b
    throw v0

    #@c
    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    #@2
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    #@4
    return-object v0
.end method

.method getIndex()I
    .locals 1

    #@0
    .prologue
    .line 64
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    #@2
    return v0
.end method

.method public interestOps()I
    .locals 1

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    #@3
    .line 78
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    #@5
    return v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .param p1, "ops"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    #@3
    .line 83
    invoke-virtual {p0, p1}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps(I)Ljava/nio/channels/SelectionKey;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method nioInterestOps()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    #@2
    return v0
.end method

.method nioInterestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .param p1, "ops"    # I

    #@0
    .prologue
    .line 103
    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    #@7
    move-result v0

    #@8
    not-int v0, v0

    #@9
    and-int/2addr v0, p1

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v0

    #@12
    .line 105
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    #@14
    invoke-interface {v0, p1, p0}, Lsun/nio/ch/SelChImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    #@17
    .line 106
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    #@19
    .line 107
    return-object p0
.end method

.method nioReadyOps()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    #@2
    return v0
.end method

.method nioReadyOps(I)V
    .locals 0
    .param p1, "ops"    # I

    #@0
    .prologue
    .line 95
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    #@2
    .line 94
    return-void
.end method

.method public readyOps()I
    .locals 1

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    #@3
    .line 88
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    #@5
    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    #@2
    return-object v0
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 68
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    #@2
    .line 67
    return-void
.end method
