.class public Lcom/android/org/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;
.source "PKCS7Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 4

    .line 44
    array-length p0, p1

    sub-int/2addr p0, p2

    int-to-byte p0, p0

    .line 46
    :goto_3
    array-length v0, p1

    if-ge p2, v0, :cond_b

    .line 48
    aput-byte p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_b
    return p0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 8

    .line 61
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 v0, p0, 0xff

    .line 63
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    or-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    .line 66
    :goto_f
    array-length v4, p1

    if-ge v3, v4, :cond_1f

    .line 68
    aget-byte v4, p1, v3

    xor-int/2addr v4, p0

    sub-int v5, v3, v1

    shr-int/lit8 v5, v5, 0x1f

    not-int v5, v5

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    if-nez v2, :cond_22

    return v0

    .line 72
    :cond_22
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
