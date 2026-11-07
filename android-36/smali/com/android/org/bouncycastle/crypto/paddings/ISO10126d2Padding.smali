.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;
.super Ljava/lang/Object;
.source "ISO10126d2Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 5

    .line 47
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 49
    :goto_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_14

    .line 51
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 55
    :cond_14
    aput-byte v0, p1, p2

    return v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2

    .line 26
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public blacklist padCount([B)I
    .registers 3

    .line 66
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    .line 67
    array-length p1, p1

    sub-int/2addr p1, p0

    add-int/lit8 v0, p0, -0x1

    or-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1f

    if-nez p1, :cond_11

    return p0

    .line 72
    :cond_11
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
