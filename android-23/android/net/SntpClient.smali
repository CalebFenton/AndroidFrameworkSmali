.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
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
    .line 165
    aget-byte v0, p1, p2

    #@4
    .line 166
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    #@6
    aget-byte v1, p1, v8

    #@8
    .line 167
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    #@a
    aget-byte v2, p1, v8

    #@c
    .line 168
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    #@e
    aget-byte v3, p1, v8

    #@10
    .line 171
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    #@12
    if-ne v8, v9, :cond_0

    #@14
    and-int/lit8 v8, v0, 0x7f

    #@16
    add-int/lit16 v4, v8, 0x80

    #@18
    .line 172
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
    .line 173
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
    .line 174
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
    .line 176
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
    .line 171
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
    .line 172
    :cond_1
    move v5, v1

    #@44
    .restart local v5    # "i1":I
    goto :goto_1

    #@45
    .line 173
    :cond_2
    move v6, v2

    #@46
    .restart local v6    # "i2":I
    goto :goto_2

    #@47
    .line 174
    :cond_3
    move v7, v3

    #@48
    .restart local v7    # "i3":I
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    #@5
    move-result-wide v2

    #@6
    .line 185
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    #@8
    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    #@b
    move-result-wide v0

    #@c
    .line 186
    .local v0, "fraction":J
    const-wide v4, 0x83aa7e80L

    #@11
    sub-long v4, v2, v4

    #@13
    mul-long/2addr v4, v6

    #@14
    mul-long/2addr v6, v0

    #@15
    const-wide v8, 0x100000000L

    #@1a
    div-long/2addr v6, v8

    #@1b
    add-long/2addr v4, v6

    #@1c
    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    #@0
    .prologue
    .line 194
    const-wide/16 v8, 0x3e8

    #@2
    div-long v6, p3, v8

    #@4
    .line 195
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    #@6
    mul-long/2addr v8, v6

    #@7
    sub-long v2, p3, v8

    #@9
    .line 196
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    #@e
    add-long/2addr v6, v8

    #@f
    .line 199
    add-int/lit8 v4, p2, 0x1

    #@11
    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    #@13
    shr-long v8, v6, v5

    #@15
    long-to-int v5, v8

    #@16
    int-to-byte v5, v5

    #@17
    aput-byte v5, p1, p2

    #@19
    .line 200
    add-int/lit8 p2, v4, 0x1

    #@1b
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    #@1d
    shr-long v8, v6, v5

    #@1f
    long-to-int v5, v8

    #@20
    int-to-byte v5, v5

    #@21
    aput-byte v5, p1, v4

    #@23
    .line 201
    add-int/lit8 v4, p2, 0x1

    #@25
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    #@27
    shr-long v8, v6, v5

    #@29
    long-to-int v5, v8

    #@2a
    int-to-byte v5, v5

    #@2b
    aput-byte v5, p1, p2

    #@2d
    .line 202
    add-int/lit8 p2, v4, 0x1

    #@2f
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    #@30
    shr-long v8, v6, v5

    #@32
    long-to-int v5, v8

    #@33
    int-to-byte v5, v5

    #@34
    aput-byte v5, p1, v4

    #@36
    .line 204
    const-wide v8, 0x100000000L

    #@3b
    mul-long/2addr v8, v2

    #@3c
    const-wide/16 v10, 0x3e8

    #@3e
    div-long v0, v8, v10

    #@40
    .line 206
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    #@42
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    #@44
    shr-long v8, v0, v5

    #@46
    long-to-int v5, v8

    #@47
    int-to-byte v5, v5

    #@48
    aput-byte v5, p1, p2

    #@4a
    .line 207
    add-int/lit8 p2, v4, 0x1

    #@4c
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    #@4e
    shr-long v8, v0, v5

    #@50
    long-to-int v5, v8

    #@51
    int-to-byte v5, v5

    #@52
    aput-byte v5, p1, v4

    #@54
    .line 208
    add-int/lit8 v4, p2, 0x1

    #@56
    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    #@58
    shr-long v8, v0, v5

    #@5a
    long-to-int v5, v8

    #@5b
    int-to-byte v5, v5

    #@5c
    aput-byte v5, p1, p2

    #@5e
    .line 210
    add-int/lit8 p2, v4, 0x1

    #@60
    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    #@63
    move-result-wide v8

    #@64
    const-wide v10, 0x406fe00000000000L    # 255.0

    #@69
    mul-double/2addr v8, v10

    #@6a
    double-to-int v5, v8

    #@6b
    int-to-byte v5, v5

    #@6c
    aput-byte v5, p1, v4

    #@6e
    .line 193
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    #@0
    .prologue
    .line 139
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    #@2
    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    #@0
    .prologue
    .line 149
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    #@2
    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    #@0
    .prologue
    .line 158
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    #@2
    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 34
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 73
    const/16 v19, 0x0

    #@2
    .line 75
    .local v19, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v26, Ljava/net/DatagramSocket;

    #@4
    invoke-direct/range {v26 .. v26}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 76
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .local v26, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    move-object/from16 v0, v26

    #@9
    move/from16 v1, p2

    #@b
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    #@e
    .line 77
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@11
    move-result-object v4

    #@12
    .line 78
    .local v4, "address":Ljava/net/InetAddress;
    const/16 v27, 0x30

    #@14
    move/from16 v0, v27

    #@16
    new-array v5, v0, [B

    #@18
    .line 79
    .local v5, "buffer":[B
    new-instance v9, Ljava/net/DatagramPacket;

    #@1a
    array-length v0, v5

    #@1b
    move/from16 v27, v0

    #@1d
    const/16 v30, 0x7b

    #@1f
    move/from16 v0, v27

    #@21
    move/from16 v1, v30

    #@23
    invoke-direct {v9, v5, v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    #@26
    .line 84
    .local v9, "request":Ljava/net/DatagramPacket;
    const/16 v27, 0x1b

    #@28
    const/16 v30, 0x0

    #@2a
    aput-byte v27, v5, v30

    #@2c
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2f
    move-result-wide v16

    #@30
    .line 88
    .local v16, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@33
    move-result-wide v14

    #@34
    .line 89
    .local v14, "requestTicks":J
    const/16 v27, 0x28

    #@36
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v27

    #@3a
    move-wide/from16 v2, v16

    #@3c
    invoke-direct {v0, v5, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    #@3f
    .line 91
    move-object/from16 v0, v26

    #@41
    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@44
    .line 94
    new-instance v18, Ljava/net/DatagramPacket;

    #@46
    array-length v0, v5

    #@47
    move/from16 v27, v0

    #@49
    move-object/from16 v0, v18

    #@4b
    move/from16 v1, v27

    #@4d
    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@50
    .line 95
    .local v18, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v26

    #@52
    move-object/from16 v1, v18

    #@54
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    #@57
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5a
    move-result-wide v20

    #@5b
    .line 97
    .local v20, "responseTicks":J
    sub-long v30, v20, v14

    #@5d
    add-long v22, v16, v30

    #@5f
    .line 100
    .local v22, "responseTime":J
    const/16 v27, 0x18

    #@61
    move-object/from16 v0, p0

    #@63
    move/from16 v1, v27

    #@65
    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    #@68
    move-result-wide v10

    #@69
    .line 101
    .local v10, "originateTime":J
    const/16 v27, 0x20

    #@6b
    move-object/from16 v0, p0

    #@6d
    move/from16 v1, v27

    #@6f
    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    #@72
    move-result-wide v12

    #@73
    .line 102
    .local v12, "receiveTime":J
    const/16 v27, 0x28

    #@75
    move-object/from16 v0, p0

    #@77
    move/from16 v1, v27

    #@79
    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    #@7c
    move-result-wide v28

    #@7d
    .line 103
    .local v28, "transmitTime":J
    sub-long v30, v20, v14

    #@7f
    sub-long v32, v28, v12

    #@81
    sub-long v24, v30, v32

    #@83
    .line 112
    .local v24, "roundTripTime":J
    sub-long v30, v12, v10

    #@85
    sub-long v32, v28, v22

    #@87
    add-long v30, v30, v32

    #@89
    const-wide/16 v32, 0x2

    #@8b
    div-long v6, v30, v32

    #@8d
    .line 118
    .local v6, "clockOffset":J
    add-long v30, v22, v6

    #@8f
    move-wide/from16 v0, v30

    #@91
    move-object/from16 v2, p0

    #@93
    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    #@95
    .line 119
    move-wide/from16 v0, v20

    #@97
    move-object/from16 v2, p0

    #@99
    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    #@9b
    .line 120
    move-wide/from16 v0, v24

    #@9d
    move-object/from16 v2, p0

    #@9f
    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a1
    .line 125
    if-eqz v26, :cond_0

    #@a3
    .line 126
    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    #@a6
    .line 130
    :cond_0
    const/16 v27, 0x1

    #@a8
    return v27

    #@a9
    .line 121
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v9    # "request":Ljava/net/DatagramPacket;
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "requestTicks":J
    .end local v16    # "requestTime":J
    .end local v18    # "response":Ljava/net/DatagramPacket;
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .end local v28    # "transmitTime":J
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v8

    #@aa
    .line 123
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .local v8, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v27, 0x0

    #@ac
    .line 125
    if-eqz v19, :cond_1

    #@ae
    .line 126
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    #@b1
    .line 123
    :cond_1
    return v27

    #@b2
    .line 124
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    :catchall_0
    move-exception v27

    #@b3
    .line 125
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    :goto_1
    if-eqz v19, :cond_2

    #@b5
    .line 126
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    #@b8
    .line 124
    :cond_2
    throw v27

    #@b9
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v27

    #@ba
    move-object/from16 v19, v26

    #@bc
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .local v19, "socket":Ljava/net/DatagramSocket;
    goto :goto_1

    #@bd
    .line 121
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v8

    #@be
    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v26

    #@c0
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_0
.end method
