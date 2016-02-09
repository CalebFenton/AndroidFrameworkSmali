.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/LocalSocketImpl;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
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
    .line 116
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    #@5
    .line 115
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@5
    move-result-object v1

    #@6
    .line 158
    .local v1, "myFd":Ljava/io/FileDescriptor;
    if-nez v1, :cond_0

    #@8
    new-instance v2, Ljava/io/IOException;

    #@a
    const-string/jumbo v3, "socket closed"

    #@d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 159
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@13
    invoke-static {v2, v1}, Landroid/net/LocalSocketImpl;->-wrap1(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    #@16
    move-result v2

    #@17
    if-lez v2, :cond_1

    #@19
    .line 161
    const-wide/16 v2, 0xa

    #@1b
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    goto :goto_0

    #@1f
    .line 162
    :catch_0
    move-exception v0

    #@20
    .line 163
    .local v0, "ie":Ljava/lang/InterruptedException;
    return-void

    #@21
    .line 156
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 144
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    #@f
    new-instance v1, Ljava/io/IOException;

    #@11
    const-string/jumbo v3, "socket closed"

    #@14
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 142
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 145
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@1d
    invoke-static {v1, p1, v0}, Landroid/net/LocalSocketImpl;->-wrap4(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 141
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    #@5
    .line 121
    return-void
.end method

.method public write([BII)V
    .locals 4
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
    .line 128
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 130
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    #@f
    new-instance v1, Ljava/io/IOException;

    #@11
    const-string/jumbo v3, "socket closed"

    #@14
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 128
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 132
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    #@1d
    if-gez p3, :cond_2

    #@1f
    .line 133
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@21
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@24
    throw v1

    #@25
    .line 132
    :cond_2
    add-int v1, p2, p3

    #@27
    array-length v3, p1

    #@28
    if-gt v1, v3, :cond_1

    #@2a
    .line 135
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2c
    invoke-static {v1, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap5(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 127
    return-void
.end method
