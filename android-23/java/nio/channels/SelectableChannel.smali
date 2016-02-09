.class public abstract Ljava/nio/channels/SelectableChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "SelectableChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract blockingLock()Ljava/lang/Object;
.end method

.method public abstract configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isBlocking()Z
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
.end method

.method public abstract provider()Ljava/nio/channels/spi/SelectorProvider;
.end method

.method public final register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .param p1, "selector"    # Ljava/nio/channels/Selector;
    .param p2, "operations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public abstract register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation
.end method

.method public abstract validOps()I
.end method
