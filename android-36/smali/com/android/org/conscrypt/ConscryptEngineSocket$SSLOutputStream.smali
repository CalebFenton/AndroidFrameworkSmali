.class final Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptEngineSocket.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLOutputStream"
.end annotation


# instance fields
.field private blacklist socketOutputStream:Ljava/io/OutputStream;

.field private final blacklist target:Ljava/nio/ByteBuffer;

.field private final blacklist targetArrayOffset:I

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

.field private final blacklist writeLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mflushInternal(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteInternal(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 672
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 678
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 679
    iget-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->targetArrayOffset:I

    .line 680
    return-void
.end method

.method private blacklist flushInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 758
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 759
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 760
    return-void
.end method

.method private blacklist init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    .line 764
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mgetUnderlyingOutputStream(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    .line 766
    :cond_c
    return-void
.end method

.method private blacklist writeInternal(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 713
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 714
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 718
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 721
    .local v0, "len":I
    :cond_f
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 722
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 723
    .local v1, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v3, :cond_4e

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_31

    goto :goto_4e

    .line 724
    :cond_31
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected engine result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 726
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-ne v2, v3, :cond_91

    .line 730
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    sub-int/2addr v0, v2

    .line 731
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v0, v2, :cond_89

    .line 734
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_7e

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    if-nez v2, :cond_7e

    .line 735
    if-gtz v0, :cond_76

    goto :goto_88

    .line 736
    :cond_76
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 741
    :cond_7e
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 744
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeToSocket()V

    .line 745
    if-gtz v0, :cond_f

    .line 746
    :goto_88
    return-void

    .line 732
    :cond_89
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Engine did not read the correct number of bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 727
    :cond_91
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Engine bytesProduced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not match bytes written "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 728
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist writeToSocket()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->targetArrayOffset:I

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 771
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 685
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 751
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    .line 753
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 690
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    int-to-byte v1, p1

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->write([B)V

    .line 692
    monitor-exit v0

    .line 693
    return-void

    .line 692
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    throw v1

    :catchall_16
    move-exception v1

    goto :goto_14
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 698
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    .line 700
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 706
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_8
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    .line 708
    monitor-exit v0

    .line 709
    return-void

    .line 708
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method
