.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method static blacklist convertMidTerms([I)[I
    .registers 8

    const/4 v0, 0x3

    .line 57
    new-array v1, v0, [I

    .line 59
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 61
    aget p0, p0, v3

    aput p0, v1, v3

    return-object v1

    .line 65
    :cond_d
    array-length v2, p0

    if-ne v2, v0, :cond_51

    .line 70
    aget v0, p0, v3

    aget v2, p0, v4

    const/4 v5, 0x2

    if-ge v0, v2, :cond_2b

    aget v6, p0, v5

    if-ge v0, v6, :cond_2b

    .line 72
    aput v0, v1, v3

    if-ge v2, v6, :cond_24

    .line 75
    aput v2, v1, v4

    .line 76
    aput v6, v1, v5

    return-object v1

    .line 80
    :cond_24
    aput v6, v1, v4

    .line 81
    aget p0, p0, v4

    aput p0, v1, v5

    return-object v1

    .line 84
    :cond_2b
    aget v0, p0, v5

    if-ge v2, v0, :cond_3f

    .line 86
    aput v2, v1, v3

    .line 87
    aget p0, p0, v3

    if-ge p0, v0, :cond_3a

    .line 89
    aput p0, v1, v4

    .line 90
    aput v0, v1, v5

    return-object v1

    .line 94
    :cond_3a
    aput v0, v1, v4

    .line 95
    aput p0, v1, v5

    return-object v1

    .line 100
    :cond_3f
    aput v0, v1, v3

    .line 101
    aget v0, p0, v3

    if-ge v0, v2, :cond_4c

    .line 103
    aput v0, v1, v4

    .line 104
    aget p0, p0, v4

    aput p0, v1, v5

    return-object v1

    .line 108
    :cond_4c
    aput v2, v1, v4

    .line 109
    aput v0, v1, v5

    return-object v1

    .line 67
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Trinomials and pentanomials supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
