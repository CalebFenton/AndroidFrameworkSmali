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
    .line 730
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
    .line 728
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    #@c
    .line 730
    return-void
.end method


# virtual methods
.method public awaitPendingOps()V
    .locals 1

    #@0
    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 772
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
    .line 739
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [B

    #@3
    .line 740
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 741
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->write([B)V

    #@c
    .line 738
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
    .line 750
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 751
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@9
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@c
    .line 752
    array-length v0, p1

    #@d
    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/ArrayUtils;->checkOffsetAndCount(III)V

    #@10
    .line 753
    if-nez p3, :cond_0

    #@12
    .line 754
    return-void

    #@13
    .line 757
    :cond_0
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->writeLock:Ljava/lang/Object;

    #@15
    monitor-enter v8

    #@16
    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@18
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@1f
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    #@22
    move-result v0

    #@23
    const/4 v2, 0x5

    #@24
    if-ne v0, v2, :cond_1

    #@26
    .line 760
    new-instance v0, Ljava/net/SocketException;

    #@28
    const-string/jumbo v2, "socket is closed"

    #@2b
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 758
    :catchall_0
    move-exception v0

    #@30
    :try_start_2
    monitor-exit v1

    #@31
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    .line 757
    :catchall_1
    move-exception v0

    #@33
    monitor-exit v8

    #@34
    throw v0

    #@35
    :cond_1
    :try_start_3
    monitor-exit v1

    #@36
    .line 766
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@38
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J

    #@3b
    move-result-wide v0

    #@3c
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3e
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    #@41
    move-result-object v2

    #@42
    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@45
    move-result-object v2

    #@46
    .line 767
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@48
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@4a
    invoke-static {v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get4(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    #@4d
    move-result v7

    #@4e
    move-object v4, p1

    #@4f
    move v5, p2

    #@50
    move v6, p3

    #@51
    .line 766
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    monitor-exit v8

    #@55
    .line 749
    return-void
.end method
