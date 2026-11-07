.class public Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA256Digest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/SavableDigest;


# static fields
.field static final blacklist K:[I


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist H5:I

.field private blacklist H6:I

.field private blacklist H7:I

.field private blacklist H8:I

.field private blacklist X:[I

.field protected final blacklist purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

.field private blacklist xOff:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x40

    .line 354
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void

    :array_a
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 81
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 3

    .line 92
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x40

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5

    .line 123
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x40

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 125
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const/16 v0, 0x10

    .line 127
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v0, 0x14

    .line 128
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v0, 0x18

    .line 129
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v0, 0x1c

    .line 130
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v0, 0x20

    .line 131
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v0, 0x24

    .line 132
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v0, 0x28

    .line 133
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v0, 0x2c

    .line 134
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v0, 0x30

    .line 136
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/4 v0, 0x0

    .line 137
    :goto_56
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v0, v1, :cond_69

    .line 139
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_69
    return-void
.end method

.method private static blacklist Ch(III)I
    .registers 3

    .line 0
    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method private static blacklist Maj(III)I
    .registers 4

    .line 0
    and-int v0, p0, p1

    xor-int/2addr p0, p1

    and-int/2addr p0, p2

    or-int/2addr p0, v0

    return p0
.end method

.method private static blacklist Sum0(I)I
    .registers 4

    .line 0
    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static blacklist Sum1(I)I
    .registers 4

    .line 0
    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static blacklist Theta0(I)I
    .registers 4

    .line 0
    ushr-int/lit8 v0, p0, 0x7

    shl-int/lit8 v1, p0, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x12

    shl-int/lit8 v2, p0, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x3

    xor-int/2addr p0, v0

    return p0
.end method

.method private static blacklist Theta1(I)I
    .registers 4

    .line 0
    ushr-int/lit8 v0, p0, 0x11

    shl-int/lit8 v1, p0, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x13

    shl-int/lit8 v2, p0, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0xa

    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 6

    .line 101
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 103
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 104
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 105
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 106
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 107
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 108
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 109
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 110
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 112
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    return-void
.end method

.method public static blacklist newInstance()Lcom/android/org/bouncycastle/crypto/SavableDigest;
    .registers 1

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/org/bouncycastle/crypto/SavableDigest;
    .registers 2

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/Digest;)Lcom/android/org/bouncycastle/crypto/SavableDigest;
    .registers 4

    .line 51
    instance-of v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    if-eqz v0, :cond_c

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    check-cast p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0

    .line 56
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver digest not available for input type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    :cond_23
    const-string p0, "null"

    :goto_25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newInstance([B)Lcom/android/org/bouncycastle/crypto/SavableDigest;
    .registers 2

    .line 61
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 367
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0
.end method

.method protected blacklist cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3

    const/16 v0, 0x100

    .line 405
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/org/bouncycastle/crypto/Digest;ILcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    return-object p0
.end method

.method public blacklist doFinal([BI)I
    .registers 5

    .line 180
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    .line 182
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 183
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 184
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 185
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 186
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 187
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 188
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 189
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 p2, p2, 0x1c

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 191
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    const/16 p0, 0x20

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 146
    const-string p0, "SHA-256"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x20

    return p0
.end method

.method public blacklist getEncodedState()[B
    .registers 6

    .line 379
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x35

    new-array v1, v1, [B

    .line 381
    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 383
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v3, 0x10

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 384
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v3, 0x14

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 385
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v3, 0x18

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 386
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v3, 0x1c

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 387
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v3, 0x20

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 388
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v3, 0x24

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 389
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v3, 0x28

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 390
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v3, 0x2c

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 391
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v3, 0x30

    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v2, 0x0

    .line 393
    :goto_4b
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v2, v3, :cond_5d

    .line 395
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v3, v3, v2

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x34

    invoke-static {v3, v1, v4}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_5d
    add-int/lit8 v0, v0, 0x34

    .line 398
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    return-object v1
.end method

.method protected blacklist processBlock()V
    .registers 19

    move-object/from16 v0, p0

    const/16 v2, 0x10

    :goto_4
    const/16 v3, 0x3f

    if-gt v2, v3, :cond_2e

    .line 231
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v2, -0x2

    aget v4, v3, v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v6, v2, -0x7

    aget v6, v5, v6

    add-int/2addr v4, v6

    add-int/lit8 v6, v2, -0xf

    aget v5, v5, v6

    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v6, v2, -0x10

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 237
    :cond_2e
    iget v2, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 238
    iget v3, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 239
    iget v4, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 240
    iget v5, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 241
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 242
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 243
    iget v8, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 244
    iget v9, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_41
    const/16 v13, 0x8

    if-ge v11, v13, :cond_148

    .line 250
    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v14

    invoke-static {v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v15

    add-int/2addr v14, v15

    sget-object v15, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v16, v15, v12

    add-int v14, v14, v16

    move/from16 v16, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v13, v13, v12

    add-int/2addr v14, v13

    add-int/2addr v9, v14

    add-int/2addr v5, v9

    .line 252
    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v13

    invoke-static {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v9, v13

    add-int/lit8 v13, v12, 0x1

    .line 256
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v14

    invoke-static {v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v17

    add-int v14, v14, v17

    aget v17, v15, v13

    add-int v14, v14, v17

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v1, v13

    add-int/2addr v14, v1

    add-int/2addr v8, v14

    add-int/2addr v4, v8

    .line 258
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v9, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v8, v1

    add-int/lit8 v1, v12, 0x2

    .line 262
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v13

    invoke-static {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v7, v13

    add-int/2addr v3, v7

    .line 264
    invoke-static {v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v8, v9, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v7, v1

    add-int/lit8 v1, v12, 0x3

    .line 268
    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v13

    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v6, v13

    add-int/2addr v2, v6

    .line 270
    invoke-static {v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v6, v1

    add-int/lit8 v1, v12, 0x4

    .line 274
    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v13

    invoke-static {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v5, v13

    add-int/2addr v9, v5

    .line 276
    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v5, v1

    add-int/lit8 v1, v12, 0x5

    .line 280
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v13

    invoke-static {v9, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v4, v13

    add-int/2addr v8, v4

    .line 282
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v4, v1

    add-int/lit8 v1, v12, 0x6

    .line 286
    invoke-static {v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v13

    invoke-static {v8, v9, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v3, v13

    add-int/2addr v7, v3

    .line 288
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v3, v1

    add-int/lit8 v1, v12, 0x7

    .line 292
    invoke-static {v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v13

    invoke-static {v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v2, v13

    add-int/2addr v6, v2

    .line 294
    invoke-static {v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v1

    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v2, v1

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_41

    .line 298
    :cond_148
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 299
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 300
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 301
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 302
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 303
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 304
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 305
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 310
    iput v10, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    move v2, v10

    const/16 v1, 0x10

    :goto_175
    if-ge v2, v1, :cond_17e

    .line 313
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v10, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_175

    :cond_17e
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7

    .line 169
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 171
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 174
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    .line 175
    aput p1, p0, v0

    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    aput p1, v0, v1

    .line 160
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_17

    .line 162
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_17
    return-void
.end method

.method public blacklist reset()V
    .registers 5

    .line 201
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x6a09e667

    .line 208
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const v0, -0x4498517b

    .line 209
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const v0, 0x3c6ef372

    .line 210
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const v0, -0x5ab00ac6

    .line 211
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const v0, 0x510e527f

    .line 212
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const v0, -0x64fa9774

    .line 213
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const v0, 0x1f83d9ab

    .line 214
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const v0, 0x5be0cd19

    .line 215
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    move v1, v0

    .line 218
    :goto_2f
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_39

    .line 220
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_39
    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 372
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    .line 374
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-void
.end method
