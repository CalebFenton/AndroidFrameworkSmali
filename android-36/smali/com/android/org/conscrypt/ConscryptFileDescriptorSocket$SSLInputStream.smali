.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final blacklist readLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;


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

    .line 509
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 507
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    .line 510
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method blacklist awaitPendingOps()V
    .registers 3

    .line 576
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 520
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->read([BII)I

    move-result v0

    .line 521
    .local v0, "result":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :cond_f
    return v3
.end method

.method public whitelist test-api read([BII)I
    .registers 14
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 532
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 533
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 534
    if-nez p3, :cond_10

    .line 535
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_10
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_13
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v2

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_77

    .line 540
    :try_start_1a
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_62

    .line 547
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_6d

    .line 549
    :try_start_25
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v0, v0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    .line 550
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v9
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_77

    .line 549
    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    .local v6, "buf":[B
    .local v7, "offset":I
    .local v8, "byteCount":I
    :try_start_3c
    invoke-virtual/range {v4 .. v9}, Lcom/android/org/conscrypt/NativeSsl;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result p1

    .line 551
    .local p1, "ret":I
    const/4 p2, -0x1

    if-ne p1, p2, :cond_60

    .line 552
    iget-object p2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object p2

    monitor-enter p2
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_7e

    .line 553
    :try_start_4a
    iget-object p3, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p3}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result p3

    if-eq p3, v3, :cond_54

    .line 556
    monitor-exit p2

    goto :goto_60

    .line 554
    :cond_54
    new-instance p3, Ljava/net/SocketException;

    const-string v0, "socket is closed"

    invoke-direct {p3, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local p1    # "ret":I
    throw p3

    .line 556
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .restart local p1    # "ret":I
    :catchall_5c
    move-exception v0

    move-object p3, v0

    monitor-exit p2
    :try_end_5f
    .catchall {:try_start_4a .. :try_end_5f} :catchall_5c

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :try_start_5f
    throw p3

    .line 558
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :cond_60
    :goto_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_7e

    return p1

    .line 541
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .local p1, "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :cond_62
    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    :try_start_65
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "socket is closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    throw p1

    .line 547
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_6d
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
    :goto_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_74

    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :try_start_73
    throw p1

    .restart local v6    # "buf":[B
    .restart local v7    # "offset":I
    .restart local v8    # "byteCount":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    :catchall_74
    move-exception v0

    move-object p1, v0

    goto :goto_72

    .line 559
    .end local v6    # "buf":[B
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_77
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
    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_7e

    throw p1

    :catchall_7e
    move-exception v0

    move-object p1, v0

    goto :goto_7c
.end method
