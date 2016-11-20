.class Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;
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
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final DNS_SERVER_PORT:I = 0x35

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@0
    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@2
    .line 520
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    #@5
    .line 506
    new-instance v0, Ljava/util/Random;

    #@7
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    #@c
    .line 523
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mAddressFamily:I

    #@e
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 524
    const/16 v0, 0x1c

    #@14
    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    #@16
    .line 529
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "DNS UDP dst{"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mTarget:Ljava/net/InetAddress;

    #@26
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "}"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@3b
    .line 519
    return-void

    #@3c
    .line 526
    :cond_0
    const/4 v0, 0x1

    #@3d
    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    #@3f
    goto :goto_0
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .locals 9
    .param p1, "sixRandomDigits"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x63

    #@2
    const/16 v7, 0x2d

    #@4
    const/4 v6, 0x3

    #@5
    const/4 v5, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    .line 591
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@c
    move-result-object v0

    #@d
    .line 592
    .local v0, "rnd":[B
    const/16 v1, 0x36

    #@f
    new-array v1, v1, [B

    #@11
    .line 593
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    #@13
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    #@16
    move-result v2

    #@17
    int-to-byte v2, v2

    #@18
    aput-byte v2, v1, v4

    #@1a
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    #@1c
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    #@1f
    move-result v2

    #@20
    int-to-byte v2, v2

    #@21
    aput-byte v2, v1, v5

    #@23
    .line 594
    const/4 v2, 0x2

    #@24
    aput-byte v5, v1, v2

    #@26
    aput-byte v4, v1, v6

    #@28
    .line 595
    const/4 v2, 0x4

    #@29
    aput-byte v4, v1, v2

    #@2b
    const/4 v2, 0x5

    #@2c
    aput-byte v5, v1, v2

    #@2e
    .line 596
    const/4 v2, 0x6

    #@2f
    aput-byte v4, v1, v2

    #@31
    const/4 v2, 0x7

    #@32
    aput-byte v4, v1, v2

    #@34
    .line 597
    const/16 v2, 0x8

    #@36
    aput-byte v4, v1, v2

    #@38
    const/16 v2, 0x9

    #@3a
    aput-byte v4, v1, v2

    #@3c
    .line 598
    const/16 v2, 0xa

    #@3e
    aput-byte v4, v1, v2

    #@40
    const/16 v2, 0xb

    #@42
    aput-byte v4, v1, v2

    #@44
    .line 599
    const/16 v2, 0x11

    #@46
    const/16 v3, 0xc

    #@48
    aput-byte v2, v1, v3

    #@4a
    aget-byte v2, v0, v4

    #@4c
    const/16 v3, 0xd

    #@4e
    aput-byte v2, v1, v3

    #@50
    aget-byte v2, v0, v5

    #@52
    const/16 v3, 0xe

    #@54
    aput-byte v2, v1, v3

    #@56
    const/4 v2, 0x2

    #@57
    aget-byte v2, v0, v2

    #@59
    const/16 v3, 0xf

    #@5b
    aput-byte v2, v1, v3

    #@5d
    aget-byte v2, v0, v6

    #@5f
    const/16 v3, 0x10

    #@61
    aput-byte v2, v1, v3

    #@63
    const/4 v2, 0x4

    #@64
    aget-byte v2, v0, v2

    #@66
    const/16 v3, 0x11

    #@68
    aput-byte v2, v1, v3

    #@6a
    const/4 v2, 0x5

    #@6b
    aget-byte v2, v0, v2

    #@6d
    const/16 v3, 0x12

    #@6f
    aput-byte v2, v1, v3

    #@71
    .line 600
    const/16 v2, 0x13

    #@73
    aput-byte v7, v1, v2

    #@75
    const/16 v2, 0x61

    #@77
    const/16 v3, 0x14

    #@79
    aput-byte v2, v1, v3

    #@7b
    const/16 v2, 0x6e

    #@7d
    const/16 v3, 0x15

    #@7f
    aput-byte v2, v1, v3

    #@81
    const/16 v2, 0x64

    #@83
    const/16 v3, 0x16

    #@85
    aput-byte v2, v1, v3

    #@87
    const/16 v2, 0x72

    #@89
    const/16 v3, 0x17

    #@8b
    aput-byte v2, v1, v3

    #@8d
    const/16 v2, 0x6f

    #@8f
    const/16 v3, 0x18

    #@91
    aput-byte v2, v1, v3

    #@93
    const/16 v2, 0x69

    #@95
    const/16 v3, 0x19

    #@97
    aput-byte v2, v1, v3

    #@99
    const/16 v2, 0x64

    #@9b
    const/16 v3, 0x1a

    #@9d
    aput-byte v2, v1, v3

    #@9f
    const/16 v2, 0x1b

    #@a1
    aput-byte v7, v1, v2

    #@a3
    const/16 v2, 0x64

    #@a5
    const/16 v3, 0x1c

    #@a7
    aput-byte v2, v1, v3

    #@a9
    const/16 v2, 0x73

    #@ab
    const/16 v3, 0x1d

    #@ad
    aput-byte v2, v1, v3

    #@af
    .line 601
    const/4 v2, 0x6

    #@b0
    const/16 v3, 0x1e

    #@b2
    aput-byte v2, v1, v3

    #@b4
    const/16 v2, 0x6d

    #@b6
    const/16 v3, 0x1f

    #@b8
    aput-byte v2, v1, v3

    #@ba
    const/16 v2, 0x65

    #@bc
    const/16 v3, 0x20

    #@be
    aput-byte v2, v1, v3

    #@c0
    const/16 v2, 0x74

    #@c2
    const/16 v3, 0x21

    #@c4
    aput-byte v2, v1, v3

    #@c6
    const/16 v2, 0x72

    #@c8
    const/16 v3, 0x22

    #@ca
    aput-byte v2, v1, v3

    #@cc
    const/16 v2, 0x69

    #@ce
    const/16 v3, 0x23

    #@d0
    aput-byte v2, v1, v3

    #@d2
    const/16 v2, 0x24

    #@d4
    aput-byte v8, v1, v2

    #@d6
    .line 602
    const/4 v2, 0x7

    #@d7
    const/16 v3, 0x25

    #@d9
    aput-byte v2, v1, v3

    #@db
    const/16 v2, 0x67

    #@dd
    const/16 v3, 0x26

    #@df
    aput-byte v2, v1, v3

    #@e1
    const/16 v2, 0x73

    #@e3
    const/16 v3, 0x27

    #@e5
    aput-byte v2, v1, v3

    #@e7
    const/16 v2, 0x74

    #@e9
    const/16 v3, 0x28

    #@eb
    aput-byte v2, v1, v3

    #@ed
    const/16 v2, 0x61

    #@ef
    const/16 v3, 0x29

    #@f1
    aput-byte v2, v1, v3

    #@f3
    const/16 v2, 0x74

    #@f5
    const/16 v3, 0x2a

    #@f7
    aput-byte v2, v1, v3

    #@f9
    const/16 v2, 0x69

    #@fb
    const/16 v3, 0x2b

    #@fd
    aput-byte v2, v1, v3

    #@ff
    const/16 v2, 0x2c

    #@101
    aput-byte v8, v1, v2

    #@103
    .line 603
    aput-byte v6, v1, v7

    #@105
    const/16 v2, 0x2e

    #@107
    aput-byte v8, v1, v2

    #@109
    const/16 v2, 0x6f

    #@10b
    const/16 v3, 0x2f

    #@10d
    aput-byte v2, v1, v3

    #@10f
    const/16 v2, 0x6d

    #@111
    const/16 v3, 0x30

    #@113
    aput-byte v2, v1, v3

    #@115
    .line 604
    const/16 v2, 0x31

    #@117
    aput-byte v4, v1, v2

    #@119
    .line 605
    const/16 v2, 0x32

    #@11b
    aput-byte v4, v1, v2

    #@11d
    iget v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    #@11f
    int-to-byte v2, v2

    #@120
    const/16 v3, 0x33

    #@122
    aput-byte v2, v1, v3

    #@124
    .line 606
    const/16 v2, 0x34

    #@126
    aput-byte v4, v1, v2

    #@128
    const/16 v2, 0x35

    #@12a
    aput-byte v5, v1, v2

    #@12c
    .line 592
    return-object v1
.end method

.method private responseCodeStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "rcode"    # I

    #@0
    .prologue
    .line 511
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    #@3
    move-result-object v1

    #@4
    aget-object v1, v1, p1

    #@6
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 512
    :catch_0
    move-exception v0

    #@c
    .line 513
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@2
    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v1, v2, v4

    #@8
    if-lez v1, :cond_0

    #@a
    .line 538
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@c
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@13
    .line 539
    return-void

    #@14
    .line 543
    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@16
    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@18
    const-wide/16 v4, 0x64

    #@1a
    const-wide/16 v6, 0x1f4

    #@1c
    const/16 v8, 0x35

    #@1e
    move-object v1, p0

    #@1f
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 548
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, " src{"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getSocketAddressString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "}"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@4b
    .line 551
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    #@4d
    const v2, 0xdbba0

    #@50
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    #@53
    move-result v1

    #@54
    const v2, 0x186a0

    #@57
    add-int/2addr v1, v2

    #@58
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@5b
    move-result-object v13

    #@5c
    .line 552
    .local v13, "sixRandomDigits":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@5e
    new-instance v2, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    const-string/jumbo v3, " qtype{"

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    iget v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    const-string/jumbo v3, "}"

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    .line 553
    const-string/jumbo v3, " qname{"

    #@80
    .line 552
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    .line 553
    const-string/jumbo v3, "-android-ds.metric.gstatic.com}"

    #@8b
    .line 552
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    #@95
    .line 556
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    #@98
    move-result-object v9

    #@99
    .line 558
    .local v9, "dnsPacket":[B
    const/4 v0, 0x0

    #@9a
    .line 559
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@9c
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    #@9f
    move-result-wide v2

    #@a0
    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    #@a2
    .line 560
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    #@a5
    move-result-wide v2

    #@a6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    #@a8
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    #@ab
    move-result-wide v4

    #@ac
    const-wide/16 v6, 0x3e8

    #@ae
    sub-long/2addr v4, v6

    #@af
    cmp-long v1, v2, v4

    #@b1
    if-gez v1, :cond_1

    #@b3
    .line 561
    add-int/lit8 v0, v0, 0x1

    #@b5
    .line 563
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@b7
    array-length v2, v9

    #@b8
    const/4 v3, 0x0

    #@b9
    invoke-static {v1, v9, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    #@bc
    .line 570
    const/16 v1, 0x200

    #@be
    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@c1
    move-result-object v12

    #@c2
    .line 571
    .local v12, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    #@c4
    invoke-static {v1, v12}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@c7
    .line 574
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    #@ca
    move-result v1

    #@cb
    const/4 v2, 0x3

    #@cc
    if-le v1, v2, :cond_3

    #@ce
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v2, " "

    #@d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    const/4 v2, 0x3

    #@db
    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@de
    move-result v2

    #@df
    and-int/lit8 v2, v2, 0xf

    #@e1
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->responseCodeStr(I)Ljava/lang/String;

    #@e4
    move-result-object v2

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v11

    #@ed
    .line 577
    .local v11, "rcodeStr":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@ef
    new-instance v2, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v3, "1/"

    #@f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v2

    #@ff
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    #@10a
    .line 583
    .end local v11    # "rcodeStr":Ljava/lang/String;
    .end local v12    # "reply":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@10c
    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    #@10e
    const-wide/16 v4, 0x0

    #@110
    cmp-long v1, v2, v4

    #@112
    if-nez v1, :cond_2

    #@114
    .line 584
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@116
    new-instance v2, Ljava/lang/StringBuilder;

    #@118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v3, "0/"

    #@11e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v2

    #@122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@125
    move-result-object v2

    #@126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@12d
    .line 587
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->close()V

    #@130
    .line 533
    return-void

    #@131
    .line 544
    .end local v0    # "count":I
    .end local v9    # "dnsPacket":[B
    .end local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@132
    .line 545
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@134
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@13b
    .line 546
    return-void

    #@13c
    .line 564
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v9    # "dnsPacket":[B
    .restart local v13    # "sixRandomDigits":Ljava/lang/String;
    :catch_1
    move-exception v10

    #@13d
    .line 565
    .restart local v10    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    #@13f
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@142
    move-result-object v2

    #@143
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    #@146
    goto :goto_2

    #@147
    .line 576
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "reply":Ljava/nio/ByteBuffer;
    :cond_3
    :try_start_3
    const-string/jumbo v11, ""
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2

    #@14a
    .restart local v11    # "rcodeStr":Ljava/lang/String;
    goto :goto_1

    #@14b
    .line 579
    .end local v11    # "rcodeStr":Ljava/lang/String;
    .end local v12    # "reply":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v10

    #@14c
    .restart local v10    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method
