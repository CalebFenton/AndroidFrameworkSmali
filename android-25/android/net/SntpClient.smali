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
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 3
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    const/4 v0, 0x3

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 199
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    #@5
    const-string/jumbo v1, "unsynchronized server"

    #@8
    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 201
    :cond_0
    const/4 v0, 0x4

    #@d
    if-eq p1, v0, :cond_1

    #@f
    const/4 v0, 0x5

    #@10
    if-eq p1, v0, :cond_1

    #@12
    .line 202
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "untrusted mode: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 204
    :cond_1
    if-eqz p2, :cond_2

    #@2e
    const/16 v0, 0xf

    #@30
    if-le p2, v0, :cond_3

    #@32
    .line 205
    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, "untrusted stratum: "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    .line 207
    :cond_3
    const-wide/16 v0, 0x0

    #@4e
    cmp-long v0, p3, v0

    #@50
    if-nez v0, :cond_4

    #@52
    .line 208
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    #@54
    const-string/jumbo v1, "zero transmitTime"

    #@57
    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v0

    #@5b
    .line 197
    :cond_4
    return-void
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    const/16 v9, 0x80

    #@2
    .line 216
    aget-byte v0, p1, p2

    #@4
    .line 217
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    #@6
    aget-byte v1, p1, v8

    #@8
    .line 218
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    #@a
    aget-byte v2, p1, v8

    #@c
    .line 219
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    #@e
    aget-byte v3, p1, v8

    #@10
    .line 222
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    #@12
    if-ne v8, v9, :cond_0

    #@14
    and-int/lit8 v8, v0, 0x7f

    #@16
    add-int/lit16 v4, v8, 0x80

    #@18
    .line 223
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    #@1a
    if-ne v8, v9, :cond_1

    #@1c
    and-int/lit8 v8, v1, 0x7f

    #@1e
    add-int/lit16 v5, v8, 0x80

    #@20
    .line 224
    .local v5, "i1":I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    #@22
    if-ne v8, v9, :cond_2

    #@24
    and-int/lit8 v8, v2, 0x7f

    #@26
    add-int/lit16 v6, v8, 0x80

    #@28
    .line 225
    .local v6, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    #@2a
    if-ne v8, v9, :cond_3

    #@2c
    and-int/lit8 v8, v3, 0x7f

    #@2e
    add-int/lit16 v7, v8, 0x80

    #@30
    .line 227
    .local v7, "i3":I
    :goto_3
    int-to-long v8, v4

    #@31
    const/16 v10, 0x18

    #@33
    shl-long/2addr v8, v10

    #@34
    int-to-long v10, v5

    #@35
    const/16 v12, 0x10

    #@37
    shl-long/2addr v10, v12

    #@38
    add-long/2addr v8, v10

    #@39
    int-to-long v10, v6

    #@3a
    const/16 v12, 0x8

    #@3c
    shl-long/2addr v10, v12

    #@3d
    add-long/2addr v8, v10

    #@3e
    int-to-long v10, v7

    #@3f
    add-long/2addr v8, v10

    #@40
    return-wide v8

    #@41
    .line 222
    .end local v4    # "i0":I
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v7    # "i3":I
    :cond_0
    move v4, v0

    #@42
    .restart local v4    # "i0":I
    goto :goto_0

    #@43
    .line 223
    :cond_1
    move v5, v1

    #@44
    .restart local v5    # "i1":I
    goto :goto_1

    #@45
    .line 224
    :cond_2
    move v6, v2

    #@46
    .restart local v6    # "i2":I
    goto :goto_2

    #@47
    :cond_3
    move v7, v3

    #@48
    .line 225
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    const-wide/16 v8, 0x3e8

    #@2
    const-wide/16 v6, 0x0

    #@4
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    #@7
    move-result-wide v2

    #@8
    .line 236
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    #@a
    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    #@d
    move-result-wide v0

    #@e
    .line 238
    .local v0, "fraction":J
    cmp-long v4, v2, v6

    #@10
    if-nez v4, :cond_0

    #@12
    cmp-long v4, v0, v6

    #@14
    if-nez v4, :cond_0

    #@16
    .line 239
    return-wide v6

    #@17
    .line 241
    :cond_0
    const-wide v4, 0x83aa7e80L

    #@1c
    sub-long v4, v2, v4

    #@1e
    mul-long/2addr v4, v8

    #@1f
    mul-long v6, v0, v8

    #@21
    const-wide v8, 0x100000000L

    #@26
    div-long/2addr v6, v8

    #@27
    add-long/2addr v4, v6

    #@28
    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    #@0
    .prologue
    .line 250
    const-wide/16 v8, 0x0

    #@2
    cmp-long v5, p3, v8

    #@4
    if-nez v5, :cond_0

    #@6
    .line 251
    add-int/lit8 v5, p2, 0x8

    #@8
    const/4 v8, 0x0

    #@9
    invoke-static {p1, p2, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    #@c
    .line 252
    return-void

    #@d
    .line 255
    :cond_0
    const-wide/16 v8, 0x3e8

    #@f
    div-long v6, p3, v8

    #@11
    .line 256
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    #@13
    mul-long/2addr v8, v6

    #@14
    sub-long v2, p3, v8

    #@16
    .line 257
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    #@1b
    add-long/2addr v6, v8

    #@1c
    .line 260
    add-int/lit8 v4, p2, 0x1

    #@1e
    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    #@20
    shr-long v8, v6, v5

    #@22
    long-to-int v5, v8

    #@23
    int-to-byte v5, v5

    #@24
    aput-byte v5, p1, p2

    #@26
    .line 261
    add-int/lit8 p2, v4, 0x1

    #@28
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    #@2a
    shr-long v8, v6, v5

    #@2c
    long-to-int v5, v8

    #@2d
    int-to-byte v5, v5

    #@2e
    aput-byte v5, p1, v4

    #@30
    .line 262
    add-int/lit8 v4, p2, 0x1

    #@32
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    #@34
    shr-long v8, v6, v5

    #@36
    long-to-int v5, v8

    #@37
    int-to-byte v5, v5

    #@38
    aput-byte v5, p1, p2

    #@3a
    .line 263
    add-int/lit8 p2, v4, 0x1

    #@3c
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    #@3d
    shr-long v8, v6, v5

    #@3f
    long-to-int v5, v8

    #@40
    int-to-byte v5, v5

    #@41
    aput-byte v5, p1, v4

    #@43
    .line 265
    const-wide v8, 0x100000000L

    #@48
    mul-long/2addr v8, v2

    #@49
    const-wide/16 v10, 0x3e8

    #@4b
    div-long v0, v8, v10

    #@4d
    .line 267
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    #@4f
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    #@51
    shr-long v8, v0, v5

    #@53
    long-to-int v5, v8

    #@54
    int-to-byte v5, v5

    #@55
    aput-byte v5, p1, p2

    #@57
    .line 268
    add-int/lit8 p2, v4, 0x1

    #@59
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    #@5b
    shr-long v8, v0, v5

    #@5d
    long-to-int v5, v8

    #@5e
    int-to-byte v5, v5

    #@5f
    aput-byte v5, p1, v4

    #@61
    .line 269
    add-int/lit8 v4, p2, 0x1

    #@63
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    #@65
    shr-long v8, v0, v5

    #@67
    long-to-int v5, v8

    #@68
    int-to-byte v5, v5

    #@69
    aput-byte v5, p1, p2

    #@6b
    .line 271
    add-int/lit8 p2, v4, 0x1

    #@6d
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    #@70
    move-result-wide v8

    #@71
    const-wide v10, 0x406fe00000000000L    # 255.0

    #@76
    mul-double/2addr v8, v10

    #@77
    double-to-int v5, v8

    #@78
    int-to-byte v5, v5

    #@79
    aput-byte v5, p1, v4

    #@7b
    .line 248
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    #@0
    .prologue
    .line 173
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    #@2
    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    #@0
    .prologue
    .line 183
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    #@2
    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    #@0
    .prologue
    .line 192
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    #@2
    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    .line 89
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v0

    #@5
    .line 94
    .local v0, "address":Ljava/net/InetAddress;
    const/16 v2, 0x7b

    #@7
    invoke-virtual {p0, v0, v2, p2}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    #@a
    move-result v2

    #@b
    return v2

    #@c
    .line 90
    .local v0, "address":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@d
    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SntpClient"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "request time failed: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 92
    const/4 v2, 0x0

    #@28
    return v2
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .locals 36
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    #@0
    .prologue
    .line 98
    const/16 v26, 0x0

    #@2
    .line 100
    .local v26, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v27, Ljava/net/DatagramSocket;

    #@4
    invoke-direct/range {v27 .. v27}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 101
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .local v27, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    move-object/from16 v0, v27

    #@9
    move/from16 v1, p3

    #@b
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    #@e
    .line 102
    const/16 v29, 0x30

    #@10
    move/from16 v0, v29

    #@12
    new-array v4, v0, [B

    #@14
    .line 103
    .local v4, "buffer":[B
    new-instance v14, Ljava/net/DatagramPacket;

    #@16
    array-length v0, v4

    #@17
    move/from16 v29, v0

    #@19
    move/from16 v0, v29

    #@1b
    move-object/from16 v1, p1

    #@1d
    move/from16 v2, p2

    #@1f
    invoke-direct {v14, v4, v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    #@22
    .line 108
    .local v14, "request":Ljava/net/DatagramPacket;
    const/16 v29, 0x1b

    #@24
    const/16 v32, 0x0

    #@26
    aput-byte v29, v4, v32

    #@28
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2b
    move-result-wide v18

    #@2c
    .line 112
    .local v18, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2f
    move-result-wide v16

    #@30
    .line 113
    .local v16, "requestTicks":J
    const/16 v29, 0x28

    #@32
    move-object/from16 v0, p0

    #@34
    move/from16 v1, v29

    #@36
    move-wide/from16 v2, v18

    #@38
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    #@3b
    .line 115
    move-object/from16 v0, v27

    #@3d
    invoke-virtual {v0, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@40
    .line 118
    new-instance v15, Ljava/net/DatagramPacket;

    #@42
    array-length v0, v4

    #@43
    move/from16 v29, v0

    #@45
    move/from16 v0, v29

    #@47
    invoke-direct {v15, v4, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@4a
    .line 119
    .local v15, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v27

    #@4c
    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    #@4f
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@52
    move-result-wide v20

    #@53
    .line 121
    .local v20, "responseTicks":J
    sub-long v32, v20, v16

    #@55
    add-long v22, v18, v32

    #@57
    .line 124
    .local v22, "responseTime":J
    const/16 v29, 0x0

    #@59
    aget-byte v29, v4, v29

    #@5b
    shr-int/lit8 v29, v29, 0x6

    #@5d
    and-int/lit8 v29, v29, 0x3

    #@5f
    move/from16 v0, v29

    #@61
    int-to-byte v8, v0

    #@62
    .line 125
    .local v8, "leap":B
    const/16 v29, 0x0

    #@64
    aget-byte v29, v4, v29

    #@66
    and-int/lit8 v29, v29, 0x7

    #@68
    move/from16 v0, v29

    #@6a
    int-to-byte v9, v0

    #@6b
    .line 126
    .local v9, "mode":B
    const/16 v29, 0x1

    #@6d
    aget-byte v29, v4, v29

    #@6f
    move/from16 v0, v29

    #@71
    and-int/lit16 v0, v0, 0xff

    #@73
    move/from16 v28, v0

    #@75
    .line 127
    .local v28, "stratum":I
    const/16 v29, 0x18

    #@77
    move-object/from16 v0, p0

    #@79
    move/from16 v1, v29

    #@7b
    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    #@7e
    move-result-wide v10

    #@7f
    .line 128
    .local v10, "originateTime":J
    const/16 v29, 0x20

    #@81
    move-object/from16 v0, p0

    #@83
    move/from16 v1, v29

    #@85
    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    #@88
    move-result-wide v12

    #@89
    .line 129
    .local v12, "receiveTime":J
    const/16 v29, 0x28

    #@8b
    move-object/from16 v0, p0

    #@8d
    move/from16 v1, v29

    #@8f
    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    #@92
    move-result-wide v30

    #@93
    .line 133
    .local v30, "transmitTime":J
    move/from16 v0, v28

    #@95
    move-wide/from16 v1, v30

    #@97
    invoke-static {v8, v9, v0, v1, v2}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    #@9a
    .line 135
    sub-long v32, v20, v16

    #@9c
    sub-long v34, v30, v12

    #@9e
    sub-long v24, v32, v34

    #@a0
    .line 144
    .local v24, "roundTripTime":J
    sub-long v32, v12, v10

    #@a2
    sub-long v34, v30, v22

    #@a4
    add-long v32, v32, v34

    #@a6
    const-wide/16 v34, 0x2

    #@a8
    div-long v6, v32, v34

    #@aa
    .line 146
    .local v6, "clockOffset":J
    const-string/jumbo v29, "SntpClient"

    #@ad
    new-instance v32, Ljava/lang/StringBuilder;

    #@af
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v33, "round trip: "

    #@b5
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v32

    #@b9
    move-object/from16 v0, v32

    #@bb
    move-wide/from16 v1, v24

    #@bd
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v32

    #@c1
    const-string/jumbo v33, "ms, "

    #@c4
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v32

    #@c8
    .line 147
    const-string/jumbo v33, "clock offset: "

    #@cb
    .line 146
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v32

    #@cf
    move-object/from16 v0, v32

    #@d1
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v32

    #@d5
    .line 147
    const-string/jumbo v33, "ms"

    #@d8
    .line 146
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v32

    #@dc
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v32

    #@e0
    move-object/from16 v0, v29

    #@e2
    move-object/from16 v1, v32

    #@e4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 152
    add-long v32, v22, v6

    #@e9
    move-wide/from16 v0, v32

    #@eb
    move-object/from16 v2, p0

    #@ed
    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    #@ef
    .line 153
    move-wide/from16 v0, v20

    #@f1
    move-object/from16 v2, p0

    #@f3
    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    #@f5
    .line 154
    move-wide/from16 v0, v24

    #@f7
    move-object/from16 v2, p0

    #@f9
    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@fb
    .line 159
    if-eqz v27, :cond_0

    #@fd
    .line 160
    invoke-virtual/range {v27 .. v27}, Ljava/net/DatagramSocket;->close()V

    #@100
    .line 164
    :cond_0
    const/16 v29, 0x1

    #@102
    return v29

    #@103
    .line 155
    .end local v4    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v8    # "leap":B
    .end local v9    # "mode":B
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "request":Ljava/net/DatagramPacket;
    .end local v15    # "response":Ljava/net/DatagramPacket;
    .end local v16    # "requestTicks":J
    .end local v18    # "requestTime":J
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v27    # "socket":Ljava/net/DatagramSocket;
    .end local v28    # "stratum":I
    .end local v30    # "transmitTime":J
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v5

    #@104
    .line 156
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    const-string/jumbo v29, "SntpClient"

    #@107
    new-instance v32, Ljava/lang/StringBuilder;

    #@109
    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    #@10c
    const-string/jumbo v33, "request time failed: "

    #@10f
    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v32

    #@113
    move-object/from16 v0, v32

    #@115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v32

    #@119
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v32

    #@11d
    move-object/from16 v0, v29

    #@11f
    move-object/from16 v1, v32

    #@121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@124
    .line 157
    const/16 v29, 0x0

    #@126
    .line 159
    if-eqz v26, :cond_1

    #@128
    .line 160
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    #@12b
    .line 157
    :cond_1
    return v29

    #@12c
    .line 158
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    #@12d
    .line 159
    :goto_1
    if-eqz v26, :cond_2

    #@12f
    .line 160
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    #@132
    .line 158
    :cond_2
    throw v29

    #@133
    .restart local v27    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v29

    #@134
    move-object/from16 v26, v27

    #@136
    .end local v27    # "socket":Ljava/net/DatagramSocket;
    .local v26, "socket":Ljava/net/DatagramSocket;
    goto :goto_1

    #@137
    .line 155
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v27    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v5

    #@138
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v26, v27

    #@13a
    .end local v27    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    goto :goto_0
.end method
