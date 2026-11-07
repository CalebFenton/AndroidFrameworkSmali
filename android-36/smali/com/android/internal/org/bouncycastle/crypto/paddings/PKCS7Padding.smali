.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 44
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 46
    .local v0, "code":B
    :goto_3
    array-length v1, p1

    if-ge p2, v1, :cond_b

    .line 48
    aput-byte v0, p1, p2

    .line 49
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 52
    :cond_b
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "PKCS7"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 9
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 61
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    .line 62
    .local v0, "countAsByte":B
    and-int/lit16 v1, v0, 0xff

    .line 63
    .local v1, "count":I
    array-length v2, p1

    sub-int/2addr v2, v1

    .line 65
    .local v2, "position":I
    add-int/lit8 v3, v1, -0x1

    or-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1f

    .line 66
    .local v3, "failed":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    array-length v5, p1

    if-ge v4, v5, :cond_1f

    .line 68
    aget-byte v5, p1, v4

    xor-int/2addr v5, v0

    sub-int v6, v4, v2

    shr-int/lit8 v6, v6, 0x1f

    not-int v6, v6

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 70
    .end local v4    # "i":I
    :cond_1f
    if-nez v3, :cond_22

    .line 75
    return v1

    .line 72
    :cond_22
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "pad block corrupted"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
