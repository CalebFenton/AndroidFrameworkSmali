.class Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final readLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@0
    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    .line 716
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    #@c
    .line 718
    return-void
.end method


# virtual methods
.method public awaitPendingOps()V
    .locals 1

    #@0
    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 763
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
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 730
    new-array v0, v4, [B

    #@5
    .line 731
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->read([BII)I

    #@8
    move-result v1

    #@9
    .line 732
    .local v1, "result":I
    if-eq v1, v2, :cond_0

    #@b
    aget-byte v2, v0, v3

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    :cond_0
    return v2
.end method

.method public read([BII)I
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
    const/4 v1, 0x0

    #@1
    .line 741
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    #@4
    .line 743
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@6
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@9
    .line 744
    array-length v0, p1

    #@a
    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/ArrayUtils;->checkOffsetAndCount(III)V

    #@d
    .line 745
    if-nez p3, :cond_0

    #@f
    .line 746
    return v1

    #@10
    .line 749
    :cond_0
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    #@12
    monitor-enter v8

    #@13
    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@15
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1a
    .line 751
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@1c
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    #@1f
    move-result v0

    #@20
    const/4 v2, 0x5

    #@21
    if-ne v0, v2, :cond_1

    #@23
    .line 752
    new-instance v0, Ljava/net/SocketException;

    #@25
    const-string/jumbo v2, "socket is closed"

    #@28
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 750
    :catchall_0
    move-exception v0

    #@2d
    :try_start_2
    monitor-exit v1

    #@2e
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2f
    .line 749
    :catchall_1
    move-exception v0

    #@30
    monitor-exit v8

    #@31
    throw v0

    #@32
    :cond_1
    :try_start_3
    monitor-exit v1

    #@33
    .line 758
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@35
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J

    #@38
    move-result-wide v0

    #@39
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3b
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    #@3e
    move-result-object v2

    #@3f
    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@42
    move-result-object v2

    #@43
    .line 759
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@45
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@47
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    #@4a
    move-result v7

    #@4b
    move-object v4, p1

    #@4c
    move v5, p2

    #@4d
    move v6, p3

    #@4e
    .line 758
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@51
    move-result v0

    #@52
    monitor-exit v8

    #@53
    return v0
.end method
