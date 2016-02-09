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
    .line 55
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    .line 60
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    #@8
    new-instance v1, Ljava/io/IOException;

    #@a
    const-string/jumbo v2, "socket closed"

    #@d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 62
    :cond_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@13
    invoke-static {v1, v0}, Landroid/net/LocalSocketImpl;->-wrap0(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    #@16
    move-result v1

    #@17
    return v1
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
    .line 68
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    #@5
    .line 67
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
    .line 75
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 76
    :try_start_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 77
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
    .line 75
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 79
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@1d
    invoke-static {v2, v0}, Landroid/net/LocalSocketImpl;->-wrap2(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v1

    #@21
    .local v1, "ret":I
    monitor-exit v3

    #@22
    .line 80
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
    .line 87
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
    .line 93
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get1(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 94
    :try_start_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 95
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
    .line 93
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit v3

    #@1a
    throw v2

    #@1b
    .line 97
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    #@1d
    if-gez p3, :cond_2

    #@1f
    .line 98
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@21
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@24
    throw v2

    #@25
    .line 97
    :cond_2
    add-int v2, p2, p3

    #@27
    array-length v4, p1

    #@28
    if-gt v2, v4, :cond_1

    #@2a
    .line 101
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2c
    invoke-static {v2, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result v1

    #@30
    .local v1, "ret":I
    monitor-exit v3

    #@31
    .line 103
    return v1
.end method
