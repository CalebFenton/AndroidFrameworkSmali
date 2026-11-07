.class public abstract Lcom/android/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method private static blacklist isParseable(Ljava/lang/String;IIIIZII)Z
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-le v0, p4, :cond_d

    move p4, v2

    goto :goto_e

    :cond_d
    move p4, v1

    :goto_e
    or-int/2addr p4, v3

    if-eqz p4, :cond_12

    return v1

    :cond_12
    if-le v0, v2, :cond_16

    move p4, v2

    goto :goto_17

    :cond_16
    move p4, v1

    :goto_17
    xor-int/2addr p5, v2

    and-int/2addr p4, p5

    if-eqz p4, :cond_26

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4, p3}, Ljava/lang/Character;->digit(CI)I

    move-result p4

    if-gtz p4, :cond_26

    return v1

    :cond_26
    move p4, v1

    :goto_27
    if-ge p1, p2, :cond_3a

    add-int/lit8 p5, p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 201
    invoke-static {p1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-gez p1, :cond_36

    return v1

    :cond_36
    mul-int/2addr p4, p3

    add-int/2addr p4, p1

    move p1, p5

    goto :goto_27

    :cond_3a
    if-lt p4, p6, :cond_3e

    move p0, v2

    goto :goto_3f

    :cond_3e
    move p0, v1

    :goto_3f
    if-gt p4, p7, :cond_42

    move v1, v2

    :cond_42
    and-int/2addr p0, v1

    return p0
.end method

.method private static blacklist isParseableIPv4Mask(Ljava/lang/String;)Z
    .registers 9

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static blacklist isParseableIPv4Octet(Ljava/lang/String;II)Z
    .registers 11

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 169
    invoke-static/range {v0 .. v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static blacklist isParseableIPv6Mask(Ljava/lang/String;)Z
    .registers 9

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static blacklist isParseableIPv6Segment(Ljava/lang/String;II)Z
    .registers 11

    const/4 v6, 0x0

    const v7, 0xffff

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 179
    invoke-static/range {v0 .. v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method public static blacklist isValidIPv4(Ljava/lang/String;)Z
    .registers 6

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_29

    const/16 v1, 0xf

    if-le v0, v1, :cond_d

    goto :goto_29

    :cond_d
    move v1, v2

    move v3, v1

    :goto_f
    const/4 v4, 0x3

    if-ge v1, v4, :cond_24

    const/16 v4, 0x2e

    .line 52
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 54
    invoke-static {p0, v3, v4}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 62
    :cond_24
    invoke-static {p0, v3, v0}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_29
    :goto_29
    return v2
.end method

.method public static blacklist isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 5

    .line 67
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    return v1

    .line 73
    :cond_b
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseableIPv4Mask(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_26
    return v2

    :cond_27
    return v1
.end method

.method public static blacklist isValidIPv6(Ljava/lang/String;)Z
    .registers 11

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 93
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_19

    const/16 v3, 0x10

    .line 94
    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_19

    return v1

    .line 100
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v0, v1

    move v3, v0

    move v4, v3

    .line 104
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v0, v5, :cond_78

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lt v5, v0, :cond_78

    if-ne v3, v6, :cond_3f

    return v1

    :cond_3f
    if-eq v0, v5, :cond_67

    .line 113
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne v5, v9, :cond_60

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_60

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_59

    return v1

    .line 122
    :cond_59
    invoke-static {v8}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    return v1

    .line 127
    :cond_60
    invoke-static {p0, v0, v5}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseableIPv6Segment(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_74

    return v1

    :cond_67
    if-eq v5, v7, :cond_73

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    if-eq v5, v0, :cond_73

    if-eqz v4, :cond_73

    return v1

    :cond_73
    move v4, v7

    :cond_74
    add-int/lit8 v0, v5, 0x1

    add-int/2addr v3, v7

    goto :goto_2d

    :cond_78
    if-eq v3, v6, :cond_7e

    if-eqz v4, :cond_7d

    goto :goto_7e

    :cond_7d
    return v1

    :cond_7e
    :goto_7e
    return v7
.end method

.method public static blacklist isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 5

    .line 150
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    return v1

    .line 156
    :cond_b
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isParseableIPv6Mask(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_26
    return v2

    :cond_27
    return v1
.end method
