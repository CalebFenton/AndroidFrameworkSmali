.class final Ljava/nio/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/PipeImpl$PipeSourceChannel;,
        Ljava/nio/PipeImpl$PipeSinkChannel;
    }
.end annotation


# instance fields
.field private final sink:Ljava/nio/PipeImpl$PipeSinkChannel;

.field private final source:Ljava/nio/PipeImpl$PipeSourceChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 7
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    #@3
    .line 39
    :try_start_0
    new-instance v4, Ljava/io/FileDescriptor;

    #@5
    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    #@8
    .line 40
    .local v4, "fd1":Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    #@a
    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    #@d
    .line 41
    .local v5, "fd2":Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@f
    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    #@11
    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@13
    const/4 v3, 0x0

    #@14
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@17
    .line 45
    new-instance v0, Ljava/nio/PipeImpl$PipeSinkChannel;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-direct {v0, p0, p1, v4, v1}, Ljava/nio/PipeImpl$PipeSinkChannel;-><init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$PipeSinkChannel;)V

    #@1d
    iput-object v0, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    #@1f
    .line 46
    new-instance v0, Ljava/nio/PipeImpl$PipeSourceChannel;

    #@21
    const/4 v1, 0x0

    #@22
    invoke-direct {v0, p0, p1, v5, v1}, Ljava/nio/PipeImpl$PipeSourceChannel;-><init>(Ljava/nio/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/nio/PipeImpl$PipeSourceChannel;)V

    #@25
    iput-object v0, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 37
    return-void

    #@28
    .line 47
    .end local v4    # "fd1":Ljava/io/FileDescriptor;
    .end local v5    # "fd2":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    #@29
    .line 48
    .local v6, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v6}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2c
    move-result-object v0

    #@2d
    throw v0
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Ljava/nio/PipeImpl;->sink:Ljava/nio/PipeImpl$PipeSinkChannel;

    #@2
    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Ljava/nio/PipeImpl;->source:Ljava/nio/PipeImpl$PipeSourceChannel;

    #@2
    return-object v0
.end method
