.class public Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 4

    .line 45
    array-length p0, p1

    sub-int/2addr p0, p2

    const/16 v0, -0x80

    .line 47
    aput-byte v0, p1, p2

    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 50
    array-length v0, p1

    if-ge p2, v0, :cond_f

    const/4 v0, 0x0

    .line 52
    aput-byte v0, p1, p2

    goto :goto_6

    :cond_f
    return p0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 8

    .line 66
    array-length p0, p1

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    :goto_4
    add-int/2addr p0, v0

    if-ltz p0, :cond_1c

    .line 69
    aget-byte v3, p1, p0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v3, -0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/lit16 v3, v3, 0x80

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int v5, p0, v1

    and-int/2addr v3, v2

    and-int/2addr v3, v5

    xor-int/2addr v1, v3

    and-int/2addr v2, v4

    goto :goto_4

    :cond_1c
    if-ltz v1, :cond_21

    .line 79
    array-length p0, p1

    sub-int/2addr p0, v1

    return p0

    .line 77
    :cond_21
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "pad block corrupted"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
