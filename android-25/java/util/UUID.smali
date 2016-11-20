.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/UUID$Holder;
    }
.end annotation

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
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private final leastSigBits:J

.field private final mostSigBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/UUID;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/UUID;->-assertionsDisabled:Z

    #@b
    .line 70
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "mostSigBits"    # J
    .param p3, "leastSigBits"    # J

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 129
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    #@5
    .line 130
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    #@7
    .line 128
    return-void
.end method

.method private constructor <init>([B)V
    .locals 12
    .param p1, "data"    # [B

    #@0
    .prologue
    const/16 v11, 0x10

    #@2
    const/16 v10, 0x8

    #@4
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 105
    const-wide/16 v4, 0x0

    #@9
    .line 106
    .local v4, "msb":J
    const-wide/16 v2, 0x0

    #@b
    .line 107
    .local v2, "lsb":J
    sget-boolean v1, Ljava/util/UUID;->-assertionsDisabled:Z

    #@d
    if-nez v1, :cond_1

    #@f
    array-length v1, p1

    #@10
    if-ne v1, v11, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    :goto_0
    if-nez v1, :cond_1

    #@15
    new-instance v1, Ljava/lang/AssertionError;

    #@17
    const-string/jumbo v6, "data must be 16 bytes in length"

    #@1a
    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1d
    throw v1

    #@1e
    :cond_0
    const/4 v1, 0x0

    #@1f
    goto :goto_0

    #@20
    .line 108
    :cond_1
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_2

    #@23
    .line 109
    shl-long v6, v4, v10

    #@25
    aget-byte v1, p1, v0

    #@27
    and-int/lit16 v1, v1, 0xff

    #@29
    int-to-long v8, v1

    #@2a
    or-long v4, v6, v8

    #@2c
    .line 108
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 110
    :cond_2
    const/16 v0, 0x8

    #@31
    :goto_2
    if-ge v0, v11, :cond_3

    #@33
    .line 111
    shl-long v6, v2, v10

    #@35
    aget-byte v1, p1, v0

    #@37
    and-int/lit16 v1, v1, 0xff

    #@39
    int-to-long v8, v1

    #@3a
    or-long v2, v6, v8

    #@3c
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_2

    #@3f
    .line 112
    :cond_3
    iput-wide v4, p0, Ljava/util/UUID;->mostSigBits:J

    #@41
    .line 113
    iput-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@43
    .line 104
    return-void
.end method

.method private static digits(JI)Ljava/lang/String;
    .locals 6
    .param p0, "val"    # J
    .param p2, "digits"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    .line 384
    mul-int/lit8 v2, p2, 0x4

    #@4
    shl-long v0, v4, v2

    #@6
    .line 385
    .local v0, "hi":J
    sub-long v2, v0, v4

    #@8
    and-long/2addr v2, p0

    #@9
    or-long/2addr v2, v0

    #@a
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/UUID;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0x10

    #@2
    const/4 v8, 0x5

    #@3
    .line 192
    const-string/jumbo v6, "-"

    #@6
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 193
    .local v0, "components":[Ljava/lang/String;
    array-length v6, v0

    #@b
    if-eq v6, v8, :cond_0

    #@d
    .line 194
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v7, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v8, "Invalid UUID string: "

    #@17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v6

    #@27
    .line 195
    :cond_0
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    #@2a
    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "0x"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    aget-object v7, v0, v1

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    aput-object v6, v0, v1

    #@42
    .line 195
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 198
    :cond_1
    const/4 v6, 0x0

    #@46
    aget-object v6, v0, v6

    #@48
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@4f
    move-result-wide v4

    #@50
    .line 199
    .local v4, "mostSigBits":J
    shl-long/2addr v4, v9

    #@51
    .line 200
    const/4 v6, 0x1

    #@52
    aget-object v6, v0, v6

    #@54
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@5b
    move-result-wide v6

    #@5c
    or-long/2addr v4, v6

    #@5d
    .line 201
    shl-long/2addr v4, v9

    #@5e
    .line 202
    const/4 v6, 0x2

    #@5f
    aget-object v6, v0, v6

    #@61
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@68
    move-result-wide v6

    #@69
    or-long/2addr v4, v6

    #@6a
    .line 204
    const/4 v6, 0x3

    #@6b
    aget-object v6, v0, v6

    #@6d
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@74
    move-result-wide v2

    #@75
    .line 205
    .local v2, "leastSigBits":J
    const/16 v6, 0x30

    #@77
    shl-long/2addr v2, v6

    #@78
    .line 206
    const/4 v6, 0x4

    #@79
    aget-object v6, v0, v6

    #@7b
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@82
    move-result-wide v6

    #@83
    or-long/2addr v2, v6

    #@84
    .line 208
    new-instance v6, Ljava/util/UUID;

    #@86
    invoke-direct {v6, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    #@89
    return-object v6
.end method

.method public static nameUUIDFromBytes([B)Ljava/util/UUID;
    .locals 6
    .param p0, "name"    # [B

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, 0x6

    #@3
    .line 165
    :try_start_0
    const-string/jumbo v3, "MD5"

    #@6
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v0

    #@a
    .line 169
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    #@d
    move-result-object v1

    #@e
    .line 170
    .local v1, "md5Bytes":[B
    aget-byte v3, v1, v4

    #@10
    and-int/lit8 v3, v3, 0xf

    #@12
    int-to-byte v3, v3

    #@13
    aput-byte v3, v1, v4

    #@15
    .line 171
    aget-byte v3, v1, v4

    #@17
    or-int/lit8 v3, v3, 0x30

    #@19
    int-to-byte v3, v3

    #@1a
    aput-byte v3, v1, v4

    #@1c
    .line 172
    aget-byte v3, v1, v5

    #@1e
    and-int/lit8 v3, v3, 0x3f

    #@20
    int-to-byte v3, v3

    #@21
    aput-byte v3, v1, v5

    #@23
    .line 173
    aget-byte v3, v1, v5

    #@25
    or-int/lit16 v3, v3, 0x80

    #@27
    int-to-byte v3, v3

    #@28
    aput-byte v3, v1, v5

    #@2a
    .line 174
    new-instance v3, Ljava/util/UUID;

    #@2c
    invoke-direct {v3, v1}, Ljava/util/UUID;-><init>([B)V

    #@2f
    return-object v3

    #@30
    .line 166
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "md5Bytes":[B
    :catch_0
    move-exception v2

    #@31
    .line 167
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/InternalError;

    #@33
    const-string/jumbo v4, "MD5 not supported"

    #@36
    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
.end method

.method public static randomUUID()Ljava/util/UUID;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x6

    #@3
    .line 142
    sget-object v0, Ljava/util/UUID$Holder;->numberGenerator:Ljava/security/SecureRandom;

    #@5
    .line 144
    .local v0, "ng":Ljava/security/SecureRandom;
    const/16 v2, 0x10

    #@7
    new-array v1, v2, [B

    #@9
    .line 145
    .local v1, "randomBytes":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@c
    .line 146
    aget-byte v2, v1, v3

    #@e
    and-int/lit8 v2, v2, 0xf

    #@10
    int-to-byte v2, v2

    #@11
    aput-byte v2, v1, v3

    #@13
    .line 147
    aget-byte v2, v1, v3

    #@15
    or-int/lit8 v2, v2, 0x40

    #@17
    int-to-byte v2, v2

    #@18
    aput-byte v2, v1, v3

    #@1a
    .line 148
    aget-byte v2, v1, v4

    #@1c
    and-int/lit8 v2, v2, 0x3f

    #@1e
    int-to-byte v2, v2

    #@1f
    aput-byte v2, v1, v4

    #@21
    .line 149
    aget-byte v2, v1, v4

    #@23
    or-int/lit16 v2, v2, 0x80

    #@25
    int-to-byte v2, v2

    #@26
    aput-byte v2, v1, v4

    #@28
    .line 150
    new-instance v2, Ljava/util/UUID;

    #@2a
    invoke-direct {v2, v1}, Ljava/util/UUID;-><init>([B)V

    #@2d
    return-object v2
.end method


# virtual methods
.method public clockSequence()I
    .locals 4

    #@0
    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Not a time-based UUID"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 321
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    #@12
    const-wide/high16 v2, 0x3fff000000000000L    # 1.9375

    #@14
    and-long/2addr v0, v2

    #@15
    const/16 v2, 0x30

    #@17
    ushr-long/2addr v0, v2

    #@18
    long-to-int v0, v0

    #@19
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 434
    check-cast p1, Ljava/util/UUID;

    #@2
    .end local p1    # "val":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/util/UUID;)I
    .locals 6
    .param p1, "val"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, -0x1

    #@2
    .line 437
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@4
    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    #@6
    cmp-long v2, v2, v4

    #@8
    if-gez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 438
    :cond_1
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@d
    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    #@f
    cmp-long v2, v2, v4

    #@11
    if-lez v2, :cond_2

    #@13
    move v0, v1

    #@14
    goto :goto_0

    #@15
    .line 439
    :cond_2
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@17
    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    #@19
    cmp-long v2, v2, v4

    #@1b
    if-ltz v2, :cond_0

    #@1d
    .line 440
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@1f
    iget-wide v4, p1, Ljava/util/UUID;->leastSigBits:J

    #@21
    cmp-long v0, v2, v4

    #@23
    if-lez v0, :cond_3

    #@25
    move v0, v1

    #@26
    goto :goto_0

    #@27
    .line 441
    :cond_3
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 411
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    const-class v3, Ljava/util/UUID;

    #@9
    if-eq v2, v3, :cond_1

    #@b
    .line 412
    :cond_0
    return v1

    #@c
    :cond_1
    move-object v0, p1

    #@d
    .line 413
    check-cast v0, Ljava/util/UUID;

    #@f
    .line 414
    .local v0, "id":Ljava/util/UUID;
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@11
    iget-wide v4, v0, Ljava/util/UUID;->mostSigBits:J

    #@13
    cmp-long v2, v2, v4

    #@15
    if-nez v2, :cond_2

    #@17
    .line 415
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@19
    iget-wide v4, v0, Ljava/util/UUID;->leastSigBits:J

    #@1b
    cmp-long v2, v2, v4

    #@1d
    if-nez v2, :cond_2

    #@1f
    const/4 v1, 0x1

    #@20
    .line 414
    :cond_2
    return v1
.end method

.method public getLeastSignificantBits()J
    .locals 2

    #@0
    .prologue
    .line 219
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    #@2
    return-wide v0
.end method

.method public getMostSignificantBits()J
    .locals 2

    #@0
    .prologue
    .line 228
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 394
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@2
    iget-wide v4, p0, Ljava/util/UUID;->leastSigBits:J

    #@4
    xor-long v0, v2, v4

    #@6
    .line 395
    .local v0, "hilo":J
    const/16 v2, 0x20

    #@8
    shr-long v2, v0, v2

    #@a
    long-to-int v2, v2

    #@b
    long-to-int v3, v0

    #@c
    xor-int/2addr v2, v3

    #@d
    return v2
.end method

.method public node()J
    .locals 4

    #@0
    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Not a time-based UUID"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 345
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    #@12
    const-wide v2, 0xffffffffffffL

    #@17
    and-long/2addr v0, v2

    #@18
    return-wide v0
.end method

.method public timestamp()J
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 291
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@b
    const-string/jumbo v1, "Not a time-based UUID"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 295
    :cond_0
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    #@14
    const-wide/16 v2, 0xfff

    #@16
    and-long/2addr v0, v2

    #@17
    const/16 v2, 0x30

    #@19
    shl-long/2addr v0, v2

    #@1a
    .line 296
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@1c
    const/16 v4, 0x10

    #@1e
    shr-long/2addr v2, v4

    #@1f
    const-wide/32 v4, 0xffff

    #@22
    and-long/2addr v2, v4

    #@23
    shl-long/2addr v2, v6

    #@24
    .line 295
    or-long/2addr v0, v2

    #@25
    .line 297
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@27
    ushr-long/2addr v2, v6

    #@28
    .line 295
    or-long/2addr v0, v2

    #@29
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@8
    const/16 v1, 0x20

    #@a
    shr-long/2addr v2, v1

    #@b
    const/16 v1, 0x8

    #@d
    invoke-static {v2, v3, v1}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "-"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 376
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@1e
    const/16 v1, 0x10

    #@20
    shr-long/2addr v2, v1

    #@21
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 376
    const-string/jumbo v1, "-"

    #@2c
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 377
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    #@32
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 377
    const-string/jumbo v1, "-"

    #@3d
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 378
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@43
    const/16 v1, 0x30

    #@45
    shr-long/2addr v2, v1

    #@46
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 378
    const-string/jumbo v1, "-"

    #@51
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 379
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@57
    const/16 v1, 0xc

    #@59
    invoke-static {v2, v3, v1}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    return-object v0
.end method

.method public variant()I
    .locals 6

    #@0
    .prologue
    .line 271
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    #@2
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@4
    const/16 v4, 0x3e

    #@6
    ushr-long/2addr v2, v4

    #@7
    const-wide/16 v4, 0x40

    #@9
    sub-long v2, v4, v2

    #@b
    long-to-int v2, v2

    #@c
    ushr-long/2addr v0, v2

    #@d
    .line 272
    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    #@f
    const/16 v4, 0x3f

    #@11
    shr-long/2addr v2, v4

    #@12
    .line 271
    and-long/2addr v0, v2

    #@13
    long-to-int v0, v0

    #@14
    return v0
.end method

.method public version()I
    .locals 4

    #@0
    .prologue
    .line 247
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    #@2
    const/16 v2, 0xc

    #@4
    shr-long/2addr v0, v2

    #@5
    const-wide/16 v2, 0xf

    #@7
    and-long/2addr v0, v2

    #@8
    long-to-int v0, v0

    #@9
    return v0
.end method
