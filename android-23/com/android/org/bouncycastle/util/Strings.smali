.class public final Lcom/android/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static asCharArray([B)[C
    .locals 3
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 275
    array-length v2, p0

    #@1
    new-array v0, v2, [C

    #@3
    .line 277
    .local v0, "chars":[C
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 279
    aget-byte v2, p0, v1

    #@9
    and-int/lit16 v2, v2, 0xff

    #@b
    int-to-char v2, v2

    #@c
    aput-char v2, v0, v1

    #@e
    .line 277
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 282
    :cond_0
    return-object v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 264
    new-instance v0, Ljava/lang/String;

    #@2
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->asCharArray([B)[C

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@9
    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 14
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/16 v13, 0xf0

    #@2
    const/16 v12, 0xe0

    #@4
    const/16 v11, 0xc0

    #@6
    .line 13
    const/4 v6, 0x0

    #@7
    .line 14
    .local v6, "i":I
    const/4 v7, 0x0

    #@8
    .line 16
    .local v7, "length":I
    :goto_0
    array-length v9, p0

    #@9
    if-ge v6, v9, :cond_3

    #@b
    .line 18
    add-int/lit8 v7, v7, 0x1

    #@d
    .line 19
    aget-byte v9, p0, v6

    #@f
    and-int/lit16 v9, v9, 0xf0

    #@11
    if-ne v9, v13, :cond_0

    #@13
    .line 22
    add-int/lit8 v7, v7, 0x1

    #@15
    .line 23
    add-int/lit8 v6, v6, 0x4

    #@17
    goto :goto_0

    #@18
    .line 25
    :cond_0
    aget-byte v9, p0, v6

    #@1a
    and-int/lit16 v9, v9, 0xe0

    #@1c
    if-ne v9, v12, :cond_1

    #@1e
    .line 27
    add-int/lit8 v6, v6, 0x3

    #@20
    goto :goto_0

    #@21
    .line 29
    :cond_1
    aget-byte v9, p0, v6

    #@23
    and-int/lit16 v9, v9, 0xc0

    #@25
    if-ne v9, v11, :cond_2

    #@27
    .line 31
    add-int/lit8 v6, v6, 0x2

    #@29
    goto :goto_0

    #@2a
    .line 35
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 39
    :cond_3
    new-array v5, v7, [C

    #@2f
    .line 41
    .local v5, "cs":[C
    const/4 v6, 0x0

    #@30
    .line 42
    const/4 v7, 0x0

    #@31
    .line 44
    :goto_1
    array-length v9, p0

    #@32
    if-ge v6, v9, :cond_8

    #@34
    .line 48
    aget-byte v9, p0, v6

    #@36
    and-int/lit16 v9, v9, 0xf0

    #@38
    if-ne v9, v13, :cond_4

    #@3a
    .line 50
    aget-byte v9, p0, v6

    #@3c
    and-int/lit8 v9, v9, 0x3

    #@3e
    shl-int/lit8 v9, v9, 0x12

    #@40
    add-int/lit8 v10, v6, 0x1

    #@42
    aget-byte v10, p0, v10

    #@44
    and-int/lit8 v10, v10, 0x3f

    #@46
    shl-int/lit8 v10, v10, 0xc

    #@48
    or-int/2addr v9, v10

    #@49
    add-int/lit8 v10, v6, 0x2

    #@4b
    aget-byte v10, p0, v10

    #@4d
    and-int/lit8 v10, v10, 0x3f

    #@4f
    shl-int/lit8 v10, v10, 0x6

    #@51
    or-int/2addr v9, v10

    #@52
    add-int/lit8 v10, v6, 0x3

    #@54
    aget-byte v10, p0, v10

    #@56
    and-int/lit8 v10, v10, 0x3f

    #@58
    or-int v4, v9, v10

    #@5a
    .line 51
    .local v4, "codePoint":I
    const/high16 v9, 0x10000

    #@5c
    sub-int v0, v4, v9

    #@5e
    .line 52
    .local v0, "U":I
    shr-int/lit8 v9, v0, 0xa

    #@60
    const v10, 0xd800

    #@63
    or-int/2addr v9, v10

    #@64
    int-to-char v1, v9

    #@65
    .line 53
    .local v1, "W1":C
    and-int/lit16 v9, v0, 0x3ff

    #@67
    const v10, 0xdc00

    #@6a
    or-int/2addr v9, v10

    #@6b
    int-to-char v2, v9

    #@6c
    .line 54
    .local v2, "W2":C
    add-int/lit8 v8, v7, 0x1

    #@6e
    .end local v7    # "length":I
    .local v8, "length":I
    aput-char v1, v5, v7

    #@70
    .line 55
    move v3, v2

    #@71
    .line 56
    .local v3, "ch":C
    add-int/lit8 v6, v6, 0x4

    #@73
    move v7, v8

    #@74
    .line 80
    .end local v0    # "U":I
    .end local v1    # "W1":C
    .end local v2    # "W2":C
    .end local v4    # "codePoint":I
    .end local v8    # "length":I
    .restart local v7    # "length":I
    :goto_2
    add-int/lit8 v8, v7, 0x1

    #@76
    .end local v7    # "length":I
    .restart local v8    # "length":I
    aput-char v3, v5, v7

    #@78
    move v7, v8

    #@79
    .end local v8    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    #@7a
    .line 58
    .end local v3    # "ch":C
    :cond_4
    aget-byte v9, p0, v6

    #@7c
    and-int/lit16 v9, v9, 0xe0

    #@7e
    if-ne v9, v12, :cond_5

    #@80
    .line 60
    aget-byte v9, p0, v6

    #@82
    and-int/lit8 v9, v9, 0xf

    #@84
    shl-int/lit8 v9, v9, 0xc

    #@86
    .line 61
    add-int/lit8 v10, v6, 0x1

    #@88
    aget-byte v10, p0, v10

    #@8a
    and-int/lit8 v10, v10, 0x3f

    #@8c
    shl-int/lit8 v10, v10, 0x6

    #@8e
    .line 60
    or-int/2addr v9, v10

    #@8f
    .line 61
    add-int/lit8 v10, v6, 0x2

    #@91
    aget-byte v10, p0, v10

    #@93
    and-int/lit8 v10, v10, 0x3f

    #@95
    .line 60
    or-int/2addr v9, v10

    #@96
    int-to-char v3, v9

    #@97
    .line 62
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x3

    #@99
    goto :goto_2

    #@9a
    .line 64
    .end local v3    # "ch":C
    :cond_5
    aget-byte v9, p0, v6

    #@9c
    and-int/lit16 v9, v9, 0xd0

    #@9e
    const/16 v10, 0xd0

    #@a0
    if-ne v9, v10, :cond_6

    #@a2
    .line 66
    aget-byte v9, p0, v6

    #@a4
    and-int/lit8 v9, v9, 0x1f

    #@a6
    shl-int/lit8 v9, v9, 0x6

    #@a8
    add-int/lit8 v10, v6, 0x1

    #@aa
    aget-byte v10, p0, v10

    #@ac
    and-int/lit8 v10, v10, 0x3f

    #@ae
    or-int/2addr v9, v10

    #@af
    int-to-char v3, v9

    #@b0
    .line 67
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x2

    #@b2
    goto :goto_2

    #@b3
    .line 69
    .end local v3    # "ch":C
    :cond_6
    aget-byte v9, p0, v6

    #@b5
    and-int/lit16 v9, v9, 0xc0

    #@b7
    if-ne v9, v11, :cond_7

    #@b9
    .line 71
    aget-byte v9, p0, v6

    #@bb
    and-int/lit8 v9, v9, 0x1f

    #@bd
    shl-int/lit8 v9, v9, 0x6

    #@bf
    add-int/lit8 v10, v6, 0x1

    #@c1
    aget-byte v10, p0, v10

    #@c3
    and-int/lit8 v10, v10, 0x3f

    #@c5
    or-int/2addr v9, v10

    #@c6
    int-to-char v3, v9

    #@c7
    .line 72
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x2

    #@c9
    goto :goto_2

    #@ca
    .line 76
    .end local v3    # "ch":C
    :cond_7
    aget-byte v9, p0, v6

    #@cc
    and-int/lit16 v9, v9, 0xff

    #@ce
    int-to-char v3, v9

    #@cf
    .line 77
    .restart local v3    # "ch":C
    add-int/lit8 v6, v6, 0x1

    #@d1
    goto :goto_2

    #@d2
    .line 83
    .end local v3    # "ch":C
    :cond_8
    new-instance v9, Ljava/lang/String;

    #@d4
    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    #@d7
    return-object v9
.end method

.method public static newList()Lcom/android/org/bouncycastle/util/StringList;
    .locals 2

    #@0
    .prologue
    .line 318
    new-instance v0, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/util/Strings$StringListImpl;-><init>(Lcom/android/org/bouncycastle/util/Strings$StringListImpl;)V

    #@6
    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 287
    new-instance v5, Ljava/util/Vector;

    #@3
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    #@6
    .line 288
    .local v5, "v":Ljava/util/Vector;
    const/4 v1, 0x1

    #@7
    .line 291
    .local v1, "moreTokens":Z
    :goto_0
    if-eqz v1, :cond_1

    #@9
    .line 293
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v4

    #@d
    .line 294
    .local v4, "tokenLocation":I
    if-lez v4, :cond_0

    #@f
    .line 296
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 297
    .local v3, "subString":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@16
    .line 298
    add-int/lit8 v6, v4, 0x1

    #@18
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    goto :goto_0

    #@1d
    .line 302
    .end local v3    # "subString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@1e
    .line 303
    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@21
    goto :goto_0

    #@22
    .line 307
    .end local v4    # "tokenLocation":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@25
    move-result v6

    #@26
    new-array v2, v6, [Ljava/lang/String;

    #@28
    .line 309
    .local v2, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_1
    array-length v6, v2

    #@2a
    if-eq v0, v6, :cond_2

    #@2c
    .line 311
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2f
    move-result-object v6

    #@30
    check-cast v6, Ljava/lang/String;

    #@32
    aput-object v6, v2, v0

    #@34
    .line 309
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_1

    #@37
    .line 313
    :cond_2
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;[BI)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 248
    .local v1, "count":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@7
    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 251
    .local v0, "c":C
    add-int v3, p2, v2

    #@d
    int-to-byte v4, v0

    #@e
    aput-byte v4, p1, v3

    #@10
    .line 248
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 253
    .end local v0    # "c":C
    :cond_0
    return v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    new-array v0, v3, [B

    #@6
    .line 235
    .local v0, "bytes":[B
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 237
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v1

    #@e
    .line 239
    .local v1, "ch":C
    int-to-byte v3, v1

    #@f
    aput-byte v3, v0, v2

    #@11
    .line 235
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 242
    .end local v1    # "ch":C
    :cond_0
    return-object v0
.end method

.method public static toByteArray([C)[B
    .locals 3
    .param p0, "chars"    # [C

    #@0
    .prologue
    .line 221
    array-length v2, p0

    #@1
    new-array v0, v2, [B

    #@3
    .line 223
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@5
    if-eq v1, v2, :cond_0

    #@7
    .line 225
    aget-char v2, p0, v1

    #@9
    int-to-byte v2, v2

    #@a
    aput-byte v2, v0, v1

    #@c
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 228
    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    const/4 v1, 0x0

    #@1
    .line 199
    .local v1, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@4
    move-result-object v2

    #@5
    .line 201
    .local v2, "chars":[C
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    #@7
    if-eq v3, v4, :cond_1

    #@9
    .line 203
    aget-char v0, v2, v3

    #@b
    .line 204
    .local v0, "ch":C
    const/16 v4, 0x41

    #@d
    if-gt v4, v0, :cond_0

    #@f
    const/16 v4, 0x5a

    #@11
    if-lt v4, v0, :cond_0

    #@13
    .line 206
    const/4 v1, 0x1

    #@14
    .line 207
    add-int/lit8 v4, v0, -0x41

    #@16
    add-int/lit8 v4, v4, 0x61

    #@18
    int-to-char v4, v4

    #@19
    aput-char v4, v2, v3

    #@1b
    .line 201
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 211
    .end local v0    # "ch":C
    :cond_1
    if-eqz v1, :cond_2

    #@20
    .line 213
    new-instance v4, Ljava/lang/String;

    #@22
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    #@25
    return-object v4

    #@26
    .line 216
    :cond_2
    return-object p0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .locals 9
    .param p0, "string"    # [C
    .param p1, "sOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x80

    #@2
    .line 110
    move-object v2, p0

    #@3
    .line 111
    .local v2, "c":[C
    const/4 v5, 0x0

    #@4
    .line 113
    .local v5, "i":I
    :goto_0
    array-length v6, v2

    #@5
    if-ge v5, v6, :cond_5

    #@7
    .line 115
    aget-char v3, v2, v5

    #@9
    .line 117
    .local v3, "ch":C
    if-ge v3, v8, :cond_0

    #@b
    .line 119
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    #@e
    .line 157
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@10
    goto :goto_0

    #@11
    .line 121
    :cond_0
    const/16 v6, 0x800

    #@13
    if-ge v3, v6, :cond_1

    #@15
    .line 123
    shr-int/lit8 v6, v3, 0x6

    #@17
    or-int/lit16 v6, v6, 0xc0

    #@19
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@1c
    .line 124
    and-int/lit8 v6, v3, 0x3f

    #@1e
    or-int/lit16 v6, v6, 0x80

    #@20
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@23
    goto :goto_1

    #@24
    .line 127
    :cond_1
    const v6, 0xd800

    #@27
    if-lt v3, v6, :cond_4

    #@29
    const v6, 0xdfff

    #@2c
    if-gt v3, v6, :cond_4

    #@2e
    .line 131
    add-int/lit8 v6, v5, 0x1

    #@30
    array-length v7, v2

    #@31
    if-lt v6, v7, :cond_2

    #@33
    .line 133
    new-instance v6, Ljava/lang/IllegalStateException;

    #@35
    const-string/jumbo v7, "invalid UTF-16 codepoint"

    #@38
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v6

    #@3c
    .line 135
    :cond_2
    move v0, v3

    #@3d
    .line 136
    .local v0, "W1":C
    add-int/lit8 v5, v5, 0x1

    #@3f
    aget-char v3, v2, v5

    #@41
    .line 137
    move v1, v3

    #@42
    .line 140
    .local v1, "W2":C
    const v6, 0xdbff

    #@45
    if-le v0, v6, :cond_3

    #@47
    .line 142
    new-instance v6, Ljava/lang/IllegalStateException;

    #@49
    const-string/jumbo v7, "invalid UTF-16 codepoint"

    #@4c
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v6

    #@50
    .line 144
    :cond_3
    and-int/lit16 v6, v0, 0x3ff

    #@52
    shl-int/lit8 v6, v6, 0xa

    #@54
    and-int/lit16 v7, v1, 0x3ff

    #@56
    or-int/2addr v6, v7

    #@57
    const/high16 v7, 0x10000

    #@59
    add-int v4, v6, v7

    #@5b
    .line 145
    .local v4, "codePoint":I
    shr-int/lit8 v6, v4, 0x12

    #@5d
    or-int/lit16 v6, v6, 0xf0

    #@5f
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@62
    .line 146
    shr-int/lit8 v6, v4, 0xc

    #@64
    and-int/lit8 v6, v6, 0x3f

    #@66
    or-int/lit16 v6, v6, 0x80

    #@68
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@6b
    .line 147
    shr-int/lit8 v6, v4, 0x6

    #@6d
    and-int/lit8 v6, v6, 0x3f

    #@6f
    or-int/lit16 v6, v6, 0x80

    #@71
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@74
    .line 148
    and-int/lit8 v6, v4, 0x3f

    #@76
    or-int/lit16 v6, v6, 0x80

    #@78
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@7b
    goto :goto_1

    #@7c
    .line 152
    .end local v0    # "W1":C
    .end local v1    # "W2":C
    .end local v4    # "codePoint":I
    :cond_4
    shr-int/lit8 v6, v3, 0xc

    #@7e
    or-int/lit16 v6, v6, 0xe0

    #@80
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@83
    .line 153
    shr-int/lit8 v6, v3, 0x6

    #@85
    and-int/lit8 v6, v6, 0x3f

    #@87
    or-int/lit16 v6, v6, 0x80

    #@89
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@8c
    .line 154
    and-int/lit8 v6, v3, 0x3f

    #@8e
    or-int/lit16 v6, v6, 0x80

    #@90
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    #@93
    goto/16 :goto_1

    #@95
    .line 108
    .end local v3    # "ch":C
    :cond_5
    return-void
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .locals 4
    .param p0, "string"    # [C

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 97
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 100
    :catch_0
    move-exception v1

    #@e
    .line 101
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v3, "cannot encode string to byte array!"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    const/4 v1, 0x0

    #@1
    .line 170
    .local v1, "changed":Z
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@4
    move-result-object v2

    #@5
    .line 172
    .local v2, "chars":[C
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v4, v2

    #@7
    if-eq v3, v4, :cond_1

    #@9
    .line 174
    aget-char v0, v2, v3

    #@b
    .line 175
    .local v0, "ch":C
    const/16 v4, 0x61

    #@d
    if-gt v4, v0, :cond_0

    #@f
    const/16 v4, 0x7a

    #@11
    if-lt v4, v0, :cond_0

    #@13
    .line 177
    const/4 v1, 0x1

    #@14
    .line 178
    add-int/lit8 v4, v0, -0x61

    #@16
    add-int/lit8 v4, v4, 0x41

    #@18
    int-to-char v4, v4

    #@19
    aput-char v4, v2, v3

    #@1b
    .line 172
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 182
    .end local v0    # "ch":C
    :cond_1
    if-eqz v1, :cond_2

    #@20
    .line 184
    new-instance v4, Ljava/lang/String;

    #@22
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    #@25
    return-object v4

    #@26
    .line 187
    :cond_2
    return-object p0
.end method
