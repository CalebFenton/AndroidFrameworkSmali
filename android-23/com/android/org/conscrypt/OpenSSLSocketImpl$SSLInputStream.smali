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
    .line 660
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    .line 658
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    #@c
    .line 660
    return-void
.end method


# virtual methods
.method public awaitPendingOps()V
    .locals 1

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 705
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
    .line 672
    new-array v0, v4, [B

    #@5
    .line 673
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->read([BII)I

    #@8
    move-result v1

    #@9
    .line 674
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
    .line 683
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@4
    move-result-object v0

    #@5
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@8
    .line 685
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@a
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-wrap0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)V

    #@d
    .line 686
    array-length v0, p1

    #@e
    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/util/ArrayUtils;->checkOffsetAndCount(III)V

    #@11
    .line 687
    if-nez p3, :cond_0

    #@13
    .line 688
    return v1

    #@14
    .line 691
    :cond_0
    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->readLock:Ljava/lang/Object;

    #@16
    monitor-enter v8

    #@17
    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@19
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get3(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 693
    :try_start_1
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@20
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get2(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)I

    #@23
    move-result v0

    #@24
    const/4 v2, 0x5

    #@25
    if-ne v0, v2, :cond_1

    #@27
    .line 694
    new-instance v0, Ljava/net/SocketException;

    #@29
    const-string/jumbo v2, "socket is closed"

    #@2c
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 692
    :catchall_0
    move-exception v0

    #@31
    :try_start_2
    monitor-exit v1

    #@32
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@33
    .line 691
    :catchall_1
    move-exception v0

    #@34
    monitor-exit v8

    #@35
    throw v0

    #@36
    :cond_1
    :try_start_3
    monitor-exit v1

    #@37
    .line 700
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@39
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get1(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)J

    #@3c
    move-result-wide v0

    #@3d
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@3f
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->-get0(Lcom/android/org/conscrypt/OpenSSLSocketImpl;)Ljava/net/Socket;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    #@46
    move-result-object v2

    #@47
    .line 701
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@49
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLSocketImpl$SSLInputStream;->this$0:Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    #@4b
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLSocketImpl;->getSoTimeout()I

    #@4e
    move-result v7

    #@4f
    move-object v4, p1

    #@50
    move v5, p2

    #@51
    move v6, p3

    #@52
    .line 700
    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@55
    move-result v0

    #@56
    monitor-exit v8

    #@57
    return v0
.end method
