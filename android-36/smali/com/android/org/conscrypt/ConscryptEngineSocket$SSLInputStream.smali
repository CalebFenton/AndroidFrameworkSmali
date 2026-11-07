.class final Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptEngineSocket.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final blacklist allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

.field private final blacklist fromEngine:Ljava/nio/ByteBuffer;

.field private final blacklist fromSocket:Ljava/nio/ByteBuffer;

.field private final blacklist fromSocketArrayOffset:I

.field private final blacklist readLock:Ljava/lang/Object;

.field private final blacklist singleByte:[B

.field private blacklist socketInputStream:Ljava/io/InputStream;

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mprocessDataFromSocket(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 786
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 778
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    .line 779
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    .line 787
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetbufferAllocator(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 788
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetbufferAllocator(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v1

    .line 789
    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    .line 788
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 790
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    goto :goto_4b

    .line 792
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 793
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    .line 796
    :goto_4b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 797
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    .line 798
    iget-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocketArrayOffset:I

    .line 799
    return-void
.end method

.method private blacklist init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 984
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mgetUnderlyingInputStream(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    .line 986
    :cond_c
    return-void
.end method

.method private blacklist isHandshakeFinished()Z
    .registers 4

    .line 968
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetstateLock(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 969
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetstate(Lcom/android/org/conscrypt/ConscryptEngineSocket;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 970
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .registers 4
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 860
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 866
    const/4 v0, 0x0

    return v0

    .line 864
    :pswitch_d
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private blacklist processDataFromSocket([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 886
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 889
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 893
    :goto_b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_23

    .line 894
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 895
    .local v0, "readFromEngine":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 896
    return v0

    .line 900
    .end local v0    # "readFromEngine":I
    :cond_23
    const/4 v0, 0x1

    .line 903
    .local v0, "needMoreDataFromSocket":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 904
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 906
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v1

    .line 907
    .local v1, "engineHandshaking":Z
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgetengine(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 913
    .local v2, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 914
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 916
    sget-object v3, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, -0x1

    packed-switch v3, :pswitch_data_b8

    .line 946
    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected engine result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 947
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 942
    :pswitch_82
    return v5

    .line 929
    :pswitch_83
    if-nez v1, :cond_99

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 930
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshakeFinished()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 933
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->renegotiate()V

    .line 934
    return v4

    .line 937
    :cond_99
    const/4 v0, 0x0

    .line 938
    goto :goto_a4

    .line 918
    :pswitch_9b
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-nez v3, :cond_a2

    .line 920
    goto :goto_a4

    .line 923
    :cond_a2
    const/4 v0, 0x0

    .line 924
    nop

    .line 951
    :goto_a4
    if-nez v0, :cond_ad

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-nez v3, :cond_ad

    .line 954
    return v4

    .line 958
    :cond_ad
    if-eqz v0, :cond_b6

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readFromSocket()I

    move-result v3

    if-ne v3, v5, :cond_b6

    .line 960
    return v5

    .line 964
    .end local v0    # "needMoreDataFromSocket":Z
    .end local v1    # "engineHandshaking":Z
    .end local v2    # "engineResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_b6
    goto/16 :goto_b

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_83
        :pswitch_82
    .end packed-switch
.end method

.method private blacklist readFromSocket()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 993
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 994
    .local v1, "lim":I
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    .line 995
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocketArrayOffset:I

    add-int/2addr v4, v0

    sub-int v5, v1, v0

    .line 994
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 997
    .local v2, "read":I
    if-lez v2, :cond_26

    .line 998
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    add-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_26
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_26} :catch_27

    .line 1000
    :cond_26
    return v2

    .line 1001
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "read":I
    :catch_27
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist readUntilDataAvailable([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    nop

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I

    move-result v0

    .line 874
    .local v0, "count":I
    if-eqz v0, :cond_1

    .line 875
    return v0
.end method

.method private blacklist renegotiate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$fgethandshakeLock(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 978
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mdoHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 979
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 853
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 855
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    monitor-exit v0

    return v1

    .line 856
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 804
    return-void
.end method

.method public whitelist test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 817
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 819
    :try_start_8
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->read([BII)I

    move-result v1

    .line 820
    .local v1, "count":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_15

    .line 822
    monitor-exit v0

    return v4

    .line 824
    :cond_15
    if-ne v1, v2, :cond_1f

    .line 827
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    monitor-exit v0

    return v2

    .line 825
    :cond_1f
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read incorrect number of bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    throw v2

    .line 828
    .end local v1    # "count":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public whitelist test-api read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 834
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_8
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->read([BII)I

    move-result v1

    monitor-exit v0

    return v1

    .line 836
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-$$Nest$mwaitForHandshake(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 842
    if-nez p3, :cond_9

    .line 843
    const/4 v0, 0x0

    return v0

    .line 845
    :cond_9
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readUntilDataAvailable([BII)I

    move-result v1

    monitor-exit v0

    return v1

    .line 847
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v1
.end method

.method blacklist release()V
    .registers 3

    .line 807
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    if-eqz v1, :cond_c

    .line 809
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 811
    :cond_c
    monitor-exit v0

    .line 812
    return-void

    .line 811
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
