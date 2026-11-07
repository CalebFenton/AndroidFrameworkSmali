.class public Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;
.super Ljava/lang/Object;
.source "ISAPDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Digest;


# instance fields
.field private blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist t0:J

.field private blacklist t1:J

.field private blacklist t2:J

.field private blacklist t3:J

.field private blacklist t4:J

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J

.field private blacklist x4:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private blacklist P12()V
    .registers 3

    const-wide/16 v0, 0xf0

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xe1

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xd2

    .line 45
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xc3

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xb4

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xa5

    .line 48
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x96

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x87

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x78

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x69

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x5a

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x4b

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    return-void
.end method

.method private blacklist ROTR(JJ)J
    .registers 9

    .line 0
    long-to-int p0, p3

    ushr-long v0, p1, p0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p0, v2

    shl-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist ROUND(J)V
    .registers 22

    move-object/from16 v0, p0

    .line 29
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long v5, v1, v3

    iget-wide v7, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    iput-wide v5, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    .line 30
    iput-wide v11, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    xor-long v11, v3, v7

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long v15, v9, v13

    xor-long/2addr v11, v15

    .line 31
    iput-wide v11, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    xor-long v11, v1, v3

    xor-long/2addr v7, v11

    xor-long v7, v7, p1

    not-long v11, v1

    xor-long v15, v9, v13

    and-long/2addr v11, v15

    xor-long/2addr v7, v11

    .line 32
    iput-wide v7, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    xor-long v7, v3, v9

    xor-long/2addr v7, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v7

    .line 33
    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v1, 0x13

    .line 34
    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v1

    xor-long/2addr v1, v5

    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v5, 0x1c

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 35
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v5, 0x3d

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    .line 36
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v5, 0x6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    not-long v1, v1

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    .line 37
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v5, 0x11

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    .line 38
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v5, 0x29

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    return-void
.end method


# virtual methods
.method protected blacklist U64BIG(J)J
    .registers 9

    const-wide/16 v0, 0x8

    .line 64
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x28

    .line 65
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide p0

    const-wide v2, 0xff000000ffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public blacklist doFinal([BI)I
    .registers 15

    add-int/lit8 v0, p2, 0x20

    .line 99
    array-length v1, p1

    if-gt v0, v1, :cond_a8

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    .line 105
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    const-wide v0, -0x744de7ce39f0effeL

    .line 106
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    .line 107
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    .line 108
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    .line 109
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    .line 111
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 112
    array-length v1, v0

    shr-int/lit8 v2, v1, 0x3

    .line 113
    new-array v3, v2, [J

    const/4 v4, 0x0

    .line 114
    invoke-static {v0, v4, v3, v4, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    move v2, v4

    :goto_44
    const/16 v5, 0x8

    if-lt v1, v5, :cond_5c

    .line 118
    iget-wide v5, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v3, v2

    invoke-virtual {p0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v8

    xor-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 119
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    add-int/lit8 v1, v1, -0x8

    move v2, v7

    goto :goto_44

    .line 123
    :cond_5c
    iget-wide v5, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    rsub-int/lit8 v3, v1, 0x7

    const/4 v7, 0x3

    shl-int/2addr v3, v7

    const-wide/16 v8, 0x80

    shl-long/2addr v8, v3

    xor-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    :goto_68
    if-lez v1, :cond_7f

    .line 126
    iget-wide v5, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    shl-int/lit8 v3, v2, 0x3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v3, v1

    aget-byte v3, v0, v3

    int-to-long v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    rsub-int/lit8 v3, v1, 0x7

    shl-int/2addr v3, v7

    shl-long/2addr v8, v3

    xor-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    goto :goto_68

    .line 128
    :cond_7f
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [J

    :goto_85
    if-ge v4, v7, :cond_95

    .line 133
    iget-wide v1, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 134
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 137
    :cond_95
    iget-wide v1, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 138
    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 139
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 p0, 0x20

    return p0

    .line 101
    :cond_a8
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer is too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 71
    const-string p0, "ISAP Hash"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x20

    return p0
.end method

.method public blacklist reset()V
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist update([BII)V
    .registers 6

    add-int v0, p2, p3

    .line 89
    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 93
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    .line 91
    :cond_b
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
