.class public Lcom/android/internal/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isParseable(Ljava/lang/String;IIIIZII)Z
    .registers 15
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .param p4, "maxLength"    # I
    .param p5, "allowLeadingZero"    # Z
    .param p6, "minValue"    # I
    .param p7, "maxValue"    # I

    .line 185
    sub-int v0, p2, p1

    .line 186
    .local v0, "length":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-le v0, p4, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    or-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 188
    return v1

    .line 191
    :cond_12
    if-le v0, v2, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    xor-int/lit8 v4, p5, 0x1

    and-int/2addr v3, v4

    .line 192
    .local v3, "checkLeadingZero":Z
    if-eqz v3, :cond_27

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gtz v4, :cond_27

    .line 194
    return v1

    .line 197
    :cond_27
    const/4 v4, 0x0

    .line 198
    .local v4, "value":I
    :goto_28
    if-ge p1, p2, :cond_3b

    .line 200
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "pos":I
    .local v5, "pos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 201
    .local p1, "c":C
    invoke-static {p1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 202
    .local v6, "d":I
    if-gez v6, :cond_37

    .line 204
    return v1

    .line 207
    :cond_37
    mul-int/2addr v4, p3

    .line 208
    add-int/2addr v4, v6

    .line 209
    .end local v6    # "d":I
    .end local p1    # "c":C
    move p1, v5

    goto :goto_28

    .line 211
    .end local v5    # "pos":I
    .local p1, "pos":I
    :cond_3b
    if-lt v4, p6, :cond_3f

    move v5, v2

    goto :goto_40

    :cond_3f
    move v5, v1

    :goto_40
    if-gt v4, p7, :cond_43

    move v1, v2

    :cond_43
    and-int/2addr v1, v5

    return v1
.end method

.method private static blacklist isParseableIPv4Mask(Ljava/lang/String;)Z
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

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

    .end local p0    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static blacklist isParseableIPv4Octet(Ljava/lang/String;II)Z
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "end"    # I

    .line 169
    const/4 v6, 0x0

    const/16 v7, 0xff

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "pos":I
    .end local p2    # "end":I
    .local v0, "s":Ljava/lang/String;
    .local v1, "pos":I
    .local v2, "end":I
    invoke-static/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static blacklist isParseableIPv6Mask(Ljava/lang/String;)Z
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

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

    .end local p0    # "s":Ljava/lang/String;
    .local v0, "s":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method private static blacklist isParseableIPv6Segment(Ljava/lang/String;II)Z
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "end"    # I

    .line 179
    const/4 v6, 0x0

    const v7, 0xffff

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "pos":I
    .end local p2    # "end":I
    .local v0, "s":Ljava/lang/String;
    .local v1, "pos":I
    .local v2, "end":I
    invoke-static/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result p0

    return p0
.end method

.method public static blacklist isValid(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isValidIPv4(Ljava/lang/String;)Z
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 44
    .local v0, "length":I
    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_29

    const/16 v1, 0xf

    if-le v0, v1, :cond_d

    goto :goto_29

    .line 49
    :cond_d
    const/4 v1, 0x0

    .line 50
    .local v1, "pos":I
    const/4 v3, 0x0

    .local v3, "octetIndex":I
    :goto_f
    const/4 v4, 0x3

    if-ge v3, v4, :cond_24

    .line 52
    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 54
    .local v4, "end":I
    invoke-static {p0, v1, v4}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 56
    return v2

    .line 59
    :cond_1f
    add-int/lit8 v1, v4, 0x1

    .line 50
    .end local v4    # "end":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 62
    .end local v3    # "octetIndex":I
    :cond_24
    invoke-static {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v2

    return v2

    .line 46
    .end local v1    # "pos":I
    :cond_29
    :goto_29
    return v2
.end method

.method public static blacklist isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 67
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    .line 70
    return v1

    .line 73
    :cond_b
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "before":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "after":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseableIPv4Mask(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_27
    move v1, v2

    :cond_28
    return v1
.end method

.method public static blacklist isValidIPv6(Ljava/lang/String;)Z
    .registers 13
    .param p0, "address"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 90
    return v1

    .line 93
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .local v0, "firstChar":C
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_19

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-gez v3, :cond_19

    .line 96
    return v1

    .line 99
    :cond_19
    const/4 v3, 0x0

    .line 100
    .local v3, "segmentCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "temp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 103
    .local v5, "doubleColonFound":Z
    const/4 v6, 0x0

    .line 104
    .local v6, "pos":I
    :goto_2f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ge v6, v7, :cond_7c

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    move v10, v7

    .local v10, "end":I
    if-lt v7, v6, :cond_7c

    .line 106
    if-ne v3, v8, :cond_42

    .line 108
    return v1

    .line 111
    :cond_42
    if-eq v6, v10, :cond_6b

    .line 113
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v9

    if-ne v10, v11, :cond_63

    const/16 v11, 0x2e

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_63

    .line 118
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v8, :cond_5c

    .line 120
    return v1

    .line 122
    :cond_5c
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 124
    return v1

    .line 127
    :cond_63
    invoke-static {v4, v6, v10}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseableIPv6Segment(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 129
    return v1

    .line 131
    .end local v7    # "value":Ljava/lang/String;
    :cond_6a
    goto :goto_78

    .line 134
    :cond_6b
    if-eq v10, v9, :cond_77

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    if-eq v10, v7, :cond_77

    if-eqz v5, :cond_77

    .line 136
    return v1

    .line 138
    :cond_77
    const/4 v5, 0x1

    .line 141
    :goto_78
    add-int/lit8 v6, v10, 0x1

    .line 142
    add-int/2addr v3, v9

    goto :goto_2f

    .line 145
    .end local v10    # "end":I
    :cond_7c
    if-eq v3, v8, :cond_80

    if-eqz v5, :cond_81

    :cond_80
    move v1, v9

    :cond_81
    return v1
.end method

.method public static blacklist isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 150
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_b

    .line 153
    return v1

    .line 156
    :cond_b
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "before":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "after":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isParseableIPv6Mask(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_27
    move v1, v2

    :cond_28
    return v1
.end method

.method public static blacklist isValidWithNetMask(Ljava/lang/String;)Z
    .registers 2
    .param p0, "address"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
