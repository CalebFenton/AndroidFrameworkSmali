.class public abstract Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.super Ljava/lang/Object;
.source "LongDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/org/bouncycastle/util/Memoable;
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x80

.field static final K:[J


# instance fields
.field protected H1:J

.field protected H2:J

.field protected H3:J

.field protected H4:J

.field protected H5:J

.field protected H6:J

.field protected H7:J

.field protected H8:J

.field private W:[J

.field private byteCount1:J

.field private byteCount2:J

.field private wOff:I

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 386
    const/16 v0, 0x50

    #@2
    new-array v0, v0, [J

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@9
    .line 10
    return-void

    #@a
    .line 386
    :array_0
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

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@9
    .line 23
    const/16 v0, 0x50

    #@b
    new-array v0, v0, [J

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@f
    .line 31
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@12
    .line 33
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    #@15
    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/LongDigest;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@9
    .line 23
    const/16 v0, 0x50

    #@b
    new-array v0, v0, [J

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@f
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    #@12
    .line 41
    return-void
.end method

.method private Ch(JJJ)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    #@0
    .prologue
    .line 347
    and-long v0, p1, p3

    #@2
    not-long v2, p1

    #@3
    and-long/2addr v2, p5

    #@4
    xor-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method private Maj(JJJ)J
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    #@0
    .prologue
    .line 355
    and-long v0, p1, p3

    #@2
    and-long v2, p1, p5

    #@4
    xor-long/2addr v0, v2

    #@5
    and-long v2, p3, p5

    #@7
    xor-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method private Sigma0(J)J
    .locals 7
    .param p1, "x"    # J

    #@0
    .prologue
    .line 373
    const/16 v0, 0x3f

    #@2
    shl-long v0, p1, v0

    #@4
    const/4 v2, 0x1

    #@5
    ushr-long v2, p1, v2

    #@7
    or-long/2addr v0, v2

    #@8
    const/16 v2, 0x38

    #@a
    shl-long v2, p1, v2

    #@c
    const/16 v4, 0x8

    #@e
    ushr-long v4, p1, v4

    #@10
    or-long/2addr v2, v4

    #@11
    xor-long/2addr v0, v2

    #@12
    const/4 v2, 0x7

    #@13
    ushr-long v2, p1, v2

    #@15
    xor-long/2addr v0, v2

    #@16
    return-wide v0
.end method

.method private Sigma1(J)J
    .locals 7
    .param p1, "x"    # J

    #@0
    .prologue
    .line 379
    const/16 v0, 0x2d

    #@2
    shl-long v0, p1, v0

    #@4
    const/16 v2, 0x13

    #@6
    ushr-long v2, p1, v2

    #@8
    or-long/2addr v0, v2

    #@9
    const/4 v2, 0x3

    #@a
    shl-long v2, p1, v2

    #@c
    const/16 v4, 0x3d

    #@e
    ushr-long v4, p1, v4

    #@10
    or-long/2addr v2, v4

    #@11
    xor-long/2addr v0, v2

    #@12
    const/4 v2, 0x6

    #@13
    ushr-long v2, p1, v2

    #@15
    xor-long/2addr v0, v2

    #@16
    return-wide v0
.end method

.method private Sum0(J)J
    .locals 7
    .param p1, "x"    # J

    #@0
    .prologue
    .line 361
    const/16 v0, 0x24

    #@2
    shl-long v0, p1, v0

    #@4
    const/16 v2, 0x1c

    #@6
    ushr-long v2, p1, v2

    #@8
    or-long/2addr v0, v2

    #@9
    const/16 v2, 0x1e

    #@b
    shl-long v2, p1, v2

    #@d
    const/16 v4, 0x22

    #@f
    ushr-long v4, p1, v4

    #@11
    or-long/2addr v2, v4

    #@12
    xor-long/2addr v0, v2

    #@13
    const/16 v2, 0x19

    #@15
    shl-long v2, p1, v2

    #@17
    const/16 v4, 0x27

    #@19
    ushr-long v4, p1, v4

    #@1b
    or-long/2addr v2, v4

    #@1c
    xor-long/2addr v0, v2

    #@1d
    return-wide v0
.end method

.method private Sum1(J)J
    .locals 7
    .param p1, "x"    # J

    #@0
    .prologue
    .line 367
    const/16 v0, 0x32

    #@2
    shl-long v0, p1, v0

    #@4
    const/16 v2, 0xe

    #@6
    ushr-long v2, p1, v2

    #@8
    or-long/2addr v0, v2

    #@9
    const/16 v2, 0x2e

    #@b
    shl-long v2, p1, v2

    #@d
    const/16 v4, 0x12

    #@f
    ushr-long v4, p1, v4

    #@11
    or-long/2addr v2, v4

    #@12
    xor-long/2addr v0, v2

    #@13
    const/16 v2, 0x17

    #@15
    shl-long v2, p1, v2

    #@17
    const/16 v4, 0x29

    #@19
    ushr-long v4, p1, v4

    #@1b
    or-long/2addr v2, v4

    #@1c
    xor-long/2addr v0, v2

    #@1d
    return-wide v0
.end method

.method private adjustByteCounts()V
    .locals 8

    #@0
    .prologue
    const-wide v6, 0x1fffffffffffffffL

    #@5
    .line 234
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@7
    cmp-long v0, v0, v6

    #@9
    if-lez v0, :cond_0

    #@b
    .line 236
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@d
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@f
    const/16 v4, 0x3d

    #@11
    ushr-long/2addr v2, v4

    #@12
    add-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@15
    .line 237
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@17
    and-long/2addr v0, v6

    #@18
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@1a
    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method protected copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/LongDigest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 48
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@5
    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@7
    array-length v2, v2

    #@8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 50
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@f
    .line 51
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@11
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@13
    .line 52
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@15
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@17
    .line 54
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@19
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@1b
    .line 55
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@1d
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@1f
    .line 56
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@21
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@23
    .line 57
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@25
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@27
    .line 58
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@29
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@2b
    .line 59
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@2d
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@2f
    .line 60
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@31
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@33
    .line 61
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@35
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@37
    .line 63
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@39
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@3b
    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@3d
    array-length v2, v2

    #@3e
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@41
    .line 64
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@43
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@45
    .line 46
    return-void
.end method

.method public finish()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 173
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    #@4
    .line 175
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@6
    const/4 v6, 0x3

    #@7
    shl-long v2, v4, v6

    #@9
    .line 176
    .local v2, "lowBitLength":J
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@b
    .line 181
    .local v0, "hiBitLength":J
    const/16 v4, -0x80

    #@d
    invoke-virtual {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    #@10
    .line 183
    :goto_0
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 185
    invoke-virtual {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    #@17
    goto :goto_0

    #@18
    .line 188
    :cond_0
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processLength(JJ)V

    #@1b
    .line 190
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    #@1e
    .line 171
    return-void
.end method

.method public getByteLength()I
    .locals 1

    #@0
    .prologue
    .line 213
    const/16 v0, 0x80

    #@2
    return v0
.end method

.method protected getEncodedStateSize()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@2
    mul-int/lit8 v0, v0, 0x8

    #@4
    add-int/lit8 v0, v0, 0x60

    #@6
    return v0
.end method

.method protected populateState([B)V
    .locals 4
    .param p1, "state"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 69
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@3
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@5
    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@8
    .line 70
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@a
    const/16 v2, 0x8

    #@c
    invoke-static {v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@f
    .line 71
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@11
    const/16 v1, 0xc

    #@13
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@16
    .line 72
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@18
    const/16 v1, 0x14

    #@1a
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@1d
    .line 73
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@1f
    const/16 v1, 0x1c

    #@21
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@24
    .line 74
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@26
    const/16 v1, 0x24

    #@28
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@2b
    .line 75
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@2d
    const/16 v1, 0x2c

    #@2f
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@32
    .line 76
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@34
    const/16 v1, 0x34

    #@36
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@39
    .line 77
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@3b
    const/16 v1, 0x3c

    #@3d
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@40
    .line 78
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@42
    const/16 v1, 0x44

    #@44
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@47
    .line 79
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@49
    const/16 v1, 0x4c

    #@4b
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@4e
    .line 80
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@50
    const/16 v1, 0x54

    #@52
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@55
    .line 82
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@57
    const/16 v2, 0x5c

    #@59
    invoke-static {v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@5c
    .line 83
    const/4 v0, 0x0

    #@5d
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@5f
    if-ge v0, v1, :cond_0

    #@61
    .line 85
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@63
    aget-wide v2, v1, v0

    #@65
    mul-int/lit8 v1, v0, 0x8

    #@67
    add-int/lit8 v1, v1, 0x60

    #@69
    invoke-static {v2, v3, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@6c
    .line 83
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 67
    :cond_0
    return-void
.end method

.method protected processBlock()V
    .locals 38

    #@0
    .prologue
    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->adjustByteCounts()V

    #@3
    .line 261
    const/16 v12, 0x10

    #@5
    .local v12, "t":I
    :goto_0
    const/16 v5, 0x4f

    #@7
    if-gt v12, v5, :cond_0

    #@9
    .line 263
    move-object/from16 v0, p0

    #@b
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@11
    add-int/lit8 v21, v12, -0x2

    #@13
    aget-wide v24, v13, v21

    #@15
    move-object/from16 v0, p0

    #@17
    move-wide/from16 v1, v24

    #@19
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma1(J)J

    #@1c
    move-result-wide v24

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@21
    add-int/lit8 v21, v12, -0x7

    #@23
    aget-wide v28, v13, v21

    #@25
    add-long v24, v24, v28

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@2b
    add-int/lit8 v21, v12, -0xf

    #@2d
    aget-wide v28, v13, v21

    #@2f
    move-object/from16 v0, p0

    #@31
    move-wide/from16 v1, v28

    #@33
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sigma0(J)J

    #@36
    move-result-wide v28

    #@37
    add-long v24, v24, v28

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@3d
    add-int/lit8 v21, v12, -0x10

    #@3f
    aget-wide v28, v13, v21

    #@41
    add-long v24, v24, v28

    #@43
    aput-wide v24, v5, v12

    #@45
    .line 261
    add-int/lit8 v12, v12, 0x1

    #@47
    goto :goto_0

    #@48
    .line 269
    :cond_0
    move-object/from16 v0, p0

    #@4a
    iget-wide v14, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@4c
    .line 270
    .local v14, "a":J
    move-object/from16 v0, p0

    #@4e
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@50
    move-wide/from16 v16, v0

    #@52
    .line 271
    .local v16, "b":J
    move-object/from16 v0, p0

    #@54
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@56
    move-wide/from16 v18, v0

    #@58
    .line 272
    .local v18, "c":J
    move-object/from16 v0, p0

    #@5a
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@5c
    move-wide/from16 v22, v0

    #@5e
    .line 273
    .local v22, "d":J
    move-object/from16 v0, p0

    #@60
    iget-wide v6, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@62
    .line 274
    .local v6, "e":J
    move-object/from16 v0, p0

    #@64
    iget-wide v8, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@66
    .line 275
    .local v8, "f":J
    move-object/from16 v0, p0

    #@68
    iget-wide v10, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@6a
    .line 276
    .local v10, "g":J
    move-object/from16 v0, p0

    #@6c
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@6e
    move-wide/from16 v26, v0

    #@70
    .line 278
    .local v26, "h":J
    const/4 v12, 0x0

    #@71
    .line 279
    const/4 v4, 0x0

    #@72
    .local v4, "i":I
    move/from16 v20, v12

    #@74
    .end local v12    # "t":I
    .local v20, "t":I
    :goto_1
    const/16 v5, 0xa

    #@76
    if-ge v4, v5, :cond_1

    #@78
    .line 282
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@7d
    move-result-wide v24

    #@7e
    move-object/from16 v5, p0

    #@80
    invoke-direct/range {v5 .. v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@83
    move-result-wide v28

    #@84
    add-long v24, v24, v28

    #@86
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@88
    aget-wide v28, v5, v20

    #@8a
    add-long v24, v24, v28

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@90
    add-int/lit8 v12, v20, 0x1

    #@92
    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    #@94
    add-long v24, v24, v28

    #@96
    add-long v26, v26, v24

    #@98
    .line 283
    add-long v22, v22, v26

    #@9a
    .line 284
    move-object/from16 v0, p0

    #@9c
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@9f
    move-result-wide v24

    #@a0
    move-object/from16 v13, p0

    #@a2
    invoke-direct/range {v13 .. v19}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@a5
    move-result-wide v28

    #@a6
    add-long v24, v24, v28

    #@a8
    add-long v36, v26, v24

    #@aa
    .line 287
    .end local v26    # "h":J
    .local v36, "h":J
    move-object/from16 v0, p0

    #@ac
    move-wide/from16 v1, v22

    #@ae
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@b1
    move-result-wide v28

    #@b2
    move-object/from16 v21, p0

    #@b4
    move-wide/from16 v24, v6

    #@b6
    move-wide/from16 v26, v8

    #@b8
    invoke-direct/range {v21 .. v27}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@bb
    move-result-wide v24

    #@bc
    add-long v24, v24, v28

    #@be
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@c0
    aget-wide v28, v5, v12

    #@c2
    add-long v24, v24, v28

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@c8
    add-int/lit8 v20, v12, 0x1

    #@ca
    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    #@cc
    add-long v24, v24, v28

    #@ce
    add-long v10, v10, v24

    #@d0
    .line 288
    add-long v18, v18, v10

    #@d2
    .line 289
    move-object/from16 v0, p0

    #@d4
    move-wide/from16 v1, v36

    #@d6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@d9
    move-result-wide v32

    #@da
    move-object/from16 v25, p0

    #@dc
    move-wide/from16 v26, v36

    #@de
    move-wide/from16 v28, v14

    #@e0
    move-wide/from16 v30, v16

    #@e2
    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@e5
    move-result-wide v24

    #@e6
    add-long v24, v24, v32

    #@e8
    add-long v10, v10, v24

    #@ea
    .line 292
    move-object/from16 v0, p0

    #@ec
    move-wide/from16 v1, v18

    #@ee
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@f1
    move-result-wide v32

    #@f2
    move-object/from16 v25, p0

    #@f4
    move-wide/from16 v26, v18

    #@f6
    move-wide/from16 v28, v22

    #@f8
    move-wide/from16 v30, v6

    #@fa
    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@fd
    move-result-wide v24

    #@fe
    add-long v24, v24, v32

    #@100
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@102
    aget-wide v28, v5, v20

    #@104
    add-long v24, v24, v28

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@10a
    add-int/lit8 v12, v20, 0x1

    #@10c
    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    #@10e
    add-long v24, v24, v28

    #@110
    add-long v8, v8, v24

    #@112
    .line 293
    add-long v16, v16, v8

    #@114
    .line 294
    move-object/from16 v0, p0

    #@116
    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@119
    move-result-wide v32

    #@11a
    move-object/from16 v25, p0

    #@11c
    move-wide/from16 v26, v10

    #@11e
    move-wide/from16 v28, v36

    #@120
    move-wide/from16 v30, v14

    #@122
    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@125
    move-result-wide v24

    #@126
    add-long v24, v24, v32

    #@128
    add-long v8, v8, v24

    #@12a
    .line 297
    move-object/from16 v0, p0

    #@12c
    move-wide/from16 v1, v16

    #@12e
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@131
    move-result-wide v32

    #@132
    move-object/from16 v25, p0

    #@134
    move-wide/from16 v26, v16

    #@136
    move-wide/from16 v28, v18

    #@138
    move-wide/from16 v30, v22

    #@13a
    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@13d
    move-result-wide v24

    #@13e
    add-long v24, v24, v32

    #@140
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@142
    aget-wide v28, v5, v12

    #@144
    add-long v24, v24, v28

    #@146
    move-object/from16 v0, p0

    #@148
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@14a
    add-int/lit8 v20, v12, 0x1

    #@14c
    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    #@14e
    add-long v24, v24, v28

    #@150
    add-long v6, v6, v24

    #@152
    .line 298
    add-long/2addr v14, v6

    #@153
    .line 299
    move-object/from16 v0, p0

    #@155
    invoke-direct {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@158
    move-result-wide v32

    #@159
    move-object/from16 v25, p0

    #@15b
    move-wide/from16 v26, v8

    #@15d
    move-wide/from16 v28, v10

    #@15f
    move-wide/from16 v30, v36

    #@161
    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@164
    move-result-wide v24

    #@165
    add-long v24, v24, v32

    #@167
    add-long v6, v6, v24

    #@169
    .line 302
    move-object/from16 v0, p0

    #@16b
    invoke-direct {v0, v14, v15}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@16e
    move-result-wide v24

    #@16f
    move-object/from16 v13, p0

    #@171
    invoke-direct/range {v13 .. v19}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@174
    move-result-wide v28

    #@175
    add-long v24, v24, v28

    #@177
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@179
    aget-wide v28, v5, v20

    #@17b
    add-long v24, v24, v28

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@181
    add-int/lit8 v12, v20, 0x1

    #@183
    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    #@185
    add-long v24, v24, v28

    #@187
    add-long v22, v22, v24

    #@189
    .line 303
    add-long v26, v36, v22

    #@18b
    .line 304
    .end local v36    # "h":J
    .restart local v26    # "h":J
    move-object/from16 v0, p0

    #@18d
    invoke-direct {v0, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@190
    move-result-wide v24

    #@191
    move-object/from16 v5, p0

    #@193
    invoke-direct/range {v5 .. v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@196
    move-result-wide v28

    #@197
    add-long v24, v24, v28

    #@199
    add-long v22, v22, v24

    #@19b
    .line 307
    move-object/from16 v0, p0

    #@19d
    move-wide/from16 v1, v26

    #@19f
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@1a2
    move-result-wide v32

    #@1a3
    move-object/from16 v25, p0

    #@1a5
    move-wide/from16 v28, v14

    #@1a7
    move-wide/from16 v30, v16

    #@1a9
    invoke-direct/range {v25 .. v31}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@1ac
    move-result-wide v24

    #@1ad
    add-long v24, v24, v32

    #@1af
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@1b1
    aget-wide v28, v5, v12

    #@1b3
    add-long v24, v24, v28

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@1b9
    add-int/lit8 v20, v12, 0x1

    #@1bb
    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    #@1bd
    add-long v24, v24, v28

    #@1bf
    add-long v18, v18, v24

    #@1c1
    .line 308
    add-long v10, v10, v18

    #@1c3
    .line 309
    move-object/from16 v0, p0

    #@1c5
    move-wide/from16 v1, v22

    #@1c7
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@1ca
    move-result-wide v24

    #@1cb
    move-object/from16 v29, p0

    #@1cd
    move-wide/from16 v30, v22

    #@1cf
    move-wide/from16 v32, v6

    #@1d1
    move-wide/from16 v34, v8

    #@1d3
    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@1d6
    move-result-wide v28

    #@1d7
    add-long v24, v24, v28

    #@1d9
    add-long v18, v18, v24

    #@1db
    .line 312
    move-object/from16 v0, p0

    #@1dd
    invoke-direct {v0, v10, v11}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@1e0
    move-result-wide v24

    #@1e1
    move-object/from16 v29, p0

    #@1e3
    move-wide/from16 v30, v10

    #@1e5
    move-wide/from16 v32, v26

    #@1e7
    move-wide/from16 v34, v14

    #@1e9
    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@1ec
    move-result-wide v28

    #@1ed
    add-long v24, v24, v28

    #@1ef
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@1f1
    aget-wide v28, v5, v20

    #@1f3
    add-long v24, v24, v28

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@1f9
    add-int/lit8 v12, v20, 0x1

    #@1fb
    .end local v20    # "t":I
    .restart local v12    # "t":I
    aget-wide v28, v5, v20

    #@1fd
    add-long v24, v24, v28

    #@1ff
    add-long v16, v16, v24

    #@201
    .line 313
    add-long v8, v8, v16

    #@203
    .line 314
    move-object/from16 v0, p0

    #@205
    move-wide/from16 v1, v18

    #@207
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@20a
    move-result-wide v24

    #@20b
    move-object/from16 v29, p0

    #@20d
    move-wide/from16 v30, v18

    #@20f
    move-wide/from16 v32, v22

    #@211
    move-wide/from16 v34, v6

    #@213
    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@216
    move-result-wide v28

    #@217
    add-long v24, v24, v28

    #@219
    add-long v16, v16, v24

    #@21b
    .line 317
    move-object/from16 v0, p0

    #@21d
    invoke-direct {v0, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum1(J)J

    #@220
    move-result-wide v24

    #@221
    move-object/from16 v29, p0

    #@223
    move-wide/from16 v30, v8

    #@225
    move-wide/from16 v32, v10

    #@227
    move-wide/from16 v34, v26

    #@229
    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Ch(JJJ)J

    #@22c
    move-result-wide v28

    #@22d
    add-long v24, v24, v28

    #@22f
    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->K:[J

    #@231
    aget-wide v28, v5, v12

    #@233
    add-long v24, v24, v28

    #@235
    move-object/from16 v0, p0

    #@237
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@239
    add-int/lit8 v20, v12, 0x1

    #@23b
    .end local v12    # "t":I
    .restart local v20    # "t":I
    aget-wide v28, v5, v12

    #@23d
    add-long v24, v24, v28

    #@23f
    add-long v14, v14, v24

    #@241
    .line 318
    add-long/2addr v6, v14

    #@242
    .line 319
    move-object/from16 v0, p0

    #@244
    move-wide/from16 v1, v16

    #@246
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Sum0(J)J

    #@249
    move-result-wide v24

    #@24a
    move-object/from16 v29, p0

    #@24c
    move-wide/from16 v30, v16

    #@24e
    move-wide/from16 v32, v18

    #@250
    move-wide/from16 v34, v22

    #@252
    invoke-direct/range {v29 .. v35}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->Maj(JJJ)J

    #@255
    move-result-wide v28

    #@256
    add-long v24, v24, v28

    #@258
    add-long v14, v14, v24

    #@25a
    .line 279
    add-int/lit8 v4, v4, 0x1

    #@25c
    goto/16 :goto_1

    #@25e
    .line 322
    :cond_1
    move-object/from16 v0, p0

    #@260
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@262
    move-wide/from16 v24, v0

    #@264
    add-long v24, v24, v14

    #@266
    move-wide/from16 v0, v24

    #@268
    move-object/from16 v2, p0

    #@26a
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@26c
    .line 323
    move-object/from16 v0, p0

    #@26e
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@270
    move-wide/from16 v24, v0

    #@272
    add-long v24, v24, v16

    #@274
    move-wide/from16 v0, v24

    #@276
    move-object/from16 v2, p0

    #@278
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@27a
    .line 324
    move-object/from16 v0, p0

    #@27c
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@27e
    move-wide/from16 v24, v0

    #@280
    add-long v24, v24, v18

    #@282
    move-wide/from16 v0, v24

    #@284
    move-object/from16 v2, p0

    #@286
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@288
    .line 325
    move-object/from16 v0, p0

    #@28a
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@28c
    move-wide/from16 v24, v0

    #@28e
    add-long v24, v24, v22

    #@290
    move-wide/from16 v0, v24

    #@292
    move-object/from16 v2, p0

    #@294
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@296
    .line 326
    move-object/from16 v0, p0

    #@298
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@29a
    move-wide/from16 v24, v0

    #@29c
    add-long v24, v24, v6

    #@29e
    move-wide/from16 v0, v24

    #@2a0
    move-object/from16 v2, p0

    #@2a2
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@2a4
    .line 327
    move-object/from16 v0, p0

    #@2a6
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@2a8
    move-wide/from16 v24, v0

    #@2aa
    add-long v24, v24, v8

    #@2ac
    move-wide/from16 v0, v24

    #@2ae
    move-object/from16 v2, p0

    #@2b0
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@2b2
    .line 328
    move-object/from16 v0, p0

    #@2b4
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@2b6
    move-wide/from16 v24, v0

    #@2b8
    add-long v24, v24, v10

    #@2ba
    move-wide/from16 v0, v24

    #@2bc
    move-object/from16 v2, p0

    #@2be
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@2c0
    .line 329
    move-object/from16 v0, p0

    #@2c2
    iget-wide v0, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@2c4
    move-wide/from16 v24, v0

    #@2c6
    add-long v24, v24, v26

    #@2c8
    move-wide/from16 v0, v24

    #@2ca
    move-object/from16 v2, p0

    #@2cc
    iput-wide v0, v2, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@2ce
    .line 334
    const/4 v5, 0x0

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    iput v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@2d3
    .line 335
    const/4 v4, 0x0

    #@2d4
    :goto_2
    const/16 v5, 0x10

    #@2d6
    if-ge v4, v5, :cond_2

    #@2d8
    .line 337
    move-object/from16 v0, p0

    #@2da
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@2dc
    const-wide/16 v24, 0x0

    #@2de
    aput-wide v24, v5, v4

    #@2e0
    .line 335
    add-int/lit8 v4, v4, 0x1

    #@2e2
    goto :goto_2

    #@2e3
    .line 254
    :cond_2
    return-void
.end method

.method protected processLength(JJ)V
    .locals 3
    .param p1, "lowW"    # J
    .param p3, "hiW"    # J

    #@0
    .prologue
    const/16 v1, 0xe

    #@2
    .line 245
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    .line 247
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    #@9
    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@b
    aput-wide p3, v0, v1

    #@d
    .line 251
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@f
    const/16 v1, 0xf

    #@11
    aput-wide p1, v0, v1

    #@13
    .line 243
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@4
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@7
    move-result-wide v2

    #@8
    aput-wide v2, v0, v1

    #@a
    .line 222
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@10
    const/16 v1, 0x10

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 224
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processBlock()V

    #@17
    .line 218
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 195
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@5
    .line 196
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@7
    .line 198
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@9
    .line 199
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 201
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@11
    aput-byte v2, v1, v0

    #@13
    .line 199
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 204
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@18
    .line 205
    const/4 v0, 0x0

    #@19
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@1b
    array-length v1, v1

    #@1c
    if-eq v0, v1, :cond_1

    #@1e
    .line 207
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@20
    aput-wide v4, v1, v0

    #@22
    .line 205
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_1

    #@25
    .line 193
    :cond_1
    return-void
.end method

.method protected restoreState([B)V
    .locals 4
    .param p1, "encodedState"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    const/16 v1, 0x8

    #@3
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@6
    move-result v1

    #@7
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@9
    .line 92
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@b
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@d
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10
    .line 93
    const/16 v1, 0xc

    #@12
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@18
    .line 94
    const/16 v1, 0x14

    #@1a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount2:J

    #@20
    .line 96
    const/16 v1, 0x1c

    #@22
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@25
    move-result-wide v2

    #@26
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    #@28
    .line 97
    const/16 v1, 0x24

    #@2a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@2d
    move-result-wide v2

    #@2e
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    #@30
    .line 98
    const/16 v1, 0x2c

    #@32
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@35
    move-result-wide v2

    #@36
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    #@38
    .line 99
    const/16 v1, 0x34

    #@3a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@3d
    move-result-wide v2

    #@3e
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    #@40
    .line 100
    const/16 v1, 0x3c

    #@42
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@45
    move-result-wide v2

    #@46
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    #@48
    .line 101
    const/16 v1, 0x44

    #@4a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@4d
    move-result-wide v2

    #@4e
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    #@50
    .line 102
    const/16 v1, 0x4c

    #@52
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@55
    move-result-wide v2

    #@56
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    #@58
    .line 103
    const/16 v1, 0x54

    #@5a
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@5d
    move-result-wide v2

    #@5e
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    #@60
    .line 105
    const/16 v1, 0x5c

    #@62
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@65
    move-result v1

    #@66
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@68
    .line 106
    const/4 v0, 0x0

    #@69
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->wOff:I

    #@6b
    if-ge v0, v1, :cond_0

    #@6d
    .line 108
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->W:[J

    #@6f
    mul-int/lit8 v2, v0, 0x8

    #@71
    add-int/lit8 v2, v2, 0x60

    #@73
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@76
    move-result-wide v2

    #@77
    aput-wide v2, v1, v0

    #@79
    .line 106
    add-int/lit8 v0, v0, 0x1

    #@7b
    goto :goto_0

    #@7c
    .line 89
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@3
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@5
    add-int/lit8 v2, v1, 0x1

    #@7
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@9
    aput-byte p1, v0, v1

    #@b
    .line 122
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@f
    array-length v1, v1

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 124
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@14
    invoke-virtual {p0, v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    #@17
    .line 125
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@19
    .line 128
    :cond_0
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@1b
    const-wide/16 v2, 0x1

    #@1d
    add-long/2addr v0, v2

    #@1e
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@20
    .line 118
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 139
    :goto_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBufOff:I

    #@2
    if-eqz v0, :cond_0

    #@4
    if-lez p3, :cond_0

    #@6
    .line 141
    aget-byte v0, p1, p2

    #@8
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    #@b
    .line 143
    add-int/lit8 p2, p2, 0x1

    #@d
    .line 144
    add-int/lit8 p3, p3, -0x1

    #@f
    goto :goto_0

    #@10
    .line 150
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@12
    array-length v0, v0

    #@13
    if-le p3, v0, :cond_1

    #@15
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->processWord([BI)V

    #@18
    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@1a
    array-length v0, v0

    #@1b
    add-int/2addr p2, v0

    #@1c
    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@1e
    array-length v0, v0

    #@1f
    sub-int/2addr p3, v0

    #@20
    .line 156
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@22
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->xBuf:[B

    #@24
    array-length v2, v2

    #@25
    int-to-long v2, v2

    #@26
    add-long/2addr v0, v2

    #@27
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->byteCount1:J

    #@29
    goto :goto_1

    #@2a
    .line 162
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    #@2c
    .line 164
    aget-byte v0, p1, p2

    #@2e
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->update(B)V

    #@31
    .line 166
    add-int/lit8 p2, p2, 0x1

    #@33
    .line 167
    add-int/lit8 p3, p3, -0x1

    #@35
    goto :goto_2

    #@36
    .line 134
    :cond_2
    return-void
.end method
