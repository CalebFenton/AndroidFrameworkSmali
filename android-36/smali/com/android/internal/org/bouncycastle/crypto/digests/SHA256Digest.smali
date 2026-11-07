.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA256Digest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x20

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

.field protected final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

.field private blacklist xOff:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 354
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

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
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 3
    .param p1, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 79
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 94
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "encodedState"    # [B

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 125
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 127
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 128
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 129
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 130
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 131
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 132
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 133
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 134
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 136
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_56
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v0, v1, :cond_69

    .line 139
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 141
    .end local v0    # "i":I
    :cond_69
    return-void
.end method

.method private static blacklist Ch(III)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .line 320
    and-int v0, p0, p1

    not-int v1, p0

    and-int/2addr v1, p2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist Maj(III)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .line 327
    and-int v0, p0, p1

    xor-int v1, p0, p1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static blacklist Sum0(I)I
    .registers 4
    .param p0, "x"    # I

    .line 332
    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 v2, p0, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist Sum1(I)I
    .registers 4
    .param p0, "x"    # I

    .line 337
    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 v2, p0, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist Theta0(I)I
    .registers 4
    .param p0, "x"    # I

    .line 342
    ushr-int/lit8 v0, p0, 0x7

    shl-int/lit8 v1, p0, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x12

    shl-int/lit8 v2, p0, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist Theta1(I)I
    .registers 4
    .param p0, "x"    # I

    .line 347
    ushr-int/lit8 v0, p0, 0x11

    shl-int/lit8 v1, p0, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x13

    shl-int/lit8 v2, p0, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    .line 101
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 103
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 104
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 105
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 106
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 107
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 108
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 109
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 110
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 112
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 114
    return-void
.end method

.method public static blacklist newInstance()Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;
    .registers 1

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;
    .registers 2
    .param p0, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/Digest;)Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;
    .registers 4
    .param p0, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 51
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    if-eqz v0, :cond_d

    .line 53
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0

    .line 56
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiver digest not available for input type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_26

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_26
    const-string v2, "null"

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newInstance([B)Lcom/android/internal/org/bouncycastle/crypto/SavableDigest;
    .registers 2
    .param p0, "encoded"    # [B

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    .line 367
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0
.end method

.method protected blacklist cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3

    .line 405
    const/16 v0, 0x100

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;ILcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->finish()V

    .line 182
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 183
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 184
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 185
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 186
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 187
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 188
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 189
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    .line 193
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, "SHA-256"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 151
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getEncodedState()[B
    .registers 5

    .line 379
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x34

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 381
    .local v0, "state":[B
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 383
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 384
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 385
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 386
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 387
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 388
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 389
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v2, 0x28

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 390
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v2, 0x2c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 391
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 393
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v1, v2, :cond_5f

    .line 395
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x34

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 398
    .end local v1    # "i":I
    :cond_5f
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 400
    return-object v0
.end method

.method protected blacklist processBlock()V
    .registers 13

    .line 229
    const/16 v0, 0x10

    .local v0, "t":I
    :goto_2
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_30

    .line 231
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v3, v0, -0x2

    aget v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x7

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0xf

    aget v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x10

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    .end local v0    # "t":I
    :cond_30
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 238
    .local v0, "a":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 239
    .local v1, "b":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 240
    .local v2, "c":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 241
    .local v3, "d":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 242
    .local v4, "e":I
    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 243
    .local v5, "f":I
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 244
    .local v6, "g":I
    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 246
    .local v7, "h":I
    const/4 v8, 0x0

    .line 247
    .local v8, "t":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_42
    const/16 v10, 0x8

    if-ge v9, v10, :cond_152

    .line 250
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 251
    add-int/2addr v3, v7

    .line 252
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 253
    add-int/lit8 v8, v8, 0x1

    .line 256
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 257
    add-int/2addr v2, v6

    .line 258
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v7, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 259
    add-int/lit8 v8, v8, 0x1

    .line 262
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 263
    add-int/2addr v1, v5

    .line 264
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v6, v7, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 265
    add-int/lit8 v8, v8, 0x1

    .line 268
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 269
    add-int/2addr v0, v4

    .line 270
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 271
    add-int/lit8 v8, v8, 0x1

    .line 274
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 275
    add-int/2addr v7, v3

    .line 276
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 277
    add-int/lit8 v8, v8, 0x1

    .line 280
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v7, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 281
    add-int/2addr v6, v2

    .line 282
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 283
    add-int/lit8 v8, v8, 0x1

    .line 286
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v6, v7, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 287
    add-int/2addr v5, v1

    .line 288
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 289
    add-int/lit8 v8, v8, 0x1

    .line 292
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 293
    add-int/2addr v4, v0

    .line 294
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 295
    add-int/lit8 v8, v8, 0x1

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_42

    .line 298
    .end local v9    # "i":I
    :cond_152
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 299
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 300
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 301
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v9, v3

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 302
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 303
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 304
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 305
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v9, v7

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 310
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 311
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_17e
    const/16 v11, 0x10

    if-ge v10, v11, :cond_189

    .line 313
    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v9, v11, v10

    .line 311
    add-int/lit8 v10, v10, 0x1

    goto :goto_17e

    .line 315
    .end local v10    # "i":I
    :cond_189
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7
    .param p1, "bitLength"    # J

    .line 169
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 174
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 176
    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 160
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 164
    :cond_17
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 201
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 208
    const v0, 0x6a09e667

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 209
    const v0, -0x4498517b

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 210
    const v0, 0x3c6ef372

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 211
    const v0, -0x5ab00ac6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 212
    const v0, 0x510e527f

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 213
    const v0, -0x64fa9774

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 214
    const v0, 0x1f83d9ab

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 215
    const v0, 0x5be0cd19

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_3b

    .line 220
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v0, v2, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 222
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 372
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    .line 374
    .local v0, "d":Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;)V

    .line 375
    return-void
.end method
