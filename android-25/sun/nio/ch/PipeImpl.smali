.class Lsun/nio/ch/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# instance fields
.field private final sink:Ljava/nio/channels/Pipe$SinkChannel;

.field private final source:Ljava/nio/channels/Pipe$SourceChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 8
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    #@3
    .line 42
    const/4 v6, 0x1

    #@4
    invoke-static {v6}, Lsun/nio/ch/IOUtil;->makePipe(Z)J

    #@7
    move-result-wide v0

    #@8
    .line 43
    .local v0, "pipeFds":J
    const/16 v6, 0x20

    #@a
    ushr-long v6, v0, v6

    #@c
    long-to-int v2, v6

    #@d
    .line 44
    .local v2, "readFd":I
    long-to-int v5, v0

    #@e
    .line 45
    .local v5, "writeFd":I
    new-instance v4, Ljava/io/FileDescriptor;

    #@10
    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    #@13
    .line 46
    .local v4, "sourcefd":Ljava/io/FileDescriptor;
    invoke-static {v4, v2}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    #@16
    .line 47
    new-instance v6, Lsun/nio/ch/SourceChannelImpl;

    #@18
    invoke-direct {v6, p1, v4}, Lsun/nio/ch/SourceChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@1b
    iput-object v6, p0, Lsun/nio/ch/PipeImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    #@1d
    .line 48
    new-instance v3, Ljava/io/FileDescriptor;

    #@1f
    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    #@22
    .line 49
    .local v3, "sinkfd":Ljava/io/FileDescriptor;
    invoke-static {v3, v5}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    #@25
    .line 50
    new-instance v6, Lsun/nio/ch/SinkChannelImpl;

    #@27
    invoke-direct {v6, p1, v3}, Lsun/nio/ch/SinkChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    #@2a
    iput-object v6, p0, Lsun/nio/ch/PipeImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    #@2c
    .line 41
    return-void
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lsun/nio/ch/PipeImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    #@2
    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lsun/nio/ch/PipeImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    #@2
    return-object v0
.end method
