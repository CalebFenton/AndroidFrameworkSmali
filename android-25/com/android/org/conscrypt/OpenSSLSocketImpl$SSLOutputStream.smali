.class Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@0
    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
    .line 786
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    #@c
    .line 788
    return-void
.end method


# virtual methods
.method public awaitPendingOps()V
    .locals 1

    #@0
    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 830
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 797
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 798
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 799
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->write([B)V

    #@c
    .line 796
    return-void
.end method

.method public write([BII)V
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 808
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    #@3
    .line 809
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@5
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@8
    .line 810
    array-length v0, p1

    #@9
    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/ArrayUtils;->checkOffsetAndCount(III)V

    #@c
    .line 811
    if-nez p3, :cond_0

    #@e
    .line 812
    return-void

    #@f
    .line 815
    :cond_0
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    #@11
    monitor-enter v8

    #@12
    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@14
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    .line 817
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@1b
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    #@1e
    move-result v0

    #@1f
    const/4 v2, 0x5

    #@20
    if-ne v0, v2, :cond_1

    #@22
    .line 818
    new-instance v0, Ljava/net/SocketException;

    #@24
    const-string/jumbo v2, "socket is closed"

    #@27
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 816
    :catchall_0
    move-exception v0

    #@2c
    :try_start_2
    monitor-exit v1

    #@2d
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2e
    .line 815
    :catchall_1
    move-exception v0

    #@2f
    monitor-exit v8

    #@30
    throw v0

    #@31
    :cond_1
    :try_start_3
    monitor-exit v1

    #@32
    .line 824
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@34
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J

    #@37
    move-result-wide v0

    #@38
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3a
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@41
    move-result-object v2

    #@42
    .line 825
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@44
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@46
    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get4(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    #@49
    move-result v7

    #@4a
    move-object v4, p1

    #@4b
    move v5, p2

    #@4c
    move v6, p3

    #@4d
    .line 824
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@50
    monitor-exit v8

    #@51
    .line 807
    return-void
.end method
