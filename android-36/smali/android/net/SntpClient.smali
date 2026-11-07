.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = true

.field private static final greylist-max-o NTP_LEAP_NOSYNC:I = 0x3

.field private static final greylist-max-o NTP_MODE_BROADCAST:I = 0x5

.field private static final greylist-max-o NTP_MODE_CLIENT:I = 0x3

.field private static final greylist-max-o NTP_MODE_SERVER:I = 0x4

.field private static final greylist-max-o NTP_PACKET_SIZE:I = 0x30

.field private static final greylist-max-o NTP_STRATUM_DEATH:I = 0x0

.field private static final greylist-max-o NTP_STRATUM_MAX:I = 0xf

.field private static final greylist-max-o NTP_VERSION:I = 0x3

.field private static final greylist-max-o ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final greylist-max-o RECEIVE_TIME_OFFSET:I = 0x20

.field private static final greylist-max-o REFERENCE_TIME_OFFSET:I = 0x10

.field public static final blacklist STANDARD_NTP_PORT:I = 0x7b

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SntpClient"

.field private static final greylist-max-o TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private blacklist mClockOffset:J

.field private greylist-max-o mNtpTime:J

.field private greylist-max-o mNtpTimeReference:J

.field private final blacklist mRandom:Ljava/util/Random;

.field private greylist-max-o mRoundTripTime:J

.field private blacklist mServerSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mSystemTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 105
    new-instance v0, Landroid/net/SntpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/SntpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Landroid/net/SntpClient;->defaultRandom()Ljava/util/Random;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/SntpClient;-><init>(Ljava/util/function/Supplier;Ljava/util/Random;)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/Random;)V
    .registers 4
    .param p2, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 109
    .local p1, "systemTimeSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/time/Instant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    .line 111
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    iput-object v0, p0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 112
    return-void
.end method

.method public static blacklist calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;
    .registers 7
    .param p0, "clientRequestTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p1, "serverReceiveTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p2, "serverTransmitTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p3, "clientResponseTimestamp"    # Landroid/net/sntp/Timestamp64;

    .line 244
    invoke-static {p0, p1}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v0

    .line 245
    invoke-static {p3, p2}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sntp/Duration64;->plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;

    move-result-object v0

    .line 246
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->dividedBy(J)Ljava/time/Duration;

    move-result-object v0

    .line 244
    return-object v0
.end method

.method private static blacklist checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V
    .registers 10
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p4, "referenceTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p5, "randomizedRequestTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p6, "originateTimestamp"    # Landroid/net/sntp/Timestamp64;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x3

    if-eq p0, v0, :cond_76

    .line 310
    const/4 v0, 0x4

    if-eq p1, v0, :cond_24

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    goto :goto_24

    .line 311
    :cond_a
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_24
    :goto_24
    if-eqz p2, :cond_5c

    const/16 v0, 0xf

    if-gt p2, v0, :cond_5c

    .line 316
    invoke-virtual {p5, p6}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 320
    sget-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p3, v0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 323
    sget-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p4, v0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 326
    return-void

    .line 324
    :cond_41
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero referenceTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_4a
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_53
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "originateTimestamp != randomizedRequestTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_5c
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_76
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist defaultRandom()Ljava/util/Random;
    .registers 4

    .line 372
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    .line 377
    .local v0, "random":Ljava/util/Random;
    goto :goto_17

    .line 373
    .end local v0    # "random":Ljava/util/Random;
    :catch_5
    move-exception v0

    .line 375
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "SntpClient"

    const-string v2, "Unable to access SecureRandom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    move-object v0, v1

    .line 378
    .local v0, "random":Ljava/util/Random;
    :goto_17
    return-object v0
.end method

