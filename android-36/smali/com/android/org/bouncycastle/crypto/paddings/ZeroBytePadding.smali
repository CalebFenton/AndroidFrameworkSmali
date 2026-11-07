.class public Lcom/android/org/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

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

    .line 46
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_b

    const/4 v0, 0x0

    .line 48
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_b
    return p0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 6

    .line 62
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    :goto_4
    add-int/2addr p0, v1

    if-ltz p0, :cond_12

    .line 65
    aget-byte v3, p1, p0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    and-int/2addr v2, v3

    sub-int/2addr v0, v2

    goto :goto_4

    :cond_12
    return v0
.end method
