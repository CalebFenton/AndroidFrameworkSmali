.class Landroid/net/LocalSocketImpl$SocketInputStream;
.super Ljava/io/InputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/LocalSocketImpl;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v3}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v2

    #@6
    .line 63
    .local v2, "myFd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_0

    #@8
    new-instance v3, Ljava/io/IOException;

    #@a
    const-string/jumbo v4, "socket closed"

    #@d
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 65
    :cond_0
    new-instance v0, Landroid/util/MutableInt;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-direct {v0, v3}, Landroid/util/MutableInt;-><init>(I)V

    #@17
    .line 67
    .local v0, "avail":Landroid/util/MutableInt;
    :try_start_0
    sget v3, Landroid/system/OsConstants;->FIONREAD:I

    #@19
    invoke-static {v2, v3, v0}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 71
    iget v3, v0, Landroid/util/MutableInt;->value:I

    #@1e
    return v3

    #@1f
    .line 68
    :catch_0
    move-exception v1

    #@20
    .line 69
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@23
    move-result-object v3

    #@24
    throw v3
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    #@5
    .line 76
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 85
    :try_start_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 86
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    #@f
    new-instance v2, Ljava/io/IOException;

    #@11
    const-string/jumbo v4, "socket closed"

    #@14
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 84
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 88
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@1d
    invoke-static {v2, v0}, Landroid/net/LocalSocketImpl;->-wrap0(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v1

    #@21
    .local v1, "ret":I
    monitor-exit v3

    #@22
    .line 89
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 103
    :try_start_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 104
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    #@f
    new-instance v2, Ljava/io/IOException;

    #@11
    const-string/jumbo v4, "socket closed"

    #@14
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 102
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 106
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    #@1d
    if-gez p3, :cond_2

    #@1f
    .line 107
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@21
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@24
    throw v2

    #@25
    .line 106
    :cond_2
    add-int v2, p2, p3

    #@27
    array-length v4, p1

    #@28
    if-gt v2, v4, :cond_1

    #@2a
    .line 110
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2c
    invoke-static {v2, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap1(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result v1

    #@30
    .local v1, "ret":I
    monitor-exit v3

    #@31
    .line 112
    return v1
.end method
