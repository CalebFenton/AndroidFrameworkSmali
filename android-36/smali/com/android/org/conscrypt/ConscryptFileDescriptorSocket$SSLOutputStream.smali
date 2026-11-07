.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

.field private final blacklist writeLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 593
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 591
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 594
    return-void
.end method


# virtual methods
.method blacklist awaitPendingOps()V
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 652
    return-void

    .line 651
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 603
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 604
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->write([B)V

    .line 605
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 14
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 614
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 615
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 616
    if-nez p3, :cond_f

    .line 617
    return-void

    .line 620
    :cond_f
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_12
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v2

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_71

    .line 622
    :try_start_19
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5c

    .line 629
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_67

    .line 631
    :try_start_24
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v0, v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetwriteTimeoutMilliseconds(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v9
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_71

    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    .local v6, "buf":[B
    .local v7, "offset":I
    .local v8, "byteCount":I
    :try_start_3b
    invoke-virtual/range {v4 .. v9}, Lcom/android/org/conscrypt/NativeSsl;->write(Ljava/io/FileDescriptor;[BIII)V

    .line 634
    iget-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object p1

    monitor-enter p1
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_78

    .line 635
    :try_start_45
    iget-object p2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result p2

    if-eq p2, v3, :cond_50

    .line 638
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_58

    .line 639
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_78

    .line 640
    return-void

    .line 636
    :cond_50
    :try_start_50
    new-instance p2, Ljava/net/SocketException;

    const-string p3, "socket is closed"

    invoke-direct {p2, p3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    throw p2

    .line 638
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :catchall_58
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_58

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :try_start_5b
    throw p2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_78

    .line 623
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :cond_5c
    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    :try_start_5f
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    throw p1

    .line 629
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_67
    move-exception v0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object p1, v0

    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_6e

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :try_start_6d
    throw p1

    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    :catchall_6e
    move-exception v0

    move-object p1, v0

    goto :goto_6c

    .line 639
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_71
    move-exception v0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object p1, v0

    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_78

    throw p1

    :catchall_78
    move-exception v0

    move-object p1, v0

    goto :goto_76
.end method
