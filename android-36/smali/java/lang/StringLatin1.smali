.class final Ljava/lang/StringLatin1;
.super Ljava/lang/Object;
.source "StringLatin1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringLatin1$LinesSpliterator;,
        Ljava/lang/StringLatin1$CharsSpliterator;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canEncode(I)Z
    .registers 2
    .param p0, "cp"    # I

    .line 51
    ushr-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist charAt([BI)C
    .registers 3
    .param p0, "value"    # [B
    .param p1, "index"    # I

    .line 44
    if-ltz p1, :cond_b

    array-length v0, p0

    if-ge p1, v0, :cond_b

    .line 47
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    return v0

    .line 45
    :cond_b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static blacklist codePointAt([BII)I
    .registers 4
    .param p0, "value"    # [B
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 59
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static blacklist codePointBefore([BI)I
    .registers 3
    .param p0, "value"    # [B
    .param p1, "index"    # I

    .line 63
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static blacklist codePointCount([BII)I
    .registers 4
    .param p0, "value"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 67
    sub-int v0, p2, p1

    return v0
.end method

.method public static blacklist compareTo([B[B)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 105
    array-length v0, p0

    .line 106
    .local v0, "len1":I
    array-length v1, p1

    .line 107
    .local v1, "len2":I
    invoke-static {p0, p1, v0, v1}, Ljava/lang/StringLatin1;->compareTo([B[BII)I

    move-result v2

    return v2
.end method

.method public static blacklist compareTo([B[BII)I
    .registers 8
    .param p0, "value"    # [B
    .param p1, "other"    # [B
    .param p2, "len1"    # I
    .param p3, "len2"    # I

    .line 111
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 112
    .local v0, "lim":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 113
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_17

    .line 114
    invoke-static {p0, v1}, Ljava/lang/StringLatin1;->getChar([BI)C

    move-result v2

    invoke-static {p1, v1}, Ljava/lang/StringLatin1;->getChar([BI)C

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 112
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 117
    .end local v1    # "k":I
    :cond_1a
    sub-int v1, p2, p3

    return v1
.end method

.method public static blacklist compareToCI([B[B)I
    .registers 9
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 150
    array-length v0, p0

    .line 151
    .local v0, "len1":I
    array-length v1, p1

    .line 152
    .local v1, "len2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 153
    .local v2, "lim":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_7
    if-ge v3, v2, :cond_31

    .line 154
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_2e

    .line 158
    invoke-static {p0, v3}, Ljava/lang/StringLatin1;->getChar([BI)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 159
    .local v4, "c1":C
    invoke-static {p1, v3}, Ljava/lang/StringLatin1;->getChar([BI)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 160
    .local v5, "c2":C
    if-eq v4, v5, :cond_2e

    .line 161
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 162
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 163
    if-eq v4, v5, :cond_2e

    .line 164
    sub-int v6, v4, v5

    return v6

    .line 153
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 169
    .end local v3    # "k":I
    :cond_31
    sub-int v3, v0, v1

    return v3
.end method

.method public static blacklist compareToCI_UTF16([B[B)I
    .registers 9
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 173
    invoke-static {p0}, Ljava/lang/StringLatin1;->length([B)I

    move-result v0

    .line 174
    .local v0, "len1":I
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v1

    .line 175
    .local v1, "len2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 176
    .local v2, "lim":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_d
    if-ge v3, v2, :cond_33

    .line 177
    invoke-static {p0, v3}, Ljava/lang/StringLatin1;->getChar([BI)C

    move-result v4

    .line 178
    .local v4, "c1":C
    invoke-static {p1, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v5

    .line 179
    .local v5, "c2":C
    if-eq v4, v5, :cond_30

    .line 180
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 181
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 182
    if-eq v4, v5, :cond_30

    .line 183
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 184
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 185
    if-eq v4, v5, :cond_30

    .line 186
    sub-int v6, v4, v5

    return v6

    .line 176
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 191
    .end local v3    # "k":I
    :cond_33
    sub-int v3, v0, v1

    return v3
.end method

.method public static blacklist compareToUTF16([B[B)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 122
    invoke-static {p0}, Ljava/lang/StringLatin1;->length([B)I

    move-result v0

    .line 123
    .local v0, "len1":I
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v1

    .line 124
    .local v1, "len2":I
    invoke-static {p0, p1, v0, v1}, Ljava/lang/StringLatin1;->compareToUTF16Values([B[BII)I

    move-result v2

    return v2
.end method

.method public static blacklist compareToUTF16([B[BII)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "other"    # [B
    .param p2, "len1"    # I
    .param p3, "len2"    # I

    .line 131
    invoke-static {p0}, Ljava/lang/StringLatin1;->length([B)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 132
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 134
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringLatin1;->compareToUTF16Values([B[BII)I

    move-result v0

    return v0
.end method

.method private static blacklist compareToUTF16Values([B[BII)I
    .registers 9
    .param p0, "value"    # [B
    .param p1, "other"    # [B
    .param p2, "len1"    # I
    .param p3, "len2"    # I

    .line 138
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .local v0, "lim":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 140
    invoke-static {p0, v1}, Ljava/lang/StringLatin1;->getChar([BI)C

    move-result v2

    .line 141
    .local v2, "c1":C
    invoke-static {p1, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    .line 142
    .local v3, "c2":C
    if-eq v2, v3, :cond_14

    .line 143
    sub-int v4, v2, v3

    return v4

    .line 139
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 146
    .end local v1    # "k":I
    :cond_17
    sub-int v1, p2, p3

    return v1
.end method

.method public static blacklist equals([B[B)Z
    .registers 6
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 92
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 94
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_10

    .line 95
    return v2

    .line 93
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 98
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_15
    return v2
.end method

.method public static blacklist fillNull([BII)V
    .registers 4
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 774
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 775
    return-void
.end method

.method public static blacklist getBytes([BII[BI)V
    .registers 6
    .param p0, "value"    # [B
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [B
    .param p4, "dstBegin"    # I

    .line 87
    sub-int v0, p2, p1

    invoke-static {p0, p1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    return-void
.end method

.method public static blacklist getChar([BI)C
    .registers 3
    .param p0, "val"    # [B
    .param p1, "index"    # I

    .line 747
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method public static blacklist getChars([BII[CI)V
    .registers 6
    .param p0, "value"    # [B
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 83
    sub-int v0, p2, p1

    invoke-static {p0, p1, p3, p4, v0}, Ljava/lang/StringLatin1;->inflate([BI[CII)V

    .line 84
    return-void
.end method

.method public static blacklist hashCode([B)I
    .registers 7
    .param p0, "value"    # [B

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "h":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_10

    aget-byte v3, p0, v2

    .line 197
    .local v3, "v":B
    mul-int/lit8 v4, v0, 0x1f

    and-int/lit16 v5, v3, 0xff

    add-int v0, v4, v5

    .line 196
    .end local v3    # "v":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 199
    :cond_10
    return v0
.end method

.method public static blacklist indexOf([BII)I
    .registers 8
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 203
    invoke-static {p1}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 204
    return v1

    .line 206
    :cond_8
    array-length v0, p0

    .line 207
    .local v0, "max":I
    if-gez p2, :cond_d

    .line 208
    const/4 p2, 0x0

    goto :goto_10

    .line 209
    :cond_d
    if-lt p2, v0, :cond_10

    .line 211
    return v1

    .line 213
    :cond_10
    :goto_10
    int-to-byte v2, p1

    .line 214
    .local v2, "c":B
    move v3, p2

    .local v3, "i":I
    :goto_12
    if-ge v3, v0, :cond_1c

    .line 215
    aget-byte v4, p0, v3

    if-ne v4, v2, :cond_19

    .line 216
    return v3

    .line 214
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 219
    .end local v3    # "i":I
    :cond_1c
    return v1
.end method

.method public static blacklist indexOf([BILjava/lang/String;II)I
    .registers 13
    .param p0, "value"    # [B
    .param p1, "valueCount"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "strCount"    # I
    .param p4, "fromIndex"    # I

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    .line 242
    .local v0, "first":B
    sub-int v1, p1, p3

    .line 243
    .local v1, "max":I
    move v2, p4

    .local v2, "i":I
    :goto_9
    if-gt v2, v1, :cond_37

    .line 245
    aget-byte v3, p0, v2

    if-eq v3, v0, :cond_18

    .line 246
    :goto_f
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v1, :cond_18

    aget-byte v3, p0, v2

    if-eq v3, v0, :cond_18

    goto :goto_f

    .line 249
    :cond_18
    if-gt v2, v1, :cond_34

    .line 250
    add-int/lit8 v3, v2, 0x1

    .line 251
    .local v3, "j":I
    add-int v4, v3, p3

    add-int/lit8 v4, v4, -0x1

    .line 254
    .local v4, "end":I
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_21
    if-ge v3, v4, :cond_31

    aget-byte v6, p0, v3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    if-ne v6, v7, :cond_31

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 255
    .end local v5    # "k":I
    :cond_31
    if-ne v3, v4, :cond_34

    .line 257
    return v2

    .line 243
    .end local v3    # "j":I
    .end local v4    # "end":I
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 261
    .end local v2    # "i":I
    :cond_37
    const/4 v2, -0x1

    return v2
.end method

.method public static blacklist indexOfNonWhitespace([B)I
    .registers 5
    .param p0, "value"    # [B

    .line 597
    array-length v0, p0

    .line 598
    .local v0, "length":I
    const/4 v1, 0x0

    .line 599
    .local v1, "left":I
    :goto_2
    if-ge v1, v0, :cond_1c

    .line 600
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 601
    .local v2, "ch":C
    const/16 v3, 0x20

    if-eq v2, v3, :cond_18

    const/16 v3, 0x9

    if-eq v2, v3, :cond_18

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_18

    .line 602
    goto :goto_1c

    .line 604
    :cond_18
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 605
    goto :goto_2

    .line 606
    :cond_1c
    :goto_1c
    return v1
.end method

.method public static blacklist indexOfUTF16([BILjava/lang/String;II)I
    .registers 13
    .param p0, "value"    # [B
    .param p1, "valueCount"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "strCount"    # I
    .param p4, "fromIndex"    # I

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 268
    .local v0, "first":C
    sub-int v1, p1, p3

    .line 269
    .local v1, "max":I
    move v2, p4

    .local v2, "i":I
    :goto_8
    if-gt v2, v1, :cond_3e

    .line 271
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eq v0, v3, :cond_1d

    .line 272
    :goto_11
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v1, :cond_1d

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    if-eq v0, v3, :cond_1d

    goto :goto_11

    .line 275
    :cond_1d
    if-gt v2, v1, :cond_3b

    .line 276
    add-int/lit8 v3, v2, 0x1

    .line 277
    .local v3, "j":I
    add-int v4, v3, p3

    add-int/lit8 v4, v4, -0x1

    .line 278
    .local v4, "end":I
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_26
    if-ge v3, v4, :cond_38

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_38

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 279
    .end local v5    # "k":I
    :cond_38
    if-ne v3, v4, :cond_3b

    .line 281
    return v2

    .line 269
    .end local v3    # "j":I
    .end local v4    # "end":I
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 285
    .end local v2    # "i":I
    :cond_3e
    const/4 v2, -0x1

    return v2
.end method

.method public static blacklist inflate([BI[BII)V
    .registers 5
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I
    .param p4, "len"    # I

    .line 788
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->inflate([BI[BII)V

    .line 789
    return-void
.end method

.method public static blacklist inflate([BI[CII)V
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOff"    # I
    .param p4, "len"    # I

    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_13

    .line 781
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "dstOff":I
    .local v1, "dstOff":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "srcOff":I
    .local v2, "srcOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    aput-char p1, p2, p3

    .line 780
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    move p1, v2

    goto :goto_1

    .line 783
    .end local v0    # "i":I
    .end local v1    # "dstOff":I
    .end local v2    # "srcOff":I
    .restart local p1    # "srcOff":I
    .restart local p3    # "dstOff":I
    :cond_13
    return-void
.end method

.method public static blacklist inflate([BII)[B
    .registers 5
    .param p0, "value"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 77
    invoke-static {p2}, Ljava/lang/StringUTF16;->newBytesFor(I)[B

    move-result-object v0

    .line 78
    .local v0, "ret":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/StringLatin1;->inflate([BI[BII)V

    .line 79
    return-object v0
.end method

.method public static blacklist lastIndexOf([BII)I
    .registers 7
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 332
    invoke-static {p1}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 333
    return v1

    .line 335
    :cond_8
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 336
    .local v0, "off":I
    :goto_f
    if-ltz v0, :cond_1a

    .line 337
    aget-byte v2, p0, v0

    int-to-byte v3, p1

    if-ne v2, v3, :cond_17

    .line 338
    return v0

    .line 336
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 341
    :cond_1a
    return v1
.end method

.method public static blacklist lastIndexOf([BILjava/lang/String;II)I
    .registers 14
    .param p0, "src"    # [B
    .param p1, "srcCount"    # I
    .param p2, "tgt"    # Ljava/lang/String;
    .param p3, "tgtCount"    # I
    .param p4, "fromIndex"    # I

    .line 300
    add-int/lit8 v0, p3, -0x1

    .line 301
    .local v0, "min":I
    add-int v1, v0, p4

    .line 302
    .local v1, "i":I
    add-int/lit8 v2, p3, -0x1

    .line 304
    .local v2, "strLastIndex":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 310
    .local v3, "strLastChar":C
    :goto_a
    if-lt v1, v0, :cond_16

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-eq v4, v3, :cond_16

    .line 311
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 313
    :cond_16
    if-ge v1, v0, :cond_1a

    .line 314
    const/4 v4, -0x1

    return v4

    .line 316
    :cond_1a
    add-int/lit8 v4, v1, -0x1

    .line 317
    .local v4, "j":I
    sub-int v5, v4, v2

    .line 318
    .local v5, "start":I
    add-int/lit8 v6, v2, -0x1

    .line 319
    .local v6, "k":I
    :goto_20
    if-le v4, v5, :cond_37

    .line 322
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "j":I
    .local v7, "j":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    add-int/lit8 v8, v6, -0x1

    .end local v6    # "k":I
    .local v8, "k":I
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_34

    .line 323
    add-int/lit8 v1, v1, -0x1

    .line 324
    goto :goto_a

    .line 322
    :cond_34
    move v4, v7

    move v6, v8

    goto :goto_20

    .line 327
    .end local v7    # "j":I
    .end local v8    # "k":I
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    :cond_37
    add-int/lit8 v7, v5, 0x1

    return v7
.end method

.method public static blacklist lastIndexOfNonWhitespace([B)I
    .registers 5
    .param p0, "value"    # [B

    .line 610
    array-length v0, p0

    .line 611
    .local v0, "length":I
    move v1, v0

    .line 612
    .local v1, "right":I
    :goto_2
    if-lez v1, :cond_1e

    .line 613
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 614
    .local v2, "ch":C
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1a

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 615
    goto :goto_1e

    .line 617
    :cond_1a
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, -0x1

    .line 618
    goto :goto_2

    .line 619
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static blacklist lastIndexOfUTF16([BILjava/lang/String;II)I
    .registers 6
    .param p0, "src"    # [B
    .param p1, "srcCount"    # I
    .param p2, "tgt"    # Ljava/lang/String;
    .param p3, "tgtCount"    # I
    .param p4, "fromIndex"    # I

    .line 292
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/StringLatin1;->lastIndexOf([BILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist length([B)I
    .registers 2
    .param p0, "value"    # [B

    .line 55
    array-length v0, p0

    return v0
.end method

.method static blacklist lines([B)Ljava/util/stream/Stream;
    .registers 3
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Ljava/lang/StringLatin1$LinesSpliterator;

    invoke-direct {v0, p0}, Ljava/lang/StringLatin1$LinesSpliterator;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newString([BII)Ljava/lang/String;
    .registers 5
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 770
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method

.method public static blacklist putChar([BII)V
    .registers 4
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "c"    # I

    .line 743
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 744
    return-void
.end method

.method public static blacklist strip([B)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # [B

    .line 623
    invoke-static {p0}, Ljava/lang/StringLatin1;->indexOfNonWhitespace([B)I

    move-result v0

    .line 624
    .local v0, "left":I
    array-length v1, p0

    if-ne v0, v1, :cond_a

    .line 625
    const-string v1, ""

    return-object v1

    .line 627
    :cond_a
    invoke-static {p0}, Ljava/lang/StringLatin1;->lastIndexOfNonWhitespace([B)I

    move-result v1

    .line 628
    .local v1, "right":I
    if-gtz v0, :cond_16

    array-length v2, p0

    if-ge v1, v2, :cond_14

    goto :goto_16

    :cond_14
    const/4 v2, 0x0

    goto :goto_1c

    :cond_16
    :goto_16
    sub-int v2, v1, v0

    invoke-static {p0, v0, v2}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    return-object v2
.end method

.method public static blacklist stripLeading([B)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # [B

    .line 632
    invoke-static {p0}, Ljava/lang/StringLatin1;->indexOfNonWhitespace([B)I

    move-result v0

    .line 633
    .local v0, "left":I
    array-length v1, p0

    if-ne v0, v1, :cond_a

    .line 634
    const-string v1, ""

    return-object v1

    .line 636
    :cond_a
    if-eqz v0, :cond_13

    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return-object v1
.end method

.method public static blacklist stripTrailing([B)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # [B

    .line 640
    invoke-static {p0}, Ljava/lang/StringLatin1;->lastIndexOfNonWhitespace([B)I

    move-result v0

    .line 641
    .local v0, "right":I
    if-nez v0, :cond_9

    .line 642
    const-string v1, ""

    return-object v1

    .line 644
    :cond_9
    array-length v1, p0

    if-eq v0, v1, :cond_12

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method public static blacklist toBytes(C)[B
    .registers 4
    .param p0, "c"    # C

    .line 763
    int-to-byte v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public static blacklist toBytes([III)[B
    .registers 7
    .param p0, "val"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 751
    new-array v0, p2, [B

    .line 752
    .local v0, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p2, :cond_18

    .line 753
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "off":I
    .local v2, "off":I
    aget p1, p0, p1

    .line 754
    .local p1, "cp":I
    invoke-static {p1}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 755
    const/4 v3, 0x0

    return-object v3

    .line 757
    :cond_11
    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 752
    .end local p1    # "cp":I
    add-int/lit8 v1, v1, 0x1

    move p1, v2

    goto :goto_3

    .line 759
    .end local v1    # "i":I
    .end local v2    # "off":I
    .local p1, "off":I
    :cond_18
    return-object v0
.end method

.method public static blacklist toChars([B)[C
    .registers 4
    .param p0, "value"    # [B

    .line 71
    array-length v0, p0

    new-array v0, v0, [C

    .line 72
    .local v0, "dst":[C
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/StringLatin1;->inflate([BI[CII)V

    .line 73
    return-object v0
.end method

.method public static blacklist trim([B)Ljava/lang/String;
    .registers 5
    .param p0, "value"    # [B

    .line 584
    array-length v0, p0

    .line 585
    .local v0, "len":I
    const/4 v1, 0x0

    .line 586
    .local v1, "st":I
    :goto_2
    const/16 v2, 0x20

    if-ge v1, v0, :cond_f

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    if-gt v3, v2, :cond_f

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 589
    :cond_f
    :goto_f
    if-ge v1, v0, :cond_1c

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-gt v3, v2, :cond_1c

    .line 590
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 592
    :cond_1c
    if-gtz v1, :cond_24

    array-length v2, p0

    if-ge v0, v2, :cond_22

    goto :goto_24

    .line 593
    :cond_22
    const/4 v2, 0x0

    goto :goto_2a

    :cond_24
    :goto_24
    sub-int v2, v0, v1

    invoke-static {p0, v1, v2}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v2

    .line 592
    :goto_2a
    return-object v2
.end method
