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
    .line 121
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
    .line 125
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    #@5
    .line 124
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 166
    iget-object v4, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@3
    invoke-static {v4}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@6
    move-result-object v2

    #@7
    .line 167
    .local v2, "myFd":Ljava/io/FileDescriptor;
    if-nez v2, :cond_0

    #@9
    new-instance v4, Ljava/io/IOException;

    #@b
    const-string/jumbo v5, "socket closed"

    #@e
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 170
    :cond_0
    new-instance v3, Landroid/util/MutableInt;

    #@14
    invoke-direct {v3, v5}, Landroid/util/MutableInt;-><init>(I)V

    #@17
    .line 174
    .local v3, "pending":Landroid/util/MutableInt;
    :goto_0
    :try_start_0
    sget v4, Landroid/system/OsConstants;->TIOCOUTQ:I

    #@19
    invoke-static {v2, v4, v3}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/util/MutableInt;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 179
    iget v4, v3, Landroid/util/MutableInt;->value:I

    #@1e
    if-gtz v4, :cond_1

    #@20
    .line 165
    :goto_1
    return-void

    #@21
    .line 175
    :catch_0
    move-exception v0

    #@22
    .line 176
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@25
    move-result-object v4

    #@26
    throw v4

    #@27
    .line 185
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    const-wide/16 v4, 0xa

    #@29
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    goto :goto_0

    #@2d
    .line 186
    :catch_1
    move-exception v1

    #@2e
    .local v1, "ie":Ljava/lang/InterruptedException;
    goto :goto_1
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
    .line 151
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 153
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
    .line 151
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 154
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@1d
    invoke-static {v1, p1, v0}, Landroid/net/LocalSocketImpl;->-wrap2(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 150
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
    .line 131
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    #@5
    .line 130
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
    .line 137
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get2(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@9
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->-get0(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    #@c
    move-result-object v0

    #@d
    .line 139
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
    .line 137
    .end local v0    # "myFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1

    #@1b
    .line 141
    .restart local v0    # "myFd":Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    #@1d
    if-gez p3, :cond_2

    #@1f
    .line 142
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@21
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@24
    throw v1

    #@25
    .line 141
    :cond_2
    add-int v1, p2, p3

    #@27
    array-length v3, p1

    #@28
    if-gt v1, v3, :cond_1

    #@2a
    .line 144
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #@2c
    invoke-static {v1, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->-wrap3(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 136
    return-void
.end method
