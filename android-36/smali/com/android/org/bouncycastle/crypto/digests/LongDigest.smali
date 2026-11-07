.class public abstract Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "LongDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/org/bouncycastle/util/Memoable;
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field static final blacklist K:[J


# instance fields
.field protected blacklist H1:J

.field protected blacklist H2:J

.field protected blacklist H3:J

.field protected blacklist H4:J

.field protected blacklist H5:J

.field protected blacklist H6:J

.field protected blacklist H7:J

.field protected blacklist H8:J

.field private blacklist W:[J

.field private blacklist byteCount1:J

.field private blacklist byteCount2:J

.field protected final blacklist purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field private blacklist wOff:I

.field private blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x50

    .line 404
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    return-void

    :array_a
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 21
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/16 v0, 0x50

    .line 29
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 21
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/16 v0, 0x50

    .line 29
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    .line 59
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method

.method private blacklist Ch(JJJ)J
    .registers 7

    .line 0
    and-long/2addr p3, p1

    not-long p0, p1

    and-long/2addr p0, p5

    xor-long/2addr p0, p3

    return-wide p0
.end method

.method private blacklist Maj(JJJ)J
    .registers 9

    .line 0
    and-long v0, p1, p3

    and-long p0, p1, p5

    xor-long/2addr p0, v0

    and-long p2, p3, p5

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method private blacklist Sigma0(J)J
    .registers 9

    .line 0
    const/16 p0, 0x3f

    shl-long v0, p1, p0

    const/4 p0, 0x1

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/16 p0, 0x38

    shl-long v2, p1, p0

    const/16 p0, 0x8

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 p0, 0x7

    ushr-long p0, p1, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist Sigma1(J)J
    .registers 9

    .line 0
    const/16 p0, 0x2d

    shl-long v0, p1, p0

    const/16 p0, 0x13

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/4 p0, 0x3

    shl-long v2, p1, p0

    const/16 p0, 0x3d

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 p0, 0x6

    ushr-long p0, p1, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist Sum0(J)J
    .registers 9

    .line 0
    const/16 p0, 0x24

    shl-long v0, p1, p0

    const/16 p0, 0x1c

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/16 p0, 0x1e

    shl-long v2, p1, p0

    const/16 p0, 0x22

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 p0, 0x19

    shl-long v2, p1, p0

    const/16 p0, 0x27

    ushr-long p0, p1, p0

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist Sum1(J)J
    .registers 9

    .line 0
    const/16 p0, 0x32

    shl-long v0, p1, p0

    const/16 p0, 0xe

    ushr-long v2, p1, p0

    or-long/2addr v0, v2

    const/16 p0, 0x2e

    shl-long v2, p1, p0

    const/16 p0, 0x12

    ushr-long v4, p1, p0

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 p0, 0x17

    shl-long v2, p1, p0

    const/16 p0, 0x29

    ushr-long p0, p1, p0

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist adjustByteCounts()V
    .registers 9

    .line 252
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 254
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v6, 0x3d

    ushr-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    and-long/2addr v0, v2

    .line 255
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    :cond_17
    return-void
.end method


# virtual methods
.method public abstract synthetic blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
.end method

.method protected blacklist copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .registers 6

    .line 66
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 69
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 70
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    .line 72
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 73
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 74
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 75
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 76
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 77
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 78
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 79
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    .line 81
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    return-void
.end method

.method public abstract synthetic blacklist doFinal([BI)I
.end method

.method public blacklist finish()V
    .registers 6

    .line 191
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    .line 193
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 194
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v4, -0x80

    .line 199
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    .line 201
    :goto_e
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v4, :cond_17

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    goto :goto_e

    .line 206
    :cond_17
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    .line 208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    return-void
.end method

.method public abstract synthetic blacklist getAlgorithmName()Ljava/lang/String;
.end method

.method public blacklist getByteLength()I
    .registers 1

    .line 0
    const/16 p0, 0x80

    return p0
.end method

.method public abstract synthetic blacklist getDigestSize()I
.end method

.method protected blacklist getEncodedStateSize()I
    .registers 1

    .line 132
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x60

    return p0
.end method

.method protected blacklist populateState([B)V
    .registers 6

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 89
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v3, 0xc

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 90
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v3, 0x14

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 91
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const/16 v3, 0x1c

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 92
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const/16 v3, 0x24

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 93
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const/16 v3, 0x2c

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 94
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const/16 v3, 0x34

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 95
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const/16 v3, 0x3c

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 96
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const/16 v3, 0x44

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 97
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const/16 v3, 0x4c

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 98
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/16 v3, 0x54

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 100
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0x5c

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 101
    :goto_5c
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ge v2, v0, :cond_6e

    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aget-wide v0, v0, v2

    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v3, v3, 0x60

    invoke-static {v0, v1, p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_6e
    return-void
.end method

.method protected blacklist processBlock()V
    .registers 34

    move-object/from16 v0, p0

    .line 274
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    const/16 v1, 0x10

    :goto_7
    const/16 v2, 0x4f

    if-gt v1, v2, :cond_31

    .line 281
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v3, v1, -0x2

    aget-wide v3, v2, v3

    invoke-direct {v0, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v6, v1, -0x7

    aget-wide v8, v5, v6

    add-long/2addr v3, v8

    add-int/lit8 v6, v1, -0xf

    aget-wide v5, v5, v6

    invoke-direct {v0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v6, v1, -0x10

    aget-wide v5, v5, v6

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 287
    :cond_31
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 288
    iget-wide v3, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 289
    iget-wide v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 290
    iget-wide v8, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 291
    iget-wide v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 292
    iget-wide v12, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 293
    iget-wide v14, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    move-wide/from16 v16, v8

    .line 294
    iget-wide v7, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    move-wide/from16 v19, v12

    const/4 v9, 0x0

    const/16 v18, 0x0

    move-wide v12, v5

    move-wide v5, v14

    move-wide v14, v7

    move-wide v7, v1

    move-wide v1, v10

    move-wide v10, v3

    :goto_4e
    const/16 v3, 0xa

    if-ge v9, v3, :cond_1f3

    .line 300
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v21

    move-wide/from16 v3, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v19

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-wide/from16 v27, v5

    add-long v21, v21, v19

    sget-object v19, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    aget-wide v1, v19, v18

    add-long v21, v21, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v20, v18, 0x1

    aget-wide v1, v1, v18

    add-long v21, v21, v1

    add-long v14, v14, v21

    add-long v1, v16, v14

    .line 302
    invoke-direct {v0, v7, v8}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-wide v3, v7

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v10

    move-wide v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide v12, v1

    move-wide/from16 v21, v3

    move-wide/from16 v29, v5

    add-long v16, v16, v10

    add-long v14, v14, v16

    .line 305
    invoke-direct {v0, v7, v8}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v7

    move-wide/from16 v3, v23

    move-wide/from16 v5, v25

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v7

    move-wide/from16 v16, v1

    add-long/2addr v10, v7

    aget-wide v1, v19, v20

    add-long/2addr v10, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v18, 0x2

    aget-wide v1, v1, v20

    add-long/2addr v10, v1

    add-long v10, v27, v10

    add-long v1, v29, v10

    .line 307
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-wide v3, v12

    move-wide/from16 v5, v21

    move-wide v12, v1

    move-wide v1, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v14

    move-wide/from16 v29, v1

    move-wide/from16 v20, v3

    move-wide/from16 v31, v5

    add-long v27, v27, v14

    add-long v10, v10, v27

    .line 310
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v14

    move-wide v1, v12

    move-wide/from16 v3, v16

    move-wide/from16 v5, v23

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v12

    move-wide/from16 v27, v1

    add-long/2addr v14, v12

    aget-wide v1, v19, v7

    add-long/2addr v14, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v8, v18, 0x3

    aget-wide v1, v1, v7

    add-long/2addr v14, v1

    add-long v12, v25, v14

    add-long v14, v31, v12

    .line 312
    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v25

    move-wide v1, v10

    move-wide/from16 v5, v20

    move-wide/from16 v3, v29

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v31, v1

    add-long v25, v25, v10

    add-long v12, v12, v25

    .line 315
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v14

    move-wide/from16 v5, v16

    move-wide/from16 v3, v27

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v25, v1

    add-long/2addr v10, v14

    aget-wide v1, v19, v8

    add-long/2addr v10, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v18, 0x4

    aget-wide v1, v1, v8

    add-long/2addr v10, v1

    add-long v10, v23, v10

    add-long v14, v20, v10

    .line 317
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v20

    move-wide v1, v12

    move-wide/from16 v5, v29

    move-wide/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v12

    move-wide/from16 v22, v1

    add-long v20, v20, v12

    add-long v10, v10, v20

    .line 320
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v12

    move-wide v1, v14

    move-wide/from16 v3, v25

    move-wide/from16 v5, v27

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v20, v1

    add-long/2addr v12, v14

    aget-wide v1, v19, v7

    add-long/2addr v12, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v8, v18, 0x5

    aget-wide v1, v1, v7

    add-long/2addr v12, v1

    add-long v12, v16, v12

    add-long v14, v29, v12

    .line 322
    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v16

    move-wide v1, v10

    move-wide/from16 v3, v22

    move-wide/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v29, v1

    add-long v16, v16, v10

    add-long v12, v12, v16

    .line 325
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v14

    move-wide/from16 v3, v20

    move-wide/from16 v5, v25

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v16, v1

    add-long/2addr v10, v14

    aget-wide v1, v19, v8

    add-long/2addr v10, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v7, v18, 0x6

    aget-wide v1, v1, v8

    add-long/2addr v10, v1

    add-long v10, v27, v10

    add-long v14, v31, v10

    .line 327
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v27

    move-wide v1, v12

    move-wide/from16 v5, v22

    move-wide/from16 v3, v29

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v12

    move-wide/from16 v31, v1

    add-long v27, v27, v12

    add-long v10, v10, v27

    .line 330
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v12

    move-wide v1, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v14

    move-wide/from16 v27, v1

    add-long/2addr v12, v14

    aget-wide v1, v19, v7

    add-long/2addr v12, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v8, v18, 0x7

    aget-wide v1, v1, v7

    add-long/2addr v12, v1

    add-long v14, v25, v12

    add-long v12, v22, v14

    .line 332
    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v22

    move-wide v1, v10

    move-wide/from16 v5, v29

    move-wide/from16 v3, v31

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v10

    move-wide/from16 v24, v1

    add-long v22, v22, v10

    add-long v14, v14, v22

    .line 335
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    move-result-wide v10

    move-wide v1, v12

    move-wide/from16 v5, v16

    move-wide/from16 v3, v27

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    move-result-wide v12

    move-wide/from16 v22, v1

    add-long/2addr v10, v12

    aget-wide v1, v19, v8

    add-long/2addr v10, v1

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    add-int/lit8 v18, v18, 0x8

    aget-wide v1, v1, v8

    add-long/2addr v10, v1

    add-long v7, v20, v10

    add-long v10, v29, v7

    .line 337
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    move-result-wide v12

    move-wide v1, v14

    move-wide/from16 v3, v24

    move-wide/from16 v5, v31

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-long/2addr v7, v12

    add-int/lit8 v9, v9, 0x1

    move-wide v5, v10

    move-wide v10, v1

    move-wide v1, v5

    move-wide v12, v3

    move-wide/from16 v14, v16

    move-wide/from16 v19, v22

    move-wide/from16 v5, v27

    move-wide/from16 v16, v31

    goto/16 :goto_4e

    :cond_1f3
    move-wide/from16 v23, v1

    move-wide/from16 v27, v5

    move-wide/from16 v31, v10

    move-wide/from16 v29, v12

    move-wide/from16 v25, v19

    move-wide/from16 v20, v7

    .line 340
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    add-long v1, v1, v20

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    .line 341
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-long v1, v1, v31

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    .line 342
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-long v1, v1, v29

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    .line 343
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    .line 344
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-long v1, v1, v23

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    .line 345
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-long v1, v1, v25

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    .line 346
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-long v1, v1, v27

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    .line 347
    iget-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/4 v1, 0x0

    .line 352
    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    move v9, v1

    const/16 v1, 0x10

    :goto_234
    if-ge v9, v1, :cond_23f

    .line 355
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_234

    :cond_23f
    return-void
.end method

.method protected blacklist processLength(JJ)V
    .registers 7

    .line 263
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 265
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    .line 268
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    aput-wide p3, p0, v1

    const/16 p3, 0xf

    .line 269
    aput-wide p1, p0, p3

    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    aput-wide p1, v0, v1

    .line 240
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    .line 242
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    :cond_17
    return-void
.end method

.method public blacklist reset()V
    .registers 7

    const-wide/16 v0, 0x0

    .line 213
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    .line 214
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/4 v2, 0x0

    .line 216
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    move v3, v2

    .line 217
    :goto_a
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v5, v4

    if-ge v3, v5, :cond_14

    .line 219
    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 222
    :cond_14
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 223
    :goto_16
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    array-length v4, v3

    if-eq v2, v4, :cond_20

    .line 225
    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    return-void
.end method

.method public abstract synthetic blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
.end method

.method protected blacklist restoreState([B)V
    .registers 7

    const/16 v0, 0x8

    .line 109
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 110
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    .line 111
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const/16 v0, 0x14

    .line 112
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    const/16 v0, 0x1c

    .line 114
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const/16 v0, 0x24

    .line 115
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const/16 v0, 0x2c

    .line 116
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const/16 v0, 0x34

    .line 117
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const/16 v0, 0x3c

    .line 118
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const/16 v0, 0x44

    .line 119
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const/16 v0, 0x4c

    .line 120
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const/16 v0, 0x54

    .line 121
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    const/16 v0, 0x5c

    .line 123
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    .line 124
    :goto_66
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    if-ge v2, v0, :cond_79

    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    mul-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, 0x60

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_79
    return-void
.end method

.method public blacklist update(B)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 140
    array-length p1, v0

    if-ne v2, p1, :cond_13

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 143
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    .line 146
    :cond_13
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    return-void
.end method

.method public blacklist update([BII)V
    .registers 9

    .line 157
    :goto_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    .line 159
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 168
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_26

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    .line 172
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    array-length v1, v0

    add-int/2addr p2, v1

    .line 173
    array-length v1, v0

    sub-int/2addr p3, v1

    .line 174
    iget-wide v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    goto :goto_10

    :cond_26
    :goto_26
    if-lez p3, :cond_32

    .line 182
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_26

    :cond_32
    return-void
.end method
