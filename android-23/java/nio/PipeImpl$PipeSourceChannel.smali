.class Ljava/nio/PipeImpl$PipeSourceChannel;
.super Ljava/nio/channels/Pipe$SourceChannel;
.source "PipeImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeSourceChannel"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final fd:Ljava/io/FileDescriptor;

.field final synthetic this$0:Ljava/nio/PipeImpl;


# direct methods
.method private constructor <init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "this$0"    # Ljava/nio/PipeImpl;
    .param p2, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iput-object p1, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->this$0:Ljava/nio/PipeImpl;

    #@2
    .line 65
    invoke-direct {p0, p2}, Ljava/nio/channels/Pipe$SourceChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    .line 66
    iput-object p3, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    #@7
    .line 67
    new-instance v0, Ljava/nio/SocketChannelImpl;

    #@9
    invoke-direct {v0, p2, p3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@c
    iput-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/SocketChannel;

    #@e
    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$PipeSourceChannel;)V
    .locals 0
    .param p1, "this$0"    # Ljava/nio/PipeImpl;
    .param p2, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p3, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@3
    return-void
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/SocketChannel;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    #@5
    .line 70
    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/nio/PipeImpl$PipeSourceChannel;->getFD()Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@7
    .line 74
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/SocketChannel;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/SocketChannel;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/nio/PipeImpl$PipeSourceChannel;->channel:Ljava/nio/channels/SocketChannel;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;II)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
