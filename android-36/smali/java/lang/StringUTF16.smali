.class public final Ljava/lang/StringUTF16;
.super Ljava/lang/Object;
.source "StringUTF16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringUTF16$LinesSpliterator;,
        Ljava/lang/StringUTF16$CodePointsSpliteratorForString;,
        Ljava/lang/StringUTF16$CharsSpliteratorForString;,
        Ljava/lang/StringUTF16$CodePointsSpliterator;,
        Ljava/lang/StringUTF16$CharsSpliterator;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist HI_BYTE_SHIFT:I = 0x0

.field static final blacklist LO_BYTE_SHIFT:I = 0x8

.field static final blacklist MAX_LENGTH:I = 0x3fffffff


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 40
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist charAt(Ljava/lang/String;I)C
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 1610
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(ILjava/lang/String;)V

    .line 1611
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar(Ljava/lang/String;I)C

    move-result v0

    return v0
.end method

.method public static blacklist charAt([BI)C
    .registers 3
    .param p0, "value"    # [B
    .param p1, "index"    # I

    .line 1604
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 1605
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v0

    return v0
.end method

.method public static blacklist checkBoundsBeginEnd(II[B)V
    .registers 4
    .param p0, "begin"    # I
    .param p1, "end"    # I
    .param p2, "val"    # [B

    .line 1838
    invoke-static {p2}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/String;->checkBoundsBeginEnd(III)V

    .line 1839
    return-void
.end method

.method public static blacklist checkBoundsOffCount(II[B)V
    .registers 4
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "val"    # [B

    .line 1842
    invoke-static {p2}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/String;->checkBoundsOffCount(III)V

    .line 1843
    return-void
.end method

.method public static blacklist checkIndex(ILjava/lang/String;)V
    .registers 3
    .param p0, "off"    # I
    .param p1, "val"    # Ljava/lang/String;

    .line 1829
    invoke-static {p1}, Ljava/lang/StringUTF16;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 1830
    return-void
.end method

.method public static blacklist checkIndex(I[B)V
    .registers 3
    .param p0, "off"    # I
    .param p1, "val"    # [B

    .line 1824
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/String;->checkIndex(II)V

    .line 1825
    return-void
.end method

.method public static blacklist checkOffset(I[B)V
    .registers 3
    .param p0, "off"    # I
    .param p1, "val"    # [B

    .line 1834
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/String;->checkOffset(II)V

    .line 1835
    return-void
.end method

.method public static blacklist codePointAt([BII)I
    .registers 4
    .param p0, "value"    # [B
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 120
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringUTF16;->codePointAt([BIIZ)I

    move-result v0

    return v0
.end method

.method private static blacklist codePointAt([BIIZ)I
    .registers 7
    .param p0, "value"    # [B
    .param p1, "index"    # I
    .param p2, "end"    # I
    .param p3, "checked"    # Z

    .line 102
    nop

    .line 103
    if-eqz p3, :cond_6

    .line 104
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 106
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v0

    .line 107
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_28

    .line 108
    if-eqz p3, :cond_19

    .line 109
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 111
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    .line 112
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 116
    .end local v1    # "c2":C
    :cond_28
    return v0
.end method

.method public static blacklist codePointAtSB([BII)I
    .registers 4
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 1535
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringUTF16;->codePointAt([BIIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist codePointBefore([BI)I
    .registers 3
    .param p0, "value"    # [B
    .param p1, "index"    # I

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/StringUTF16;->codePointBefore([BIZ)I

    move-result v0

    return v0
.end method

.method private static blacklist codePointBefore([BIZ)I
    .registers 6
    .param p0, "value"    # [B
    .param p1, "index"    # I
    .param p2, "checked"    # Z

    .line 124
    add-int/lit8 p1, p1, -0x1

    .line 125
    if-eqz p2, :cond_7

    .line 126
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 128
    :cond_7
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v0

    .line 129
    .local v0, "c2":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_29

    if-lez p1, :cond_29

    .line 130
    add-int/lit8 p1, p1, -0x1

    .line 131
    if-eqz p2, :cond_1a

    .line 132
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 134
    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    .line 135
    .local v1, "c1":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 136
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 139
    .end local v1    # "c1":C
    :cond_29
    return v0
.end method

.method public static blacklist codePointBeforeSB([BI)I
    .registers 3
    .param p0, "val"    # [B
    .param p1, "index"    # I

    .line 1539
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/StringUTF16;->codePointBefore([BIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist codePointCount([BII)I
    .registers 4
    .param p0, "value"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringUTF16;->codePointCount([BIIZ)I

    move-result v0

    return v0
.end method

.method private static blacklist codePointCount([BIIZ)I
    .registers 7
    .param p0, "value"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "checked"    # Z

    .line 147
    nop

    .line 148
    sub-int v0, p2, p1

    .line 149
    .local v0, "count":I
    move v1, p1

    .line 150
    .local v1, "i":I
    if-eqz p3, :cond_b

    if-ge v1, p2, :cond_b

    .line 151
    invoke-static {v1, p2, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 153
    :cond_b
    :goto_b
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_2c

    .line 154
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-static {p0, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 155
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 157
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_b

    .line 153
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2a
    move v1, v2

    goto :goto_b

    .line 160
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2c
    return v0
.end method

.method public static blacklist codePointCountSB([BII)I
    .registers 4
    .param p0, "val"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 1543
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringUTF16;->codePointCount([BIIZ)I

    move-result v0

    return v0
.end method

.method public static blacklist compareTo([B[B)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 308
    invoke-static {p0}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    .line 309
    .local v0, "len1":I
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v1

    .line 310
    .local v1, "len2":I
    invoke-static {p0, p1, v0, v1}, Ljava/lang/StringUTF16;->compareValues([B[BII)I

    move-result v2

    return v2
.end method

.method public static blacklist compareTo([B[BII)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "other"    # [B
    .param p2, "len1"    # I
    .param p3, "len2"    # I

    .line 317
    invoke-static {p2, p0}, Ljava/lang/StringUTF16;->checkOffset(I[B)V

    .line 318
    invoke-static {p3, p1}, Ljava/lang/StringUTF16;->checkOffset(I[B)V

    .line 320
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringUTF16;->compareValues([B[BII)I

    move-result v0

    return v0
.end method

.method public static blacklist compareToCI([B[B)I
    .registers 9
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 345
    invoke-static {p0}, Ljava/lang/StringUTF16;->length([B)I

    move-result v0

    .line 346
    .local v0, "len1":I
    invoke-static {p1}, Ljava/lang/StringUTF16;->length([B)I

    move-result v1

    .line 347
    .local v1, "len2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 348
    .local v2, "lim":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_d
    if-ge v3, v2, :cond_33

    .line 349
    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    .line 350
    .local v4, "c1":C
    invoke-static {p1, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v5

    .line 351
    .local v5, "c2":C
    if-eq v4, v5, :cond_30

    .line 352
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 353
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 354
    if-eq v4, v5, :cond_30

    .line 355
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 356
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 357
    if-eq v4, v5, :cond_30

    .line 358
    sub-int v6, v4, v5

    return v6

    .line 348
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 363
    .end local v3    # "k":I
    :cond_33
    sub-int v3, v0, v1

    return v3
.end method

.method public static blacklist compareToCI_Latin1([B[B)I
    .registers 3
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 367
    invoke-static {p1, p0}, Ljava/lang/StringLatin1;->compareToCI_UTF16([B[B)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static blacklist compareToLatin1([B[B)I
    .registers 3
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 337
    invoke-static {p1, p0}, Ljava/lang/StringLatin1;->compareToUTF16([B[B)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static blacklist compareToLatin1([B[BII)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "other"    # [B
    .param p2, "len1"    # I
    .param p3, "len2"    # I

    .line 341
    invoke-static {p1, p0, p3, p2}, Ljava/lang/StringLatin1;->compareToUTF16([B[BII)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method private static blacklist compareValues([B[BII)I
    .registers 9
    .param p0, "value"    # [B
    .param p1, "other"    # [B
    .param p2, "len1"    # I
    .param p3, "len2"    # I

    .line 324
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 325
    .local v0, "lim":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 326
    invoke-static {p0, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v2

    .line 327
    .local v2, "c1":C
    invoke-static {p1, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    .line 328
    .local v3, "c2":C
    if-eq v2, v3, :cond_14

    .line 329
    sub-int v4, v2, v3

    return v4

    .line 325
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 332
    .end local v1    # "k":I
    :cond_17
    sub-int v1, p2, p3

    return v1
.end method

.method public static blacklist compress([BI[BII)I
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I
    .param p4, "len"    # I

    .line 219
    invoke-static {p1, p4, p0}, Ljava/lang/StringUTF16;->checkBoundsOffCount(II[B)V

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p4, :cond_1b

    .line 221
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    .line 222
    .local v1, "c":C
    const/16 v2, 0xff

    if-le v1, v2, :cond_10

    .line 223
    const/4 p4, 0x0

    .line 224
    goto :goto_1b

    .line 226
    :cond_10
    int-to-byte v2, v1

    aput-byte v2, p2, p3

    .line 227
    add-int/lit8 p1, p1, 0x1

    .line 228
    nop

    .end local v1    # "c":C
    add-int/lit8 p3, p3, 0x1

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 230
    .end local v0    # "i":I
    :cond_1b
    :goto_1b
    return p4
.end method

.method public static blacklist compress([CI[BII)I
    .registers 8
    .param p0, "src"    # [C
    .param p1, "srcOff"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I
    .param p4, "len"    # I

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_16

    .line 203
    aget-char v1, p0, p1

    .line 204
    .local v1, "c":C
    const/16 v2, 0xff

    if-le v1, v2, :cond_b

    .line 205
    const/4 p4, 0x0

    .line 206
    goto :goto_16

    .line 208
    :cond_b
    int-to-byte v2, v1

    aput-byte v2, p2, p3

    .line 209
    add-int/lit8 p1, p1, 0x1

    .line 210
    nop

    .end local v1    # "c":C
    add-int/lit8 p3, p3, 0x1

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "i":I
    :cond_16
    :goto_16
    return p4
.end method

.method public static blacklist compress([BII)[B
    .registers 5
    .param p0, "val"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 192
    new-array v0, p2, [B

    .line 193
    .local v0, "ret":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/StringUTF16;->compress([BI[BII)I

    move-result v1

    if-ne v1, p2, :cond_a

    .line 194
    return-object v0

    .line 196
    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist compress([CII)[B
    .registers 5
    .param p0, "val"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 184
    new-array v0, p2, [B

    .line 185
    .local v0, "ret":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/StringUTF16;->compress([CI[BII)I

    move-result v1

    if-ne v1, p2, :cond_a

    .line 186
    return-object v0

    .line 188
    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist contentEquals([BLjava/lang/CharSequence;I)Z
    .registers 6
    .param p0, "value"    # [B
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "len"    # I

    .line 1571
    invoke-static {p2, p0}, Ljava/lang/StringUTF16;->checkOffset(I[B)V

    .line 1572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p2, :cond_15

    .line 1573
    invoke-static {p0, v0}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_12

    .line 1574
    const/4 v1, 0x0

    return v1

    .line 1572
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1577
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist contentEquals([B[BI)Z
    .registers 7
    .param p0, "v1"    # [B
    .param p1, "v2"    # [B
    .param p2, "len"    # I

    .line 1561
    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Ljava/lang/StringUTF16;->checkBoundsOffCount(II[B)V

    .line 1562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p2, :cond_16

    .line 1563
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-static {p1, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-eq v2, v3, :cond_13

    .line 1564
    return v0

    .line 1562
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1567
    .end local v1    # "i":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist equals([B[B)Z
    .registers 8
    .param p0, "value"    # [B
    .param p1, "other"    # [B

    .line 294
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    .line 295
    array-length v0, p0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 296
    .local v0, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_19

    .line 297
    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    invoke-static {p1, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v5

    if-eq v4, v5, :cond_16

    .line 298
    return v2

    .line 296
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 301
    .end local v3    # "i":I
    :cond_19
    return v1

    .line 303
    .end local v0    # "len":I
    :cond_1a
    return v2
.end method

.method public static blacklist fillNull([BII)V
    .registers 6
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 1163
    shl-int/lit8 v0, p1, 0x1

    shl-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1164
    return-void
.end method

.method public static blacklist getBytes([BII[BI)V
    .registers 8
    .param p0, "value"    # [B
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [B
    .param p4, "dstBegin"    # I

    .line 285
    shl-int/lit8 p1, p1, 0x1

    .line 286
    shl-int/lit8 p2, p2, 0x1

    .line 287
    add-int/lit8 v0, p1, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, p2, :cond_12

    .line 288
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "dstBegin":I
    .local v1, "dstBegin":I
    aget-byte v2, p0, v0

    aput-byte v2, p3, p4

    .line 287
    add-int/lit8 v0, v0, 0x2

    move p4, v1

    goto :goto_6

    .line 290
    .end local v0    # "i":I
    .end local v1    # "dstBegin":I
    .restart local p4    # "dstBegin":I
    :cond_12
    return-void
.end method

.method static blacklist getChar(Ljava/lang/String;I)C
    .registers 3
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static blacklist getChar([BI)C
    .registers 4
    .param p0, "val"    # [B
    .param p1, "index"    # I

    .line 65
    nop

    .line 66
    shl-int/lit8 p1, p1, 0x1

    .line 67
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    int-to-char p1, p1

    return p1
.end method

.method public static blacklist getChars(III[B)I
    .registers 5
    .param p0, "i"    # I
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "value"    # [B

    .line 1547
    invoke-static {p1, p2, p3}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 1548
    invoke-static {p0, p2, p3}, Ljava/lang/StringUTF16;->getChars(II[B)I

    move-result v0

    .line 1549
    .local v0, "pos":I
    nop

    .line 1550
    return v0
.end method

.method static blacklist getChars(II[B)I
    .registers 8
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [B

    .line 1735
    move v0, p1

    .line 1737
    .local v0, "charPos":I
    if-gez p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 1738
    .local v1, "negative":Z
    :goto_6
    if-nez v1, :cond_9

    .line 1739
    neg-int p0, p0

    .line 1743
    :cond_9
    :goto_9
    const/16 v2, -0x64

    if-gt p0, v2, :cond_26

    .line 1744
    div-int/lit8 v2, p0, 0x64

    .line 1745
    .local v2, "q":I
    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v3, p0

    .line 1746
    .local v3, "r":I
    move p0, v2

    .line 1747
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v4, v4, v3

    invoke-static {p2, v0, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1748
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v4, v4, v3

    invoke-static {p2, v0, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    goto :goto_9

    .line 1752
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_26
    div-int/lit8 v2, p0, 0xa

    .line 1753
    .restart local v2    # "q":I
    mul-int/lit8 v3, v2, 0xa

    sub-int/2addr v3, p0

    .line 1754
    .restart local v3    # "r":I
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v3, 0x30

    invoke-static {p2, v0, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1757
    if-gez v2, :cond_3b

    .line 1758
    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v4, v2, 0x30

    invoke-static {p2, v0, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1761
    :cond_3b
    if-eqz v1, :cond_44

    .line 1762
    add-int/lit8 v0, v0, -0x1

    const/16 v4, 0x2d

    invoke-static {p2, v0, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1764
    :cond_44
    return v0
.end method

.method public static blacklist getChars(JII[B)I
    .registers 6
    .param p0, "l"    # J
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "value"    # [B

    .line 1554
    invoke-static {p2, p3, p4}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 1555
    invoke-static {p0, p1, p3, p4}, Ljava/lang/StringUTF16;->getChars(JI[B)I

    move-result v0

    .line 1556
    .local v0, "pos":I
    nop

    .line 1557
    return v0
.end method

.method static blacklist getChars(JI[B)I
    .registers 10
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [B

    .line 1779
    move v0, p2

    .line 1781
    .local v0, "charPos":I
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 1782
    .local v1, "negative":Z
    :goto_a
    if-nez v1, :cond_d

    .line 1783
    neg-long p0, p0

    .line 1787
    :cond_d
    :goto_d
    const-wide/32 v2, -0x80000000

    cmp-long v2, p0, v2

    if-gtz v2, :cond_2f

    .line 1788
    const-wide/16 v2, 0x64

    div-long v4, p0, v2

    .line 1789
    .local v4, "q":J
    mul-long/2addr v2, v4

    sub-long/2addr v2, p0

    long-to-int v2, v2

    .line 1790
    .local v2, "r":I
    move-wide p0, v4

    .line 1791
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v3, v3, v2

    invoke-static {p3, v0, v3}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1792
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v3, v3, v2

    invoke-static {p3, v0, v3}, Ljava/lang/StringUTF16;->putChar([BII)V

    goto :goto_d

    .line 1797
    .end local v2    # "r":I
    .end local v4    # "q":J
    :cond_2f
    long-to-int v2, p0

    .line 1798
    .local v2, "i2":I
    :goto_30
    const/16 v3, -0x64

    if-gt v2, v3, :cond_4d

    .line 1799
    div-int/lit8 v3, v2, 0x64

    .line 1800
    .local v3, "q2":I
    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr v4, v2

    .line 1801
    .local v4, "r":I
    move v2, v3

    .line 1802
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v5, v5, v4

    invoke-static {p3, v0, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1803
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v5, v5, v4

    invoke-static {p3, v0, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    goto :goto_30

    .line 1807
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_4d
    div-int/lit8 v3, v2, 0xa

    .line 1808
    .restart local v3    # "q2":I
    mul-int/lit8 v4, v3, 0xa

    sub-int/2addr v4, v2

    .line 1809
    .restart local v4    # "r":I
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v4, 0x30

    invoke-static {p3, v0, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1812
    if-gez v3, :cond_62

    .line 1813
    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v5, v3, 0x30

    invoke-static {p3, v0, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1816
    :cond_62
    if-eqz v1, :cond_6b

    .line 1817
    add-int/lit8 v0, v0, -0x1

    const/16 v5, 0x2d

    invoke-static {p3, v0, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1819
    :cond_6b
    return v0
.end method

.method public static blacklist getChars([BII[CI)V
    .registers 8
    .param p0, "value"    # [B
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 275
    if-ge p1, p2, :cond_7

    .line 276
    sub-int v0, p2, p1

    invoke-static {p1, v0, p0}, Ljava/lang/StringUTF16;->checkBoundsOffCount(II[B)V

    .line 278
    :cond_7
    move v0, p1

    .local v0, "i":I
    :goto_8
    if-ge v0, p2, :cond_16

    .line 279
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "dstBegin":I
    .local v1, "dstBegin":I
    invoke-static {p0, v0}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v2

    aput-char v2, p3, p4

    .line 278
    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_8

    .line 281
    .end local v0    # "i":I
    .end local v1    # "dstBegin":I
    .restart local p4    # "dstBegin":I
    :cond_16
    return-void
.end method

.method public static blacklist hashCode([B)I
    .registers 6
    .param p0, "value"    # [B

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "h":I
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x1

    .line 373
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_12

    .line 374
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    add-int v0, v3, v4

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 376
    .end local v2    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist indexOf([BII)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 380
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    .line 381
    .local v0, "max":I
    if-gez p2, :cond_7

    .line 382
    const/4 p2, 0x0

    goto :goto_b

    .line 383
    :cond_7
    if-lt p2, v0, :cond_b

    .line 385
    const/4 v1, -0x1

    return v1

    .line 387
    :cond_b
    :goto_b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_14

    .line 390
    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringUTF16;->indexOfChar([BIII)I

    move-result v1

    return v1

    .line 392
    :cond_14
    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringUTF16;->indexOfSupplementary([BIII)I

    move-result v1

    return v1
.end method

.method public static blacklist indexOf([BILjava/lang/String;II)I
    .registers 7
    .param p0, "value"    # [B
    .param p1, "valueCount"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "strCount"    # I
    .param p4, "fromIndex"    # I

    .line 414
    invoke-static {p4, p1, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p3, v1}, Ljava/lang/String;->checkBoundsBeginEnd(III)V

    .line 417
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->indexOfUnsafe([BILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static blacklist indexOfChar([BIII)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I
    .param p3, "max"    # I

    .line 513
    invoke-static {p2, p3, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 514
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StringUTF16;->indexOfCharUnsafe([BIII)I

    move-result v0

    return v0
.end method

.method private static blacklist indexOfCharUnsafe([BIII)I
    .registers 6
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I
    .param p3, "max"    # I

    .line 518
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_d

    .line 519
    invoke-static {p0, v0}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    if-ne v1, p1, :cond_a

    .line 520
    return v0

    .line 518
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "i":I
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist indexOfLatin1([BILjava/lang/String;II)I
    .registers 7
    .param p0, "src"    # [B
    .param p1, "srcCount"    # I
    .param p2, "tgt"    # Ljava/lang/String;
    .param p3, "tgtCount"    # I
    .param p4, "fromIndex"    # I

    .line 472
    invoke-static {p4, p1, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p3, v1}, Ljava/lang/String;->checkBoundsBeginEnd(III)V

    .line 475
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->indexOfLatin1Unsafe([BILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOfLatin1Unsafe([BILjava/lang/String;II)I
    .registers 13
    .param p0, "src"    # [B
    .param p1, "srcCount"    # I
    .param p2, "tgt"    # Ljava/lang/String;
    .param p3, "tgtCount"    # I
    .param p4, "fromIndex"    # I

    .line 481
    nop

    .line 482
    nop

    .line 484
    nop

    .line 485
    nop

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    .local v0, "first":C
    sub-int v1, p1, p3

    .line 489
    .local v1, "max":I
    move v2, p4

    .local v2, "i":I
    :goto_c
    if-gt v2, v1, :cond_3f

    .line 491
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-eq v3, v0, :cond_1f

    .line 492
    :goto_14
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v1, :cond_1f

    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-eq v3, v0, :cond_1f

    goto :goto_14

    .line 495
    :cond_1f
    if-gt v2, v1, :cond_3c

    .line 496
    add-int/lit8 v3, v2, 0x1

    .line 497
    .local v3, "j":I
    add-int v4, v3, p3

    add-int/lit8 v4, v4, -0x1

    .line 498
    .local v4, "end":I
    const/4 v5, 0x1

    .line 500
    .local v5, "k":I
    :goto_28
    if-ge v3, v4, :cond_39

    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_39

    .line 501
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 502
    .end local v5    # "k":I
    :cond_39
    if-ne v3, v4, :cond_3c

    .line 504
    return v2

    .line 489
    .end local v3    # "j":I
    .end local v4    # "end":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 508
    .end local v2    # "i":I
    :cond_3f
    const/4 v2, -0x1

    return v2
.end method

.method public static blacklist indexOfNonWhitespace(Ljava/lang/String;)I
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 924
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 925
    .local v0, "length":I
    const/4 v1, 0x0

    .line 926
    .local v1, "left":I
    :goto_5
    if-ge v1, v0, :cond_20

    .line 930
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 932
    .local v2, "codepoint":I
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1a

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 933
    goto :goto_20

    .line 935
    :cond_1a
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 936
    .end local v2    # "codepoint":I
    goto :goto_5

    .line 937
    :cond_20
    :goto_20
    return v1
.end method

.method private static blacklist indexOfSupplementary([BIII)I
    .registers 8
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I
    .param p3, "max"    # I

    .line 530
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 531
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 532
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    .line 533
    .local v1, "lo":C
    invoke-static {p2, p3, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 534
    move v2, p2

    .local v2, "i":I
    :goto_12
    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_28

    .line 535
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-ne v3, v0, :cond_25

    add-int/lit8 v3, v2, 0x1

    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-ne v3, v1, :cond_25

    .line 536
    return v2

    .line 534
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 540
    .end local v0    # "hi":C
    .end local v1    # "lo":C
    .end local v2    # "i":I
    :cond_28
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist indexOfUnsafe([BILjava/lang/String;II)I
    .registers 13
    .param p0, "value"    # [B
    .param p1, "valueCount"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "strCount"    # I
    .param p4, "fromIndex"    # I

    .line 423
    nop

    .line 424
    nop

    .line 426
    nop

    .line 427
    nop

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 430
    .local v0, "first":C
    sub-int v1, p1, p3

    .line 431
    .local v1, "max":I
    move v2, p4

    .local v2, "i":I
    :goto_c
    if-gt v2, v1, :cond_3f

    .line 433
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-eq v3, v0, :cond_1f

    .line 434
    :goto_14
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v1, :cond_1f

    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-eq v3, v0, :cond_1f

    goto :goto_14

    .line 437
    :cond_1f
    if-gt v2, v1, :cond_3c

    .line 438
    add-int/lit8 v3, v2, 0x1

    .line 439
    .local v3, "j":I
    add-int v4, v3, p3

    add-int/lit8 v4, v4, -0x1

    .line 442
    .local v4, "end":I
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_28
    if-ge v3, v4, :cond_39

    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_39

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 443
    .end local v5    # "k":I
    :cond_39
    if-ne v3, v4, :cond_3c

    .line 445
    return v2

    .line 431
    .end local v3    # "j":I
    .end local v4    # "end":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 449
    .end local v2    # "i":I
    :cond_3f
    const/4 v2, -0x1

    return v2
.end method

.method public static blacklist inflate([BI[BII)V
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I
    .param p4, "len"    # I

    .line 1652
    invoke-static {p3, p4, p2}, Ljava/lang/StringUTF16;->checkBoundsOffCount(II[B)V

    .line 1653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p4, :cond_16

    .line 1654
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "dstOff":I
    .local v1, "dstOff":I
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "srcOff":I
    .local v2, "srcOff":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p2, p3, p1}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1653
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    move p1, v2

    goto :goto_4

    .line 1656
    .end local v0    # "i":I
    .end local v1    # "dstOff":I
    .end local v2    # "srcOff":I
    .restart local p1    # "srcOff":I
    .restart local p3    # "dstOff":I
    :cond_16
    return-void
.end method

.method public static blacklist lastIndexOf([BII)I
    .registers 5
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 586
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1b

    .line 589
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 590
    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_19

    .line 591
    invoke-static {p0, v0}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    if-ne v1, p1, :cond_16

    .line 592
    return v0

    .line 590
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 595
    :cond_19
    const/4 v1, -0x1

    return v1

    .line 597
    .end local v0    # "i":I
    :cond_1b
    invoke-static {p0, p1, p2}, Ljava/lang/StringUTF16;->lastIndexOfSupplementary([BII)I

    move-result v0

    return v0
.end method

.method public static blacklist lastIndexOf([BILjava/lang/String;II)I
    .registers 14
    .param p0, "src"    # [B
    .param p1, "srcCount"    # I
    .param p2, "tgt"    # Ljava/lang/String;
    .param p3, "tgtCount"    # I
    .param p4, "fromIndex"    # I

    .line 548
    nop

    .line 549
    nop

    .line 551
    nop

    .line 552
    add-int/lit8 v0, p3, -0x1

    .line 553
    .local v0, "min":I
    add-int v1, v0, p4

    .line 554
    .local v1, "i":I
    add-int/lit8 v2, p3, -0x1

    .line 558
    .local v2, "strLastIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/String;->checkIndex(II)V

    .line 559
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 561
    .local v3, "strLastChar":C
    invoke-static {v1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 565
    :goto_17
    if-lt v1, v0, :cond_22

    invoke-static {p0, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    if-eq v4, v3, :cond_22

    .line 566
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 568
    :cond_22
    if-ge v1, v0, :cond_26

    .line 569
    const/4 v4, -0x1

    return v4

    .line 571
    :cond_26
    add-int/lit8 v4, v1, -0x1

    .line 572
    .local v4, "j":I
    sub-int v5, v4, v2

    .line 573
    .local v5, "start":I
    add-int/lit8 v6, v2, -0x1

    .line 574
    .local v6, "k":I
    :goto_2c
    if-le v4, v5, :cond_42

    .line 576
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "j":I
    .local v7, "j":I
    invoke-static {p0, v4}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    add-int/lit8 v8, v6, -0x1

    .end local v6    # "k":I
    .local v8, "k":I
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_3f

    .line 577
    add-int/lit8 v1, v1, -0x1

    .line 578
    goto :goto_17

    .line 576
    :cond_3f
    move v4, v7

    move v6, v8

    goto :goto_2c

    .line 581
    .end local v7    # "j":I
    .end local v8    # "k":I
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    :cond_42
    add-int/lit8 v7, v5, 0x1

    return v7
.end method

.method public static blacklist lastIndexOfLatin1([BILjava/lang/String;II)I
    .registers 14
    .param p0, "src"    # [B
    .param p1, "srcCount"    # I
    .param p2, "tgt"    # Ljava/lang/String;
    .param p3, "tgtCount"    # I
    .param p4, "fromIndex"    # I

    .line 1663
    nop

    .line 1664
    nop

    .line 1666
    nop

    .line 1667
    add-int/lit8 v0, p3, -0x1

    .line 1668
    .local v0, "min":I
    add-int v1, v0, p4

    .line 1669
    .local v1, "i":I
    add-int/lit8 v2, p3, -0x1

    .line 1672
    .local v2, "strLastIndex":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1674
    .local v3, "strLastChar":C
    invoke-static {v1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 1678
    :goto_10
    if-lt v1, v0, :cond_1b

    invoke-static {p0, v1}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    if-eq v4, v3, :cond_1b

    .line 1679
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 1681
    :cond_1b
    if-ge v1, v0, :cond_1f

    .line 1682
    const/4 v4, -0x1

    return v4

    .line 1684
    :cond_1f
    add-int/lit8 v4, v1, -0x1

    .line 1685
    .local v4, "j":I
    sub-int v5, v4, v2

    .line 1686
    .local v5, "start":I
    add-int/lit8 v6, v2, -0x1

    .line 1687
    .local v6, "k":I
    :goto_25
    if-le v4, v5, :cond_3b

    .line 1689
    add-int/lit8 v7, v4, -0x1

    .end local v4    # "j":I
    .local v7, "j":I
    invoke-static {p0, v4}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    add-int/lit8 v8, v6, -0x1

    .end local v6    # "k":I
    .local v8, "k":I
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_38

    .line 1690
    add-int/lit8 v1, v1, -0x1

    .line 1691
    goto :goto_10

    .line 1689
    :cond_38
    move v4, v7

    move v6, v8

    goto :goto_25

    .line 1694
    .end local v7    # "j":I
    .end local v8    # "k":I
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    :cond_3b
    add-int/lit8 v7, v5, 0x1

    return v7
.end method

.method public static blacklist lastIndexOfNonWhitespace(Ljava/lang/String;)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 947
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 948
    .local v0, "right":I
    :goto_4
    if-lez v0, :cond_1f

    .line 952
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    .line 954
    .local v1, "codepoint":I
    const/16 v2, 0x20

    if-eq v1, v2, :cond_19

    const/16 v2, 0x9

    if-eq v1, v2, :cond_19

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 955
    goto :goto_1f

    .line 957
    :cond_19
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 958
    .end local v1    # "codepoint":I
    goto :goto_4

    .line 959
    :cond_1f
    :goto_1f
    return v0
.end method

.method private static blacklist lastIndexOfSupplementary([BII)I
    .registers 7
    .param p0, "value"    # [B
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 605
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 606
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 607
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    .line 608
    .local v1, "lo":C
    array-length v2, p0

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 609
    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_2b

    .line 610
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-ne v3, v0, :cond_28

    add-int/lit8 v3, v2, 0x1

    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-ne v3, v1, :cond_28

    .line 611
    return v2

    .line 609
    :cond_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 615
    .end local v0    # "hi":C
    .end local v1    # "lo":C
    .end local v2    # "i":I
    :cond_2b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist length(Ljava/lang/String;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static blacklist length([B)I
    .registers 2
    .param p0, "value"    # [B

    .line 88
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static blacklist lines(Ljava/lang/String;)Ljava/util/stream/Stream;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1119
    new-instance v0, Ljava/lang/StringUTF16$LinesSpliterator;

    invoke-direct {v0, p0}, Ljava/lang/StringUTF16$LinesSpliterator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newBytesFor(I)[B
    .registers 5
    .param p0, "len"    # I

    .line 43
    if-ltz p0, :cond_2f

    .line 46
    const v0, 0x3fffffff    # 1.9999999f

    if-gt p0, v0, :cond_c

    .line 50
    shl-int/lit8 v0, p0, 0x1

    new-array v0, v0, [B

    return-object v0

    .line 47
    :cond_c
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF16 String size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", should be less than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_2f
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public static blacklist newString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 1158
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 1141
    shl-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Ljava/lang/StringFactory;->newStringFromUtf16Bytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist putChar([BII)V
    .registers 5
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "c"    # I

    .line 56
    nop

    .line 57
    shl-int/lit8 p1, p1, 0x1

    .line 58
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 59
    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 60
    return-void
.end method

.method public static blacklist putCharSB([BII)V
    .registers 3
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "c"    # I

    .line 1518
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkIndex(I[B)V

    .line 1519
    invoke-static {p0, p1, p2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1520
    return-void
.end method

.method private static blacklist putChars([BI[CII)V
    .registers 7
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "off"    # I
    .param p4, "end"    # I

    .line 1124
    nop

    :goto_1
    if-ge p3, p4, :cond_f

    .line 1125
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "off":I
    .local v1, "off":I
    aget-char p3, p2, p3

    invoke-static {p0, p1, p3}, Ljava/lang/StringUTF16;->putChar([BII)V

    move p1, v0

    move p3, v1

    goto :goto_1

    .line 1127
    .end local v0    # "index":I
    .end local v1    # "off":I
    .restart local p1    # "index":I
    .restart local p3    # "off":I
    :cond_f
    return-void
.end method

.method public static blacklist putCharsAt([BICCCC)I
    .registers 8
    .param p0, "value"    # [B
    .param p1, "i"    # I
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C

    .line 1581
    add-int/lit8 v0, p1, 0x4

    .line 1582
    .local v0, "end":I
    invoke-static {p1, v0, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 1583
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    invoke-static {p0, p1, p2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1584
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    invoke-static {p0, v1, p3}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1585
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    invoke-static {p0, p1, p4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1586
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    invoke-static {p0, v1, p5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1587
    nop

    .line 1588
    return v0
.end method

.method public static blacklist putCharsAt([BICCCCC)I
    .registers 9
    .param p0, "value"    # [B
    .param p1, "i"    # I
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .param p6, "c5"    # C

    .line 1592
    add-int/lit8 v0, p1, 0x5

    .line 1593
    .local v0, "end":I
    invoke-static {p1, v0, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 1594
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    invoke-static {p0, p1, p2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1595
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    invoke-static {p0, v1, p3}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1596
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    invoke-static {p0, p1, p4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1597
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "i":I
    .restart local p1    # "i":I
    invoke-static {p0, v1, p5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1598
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .restart local v1    # "i":I
    invoke-static {p0, p1, p6}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1599
    nop

    .line 1600
    return v0
.end method

.method public static blacklist putCharsSB([BILjava/lang/CharSequence;II)V
    .registers 8
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "off"    # I
    .param p4, "end"    # I

    .line 1528
    add-int v0, p1, p4

    sub-int/2addr v0, p3

    invoke-static {p1, v0, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 1529
    move v0, p3

    .local v0, "i":I
    :goto_7
    if-ge v0, p4, :cond_16

    .line 1530
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {p0, p1, v2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1529
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_7

    .line 1532
    .end local v0    # "i":I
    .end local v1    # "index":I
    .restart local p1    # "index":I
    :cond_16
    return-void
.end method

.method public static blacklist putCharsSB([BI[CII)V
    .registers 6
    .param p0, "val"    # [B
    .param p1, "index"    # I
    .param p2, "ca"    # [C
    .param p3, "off"    # I
    .param p4, "end"    # I

    .line 1523
    add-int v0, p1, p4

    sub-int/2addr v0, p3

    invoke-static {p1, v0, p0}, Ljava/lang/StringUTF16;->checkBoundsBeginEnd(II[B)V

    .line 1524
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/StringUTF16;->putChars([BI[CII)V

    .line 1525
    return-void
.end method

.method public static blacklist replace([BCC)Ljava/lang/String;
    .registers 9
    .param p0, "value"    # [B
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .line 619
    array-length v0, p0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 620
    .local v0, "len":I
    const/4 v2, -0x1

    .line 621
    .local v2, "i":I
    :cond_4
    add-int/2addr v2, v1

    if-ge v2, v0, :cond_e

    .line 622
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v3

    if-ne v3, p1, :cond_4

    .line 623
    nop

    .line 626
    :cond_e
    if-ge v2, v0, :cond_52

    .line 627
    array-length v3, p0

    new-array v3, v3, [B

    .line 628
    .local v3, "buf":[B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_14
    if-ge v4, v2, :cond_20

    .line 629
    invoke-static {p0, v4}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 628
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 631
    .end local v4    # "j":I
    :cond_20
    :goto_20
    if-ge v2, v0, :cond_32

    .line 632
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    .line 633
    .local v4, "c":C
    if-ne v4, p1, :cond_2a

    move v5, p2

    goto :goto_2b

    :cond_2a
    move v5, v4

    :goto_2b
    invoke-static {v3, v2, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 634
    nop

    .end local v4    # "c":C
    add-int/lit8 v2, v2, 0x1

    .line 635
    goto :goto_20

    .line 637
    :cond_32
    nop

    .line 638
    invoke-static {p1}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 639
    invoke-static {p2}, Ljava/lang/StringLatin1;->canEncode(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 640
    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljava/lang/StringUTF16;->compress([BII)[B

    move-result-object v5

    .line 641
    .local v5, "val":[B
    if-eqz v5, :cond_4c

    .line 642
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Ljava/lang/String;-><init>([BB)V

    return-object v1

    .line 645
    .end local v5    # "val":[B
    :cond_4c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v1}, Ljava/lang/String;-><init>([BB)V

    return-object v4

    .line 647
    .end local v3    # "buf":[B
    :cond_52
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist reverse([BI)V
    .registers 9
    .param p0, "val"    # [B
    .param p1, "count"    # I

    .line 1616
    invoke-static {p1, p0}, Ljava/lang/StringUTF16;->checkOffset(I[B)V

    .line 1617
    add-int/lit8 v0, p1, -0x1

    .line 1618
    .local v0, "n":I
    const/4 v1, 0x0

    .line 1619
    .local v1, "hasSurrogates":Z
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x1

    .local v2, "j":I
    :goto_a
    if-ltz v2, :cond_2c

    .line 1620
    sub-int v3, v0, v2

    .line 1621
    .local v3, "k":I
    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    .line 1622
    .local v4, "cj":C
    invoke-static {p0, v3}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v5

    .line 1623
    .local v5, "ck":C
    invoke-static {p0, v2, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1624
    invoke-static {p0, v3, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1625
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_28

    .line 1626
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1627
    :cond_28
    const/4 v1, 0x1

    .line 1619
    .end local v3    # "k":I
    .end local v4    # "cj":C
    .end local v5    # "ck":C
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 1630
    .end local v2    # "j":I
    :cond_2c
    if-eqz v1, :cond_31

    .line 1631
    invoke-static {p0, p1}, Ljava/lang/StringUTF16;->reverseAllValidSurrogatePairs([BI)V

    .line 1633
    :cond_31
    return-void
.end method

.method private static blacklist reverseAllValidSurrogatePairs([BI)V
    .registers 6
    .param p0, "val"    # [B
    .param p1, "count"    # I

    .line 1637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_27

    .line 1638
    invoke-static {p0, v0}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v1

    .line 1639
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1640
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v2

    .line 1641
    .local v2, "c1":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1642
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-static {p0, v0, v2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 1643
    invoke-static {p0, v3, v1}, Ljava/lang/StringUTF16;->putChar([BII)V

    move v0, v3

    .line 1637
    .end local v1    # "c2":C
    .end local v2    # "c1":C
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1647
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public static blacklist strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 968
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 970
    .local v0, "length":I
    invoke-static {p0}, Ljava/lang/StringUTF16;->indexOfNonWhitespace(Ljava/lang/String;)I

    move-result v1

    .line 971
    .local v1, "left":I
    if-ne v1, v0, :cond_d

    .line 972
    const-string v2, ""

    return-object v2

    .line 974
    :cond_d
    invoke-static {p0}, Ljava/lang/StringUTF16;->lastIndexOfNonWhitespace(Ljava/lang/String;)I

    move-result v2

    .line 975
    .local v2, "right":I
    if-gtz v1, :cond_18

    if-ge v2, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v3, 0x0

    goto :goto_1e

    :cond_18
    :goto_18
    sub-int v3, v2, v1

    invoke-static {p0, v1, v3}, Ljava/lang/StringUTF16;->newString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    :goto_1e
    return-object v3
.end method

.method public static blacklist stripLeading(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 984
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 986
    .local v0, "length":I
    invoke-static {p0}, Ljava/lang/StringUTF16;->indexOfNonWhitespace(Ljava/lang/String;)I

    move-result v1

    .line 987
    .local v1, "left":I
    if-ne v1, v0, :cond_d

    .line 988
    const-string v2, ""

    return-object v2

    .line 990
    :cond_d
    if-eqz v1, :cond_16

    sub-int v2, v0, v1

    invoke-static {p0, v1, v2}, Ljava/lang/StringUTF16;->newString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return-object v2
.end method

.method public static blacklist stripTrailing(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 999
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1001
    .local v0, "length":I
    invoke-static {p0}, Ljava/lang/StringUTF16;->lastIndexOfNonWhitespace(Ljava/lang/String;)I

    move-result v1

    .line 1002
    .local v1, "right":I
    if-nez v1, :cond_d

    .line 1003
    const-string v2, ""

    return-object v2

    .line 1005
    :cond_d
    if-eq v1, v0, :cond_15

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Ljava/lang/StringUTF16;->newString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return-object v2
.end method

.method public static blacklist toBytes(C)[B
    .registers 3
    .param p0, "c"    # C

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 261
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 262
    return-object v0
.end method

.method public static blacklist toBytes([CII)[B
    .registers 6
    .param p0, "value"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 175
    invoke-static {p2}, Ljava/lang/StringUTF16;->newBytesFor(I)[B

    move-result-object v0

    .line 176
    .local v0, "val":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p2, :cond_11

    .line 177
    aget-char v2, p0, p1

    invoke-static {v0, v1, v2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 178
    add-int/lit8 p1, p1, 0x1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 180
    .end local v1    # "i":I
    :cond_11
    return-object v0
.end method

.method public static blacklist toBytes([III)[B
    .registers 11
    .param p0, "val"    # [I
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 234
    add-int v0, p1, p2

    .line 236
    .local v0, "end":I
    move v1, p2

    .line 237
    .local v1, "n":I
    move v2, p1

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_24

    .line 238
    aget v3, p0, v2

    .line 239
    .local v3, "cp":I
    invoke-static {v3}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 240
    goto :goto_17

    .line 241
    :cond_f
    invoke-static {v3}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 237
    .end local v3    # "cp":I
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 243
    .restart local v3    # "cp":I
    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 246
    .end local v2    # "i":I
    .end local v3    # "cp":I
    :cond_24
    invoke-static {v1}, Ljava/lang/StringUTF16;->newBytesFor(I)[B

    move-result-object v2

    .line 247
    .local v2, "buf":[B
    move v3, p1

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2a
    if-ge v3, v0, :cond_4e

    .line 248
    aget v5, p0, v3

    .line 249
    .local v5, "cp":I
    invoke-static {v5}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 250
    invoke-static {v2, v4, v5}, Ljava/lang/StringUTF16;->putChar([BII)V

    goto :goto_49

    .line 252
    :cond_38
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    invoke-static {v5}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v7

    invoke-static {v2, v4, v7}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 253
    invoke-static {v5}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v4

    invoke-static {v2, v6, v4}, Ljava/lang/StringUTF16;->putChar([BII)V

    move v4, v6

    .line 247
    .end local v5    # "cp":I
    .end local v6    # "j":I
    .restart local v4    # "j":I
    :goto_49
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 256
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_4e
    return-object v2
.end method

.method static blacklist toBytesSupplementary(I)[B
    .registers 4
    .param p0, "cp"    # I

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 267
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 268
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/StringUTF16;->putChar([BII)V

    .line 269
    return-object v0
.end method

.method public static blacklist toChars([B)[C
    .registers 4
    .param p0, "value"    # [B

    .line 168
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 169
    .local v0, "dst":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v1, v2, v0, v1}, Ljava/lang/StringUTF16;->getChars([BII[CI)V

    .line 170
    return-object v0
.end method

.method public static blacklist trim([B)Ljava/lang/String;
    .registers 6
    .param p0, "value"    # [B

    .line 902
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    .line 903
    .local v0, "length":I
    move v1, v0

    .line 904
    .local v1, "len":I
    const/4 v2, 0x0

    .line 905
    .local v2, "st":I
    :goto_5
    const/16 v3, 0x20

    if-ge v2, v1, :cond_12

    invoke-static {p0, v2}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    if-gt v4, v3, :cond_12

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 908
    :cond_12
    :goto_12
    if-ge v2, v1, :cond_1f

    add-int/lit8 v4, v1, -0x1

    invoke-static {p0, v4}, Ljava/lang/StringUTF16;->getChar([BI)C

    move-result v4

    if-gt v4, v3, :cond_1f

    .line 909
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 911
    :cond_1f
    if-gtz v2, :cond_26

    if-ge v1, v0, :cond_24

    goto :goto_26

    .line 915
    :cond_24
    const/4 v3, 0x0

    goto :goto_2e

    .line 914
    :cond_26
    :goto_26
    shl-int/lit8 v3, v2, 0x1

    sub-int v4, v1, v2

    invoke-static {p0, v3, v4}, Ljava/lang/StringFactory;->newStringFromUtf16Bytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 911
    :goto_2e
    return-object v3
.end method
