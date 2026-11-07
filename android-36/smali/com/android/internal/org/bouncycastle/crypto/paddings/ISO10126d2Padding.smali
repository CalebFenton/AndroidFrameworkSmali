.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;
.super Ljava/lang/Object;
.source "ISO10126d2Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


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
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 47
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 49
    .local v0, "code":B
    :goto_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_14

    .line 51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 52
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 55
    :cond_14
    aput-byte v0, p1, p2

    .line 57
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "ISO10126-2"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 3
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO10126d2Padding;->random:Ljava/security/SecureRandom;

    .line 27
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 7
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 66
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 67
    .local v0, "count":I
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 69
    .local v1, "position":I
    add-int/lit8 v2, v0, -0x1

    or-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    .line 70
    .local v2, "failed":I
    if-nez v2, :cond_11

    .line 75
    return v0

    .line 72
    :cond_11
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "pad block corrupted"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
