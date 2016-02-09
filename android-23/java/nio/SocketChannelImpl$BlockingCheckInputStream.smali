.class Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;
.super Ljava/io/FilterInputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockingCheckInputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "channel"    # Ljava/nio/channels/SocketChannel;

    #@0
    .prologue
    .line 633
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 634
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->channel:Ljava/nio/channels/SocketChannel;

    #@5
    .line 632
    return-void
.end method

.method private checkBlocking()V
    .locals 1

    #@0
    .prologue
    .line 664
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->channel:Ljava/nio/channels/SocketChannel;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 665
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    #@a
    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@d
    throw v0

    #@e
    .line 663
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 657
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    #@3
    .line 660
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->channel:Ljava/nio/channels/SocketChannel;

    #@5
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    #@8
    .line 656
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->checkBlocking()V

    #@3
    .line 640
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->in:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->checkBlocking()V

    #@3
    .line 652
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->in:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->checkBlocking()V

    #@3
    .line 646
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;->in:Ljava/io/InputStream;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@8
    move-result v0

    #@9
    return v0
.end method
