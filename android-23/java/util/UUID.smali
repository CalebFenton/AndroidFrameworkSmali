.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field private static rng:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private transient clockSequence:I

.field private transient hash:I

.field private leastSigBits:J

.field private mostSigBits:J

.field private transient node:J

.field private transient timestamp:J

.field private transient variant:I

.field private transient version:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "mostSigBits"    # J
    .param p3, "leastSigBits"    # J

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    #@5
    .line 68
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    #@7
    .line 69
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    #@a
    .line 66
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 22
    .param p0, "uuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    if-nez p0, :cond_0

    #@2
    .line 182
    new-instance v17, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v18, "uuid == null"

    #@7
    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v17

    #@b
    .line 185
    :cond_0
    const-string/jumbo v17, "-"

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, v17

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v16

    #@16
    .line 186
    .local v16, "parts":[Ljava/lang/String;
    move-object/from16 v0, v16

    #@18
    array-length v0, v0

    #@19
    move/from16 v17, v0

    #@1b
    const/16 v18, 0x5

    #@1d
    move/from16 v0, v17

    #@1f
    move/from16 v1, v18

    #@21
    if-eq v0, v1, :cond_1

    #@23
    .line 187
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v18, Ljava/lang/StringBuilder;

    #@27
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v19, "Invalid UUID: "

    #@2d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v18

    #@31
    move-object/from16 v0, v18

    #@33
    move-object/from16 v1, p0

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v18

    #@39
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v18

    #@3d
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v17

    #@41
    .line 190
    :cond_1
    const/16 v17, 0x0

    #@43
    aget-object v17, v16, v17

    #@45
    const/16 v18, 0x10

    #@47
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    #@4a
    move-result-wide v8

    #@4b
    .line 191
    .local v8, "m1":J
    const/16 v17, 0x1

    #@4d
    aget-object v17, v16, v17

    #@4f
    const/16 v18, 0x10

    #@51
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    #@54
    move-result-wide v10

    #@55
    .line 192
    .local v10, "m2":J
    const/16 v17, 0x2

    #@57
    aget-object v17, v16, v17

    #@59
    const/16 v18, 0x10

    #@5b
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    #@5e
    move-result-wide v12

    #@5f
    .line 194
    .local v12, "m3":J
    const/16 v17, 0x3

    #@61
    aget-object v17, v16, v17

    #@63
    const/16 v18, 0x10

    #@65
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    #@68
    move-result-wide v4

    #@69
    .line 195
    .local v4, "lsb1":J
    const/16 v17, 0x4

    #@6b
    aget-object v17, v16, v17

    #@6d
    const/16 v18, 0x10

    #@6f
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    #@72
    move-result-wide v6

    #@73
    .line 197
    .local v6, "lsb2":J
    const/16 v17, 0x20

    #@75
    shl-long v18, v8, v17

    #@77
    const/16 v17, 0x10

    #@79
    shl-long v20, v10, v17

    #@7b
    or-long v18, v18, v20

    #@7d
    or-long v14, v18, v12

    #@7f
    .line 198
    .local v14, "msb":J
    const/16 v17, 0x30

    #@81
    shl-long v18, v4, v17

    #@83
    or-long v2, v18, v6

    #@85
    .line 200
    .local v2, "lsb":J
    new-instance v17, Ljava/util/UUID;

    #@87
    move-object/from16 v0, v17

    #@89
    invoke-direct {v0, v14, v15, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    #@8c
    return-object v17
.end method

.method private init()V
    .locals 13

    #@0
    .prologue
    .line 79
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    #@2
    iget-wide v10, p0, Ljava/util/UUID;->mostSigBits:J

    #@4
    const/16 v12, 0x20

    #@6
    ushr-long/2addr v10, v12

    #@7
    xor-long/2addr v8, v10

    #@8
    long-to-int v1, v8

    #@9
    .line 80
    .local v1, "msbHash":I
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    #@b
    iget-wide v10, p0, Ljava/util/UUID;->leastSigBits:J

    #@d
    const/16 v12, 0x20

    #@f
    ushr-long/2addr v10, v12

    #@10
    xor-long/2addr v8, v10

    #@11
    long-to-int v0, v8

    #@12
    .line 81
    .local v0, "lsbHash":I
    xor-int v8, v1, v0

    #@14
    iput v8, p0, Ljava/util/UUID;->hash:I

    #@16
    .line 84
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    #@18
    const-wide/high16 v10, -0x8000000000000000L

    #@1a
    and-long/2addr v8, v10

    #@1b
    const-wide/16 v10, 0x0

    #@1d
    cmp-long v8, v8, v10

    #@1f
    if-nez v8, :cond_0

    #@21
    .line 86
    const/4 v8, 0x0

    #@22
    iput v8, p0, Ljava/util/UUID;->variant:I

    #@24
    .line 96
    :goto_0
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    #@26
    const-wide/32 v10, 0xf000

    #@29
    and-long/2addr v8, v10

    #@2a
    const/16 v10, 0xc

    #@2c
    ushr-long/2addr v8, v10

    #@2d
    long-to-int v8, v8

    #@2e
    iput v8, p0, Ljava/util/UUID;->version:I

    #@30
    .line 98
    iget v8, p0, Ljava/util/UUID;->variant:I

    #@32
    const/4 v9, 0x2

    #@33
    if-eq v8, v9, :cond_2

    #@35
    iget v8, p0, Ljava/util/UUID;->version:I

    #@37
    const/4 v9, 0x1

    #@38
    if-eq v8, v9, :cond_2

    #@3a
    .line 99
    return-void

    #@3b
    .line 87
    :cond_0
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    #@3d
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@3f
    and-long/2addr v8, v10

    #@40
    const-wide/16 v10, 0x0

    #@42
    cmp-long v8, v8, v10

    #@44
    if-eqz v8, :cond_1

    #@46
    .line 89
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    #@48
    const-wide/high16 v10, -0x2000000000000000L    # -2.6815615859885194E154

    #@4a
    and-long/2addr v8, v10

    #@4b
    const/16 v10, 0x3d

    #@4d
    ushr-long/2addr v8, v10

    #@4e
    long-to-int v8, v8

    #@4f
    iput v8, p0, Ljava/util/UUID;->variant:I

    #@51
    goto :goto_0

    #@52
    .line 92
    :cond_1
    const/4 v8, 0x2

    #@53
    iput v8, p0, Ljava/util/UUID;->variant:I

    #@55
    goto :goto_0

    #@56
    .line 103
    :cond_2
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    #@58
    const-wide v10, -0x100000000L

    #@5d
    and-long/2addr v8, v10

    #@5e
    const/16 v10, 0x20

    #@60
    ushr-long v4, v8, v10

    #@62
    .line 104
    .local v4, "timeLow":J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    #@64
    const-wide v10, 0xffff0000L

    #@69
    and-long/2addr v8, v10

    #@6a
    const/16 v10, 0x10

    #@6c
    shl-long v6, v8, v10

    #@6e
    .line 105
    .local v6, "timeMid":J
    iget-wide v8, p0, Ljava/util/UUID;->mostSigBits:J

    #@70
    const-wide/16 v10, 0xfff

    #@72
    and-long/2addr v8, v10

    #@73
    const/16 v10, 0x30

    #@75
    shl-long v2, v8, v10

    #@77
    .line 106
    .local v2, "timeHigh":J
    or-long v8, v4, v6

    #@79
    or-long/2addr v8, v2

    #@7a
    iput-wide v8, p0, Ljava/util/UUID;->timestamp:J

    #@7c
    .line 109
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    #@7e
    const-wide/high16 v10, 0x3fff000000000000L    # 1.9375

    #@80
    and-long/2addr v8, v10

    #@81
    const/16 v10, 0x30

    #@83
    ushr-long/2addr v8, v10

    #@84
    long-to-int v8, v8

    #@85
    iput v8, p0, Ljava/util/UUID;->clockSequence:I

    #@87
    .line 112
    iget-wide v8, p0, Ljava/util/UUID;->leastSigBits:J

    #@89
    const-wide v10, 0xffffffffffffL

    #@8e
    and-long/2addr v8, v10

    #@8f
    iput-wide v8, p0, Ljava/util/UUID;->node:J

    #@91
    .line 77
    return-void
.end method

.method private static makeUuid([BI)Ljava/util/UUID;
    .locals 7
    .param p0, "hash"    # [B
    .param p1, "version"    # I

    #@0
    .prologue
    .line 156
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    const/4 v5, 0x0

    #@3
    invoke-static {p0, v5, v4}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@6
    move-result-wide v2

    #@7
    .line 157
    .local v2, "msb":J
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    const/16 v5, 0x8

    #@b
    invoke-static {p0, v5, v4}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@e
    move-result-wide v0

    #@f
    .line 159
    .local v0, "lsb":J
    const-wide/32 v4, -0xf001

    #@12
    and-long/2addr v2, v4

    #@13
    .line 160
    int-to-long v4, p1

    #@14
    const/16 v6, 0xc

    #@16
    shl-long/2addr v4, v6

    #@17
    or-long/2addr v2, v4

    #@18
    .line 163
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    #@1d
    and-long/2addr v0, v4

    #@1e
    .line 164
    const-wide/high16 v4, -0x8000000000000000L

    #@20
    or-long/2addr v0, v4

    #@21
    .line 165
    new-instance v4, Ljava/util/UUID;

    #@23
    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    #@26
    return-object v4
.end method

.method public static nameUUIDFromBytes([B)Ljava/util/UUID;
    .locals 4
    .param p0, "name"    # [B

    #@0
    .prologue
    .line 144
    if-nez p0, :cond_0

    #@2
    .line 145
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "name == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 148
    :cond_0
    :try_start_0
    const-string/jumbo v2, "MD5"

    #@e
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@11
    move-result-object v1

    #@12
    .line 149
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x3

    #@17
    invoke-static {v2, v3}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 150
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@1d
    .line 151
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@22
    throw v2
.end method

.method public static randomUUID()Ljava/util/UUID;
    .locals 3

    #@0
    .prologue
    .line 123
    const/16 v1, 0x10

    #@2
    new-array v0, v1, [B

    #@4
    .line 125
    .local v0, "data":[B
    const-class v2, Ljava/util/UUID;

    #@6
    monitor-enter v2

    #@7
    .line 126
    :try_start_0
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 127
    new-instance v1, Ljava/security/SecureRandom;

    #@d
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@10
    sput-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v2

    #@13
    .line 130
    sget-object v1, Ljava/util/UUID;->rng:Ljava/security/SecureRandom;

    #@15
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@18
    .line 131
    const/4 v1, 0x4

    #@19
    invoke-static {v0, v1}, Ljava/util/UUID;->makeUuid([BI)Ljava/util/UUID;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 125
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 448
    invoke-direct {p0}, Ljava/util/UUID;->init()V

    #@6
    .line 444
    return-void
.end method


# virtual methods
.method public clockSequence()I
    .locals 2

    #@0
    .prologue
    .line 285
    iget v0, p0, Ljava/util/UUID;->version:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a
    throw v0

    #@b
    .line 288
    :cond_0
    iget v0, p0, Ljava/util/UUID;->clockSequence:I

    #@d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 318
    check-cast p1, Ljava/util/UUID;

    #@2
    .end local p1    # "uuid":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/util/UUID;)I
    .locals 7
    .param p1, "uuid"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v0, -0x1

    #@3
    .line 319
    if-ne p1, p0, :cond_0

    #@5
    .line 320
    return v6

    #@6
    .line 323
    :cond_0
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@8
    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    #@a
    cmp-long v2, v2, v4

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 324
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@10
    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    #@12
    cmp-long v2, v2, v4

    #@14
    if-gez v2, :cond_1

    #@16
    :goto_0
    return v0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_0

    #@19
    .line 329
    :cond_2
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@1b
    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    #@1d
    cmp-long v2, v2, v4

    #@1f
    if-eqz v2, :cond_4

    #@21
    .line 330
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@23
    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-gez v2, :cond_3

    #@29
    :goto_1
    return v0

    #@2a
    :cond_3
    move v0, v1

    #@2b
    goto :goto_1

    #@2c
    .line 335
    :cond_4
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 351
    if-nez p1, :cond_0

    #@4
    .line 352
    return v2

    #@5
    .line 355
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 356
    return v1

    #@8
    .line 359
    :cond_1
    instance-of v3, p1, Ljava/util/UUID;

    #@a
    if-nez v3, :cond_2

    #@c
    .line 360
    return v2

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 363
    check-cast v0, Ljava/util/UUID;

    #@10
    .line 365
    .local v0, "that":Ljava/util/UUID;
    iget-wide v4, p0, Ljava/util/UUID;->leastSigBits:J

    #@12
    iget-wide v6, v0, Ljava/util/UUID;->leastSigBits:J

    #@14
    cmp-long v3, v4, v6

    #@16
    if-nez v3, :cond_4

    #@18
    .line 366
    iget-wide v4, p0, Ljava/util/UUID;->mostSigBits:J

    #@1a
    iget-wide v6, v0, Ljava/util/UUID;->mostSigBits:J

    #@1c
    cmp-long v3, v4, v6

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 365
    :goto_0
    return v1

    #@21
    :cond_3
    move v1, v2

    #@22
    .line 366
    goto :goto_0

    #@23
    :cond_4
    move v1, v2

    #@24
    .line 365
    goto :goto_0
.end method

.method public getLeastSignificantBits()J
    .locals 2

    #@0
    .prologue
    .line 210
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    #@2
    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    #@0
    .prologue
    .line 220
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 378
    iget v0, p0, Ljava/util/UUID;->hash:I

    #@2
    return v0
.end method

.method public node()J
    .locals 2

    #@0
    .prologue
    .line 301
    iget v0, p0, Ljava/util/UUID;->version:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a
    throw v0

    #@b
    .line 304
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->node:J

    #@d
    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    #@0
    .prologue
    .line 269
    iget v0, p0, Ljava/util/UUID;->version:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@7
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@a
    throw v0

    #@b
    .line 272
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->timestamp:J

    #@d
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x30

    #@2
    const/16 v9, 0x10

    #@4
    const/16 v8, 0x2d

    #@6
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const/16 v5, 0x24

    #@a
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 409
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v6, p0, Ljava/util/UUID;->mostSigBits:J

    #@f
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    .line 410
    .local v4, "msbStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@16
    move-result v5

    #@17
    if-ge v5, v9, :cond_0

    #@19
    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1c
    move-result v5

    #@1d
    rsub-int/lit8 v1, v5, 0x10

    #@1f
    .line 412
    .local v1, "diff":I
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@22
    .line 413
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 412
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 416
    .end local v1    # "diff":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 417
    const/16 v5, 0x8

    #@2d
    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@30
    .line 418
    const/16 v5, 0xd

    #@32
    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@35
    .line 419
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 420
    iget-wide v6, p0, Ljava/util/UUID;->leastSigBits:J

    #@3a
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 421
    .local v3, "lsbStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@41
    move-result v5

    #@42
    if-ge v5, v9, :cond_1

    #@44
    .line 422
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@47
    move-result v5

    #@48
    rsub-int/lit8 v1, v5, 0x10

    #@4a
    .line 423
    .restart local v1    # "diff":I
    const/4 v2, 0x0

    #@4b
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    #@4d
    .line 424
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    .line 423
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_1

    #@53
    .line 427
    .end local v1    # "diff":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 428
    const/16 v5, 0x17

    #@58
    invoke-virtual {v0, v5, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@5b
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    return-object v5
.end method

.method public variant()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget v0, p0, Ljava/util/UUID;->variant:I

    #@2
    return v0
.end method

.method public version()I
    .locals 1

    #@0
    .prologue
    .line 239
    iget v0, p0, Ljava/util/UUID;->version:I

    #@2
    return v0
.end method
