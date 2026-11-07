.class public Lcom/android/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 6

    .line 54
    array-length p0, p1

    sub-int/2addr p0, p2

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-lez p2, :cond_12

    add-int/lit8 v2, p2, -0x1

    .line 59
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_10

    :goto_f
    move v0, v1

    :cond_10
    int-to-byte v0, v0

    goto :goto_1c

    .line 63
    :cond_12
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_10

    goto :goto_f

    .line 66
    :goto_1c
    array-length v1, p1

    if-ge p2, v1, :cond_24

    .line 68
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_24
    return p0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 8

    .line 81
    array-length p0, p1

    const/4 v0, -0x1

    add-int/2addr p0, v0

    .line 82
    aget-byte v1, p1, p0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    move v4, v0

    move v3, v2

    :goto_a
    add-int/2addr p0, v0

    if-ltz p0, :cond_18

    .line 85
    aget-byte v5, p1, p0

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v5, v1

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    goto :goto_a

    :cond_18
    return v3
.end method
