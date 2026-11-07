.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


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

    .line 45
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 47
    .local v0, "added":I
    const/16 v1, -0x80

    aput-byte v1, p1, p2

    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 50
    :goto_8
    array-length v1, p1

    if-ge p2, v1, :cond_11

    .line 52
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 53
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 56
    :cond_11
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "ISO7816-4"

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

    .line 25
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 10
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 65
    const/4 v0, -0x1

    .local v0, "position":I
    const/4 v1, -0x1

    .line 66
    .local v1, "still00Mask":I
    array-length v2, p1

    .line 67
    .local v2, "i":I
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1f

    .line 69
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 70
    .local v3, "next":I
    xor-int/lit8 v4, v3, 0x0

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 71
    .local v4, "match00Mask":I
    xor-int/lit16 v5, v3, 0x80

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 72
    .local v5, "match80Mask":I
    xor-int v6, v2, v0

    and-int v7, v1, v5

    and-int/2addr v6, v7

    xor-int/2addr v0, v6

    .line 73
    and-int/2addr v1, v4

    .line 74
    .end local v3    # "next":I
    .end local v4    # "match00Mask":I
    .end local v5    # "match80Mask":I
    goto :goto_3

    .line 75
    :cond_1f
    if-ltz v0, :cond_24

    .line 79
    array-length v3, p1

    sub-int/2addr v3, v0

    return v3

    .line 77
    :cond_24
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "pad block corrupted"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