.method private blacklist readTimeStamp([BI)Landroid/net/sntp/Timestamp64;
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 345
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v0

    .line 346
    .local v0, "seconds":J
    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v2

    long-to-int v2, v2

    .line 347
    .local v2, "fractionBits":I
    invoke-static {v0, v1, v2}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object v3

    return-object v3
.end method

.method private blacklist readUnsigned32([BI)J
    .registers 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 332
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 333
    .local p2, "i0":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 334
    .local v0, "i1":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 335
    .local v1, "i2":I
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 337
    .local v3, "i3":I
    shl-int/lit8 v4, p2, 0x18

    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 338
    .local v4, "bits":I
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    return-wide v5
.end method

.method private blacklist writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "timestamp"    # Landroid/net/sntp/Timestamp64;

    .line 354
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    .line 356
    .local v0, "seconds":J
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    const/16 v3, 0x18

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 357
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    const/16 v3, 0x10

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 358
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    const/16 v3, 0x8

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 359
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    long-to-int v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 361
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result v2

    .line 363
    .local v2, "fractionBits":I
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 364
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 365
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 366
    int-to-byte p2, v2

    aput-byte p2, p1, v3

    .line 367
    return-void
.end method


# virtual methods
.method public blacklist getClockOffset()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/net/SntpClient;->mClockOffset:J

    return-wide v0
.end method

.method public greylist getNtpTime()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public greylist getNtpTimeReference()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public greylist getRoundTripTime()J
    .registers 3

    .line 292
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public blacklist getServerSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public greylist requestTime(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    const-string v0, "SntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestTime(Ljava/lang/String;IILandroid/net/Network;)Z
    .registers 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "network"    # Landroid/net/Network;

    .line 126
    const-string v0, "SntpClient"

    invoke-virtual {p4}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object v1

    .line 128
    .local v1, "networkForResolv":Landroid/net/Network;
    :try_start_6
    invoke-virtual {v1, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 129
    .local v2, "addresses":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v2

    if-ge v3, v4, :cond_1b

    .line 130
    aget-object v4, v2, v3

    invoke-virtual {p0, v4, p2, p3, v1}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v4
    :try_end_14
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_14} :catch_1c

    if-eqz v4, :cond_18

    .line 131
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 137
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    .end local v3    # "i":I
    :cond_1b
    goto :goto_3a

    .line 134
    :catch_1c
    move-exception v2

    .line 135
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_3a
    const-string/jumbo v2, "request time failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .registers 45
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "network"    # Landroid/net/Network;

    .line 144
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "SntpClient"

    const/4 v5, 0x0

    .line 145
    .local v5, "socket":Ljava/net/DatagramSocket;
    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v6

    .line 148
    .local v6, "oldTag":I
    const/4 v7, 0x0

    :try_start_10
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_169
    .catchall {:try_start_10 .. :try_end_15} :catchall_165

    move-object v5, v0

    .line 149
    move-object/from16 v8, p4

    :try_start_18
    invoke-virtual {v8, v5}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 150
    move/from16 v9, p3

    invoke-virtual {v5, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 151
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 152
    .local v0, "buffer":[B
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v11, v0

    invoke-direct {v10, v0, v11, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 157
    .local v10, "request":Ljava/net/DatagramPacket;
    const/16 v11, 0x1b

    aput-byte v11, v0, v7

    .line 160
    iget-object v11, v1, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/time/Instant;

    .line 161
    .local v11, "requestTime":Ljava/time/Instant;
    invoke-static {v11}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v12

    .line 163
    .local v12, "requestTimestamp":Landroid/net/sntp/Timestamp64;
    iget-object v13, v1, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 164
    invoke-virtual {v12, v13}, Landroid/net/sntp/Timestamp64;->randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;

    move-result-object v13

    .line 165
    .local v13, "randomizedRequestTimestamp":Landroid/net/sntp/Timestamp64;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-wide/from16 v21, v14

    .line 166
    .local v21, "requestTicks":J
    const/16 v14, 0x28

    invoke-direct {v1, v0, v14, v13}, Landroid/net/SntpClient;->writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V

    .line 168
    invoke-virtual {v5, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 171
    new-instance v15, Ljava/net/DatagramPacket;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_50} :catch_15d
    .catchall {:try_start_18 .. :try_end_50} :catchall_157

    move/from16 v23, v7

    :try_start_52
    array-length v7, v0

    invoke-direct {v15, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v7, v15

    .line 172
    .local v7, "response":Ljava/net/DatagramPacket;
    invoke-virtual {v5, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-wide/from16 v24, v15

    .line 174
    .local v24, "responseTicks":J
    sub-long v14, v24, v21

    invoke-virtual {v11, v14, v15}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v14

    .line 175
    .local v14, "responseTime":Ljava/time/Instant;
    invoke-static {v14}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v15

    .line 178
    .local v15, "responseTimestamp":Landroid/net/sntp/Timestamp64;
    aget-byte v17, v0, v23
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6c} :catch_151
    .catchall {:try_start_52 .. :try_end_6c} :catchall_157

    shr-int/lit8 v17, v17, 0x6

    move-object/from16 v26, v5

    .end local v5    # "socket":Ljava/net/DatagramSocket;
    .local v26, "socket":Ljava/net/DatagramSocket;
    and-int/lit8 v5, v17, 0x3

    int-to-byte v5, v5

    .line 179
    .local v5, "leap":B
    :try_start_73
    aget-byte v17, v0, v23

    move/from16 v18, v5

    .end local v5    # "leap":B
    .local v18, "leap":B
    and-int/lit8 v5, v17, 0x7

    int-to-byte v5, v5

    .line 180
    .local v5, "mode":B
    const/16 v27, 0x1

    move/from16 v17, v5

    .end local v5    # "mode":B
    .local v17, "mode":B
    aget-byte v5, v0, v27

    and-int/lit16 v5, v5, 0xff

    .line 181
    .local v5, "stratum":I
    move/from16 v19, v5

    .end local v5    # "stratum":I
    .local v19, "stratum":I
    const/16 v5, 0x10

    invoke-direct {v1, v0, v5}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v5

    .line 182
    .local v5, "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    move-object/from16 v20, v5

    .end local v5    # "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    .local v20, "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    const/16 v5, 0x18

    invoke-direct {v1, v0, v5}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v5

    .line 183
    .local v5, "originateTimestamp":Landroid/net/sntp/Timestamp64;
    move-object/from16 v28, v5

    .end local v5    # "originateTimestamp":Landroid/net/sntp/Timestamp64;
    .local v28, "originateTimestamp":Landroid/net/sntp/Timestamp64;
    const/16 v5, 0x20

    invoke-direct {v1, v0, v5}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v5
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_9a} :catch_14b
    .catchall {:try_start_73 .. :try_end_9a} :catchall_145

    .line 184
    .local v5, "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    move/from16 v29, v6

    const/16 v6, 0x28

    .end local v6    # "oldTag":I
    .local v29, "oldTag":I
    :try_start_9e
    invoke-direct {v1, v0, v6}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v6

    .line 187
    .local v6, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    move/from16 v16, v19

    move-object/from16 v19, v13

    move-object v13, v15

    move/from16 v15, v17

    move-object/from16 v17, v6

    move-object v6, v14

    move/from16 v14, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v28

    .end local v28    # "originateTimestamp":Landroid/net/sntp/Timestamp64;
    .local v6, "responseTime":Ljava/time/Instant;
    .local v13, "responseTimestamp":Landroid/net/sntp/Timestamp64;
    .local v14, "leap":B
    .local v15, "mode":B
    .local v16, "stratum":I
    .local v17, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .local v18, "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    .local v19, "randomizedRequestTimestamp":Landroid/net/sntp/Timestamp64;
    .local v20, "originateTimestamp":Landroid/net/sntp/Timestamp64;
    invoke-static/range {v14 .. v20}, Landroid/net/SntpClient;->checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V

    move-object/from16 v28, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v28

    move-object/from16 v28, v20

    .line 190
    .end local v20    # "originateTimestamp":Landroid/net/sntp/Timestamp64;
    .local v0, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .local v17, "buffer":[B
    .restart local v28    # "originateTimestamp":Landroid/net/sntp/Timestamp64;
    sub-long v30, v24, v21

    .line 191
    .local v30, "totalTransactionDurationMillis":J
    nop

    .line 192
    invoke-static {v5, v0}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/time/Duration;->toMillis()J

    move-result-wide v32

    .line 193
    .local v32, "serverDurationMillis":J
    move-object/from16 v20, v7

    .end local v7    # "response":Ljava/net/DatagramPacket;
    .local v20, "response":Ljava/net/DatagramPacket;
    sub-long v7, v30, v32

    .line 195
    .local v7, "roundTripTimeMillis":J
    invoke-static {v12, v5, v0, v13}, Landroid/net/SntpClient;->calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;

    move-result-object v34

    move-object/from16 v35, v34

    .line 197
    .local v35, "clockOffsetDuration":Ljava/time/Duration;
    invoke-virtual/range {v35 .. v35}, Ljava/time/Duration;->toMillis()J

    move-result-wide v36

    move-wide/from16 v38, v36

    .line 199
    .local v38, "clockOffsetMillis":J
    nop

    .line 200
    move-object/from16 v34, v0

    .end local v0    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .local v34, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    move-object/from16 v36, v10

    move-wide/from16 v9, v38

    .end local v10    # "request":Ljava/net/DatagramPacket;
    .end local v38    # "clockOffsetMillis":J
    .local v9, "clockOffsetMillis":J
    .local v36, "request":Ljava/net/DatagramPacket;
    invoke-static {v0, v7, v8, v9, v10}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v5

    .end local v5    # "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    .local v37, "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    const-string/jumbo v5, "round trip: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "ms, clock offset: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-wide v9, v1, Landroid/net/SntpClient;->mClockOffset:J

    .line 209
    move-object/from16 v0, v35

    .end local v35    # "clockOffsetDuration":Ljava/time/Duration;
    .local v0, "clockOffsetDuration":Ljava/time/Duration;
    invoke-virtual {v6, v0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v5

    move-object/from16 v35, v6

    .end local v6    # "responseTime":Ljava/time/Instant;
    .local v35, "responseTime":Ljava/time/Instant;
    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/SntpClient;->mNtpTime:J

    .line 210
    move-wide/from16 v5, v24

    .end local v24    # "responseTicks":J
    .local v5, "responseTicks":J
    iput-wide v5, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 211
    iput-wide v7, v1, Landroid/net/SntpClient;->mRoundTripTime:J

    .line 212
    move-object/from16 v24, v0

    .end local v0    # "clockOffsetDuration":Ljava/time/Duration;
    .local v24, "clockOffsetDuration":Ljava/time/Duration;
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, v1, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_134} :catch_141
    .catchall {:try_start_9e .. :try_end_134} :catchall_13d

    .line 218
    .end local v5    # "responseTicks":J
    .end local v7    # "roundTripTimeMillis":J
    .end local v9    # "clockOffsetMillis":J
    .end local v11    # "requestTime":Ljava/time/Instant;
    .end local v12    # "requestTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v13    # "responseTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v14    # "leap":B
    .end local v15    # "mode":B
    .end local v16    # "stratum":I
    .end local v17    # "buffer":[B
    .end local v18    # "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v19    # "randomizedRequestTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v20    # "response":Ljava/net/DatagramPacket;
    .end local v21    # "requestTicks":J
    .end local v24    # "clockOffsetDuration":Ljava/time/Duration;
    .end local v28    # "originateTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v30    # "totalTransactionDurationMillis":J
    .end local v32    # "serverDurationMillis":J
    .end local v34    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v35    # "responseTime":Ljava/time/Instant;
    .end local v36    # "request":Ljava/net/DatagramPacket;
    .end local v37    # "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    nop

    .line 219
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    .line 221
    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 222
    nop

    .line 224
    return v27

    .line 218
    :catchall_13d
    move-exception v0

    move-object/from16 v5, v26

    goto :goto_19b

    .line 213
    :catch_141
    move-exception v0

    move-object/from16 v5, v26

    goto :goto_16e

    .line 218
    .end local v29    # "oldTag":I
    .local v6, "oldTag":I
    :catchall_145
    move-exception v0

    move/from16 v29, v6

    move-object/from16 v5, v26

    .end local v6    # "oldTag":I
    .restart local v29    # "oldTag":I
    goto :goto_19b

    .line 213
    .end local v29    # "oldTag":I
    .restart local v6    # "oldTag":I
    :catch_14b
    move-exception v0

    move/from16 v29, v6

    move-object/from16 v5, v26

    .end local v6    # "oldTag":I
    .restart local v29    # "oldTag":I
    goto :goto_16e

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .end local v29    # "oldTag":I
    .local v5, "socket":Ljava/net/DatagramSocket;
    .restart local v6    # "oldTag":I
    :catch_151
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v29, v6

    goto :goto_164

    .line 218
    :catchall_157
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v29, v6

    .end local v5    # "socket":Ljava/net/DatagramSocket;
    .end local v6    # "oldTag":I
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v29    # "oldTag":I
    goto :goto_19b

    .line 213
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .end local v29    # "oldTag":I
    .restart local v5    # "socket":Ljava/net/DatagramSocket;
    .restart local v6    # "oldTag":I
    :catch_15d
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v29, v6

    move/from16 v23, v7

    .end local v5    # "socket":Ljava/net/DatagramSocket;
    .end local v6    # "oldTag":I
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v29    # "oldTag":I
    :goto_164
    goto :goto_16e

    .line 218
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .end local v29    # "oldTag":I
    .restart local v5    # "socket":Ljava/net/DatagramSocket;
    .restart local v6    # "oldTag":I
    :catchall_165
    move-exception v0

    move/from16 v29, v6

    .end local v6    # "oldTag":I
    .restart local v29    # "oldTag":I
    goto :goto_19b

    .line 213
    .end local v29    # "oldTag":I
    .restart local v6    # "oldTag":I
    :catch_169
    move-exception v0

    move/from16 v29, v6

    move/from16 v23, v7

    .line 214
    .end local v6    # "oldTag":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v29    # "oldTag":I
    :goto_16e
    :try_start_16e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request time failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_16e .. :try_end_190} :catchall_19a

    .line 216
    nop

    .line 218
    if-eqz v5, :cond_196

    .line 219
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 221
    :cond_196
    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 216
    return v23

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_19a
    move-exception v0

    :goto_19b
    if-eqz v5, :cond_1a0

    .line 219
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 221
    :cond_1a0
    invoke-static/range {v29 .. v29}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 222
    throw v0
.end method
