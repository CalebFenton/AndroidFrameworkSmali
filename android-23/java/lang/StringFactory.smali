.class public final Ljava/lang/StringFactory;
.super Ljava/lang/Object;
.source "StringFactory.java"


# static fields
.field private static final REPLACEMENT_CHAR:C = '\ufffd'


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newEmptyString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 41
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    #@3
    invoke-static {v0, v1, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static newStringFromBytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 45
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newStringFromBytes([BI)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "high"    # I

    #@0
    .prologue
    .line 49
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, p1, v1, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newStringFromBytes([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    #@0
    .prologue
    .line 53
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static native newStringFromBytes([BIII)Ljava/lang/String;
.end method

.method public static newStringFromBytes([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-static {p3}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 29
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 68
    or-int v26, p1, p2

    #@2
    if-ltz v26, :cond_0

    #@4
    move-object/from16 v0, p0

    #@6
    array-length v0, v0

    #@7
    move/from16 v26, v0

    #@9
    sub-int v26, v26, p1

    #@b
    move/from16 v0, p2

    #@d
    move/from16 v1, v26

    #@f
    if-le v0, v1, :cond_1

    #@11
    .line 69
    :cond_0
    new-instance v26, Ljava/lang/StringIndexOutOfBoundsException;

    #@13
    move-object/from16 v0, p0

    #@15
    array-length v0, v0

    #@16
    move/from16 v27, v0

    #@18
    move-object/from16 v0, v26

    #@1a
    move/from16 v1, v27

    #@1c
    move/from16 v2, p1

    #@1e
    move/from16 v3, p2

    #@20
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    #@23
    throw v26

    #@24
    .line 76
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    .line 77
    .local v7, "canonicalCharsetName":Ljava/lang/String;
    const-string/jumbo v26, "UTF-8"

    #@2b
    move-object/from16 v0, v26

    #@2d
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v26

    #@31
    if-eqz v26, :cond_11

    #@33
    .line 78
    move-object/from16 v9, p0

    #@35
    .line 79
    .local v9, "d":[B
    move/from16 v0, p2

    #@37
    new-array v0, v0, [C

    #@39
    move-object/from16 v21, v0

    #@3b
    .line 81
    .local v21, "v":[C
    move/from16 v12, p1

    #@3d
    .line 82
    .local v12, "idx":I
    add-int v14, p1, p2

    #@3f
    .line 83
    .local v14, "last":I
    const/16 v17, 0x0

    #@41
    .local v17, "s":I
    move/from16 v18, v17

    #@43
    .end local v17    # "s":I
    .local v18, "s":I
    move v13, v12

    #@44
    .line 85
    .end local v12    # "idx":I
    .local v13, "idx":I
    :goto_0
    if-ge v13, v14, :cond_f

    #@46
    .line 86
    add-int/lit8 v12, v13, 0x1

    #@48
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v6, v9, v13

    #@4a
    .line 87
    .local v6, "b0":B
    and-int/lit16 v0, v6, 0x80

    #@4c
    move/from16 v26, v0

    #@4e
    if-nez v26, :cond_2

    #@50
    .line 90
    and-int/lit16 v0, v6, 0xff

    #@52
    move/from16 v22, v0

    #@54
    .line 91
    .local v22, "val":I
    add-int/lit8 v17, v18, 0x1

    #@56
    .end local v18    # "s":I
    .restart local v17    # "s":I
    move/from16 v0, v22

    #@58
    int-to-char v0, v0

    #@59
    move/from16 v26, v0

    #@5b
    aput-char v26, v21, v18

    #@5d
    .end local v22    # "val":I
    :goto_1
    move/from16 v18, v17

    #@5f
    .end local v17    # "s":I
    .restart local v18    # "s":I
    move v13, v12

    #@60
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_0

    #@61
    .line 92
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    :cond_2
    and-int/lit16 v0, v6, 0xe0

    #@63
    move/from16 v26, v0

    #@65
    const/16 v27, 0xc0

    #@67
    move/from16 v0, v26

    #@69
    move/from16 v1, v27

    #@6b
    if-eq v0, v1, :cond_3

    #@6d
    and-int/lit16 v0, v6, 0xf0

    #@6f
    move/from16 v26, v0

    #@71
    const/16 v27, 0xe0

    #@73
    move/from16 v0, v26

    #@75
    move/from16 v1, v27

    #@77
    if-ne v0, v1, :cond_5

    #@79
    .line 94
    :cond_3
    const/16 v20, 0x1

    #@7b
    .line 95
    .local v20, "utfCount":I
    and-int/lit16 v0, v6, 0xf0

    #@7d
    move/from16 v26, v0

    #@7f
    const/16 v27, 0xe0

    #@81
    move/from16 v0, v26

    #@83
    move/from16 v1, v27

    #@85
    if-ne v0, v1, :cond_6

    #@87
    const/16 v20, 0x2

    #@89
    .line 107
    :cond_4
    :goto_2
    add-int v26, v12, v20

    #@8b
    move/from16 v0, v26

    #@8d
    if-le v0, v14, :cond_9

    #@8f
    .line 108
    add-int/lit8 v17, v18, 0x1

    #@91
    .end local v18    # "s":I
    .restart local v17    # "s":I
    const v26, 0xfffd

    #@94
    aput-char v26, v21, v18

    #@96
    move/from16 v18, v17

    #@98
    .end local v17    # "s":I
    .restart local v18    # "s":I
    move v13, v12

    #@99
    .line 109
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_0

    #@9a
    .line 93
    .end local v13    # "idx":I
    .end local v20    # "utfCount":I
    .restart local v12    # "idx":I
    :cond_5
    and-int/lit16 v0, v6, 0xf8

    #@9c
    move/from16 v26, v0

    #@9e
    const/16 v27, 0xf0

    #@a0
    move/from16 v0, v26

    #@a2
    move/from16 v1, v27

    #@a4
    if-eq v0, v1, :cond_3

    #@a6
    and-int/lit16 v0, v6, 0xfc

    #@a8
    move/from16 v26, v0

    #@aa
    const/16 v27, 0xf8

    #@ac
    move/from16 v0, v26

    #@ae
    move/from16 v1, v27

    #@b0
    if-eq v0, v1, :cond_3

    #@b2
    and-int/lit16 v0, v6, 0xfe

    #@b4
    move/from16 v26, v0

    #@b6
    const/16 v27, 0xfc

    #@b8
    move/from16 v0, v26

    #@ba
    move/from16 v1, v27

    #@bc
    if-eq v0, v1, :cond_3

    #@be
    .line 166
    add-int/lit8 v17, v18, 0x1

    #@c0
    .end local v18    # "s":I
    .restart local v17    # "s":I
    const v26, 0xfffd

    #@c3
    aput-char v26, v21, v18

    #@c5
    goto :goto_1

    #@c6
    .line 96
    .end local v17    # "s":I
    .restart local v18    # "s":I
    .restart local v20    # "utfCount":I
    :cond_6
    and-int/lit16 v0, v6, 0xf8

    #@c8
    move/from16 v26, v0

    #@ca
    const/16 v27, 0xf0

    #@cc
    move/from16 v0, v26

    #@ce
    move/from16 v1, v27

    #@d0
    if-ne v0, v1, :cond_7

    #@d2
    const/16 v20, 0x3

    #@d4
    goto :goto_2

    #@d5
    .line 97
    :cond_7
    and-int/lit16 v0, v6, 0xfc

    #@d7
    move/from16 v26, v0

    #@d9
    const/16 v27, 0xf8

    #@db
    move/from16 v0, v26

    #@dd
    move/from16 v1, v27

    #@df
    if-ne v0, v1, :cond_8

    #@e1
    const/16 v20, 0x4

    #@e3
    goto :goto_2

    #@e4
    .line 98
    :cond_8
    and-int/lit16 v0, v6, 0xfe

    #@e6
    move/from16 v26, v0

    #@e8
    const/16 v27, 0xfc

    #@ea
    move/from16 v0, v26

    #@ec
    move/from16 v1, v27

    #@ee
    if-ne v0, v1, :cond_4

    #@f0
    const/16 v20, 0x5

    #@f2
    goto :goto_2

    #@f3
    .line 113
    :cond_9
    add-int/lit8 v26, v20, -0x1

    #@f5
    const/16 v27, 0x1f

    #@f7
    shr-int v26, v27, v26

    #@f9
    and-int v22, v6, v26

    #@fb
    .line 114
    .restart local v22    # "val":I
    const/4 v11, 0x0

    #@fc
    .local v11, "i":I
    move v13, v12

    #@fd
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    :goto_3
    move/from16 v0, v20

    #@ff
    if-ge v11, v0, :cond_b

    #@101
    .line 115
    add-int/lit8 v12, v13, 0x1

    #@103
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    aget-byte v5, v9, v13

    #@105
    .line 116
    .local v5, "b":B
    and-int/lit16 v0, v5, 0xc0

    #@107
    move/from16 v26, v0

    #@109
    const/16 v27, 0x80

    #@10b
    move/from16 v0, v26

    #@10d
    move/from16 v1, v27

    #@10f
    if-eq v0, v1, :cond_a

    #@111
    .line 117
    add-int/lit8 v17, v18, 0x1

    #@113
    .end local v18    # "s":I
    .restart local v17    # "s":I
    const v26, 0xfffd

    #@116
    aput-char v26, v21, v18

    #@118
    .line 118
    add-int/lit8 v12, v12, -0x1

    #@11a
    move/from16 v18, v17

    #@11c
    .end local v17    # "s":I
    .restart local v18    # "s":I
    move v13, v12

    #@11d
    .line 119
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto/16 :goto_0

    #@11f
    .line 122
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    :cond_a
    shl-int/lit8 v22, v22, 0x6

    #@121
    .line 123
    and-int/lit8 v26, v5, 0x3f

    #@123
    or-int v22, v22, v26

    #@125
    .line 114
    add-int/lit8 v11, v11, 0x1

    #@127
    move v13, v12

    #@128
    .end local v12    # "idx":I
    .restart local v13    # "idx":I
    goto :goto_3

    #@129
    .line 141
    .end local v5    # "b":B
    :cond_b
    const/16 v26, 0x2

    #@12b
    move/from16 v0, v20

    #@12d
    move/from16 v1, v26

    #@12f
    if-eq v0, v1, :cond_c

    #@131
    const v26, 0xd800

    #@134
    move/from16 v0, v22

    #@136
    move/from16 v1, v26

    #@138
    if-lt v0, v1, :cond_c

    #@13a
    const v26, 0xdfff

    #@13d
    move/from16 v0, v22

    #@13f
    move/from16 v1, v26

    #@141
    if-gt v0, v1, :cond_c

    #@143
    .line 142
    add-int/lit8 v17, v18, 0x1

    #@145
    .end local v18    # "s":I
    .restart local v17    # "s":I
    const v26, 0xfffd

    #@148
    aput-char v26, v21, v18

    #@14a
    move/from16 v18, v17

    #@14c
    .line 143
    .end local v17    # "s":I
    .restart local v18    # "s":I
    goto/16 :goto_0

    #@14e
    .line 147
    :cond_c
    const v26, 0x10ffff

    #@151
    move/from16 v0, v22

    #@153
    move/from16 v1, v26

    #@155
    if-le v0, v1, :cond_d

    #@157
    .line 148
    add-int/lit8 v17, v18, 0x1

    #@159
    .end local v18    # "s":I
    .restart local v17    # "s":I
    const v26, 0xfffd

    #@15c
    aput-char v26, v21, v18

    #@15e
    move/from16 v18, v17

    #@160
    .line 149
    .end local v17    # "s":I
    .restart local v18    # "s":I
    goto/16 :goto_0

    #@162
    .line 153
    :cond_d
    const/high16 v26, 0x10000

    #@164
    move/from16 v0, v22

    #@166
    move/from16 v1, v26

    #@168
    if-ge v0, v1, :cond_e

    #@16a
    .line 154
    add-int/lit8 v17, v18, 0x1

    #@16c
    .end local v18    # "s":I
    .restart local v17    # "s":I
    move/from16 v0, v22

    #@16e
    int-to-char v0, v0

    #@16f
    move/from16 v26, v0

    #@171
    aput-char v26, v21, v18

    #@173
    :goto_4
    move v12, v13

    #@174
    .line 93
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    goto/16 :goto_1

    #@176
    .line 156
    .end local v12    # "idx":I
    .end local v17    # "s":I
    .restart local v13    # "idx":I
    .restart local v18    # "s":I
    :cond_e
    const v26, 0xffff

    #@179
    and-int v25, v22, v26

    #@17b
    .line 157
    .local v25, "x":I
    shr-int/lit8 v26, v22, 0x10

    #@17d
    and-int/lit8 v19, v26, 0x1f

    #@17f
    .line 158
    .local v19, "u":I
    add-int/lit8 v26, v19, -0x1

    #@181
    const v27, 0xffff

    #@184
    and-int v24, v26, v27

    #@186
    .line 159
    .local v24, "w":I
    shl-int/lit8 v26, v24, 0x6

    #@188
    const v27, 0xd800

    #@18b
    or-int v26, v26, v27

    #@18d
    shr-int/lit8 v27, v25, 0xa

    #@18f
    or-int v10, v26, v27

    #@191
    .line 160
    .local v10, "hi":I
    move/from16 v0, v25

    #@193
    and-int/lit16 v0, v0, 0x3ff

    #@195
    move/from16 v26, v0

    #@197
    const v27, 0xdc00

    #@19a
    or-int v16, v27, v26

    #@19c
    .line 161
    .local v16, "lo":I
    add-int/lit8 v17, v18, 0x1

    #@19e
    .end local v18    # "s":I
    .restart local v17    # "s":I
    int-to-char v0, v10

    #@19f
    move/from16 v26, v0

    #@1a1
    aput-char v26, v21, v18

    #@1a3
    .line 162
    add-int/lit8 v18, v17, 0x1

    #@1a5
    .end local v17    # "s":I
    .restart local v18    # "s":I
    move/from16 v0, v16

    #@1a7
    int-to-char v0, v0

    #@1a8
    move/from16 v26, v0

    #@1aa
    aput-char v26, v21, v17

    #@1ac
    move/from16 v17, v18

    #@1ae
    .end local v18    # "s":I
    .restart local v17    # "s":I
    goto :goto_4

    #@1af
    .line 170
    .end local v6    # "b0":B
    .end local v10    # "hi":I
    .end local v11    # "i":I
    .end local v16    # "lo":I
    .end local v17    # "s":I
    .end local v19    # "u":I
    .end local v20    # "utfCount":I
    .end local v22    # "val":I
    .end local v24    # "w":I
    .end local v25    # "x":I
    .restart local v18    # "s":I
    :cond_f
    move/from16 v0, v18

    #@1b1
    move/from16 v1, p2

    #@1b3
    if-ne v0, v1, :cond_10

    #@1b5
    .line 172
    move-object/from16 v23, v21

    #@1b7
    .line 173
    .local v23, "value":[C
    move/from16 v15, v18

    #@1b9
    .line 203
    .end local v9    # "d":[B
    .end local v13    # "idx":I
    .end local v14    # "last":I
    .end local v18    # "s":I
    .end local v21    # "v":[C
    .local v15, "length":I
    :goto_5
    const/16 v26, 0x0

    #@1bb
    move-object/from16 v0, v23

    #@1bd
    move/from16 v1, v26

    #@1bf
    invoke-static {v0, v1, v15}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@1c2
    move-result-object v26

    #@1c3
    return-object v26

    #@1c4
    .line 176
    .end local v15    # "length":I
    .end local v23    # "value":[C
    .restart local v9    # "d":[B
    .restart local v13    # "idx":I
    .restart local v14    # "last":I
    .restart local v18    # "s":I
    .restart local v21    # "v":[C
    :cond_10
    move/from16 v0, v18

    #@1c6
    new-array v0, v0, [C

    #@1c8
    move-object/from16 v23, v0

    #@1ca
    .line 177
    .restart local v23    # "value":[C
    move/from16 v15, v18

    #@1cc
    .line 178
    .restart local v15    # "length":I
    const/16 v26, 0x0

    #@1ce
    const/16 v27, 0x0

    #@1d0
    move-object/from16 v0, v21

    #@1d2
    move/from16 v1, v26

    #@1d4
    move-object/from16 v2, v23

    #@1d6
    move/from16 v3, v27

    #@1d8
    move/from16 v4, v18

    #@1da
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1dd
    goto :goto_5

    #@1de
    .line 180
    .end local v9    # "d":[B
    .end local v13    # "idx":I
    .end local v14    # "last":I
    .end local v15    # "length":I
    .end local v18    # "s":I
    .end local v21    # "v":[C
    .end local v23    # "value":[C
    :cond_11
    const-string/jumbo v26, "ISO-8859-1"

    #@1e1
    move-object/from16 v0, v26

    #@1e3
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e6
    move-result v26

    #@1e7
    if-eqz v26, :cond_12

    #@1e9
    .line 181
    move/from16 v0, p2

    #@1eb
    new-array v0, v0, [C

    #@1ed
    move-object/from16 v23, v0

    #@1ef
    .line 182
    .restart local v23    # "value":[C
    move/from16 v15, p2

    #@1f1
    .line 183
    .restart local v15    # "length":I
    move-object/from16 v0, p0

    #@1f3
    move/from16 v1, p1

    #@1f5
    move/from16 v2, p2

    #@1f7
    move-object/from16 v3, v23

    #@1f9
    invoke-static {v0, v1, v2, v3}, Llibcore/util/CharsetUtils;->isoLatin1BytesToChars([BII[C)V

    #@1fc
    goto :goto_5

    #@1fd
    .line 184
    .end local v15    # "length":I
    .end local v23    # "value":[C
    :cond_12
    const-string/jumbo v26, "US-ASCII"

    #@200
    move-object/from16 v0, v26

    #@202
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@205
    move-result v26

    #@206
    if-eqz v26, :cond_13

    #@208
    .line 185
    move/from16 v0, p2

    #@20a
    new-array v0, v0, [C

    #@20c
    move-object/from16 v23, v0

    #@20e
    .line 186
    .restart local v23    # "value":[C
    move/from16 v15, p2

    #@210
    .line 187
    .restart local v15    # "length":I
    move-object/from16 v0, p0

    #@212
    move/from16 v1, p1

    #@214
    move/from16 v2, p2

    #@216
    move-object/from16 v3, v23

    #@218
    invoke-static {v0, v1, v2, v3}, Llibcore/util/CharsetUtils;->asciiBytesToChars([BII[C)V

    #@21b
    goto :goto_5

    #@21c
    .line 189
    .end local v15    # "length":I
    .end local v23    # "value":[C
    :cond_13
    invoke-static/range {p0 .. p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@21f
    move-result-object v26

    #@220
    move-object/from16 v0, p3

    #@222
    move-object/from16 v1, v26

    #@224
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@227
    move-result-object v8

    #@228
    .line 190
    .local v8, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    #@22b
    move-result v15

    #@22c
    .line 191
    .restart local v15    # "length":I
    if-lez v15, :cond_14

    #@22e
    .line 197
    new-array v0, v15, [C

    #@230
    move-object/from16 v23, v0

    #@232
    .line 198
    .restart local v23    # "value":[C
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->array()[C

    #@235
    move-result-object v26

    #@236
    const/16 v27, 0x0

    #@238
    const/16 v28, 0x0

    #@23a
    move-object/from16 v0, v26

    #@23c
    move/from16 v1, v27

    #@23e
    move-object/from16 v2, v23

    #@240
    move/from16 v3, v28

    #@242
    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@245
    goto/16 :goto_5

    #@247
    .line 200
    .end local v23    # "value":[C
    :cond_14
    sget-object v23, Llibcore/util/EmptyArray;->CHAR:[C

    #@249
    .restart local v23    # "value":[C
    goto/16 :goto_5
.end method

.method public static newStringFromBytes([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    array-length v0, p0

    #@1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@4
    move-result-object v1

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {p0, v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 207
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0, p1}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static native newStringFromChars(II[C)Ljava/lang/String;
.end method

.method public static newStringFromChars([C)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [C

    #@0
    .prologue
    .line 211
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newStringFromChars([CII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "charCount"    # I

    #@0
    .prologue
    .line 215
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    array-length v0, p0

    #@5
    sub-int/2addr v0, p1

    #@6
    if-le p2, v0, :cond_1

    #@8
    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    array-length v1, p0

    #@b
    invoke-direct {v0, v1, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    #@e
    throw v0

    #@f
    .line 218
    :cond_1
    invoke-static {p1, p2, p0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static newStringFromCodePoints([III)Ljava/lang/String;
    .locals 6
    .param p0, "codePoints"    # [I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 233
    if-nez p0, :cond_0

    #@3
    .line 234
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "codePoints == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 236
    :cond_0
    or-int v4, p1, p2

    #@e
    if-ltz v4, :cond_1

    #@10
    array-length v4, p0

    #@11
    sub-int/2addr v4, p1

    #@12
    if-le p2, v4, :cond_2

    #@14
    .line 237
    :cond_1
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@16
    array-length v5, p0

    #@17
    invoke-direct {v4, v5, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    #@1a
    throw v4

    #@1b
    .line 239
    :cond_2
    mul-int/lit8 v4, p2, 0x2

    #@1d
    new-array v3, v4, [C

    #@1f
    .line 240
    .local v3, "value":[C
    add-int v0, p1, p2

    #@21
    .line 241
    .local v0, "end":I
    const/4 v2, 0x0

    #@22
    .line 242
    .local v2, "length":I
    move v1, p1

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@25
    .line 243
    aget v4, p0, v1

    #@27
    invoke-static {v4, v3, v2}, Ljava/lang/Character;->toChars(I[CI)I

    #@2a
    move-result v4

    #@2b
    add-int/2addr v2, v4

    #@2c
    .line 242
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 245
    :cond_3
    invoke-static {v3, v5, v2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    return-object v4
.end method

.method public static native newStringFromString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static newStringFromStringBuffer(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "stringBuffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 226
    monitor-enter p0

    #@1
    .line 227
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[C

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .line 226
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public static newStringFromStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v2, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
