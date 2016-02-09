.class Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;
.super Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@2
    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@5
    .line 349
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    #@7
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 350
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    #@d
    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    #@f
    .line 351
    const/16 v0, 0x80

    #@11
    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    #@13
    .line 352
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@15
    const-string/jumbo v1, "ICMPv6"

    #@18
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@1a
    .line 359
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " dst{"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    #@30
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, "}"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@45
    .line 346
    return-void

    #@46
    .line 354
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    #@48
    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    #@4a
    .line 355
    const/16 v0, 0x8

    #@4c
    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    #@4e
    .line 356
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@50
    const-string/jumbo v1, "ICMPv4"

    #@53
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@55
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@2
    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-lez v1, :cond_0

    #@a
    .line 368
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@c
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@13
    .line 369
    return-void

    #@14
    .line 373
    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@16
    iget v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    #@18
    const-wide/16 v4, 0x64

    #@1a
    const-wide/16 v6, 0x12c

    #@1c
    const/4 v8, 0x0

    #@1d
    move-object v1, p0

    #@1e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 378
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, " src{"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->getSocketAddressString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, "}"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@4a
    .line 381
    const/16 v1, 0x8

    #@4c
    new-array v10, v1, [B

    #@4e
    .line 382
    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    #@50
    int-to-byte v1, v1

    #@51
    const/4 v2, 0x0

    #@52
    aput-byte v1, v10, v2

    #@54
    const/4 v1, 0x0

    #@55
    const/4 v2, 0x1

    #@56
    aput-byte v1, v10, v2

    #@58
    const/4 v1, 0x0

    #@59
    const/4 v2, 0x2

    #@5a
    aput-byte v1, v10, v2

    #@5c
    const/4 v1, 0x0

    #@5d
    const/4 v2, 0x3

    #@5e
    aput-byte v1, v10, v2

    #@60
    const/4 v1, 0x0

    #@61
    const/4 v2, 0x4

    #@62
    aput-byte v1, v10, v2

    #@64
    const/4 v1, 0x0

    #@65
    const/4 v2, 0x5

    #@66
    aput-byte v1, v10, v2

    #@68
    const/4 v1, 0x0

    #@69
    const/4 v2, 0x6

    #@6a
    aput-byte v1, v10, v2

    #@6c
    const/4 v1, 0x0

    #@6d
    const/4 v2, 0x7

    #@6e
    aput-byte v1, v10, v2

    #@70
    .line 385
    .local v10, "icmpPacket":[B
    const/4 v0, 0x0

    #@71
    .line 386
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@73
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    #@76
    move-result-wide v2

    #@77
    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    #@79
    .line 387
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    #@7c
    move-result-wide v2

    #@7d
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@7f
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    #@82
    move-result-wide v4

    #@83
    const-wide/16 v6, 0x190

    #@85
    sub-long/2addr v4, v6

    #@86
    cmp-long v1, v2, v4

    #@88
    if-gez v1, :cond_1

    #@8a
    .line 388
    add-int/lit8 v0, v0, 0x1

    #@8c
    .line 389
    array-length v1, v10

    #@8d
    add-int/lit8 v1, v1, -0x1

    #@8f
    int-to-byte v2, v0

    #@90
    aput-byte v2, v10, v1

    #@92
    .line 391
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@94
    array-length v2, v10

    #@95
    const/4 v3, 0x0

    #@96
    invoke-static {v1, v10, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    #@99
    .line 398
    const/16 v1, 0x200

    #@9b
    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@9e
    move-result-object v11

    #@9f
    .line 399
    .local v11, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@a1
    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@a4
    .line 401
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@a6
    new-instance v2, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v3, "1/"

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    #@bd
    .line 407
    .end local v11    # "reply":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@bf
    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@c1
    const-wide/16 v4, 0x0

    #@c3
    cmp-long v1, v2, v4

    #@c5
    if-nez v1, :cond_2

    #@c7
    .line 408
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@c9
    new-instance v2, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v3, "0/"

    #@d1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v2

    #@d5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v2

    #@d9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v2

    #@dd
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@e0
    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->close()V

    #@e3
    .line 363
    return-void

    #@e4
    .line 374
    .end local v0    # "count":I
    .end local v10    # "icmpPacket":[B
    :catch_0
    move-exception v9

    #@e5
    .line 375
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@e7
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@ea
    move-result-object v2

    #@eb
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@ee
    .line 376
    return-void

    #@ef
    .line 392
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v10    # "icmpPacket":[B
    :catch_1
    move-exception v9

    #@f0
    .line 393
    .restart local v9    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@f2
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@f5
    move-result-object v2

    #@f6
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@f9
    goto :goto_1

    #@fa
    .line 403
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    #@fb
    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method
