.class public abstract Lcom/android/org/bouncycastle/util/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# direct methods
.method public static blacklist xor(I[BI[BI[BI)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    add-int v1, p6, v0

    add-int v2, p2, v0

    .line 25
    aget-byte v2, p1, v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method public static blacklist xorTo(I[BI[BI)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_12

    add-int v1, p4, v0

    .line 41
    aget-byte v2, p3, v1

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static blacklist xorTo(I[B[B)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_e

    .line 33
    aget-byte v1, p2, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
