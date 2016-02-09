.class Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockingCheckOutputStream"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "channel"    # Ljava/nio/channels/SocketChannel;

    #@0
    .prologue
    .line 588
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 589
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    #@5
    .line 587
    return-void
.end method

.method private checkBlocking()V
    .locals 1

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 620
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    #@a
    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@d
    throw v0

    #@e
    .line 618
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
    .line 612
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    #@3
    .line 615
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    #@5
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    #@8
    .line 611
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 600
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->checkBlocking()V

    #@3
    .line 601
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@8
    .line 599
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 606
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->checkBlocking()V

    #@3
    .line 607
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@8
    .line 605
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 594
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->checkBlocking()V

    #@3
    .line 595
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;->out:Ljava/io/OutputStream;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@8
    .line 593
    return-void
.end method
