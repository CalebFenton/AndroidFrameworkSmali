.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

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

    .line 46
    .local v0, "added":I
    :goto_2
    array-length v1, p1

    if-ge p2, v1, :cond_b

    .line 48
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 49
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 52
    :cond_b
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "ZeroByte"

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
    .registers 7
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, -0x1

    .line 62
    .local v1, "still00Mask":I
    array-length v2, p1

    .line 63
    .local v2, "i":I
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_14

    .line 65
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 66
    .local v3, "next":I
    xor-int/lit8 v4, v3, 0x0

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 67
    .local v4, "match00Mask":I
    and-int/2addr v1, v4

    .line 68
    sub-int/2addr v0, v1

    .line 69
    .end local v3    # "next":I
    .end local v4    # "match00Mask":I
    goto :goto_3

    .line 70
    :cond_14
    return v0
.end method
