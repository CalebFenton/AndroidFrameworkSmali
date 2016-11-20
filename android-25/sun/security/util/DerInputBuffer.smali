.class Lsun/security/util/DerInputBuffer;
.super Ljava/io/ByteArrayInputStream;
.source "DerInputBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@3
    return-void
.end method

.method constructor <init>([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@3
    .line 49
    return-void
.end method

.method private getTime(IZ)Ljava/util/Date;
    .locals 21
    .param p1, "len"    # I
    .param p2, "generalized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    const/16 v16, 0x0

    #@2
    .line 309
    .local v16, "type":Ljava/lang/String;
    if-eqz p2, :cond_1

    #@4
    .line 310
    const-string/jumbo v16, "Generalized"

    #@7
    .line 311
    .local v16, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@b
    move-object/from16 v18, v0

    #@d
    move-object/from16 v0, p0

    #@f
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@11
    move/from16 v19, v0

    #@13
    add-int/lit8 v20, v19, 0x1

    #@15
    move/from16 v0, v20

    #@17
    move-object/from16 v1, p0

    #@19
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@1b
    aget-byte v18, v18, v19

    #@1d
    move/from16 v0, v18

    #@1f
    int-to-char v0, v0

    #@20
    move/from16 v18, v0

    #@22
    const/16 v19, 0xa

    #@24
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@27
    move-result v18

    #@28
    move/from16 v0, v18

    #@2a
    mul-int/lit16 v0, v0, 0x3e8

    #@2c
    move/from16 v17, v0

    #@2e
    .line 312
    .local v17, "year":I
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@32
    move-object/from16 v18, v0

    #@34
    move-object/from16 v0, p0

    #@36
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@38
    move/from16 v19, v0

    #@3a
    add-int/lit8 v20, v19, 0x1

    #@3c
    move/from16 v0, v20

    #@3e
    move-object/from16 v1, p0

    #@40
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@42
    aget-byte v18, v18, v19

    #@44
    move/from16 v0, v18

    #@46
    int-to-char v0, v0

    #@47
    move/from16 v18, v0

    #@49
    const/16 v19, 0xa

    #@4b
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@4e
    move-result v18

    #@4f
    mul-int/lit8 v18, v18, 0x64

    #@51
    add-int v17, v17, v18

    #@53
    .line 313
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@57
    move-object/from16 v18, v0

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@5d
    move/from16 v19, v0

    #@5f
    add-int/lit8 v20, v19, 0x1

    #@61
    move/from16 v0, v20

    #@63
    move-object/from16 v1, p0

    #@65
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@67
    aget-byte v18, v18, v19

    #@69
    move/from16 v0, v18

    #@6b
    int-to-char v0, v0

    #@6c
    move/from16 v18, v0

    #@6e
    const/16 v19, 0xa

    #@70
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@73
    move-result v18

    #@74
    mul-int/lit8 v18, v18, 0xa

    #@76
    add-int v17, v17, v18

    #@78
    .line 314
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@7c
    move-object/from16 v18, v0

    #@7e
    move-object/from16 v0, p0

    #@80
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@82
    move/from16 v19, v0

    #@84
    add-int/lit8 v20, v19, 0x1

    #@86
    move/from16 v0, v20

    #@88
    move-object/from16 v1, p0

    #@8a
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@8c
    aget-byte v18, v18, v19

    #@8e
    move/from16 v0, v18

    #@90
    int-to-char v0, v0

    #@91
    move/from16 v18, v0

    #@93
    const/16 v19, 0xa

    #@95
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@98
    move-result v18

    #@99
    add-int v17, v17, v18

    #@9b
    .line 315
    add-int/lit8 p1, p1, -0x2

    #@9d
    .line 327
    :goto_0
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@a1
    move-object/from16 v18, v0

    #@a3
    move-object/from16 v0, p0

    #@a5
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@a7
    move/from16 v19, v0

    #@a9
    add-int/lit8 v20, v19, 0x1

    #@ab
    move/from16 v0, v20

    #@ad
    move-object/from16 v1, p0

    #@af
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@b1
    aget-byte v18, v18, v19

    #@b3
    move/from16 v0, v18

    #@b5
    int-to-char v0, v0

    #@b6
    move/from16 v18, v0

    #@b8
    const/16 v19, 0xa

    #@ba
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@bd
    move-result v18

    #@be
    mul-int/lit8 v10, v18, 0xa

    #@c0
    .line 328
    .local v10, "month":I
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@c4
    move-object/from16 v18, v0

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@ca
    move/from16 v19, v0

    #@cc
    add-int/lit8 v20, v19, 0x1

    #@ce
    move/from16 v0, v20

    #@d0
    move-object/from16 v1, p0

    #@d2
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@d4
    aget-byte v18, v18, v19

    #@d6
    move/from16 v0, v18

    #@d8
    int-to-char v0, v0

    #@d9
    move/from16 v18, v0

    #@db
    const/16 v19, 0xa

    #@dd
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@e0
    move-result v18

    #@e1
    add-int v10, v10, v18

    #@e3
    .line 330
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@e7
    move-object/from16 v18, v0

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@ed
    move/from16 v19, v0

    #@ef
    add-int/lit8 v20, v19, 0x1

    #@f1
    move/from16 v0, v20

    #@f3
    move-object/from16 v1, p0

    #@f5
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@f7
    aget-byte v18, v18, v19

    #@f9
    move/from16 v0, v18

    #@fb
    int-to-char v0, v0

    #@fc
    move/from16 v18, v0

    #@fe
    const/16 v19, 0xa

    #@100
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@103
    move-result v18

    #@104
    mul-int/lit8 v3, v18, 0xa

    #@106
    .line 331
    .local v3, "day":I
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@10a
    move-object/from16 v18, v0

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@110
    move/from16 v19, v0

    #@112
    add-int/lit8 v20, v19, 0x1

    #@114
    move/from16 v0, v20

    #@116
    move-object/from16 v1, p0

    #@118
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@11a
    aget-byte v18, v18, v19

    #@11c
    move/from16 v0, v18

    #@11e
    int-to-char v0, v0

    #@11f
    move/from16 v18, v0

    #@121
    const/16 v19, 0xa

    #@123
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@126
    move-result v18

    #@127
    add-int v3, v3, v18

    #@129
    .line 333
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@12d
    move-object/from16 v18, v0

    #@12f
    move-object/from16 v0, p0

    #@131
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@133
    move/from16 v19, v0

    #@135
    add-int/lit8 v20, v19, 0x1

    #@137
    move/from16 v0, v20

    #@139
    move-object/from16 v1, p0

    #@13b
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@13d
    aget-byte v18, v18, v19

    #@13f
    move/from16 v0, v18

    #@141
    int-to-char v0, v0

    #@142
    move/from16 v18, v0

    #@144
    const/16 v19, 0xa

    #@146
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@149
    move-result v18

    #@14a
    mul-int/lit8 v5, v18, 0xa

    #@14c
    .line 334
    .local v5, "hour":I
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@150
    move-object/from16 v18, v0

    #@152
    move-object/from16 v0, p0

    #@154
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@156
    move/from16 v19, v0

    #@158
    add-int/lit8 v20, v19, 0x1

    #@15a
    move/from16 v0, v20

    #@15c
    move-object/from16 v1, p0

    #@15e
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@160
    aget-byte v18, v18, v19

    #@162
    move/from16 v0, v18

    #@164
    int-to-char v0, v0

    #@165
    move/from16 v18, v0

    #@167
    const/16 v19, 0xa

    #@169
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@16c
    move-result v18

    #@16d
    add-int v5, v5, v18

    #@16f
    .line 336
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@173
    move-object/from16 v18, v0

    #@175
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@179
    move/from16 v19, v0

    #@17b
    add-int/lit8 v20, v19, 0x1

    #@17d
    move/from16 v0, v20

    #@17f
    move-object/from16 v1, p0

    #@181
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@183
    aget-byte v18, v18, v19

    #@185
    move/from16 v0, v18

    #@187
    int-to-char v0, v0

    #@188
    move/from16 v18, v0

    #@18a
    const/16 v19, 0xa

    #@18c
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@18f
    move-result v18

    #@190
    mul-int/lit8 v9, v18, 0xa

    #@192
    .line 337
    .local v9, "minute":I
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@196
    move-object/from16 v18, v0

    #@198
    move-object/from16 v0, p0

    #@19a
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@19c
    move/from16 v19, v0

    #@19e
    add-int/lit8 v20, v19, 0x1

    #@1a0
    move/from16 v0, v20

    #@1a2
    move-object/from16 v1, p0

    #@1a4
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@1a6
    aget-byte v18, v18, v19

    #@1a8
    move/from16 v0, v18

    #@1aa
    int-to-char v0, v0

    #@1ab
    move/from16 v18, v0

    #@1ad
    const/16 v19, 0xa

    #@1af
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@1b2
    move-result v18

    #@1b3
    add-int v9, v9, v18

    #@1b5
    .line 339
    add-int/lit8 p1, p1, -0xa

    #@1b7
    .line 347
    const/4 v7, 0x0

    #@1b8
    .line 348
    .local v7, "millis":I
    const/16 v18, 0x2

    #@1ba
    move/from16 v0, p1

    #@1bc
    move/from16 v1, v18

    #@1be
    if-le v0, v1, :cond_6

    #@1c0
    const/16 v18, 0xc

    #@1c2
    move/from16 v0, p1

    #@1c4
    move/from16 v1, v18

    #@1c6
    if-ge v0, v1, :cond_6

    #@1c8
    .line 349
    move-object/from16 v0, p0

    #@1ca
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@1cc
    move-object/from16 v18, v0

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@1d2
    move/from16 v19, v0

    #@1d4
    add-int/lit8 v20, v19, 0x1

    #@1d6
    move/from16 v0, v20

    #@1d8
    move-object/from16 v1, p0

    #@1da
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@1dc
    aget-byte v18, v18, v19

    #@1de
    move/from16 v0, v18

    #@1e0
    int-to-char v0, v0

    #@1e1
    move/from16 v18, v0

    #@1e3
    const/16 v19, 0xa

    #@1e5
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@1e8
    move-result v18

    #@1e9
    mul-int/lit8 v13, v18, 0xa

    #@1eb
    .line 350
    .local v13, "second":I
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@1ef
    move-object/from16 v18, v0

    #@1f1
    move-object/from16 v0, p0

    #@1f3
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@1f5
    move/from16 v19, v0

    #@1f7
    add-int/lit8 v20, v19, 0x1

    #@1f9
    move/from16 v0, v20

    #@1fb
    move-object/from16 v1, p0

    #@1fd
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@1ff
    aget-byte v18, v18, v19

    #@201
    move/from16 v0, v18

    #@203
    int-to-char v0, v0

    #@204
    move/from16 v18, v0

    #@206
    const/16 v19, 0xa

    #@208
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@20b
    move-result v18

    #@20c
    add-int v13, v13, v18

    #@20e
    .line 351
    add-int/lit8 p1, p1, -0x2

    #@210
    .line 353
    move-object/from16 v0, p0

    #@212
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@214
    move-object/from16 v18, v0

    #@216
    move-object/from16 v0, p0

    #@218
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@21a
    move/from16 v19, v0

    #@21c
    aget-byte v18, v18, v19

    #@21e
    const/16 v19, 0x2e

    #@220
    move/from16 v0, v18

    #@222
    move/from16 v1, v19

    #@224
    if-eq v0, v1, :cond_0

    #@226
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@22a
    move-object/from16 v18, v0

    #@22c
    move-object/from16 v0, p0

    #@22e
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@230
    move/from16 v19, v0

    #@232
    aget-byte v18, v18, v19

    #@234
    const/16 v19, 0x2c

    #@236
    move/from16 v0, v18

    #@238
    move/from16 v1, v19

    #@23a
    if-ne v0, v1, :cond_4

    #@23c
    .line 354
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@23e
    .line 355
    move-object/from16 v0, p0

    #@240
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@242
    move/from16 v18, v0

    #@244
    add-int/lit8 v18, v18, 0x1

    #@246
    move/from16 v0, v18

    #@248
    move-object/from16 v1, p0

    #@24a
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@24c
    .line 357
    const/4 v12, 0x0

    #@24d
    .line 358
    .local v12, "precision":I
    move-object/from16 v0, p0

    #@24f
    iget v11, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@251
    .line 359
    .local v11, "peek":I
    :goto_1
    move-object/from16 v0, p0

    #@253
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@255
    move-object/from16 v18, v0

    #@257
    aget-byte v18, v18, v11

    #@259
    const/16 v19, 0x5a

    #@25b
    move/from16 v0, v18

    #@25d
    move/from16 v1, v19

    #@25f
    if-eq v0, v1, :cond_3

    #@261
    .line 360
    move-object/from16 v0, p0

    #@263
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@265
    move-object/from16 v18, v0

    #@267
    aget-byte v18, v18, v11

    #@269
    const/16 v19, 0x2b

    #@26b
    move/from16 v0, v18

    #@26d
    move/from16 v1, v19

    #@26f
    if-eq v0, v1, :cond_3

    #@271
    .line 361
    move-object/from16 v0, p0

    #@273
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@275
    move-object/from16 v18, v0

    #@277
    aget-byte v18, v18, v11

    #@279
    const/16 v19, 0x2d

    #@27b
    move/from16 v0, v18

    #@27d
    move/from16 v1, v19

    #@27f
    if-eq v0, v1, :cond_3

    #@281
    .line 362
    add-int/lit8 v11, v11, 0x1

    #@283
    .line 363
    add-int/lit8 v12, v12, 0x1

    #@285
    goto :goto_1

    #@286
    .line 317
    .end local v3    # "day":I
    .end local v5    # "hour":I
    .end local v7    # "millis":I
    .end local v9    # "minute":I
    .end local v10    # "month":I
    .end local v11    # "peek":I
    .end local v12    # "precision":I
    .end local v13    # "second":I
    .end local v17    # "year":I
    .local v16, "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v16, "UTC"

    #@289
    .line 318
    .local v16, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@28d
    move-object/from16 v18, v0

    #@28f
    move-object/from16 v0, p0

    #@291
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@293
    move/from16 v19, v0

    #@295
    add-int/lit8 v20, v19, 0x1

    #@297
    move/from16 v0, v20

    #@299
    move-object/from16 v1, p0

    #@29b
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@29d
    aget-byte v18, v18, v19

    #@29f
    move/from16 v0, v18

    #@2a1
    int-to-char v0, v0

    #@2a2
    move/from16 v18, v0

    #@2a4
    const/16 v19, 0xa

    #@2a6
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@2a9
    move-result v18

    #@2aa
    mul-int/lit8 v17, v18, 0xa

    #@2ac
    .line 319
    .restart local v17    # "year":I
    move-object/from16 v0, p0

    #@2ae
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@2b0
    move-object/from16 v18, v0

    #@2b2
    move-object/from16 v0, p0

    #@2b4
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@2b6
    move/from16 v19, v0

    #@2b8
    add-int/lit8 v20, v19, 0x1

    #@2ba
    move/from16 v0, v20

    #@2bc
    move-object/from16 v1, p0

    #@2be
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@2c0
    aget-byte v18, v18, v19

    #@2c2
    move/from16 v0, v18

    #@2c4
    int-to-char v0, v0

    #@2c5
    move/from16 v18, v0

    #@2c7
    const/16 v19, 0xa

    #@2c9
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@2cc
    move-result v18

    #@2cd
    add-int v17, v17, v18

    #@2cf
    .line 321
    const/16 v18, 0x32

    #@2d1
    move/from16 v0, v17

    #@2d3
    move/from16 v1, v18

    #@2d5
    if-ge v0, v1, :cond_2

    #@2d7
    .line 322
    move/from16 v0, v17

    #@2d9
    add-int/lit16 v0, v0, 0x7d0

    #@2db
    move/from16 v17, v0

    #@2dd
    goto/16 :goto_0

    #@2df
    .line 324
    :cond_2
    move/from16 v0, v17

    #@2e1
    add-int/lit16 v0, v0, 0x76c

    #@2e3
    move/from16 v17, v0

    #@2e5
    goto/16 :goto_0

    #@2e7
    .line 365
    .restart local v3    # "day":I
    .restart local v5    # "hour":I
    .restart local v7    # "millis":I
    .restart local v9    # "minute":I
    .restart local v10    # "month":I
    .restart local v11    # "peek":I
    .restart local v12    # "precision":I
    .restart local v13    # "second":I
    :cond_3
    packed-switch v12, :pswitch_data_0

    #@2ea
    .line 379
    new-instance v18, Ljava/io/IOException;

    #@2ec
    new-instance v19, Ljava/lang/StringBuilder;

    #@2ee
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2f1
    const-string/jumbo v20, "Parse "

    #@2f4
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v19

    #@2f8
    move-object/from16 v0, v19

    #@2fa
    move-object/from16 v1, v16

    #@2fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v19

    #@300
    .line 380
    const-string/jumbo v20, " time, unsupported precision for seconds value"

    #@303
    .line 379
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v19

    #@307
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30a
    move-result-object v19

    #@30b
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30e
    throw v18

    #@30f
    .line 367
    :pswitch_0
    move-object/from16 v0, p0

    #@311
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@313
    move-object/from16 v18, v0

    #@315
    move-object/from16 v0, p0

    #@317
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@319
    move/from16 v19, v0

    #@31b
    add-int/lit8 v20, v19, 0x1

    #@31d
    move/from16 v0, v20

    #@31f
    move-object/from16 v1, p0

    #@321
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@323
    aget-byte v18, v18, v19

    #@325
    move/from16 v0, v18

    #@327
    int-to-char v0, v0

    #@328
    move/from16 v18, v0

    #@32a
    const/16 v19, 0xa

    #@32c
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@32f
    move-result v18

    #@330
    mul-int/lit8 v18, v18, 0x64

    #@332
    add-int/lit8 v7, v18, 0x0

    #@334
    .line 368
    move-object/from16 v0, p0

    #@336
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@338
    move-object/from16 v18, v0

    #@33a
    move-object/from16 v0, p0

    #@33c
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@33e
    move/from16 v19, v0

    #@340
    add-int/lit8 v20, v19, 0x1

    #@342
    move/from16 v0, v20

    #@344
    move-object/from16 v1, p0

    #@346
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@348
    aget-byte v18, v18, v19

    #@34a
    move/from16 v0, v18

    #@34c
    int-to-char v0, v0

    #@34d
    move/from16 v18, v0

    #@34f
    const/16 v19, 0xa

    #@351
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@354
    move-result v18

    #@355
    mul-int/lit8 v18, v18, 0xa

    #@357
    add-int v7, v7, v18

    #@359
    .line 369
    move-object/from16 v0, p0

    #@35b
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@35d
    move-object/from16 v18, v0

    #@35f
    move-object/from16 v0, p0

    #@361
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@363
    move/from16 v19, v0

    #@365
    add-int/lit8 v20, v19, 0x1

    #@367
    move/from16 v0, v20

    #@369
    move-object/from16 v1, p0

    #@36b
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@36d
    aget-byte v18, v18, v19

    #@36f
    move/from16 v0, v18

    #@371
    int-to-char v0, v0

    #@372
    move/from16 v18, v0

    #@374
    const/16 v19, 0xa

    #@376
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@379
    move-result v18

    #@37a
    add-int v7, v7, v18

    #@37c
    .line 382
    :goto_2
    sub-int p1, p1, v12

    #@37e
    .line 387
    .end local v11    # "peek":I
    .end local v12    # "precision":I
    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    #@380
    if-nez v3, :cond_7

    #@382
    .line 390
    :cond_5
    new-instance v18, Ljava/io/IOException;

    #@384
    new-instance v19, Ljava/lang/StringBuilder;

    #@386
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@389
    const-string/jumbo v20, "Parse "

    #@38c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38f
    move-result-object v19

    #@390
    move-object/from16 v0, v19

    #@392
    move-object/from16 v1, v16

    #@394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@397
    move-result-object v19

    #@398
    const-string/jumbo v20, " time, invalid format"

    #@39b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39e
    move-result-object v19

    #@39f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a2
    move-result-object v19

    #@3a3
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a6
    throw v18

    #@3a7
    .line 372
    .restart local v11    # "peek":I
    .restart local v12    # "precision":I
    :pswitch_1
    move-object/from16 v0, p0

    #@3a9
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@3ab
    move-object/from16 v18, v0

    #@3ad
    move-object/from16 v0, p0

    #@3af
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@3b1
    move/from16 v19, v0

    #@3b3
    add-int/lit8 v20, v19, 0x1

    #@3b5
    move/from16 v0, v20

    #@3b7
    move-object/from16 v1, p0

    #@3b9
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@3bb
    aget-byte v18, v18, v19

    #@3bd
    move/from16 v0, v18

    #@3bf
    int-to-char v0, v0

    #@3c0
    move/from16 v18, v0

    #@3c2
    const/16 v19, 0xa

    #@3c4
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@3c7
    move-result v18

    #@3c8
    mul-int/lit8 v18, v18, 0x64

    #@3ca
    add-int/lit8 v7, v18, 0x0

    #@3cc
    .line 373
    move-object/from16 v0, p0

    #@3ce
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@3d0
    move-object/from16 v18, v0

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@3d6
    move/from16 v19, v0

    #@3d8
    add-int/lit8 v20, v19, 0x1

    #@3da
    move/from16 v0, v20

    #@3dc
    move-object/from16 v1, p0

    #@3de
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@3e0
    aget-byte v18, v18, v19

    #@3e2
    move/from16 v0, v18

    #@3e4
    int-to-char v0, v0

    #@3e5
    move/from16 v18, v0

    #@3e7
    const/16 v19, 0xa

    #@3e9
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@3ec
    move-result v18

    #@3ed
    mul-int/lit8 v18, v18, 0xa

    #@3ef
    add-int v7, v7, v18

    #@3f1
    .line 374
    goto :goto_2

    #@3f2
    .line 376
    :pswitch_2
    move-object/from16 v0, p0

    #@3f4
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@3f6
    move-object/from16 v18, v0

    #@3f8
    move-object/from16 v0, p0

    #@3fa
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@3fc
    move/from16 v19, v0

    #@3fe
    add-int/lit8 v20, v19, 0x1

    #@400
    move/from16 v0, v20

    #@402
    move-object/from16 v1, p0

    #@404
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@406
    aget-byte v18, v18, v19

    #@408
    move/from16 v0, v18

    #@40a
    int-to-char v0, v0

    #@40b
    move/from16 v18, v0

    #@40d
    const/16 v19, 0xa

    #@40f
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@412
    move-result v18

    #@413
    mul-int/lit8 v18, v18, 0x64

    #@415
    add-int/lit8 v7, v18, 0x0

    #@417
    .line 377
    goto/16 :goto_2

    #@419
    .line 385
    .end local v11    # "peek":I
    .end local v12    # "precision":I
    .end local v13    # "second":I
    :cond_6
    const/4 v13, 0x0

    #@41a
    .restart local v13    # "second":I
    goto/16 :goto_3

    #@41c
    .line 388
    :cond_7
    const/16 v18, 0xc

    #@41e
    move/from16 v0, v18

    #@420
    if-gt v10, v0, :cond_5

    #@422
    const/16 v18, 0x1f

    #@424
    move/from16 v0, v18

    #@426
    if-gt v3, v0, :cond_5

    #@428
    .line 389
    const/16 v18, 0x18

    #@42a
    move/from16 v0, v18

    #@42c
    if-ge v5, v0, :cond_5

    #@42e
    const/16 v18, 0x3c

    #@430
    move/from16 v0, v18

    #@432
    if-ge v9, v0, :cond_5

    #@434
    const/16 v18, 0x3c

    #@436
    move/from16 v0, v18

    #@438
    if-ge v13, v0, :cond_5

    #@43a
    .line 396
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    #@43d
    move-result-object v4

    #@43e
    .line 397
    .local v4, "gcal":Lsun/util/calendar/CalendarSystem;
    const/16 v18, 0x0

    #@440
    move-object/from16 v0, v18

    #@442
    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@445
    move-result-object v2

    #@446
    .line 398
    .local v2, "date":Lsun/util/calendar/CalendarDate;
    move/from16 v0, v17

    #@448
    invoke-virtual {v2, v0, v10, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@44b
    .line 399
    invoke-virtual {v2, v5, v9, v13, v7}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@44e
    .line 400
    invoke-virtual {v4, v2}, Lsun/util/calendar/CalendarSystem;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@451
    move-result-wide v14

    #@452
    .line 405
    .local v14, "time":J
    const/16 v18, 0x1

    #@454
    move/from16 v0, p1

    #@456
    move/from16 v1, v18

    #@458
    if-eq v0, v1, :cond_8

    #@45a
    const/16 v18, 0x5

    #@45c
    move/from16 v0, p1

    #@45e
    move/from16 v1, v18

    #@460
    if-eq v0, v1, :cond_8

    #@462
    .line 406
    new-instance v18, Ljava/io/IOException;

    #@464
    new-instance v19, Ljava/lang/StringBuilder;

    #@466
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@469
    const-string/jumbo v20, "Parse "

    #@46c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46f
    move-result-object v19

    #@470
    move-object/from16 v0, v19

    #@472
    move-object/from16 v1, v16

    #@474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@477
    move-result-object v19

    #@478
    const-string/jumbo v20, " time, invalid offset"

    #@47b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47e
    move-result-object v19

    #@47f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@482
    move-result-object v19

    #@483
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@486
    throw v18

    #@487
    .line 410
    :cond_8
    move-object/from16 v0, p0

    #@489
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@48b
    move-object/from16 v18, v0

    #@48d
    move-object/from16 v0, p0

    #@48f
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@491
    move/from16 v19, v0

    #@493
    add-int/lit8 v20, v19, 0x1

    #@495
    move/from16 v0, v20

    #@497
    move-object/from16 v1, p0

    #@499
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@49b
    aget-byte v18, v18, v19

    #@49d
    sparse-switch v18, :sswitch_data_0

    #@4a0
    .line 439
    new-instance v18, Ljava/io/IOException;

    #@4a2
    new-instance v19, Ljava/lang/StringBuilder;

    #@4a4
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@4a7
    const-string/jumbo v20, "Parse "

    #@4aa
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ad
    move-result-object v19

    #@4ae
    move-object/from16 v0, v19

    #@4b0
    move-object/from16 v1, v16

    #@4b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b5
    move-result-object v19

    #@4b6
    const-string/jumbo v20, " time, garbage offset"

    #@4b9
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bc
    move-result-object v19

    #@4bd
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c0
    move-result-object v19

    #@4c1
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c4
    throw v18

    #@4c5
    .line 412
    :sswitch_0
    move-object/from16 v0, p0

    #@4c7
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@4c9
    move-object/from16 v18, v0

    #@4cb
    move-object/from16 v0, p0

    #@4cd
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@4cf
    move/from16 v19, v0

    #@4d1
    add-int/lit8 v20, v19, 0x1

    #@4d3
    move/from16 v0, v20

    #@4d5
    move-object/from16 v1, p0

    #@4d7
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@4d9
    aget-byte v18, v18, v19

    #@4db
    move/from16 v0, v18

    #@4dd
    int-to-char v0, v0

    #@4de
    move/from16 v18, v0

    #@4e0
    const/16 v19, 0xa

    #@4e2
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@4e5
    move-result v18

    #@4e6
    mul-int/lit8 v6, v18, 0xa

    #@4e8
    .line 413
    .local v6, "hr":I
    move-object/from16 v0, p0

    #@4ea
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@4ec
    move-object/from16 v18, v0

    #@4ee
    move-object/from16 v0, p0

    #@4f0
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@4f2
    move/from16 v19, v0

    #@4f4
    add-int/lit8 v20, v19, 0x1

    #@4f6
    move/from16 v0, v20

    #@4f8
    move-object/from16 v1, p0

    #@4fa
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@4fc
    aget-byte v18, v18, v19

    #@4fe
    move/from16 v0, v18

    #@500
    int-to-char v0, v0

    #@501
    move/from16 v18, v0

    #@503
    const/16 v19, 0xa

    #@505
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@508
    move-result v18

    #@509
    add-int v6, v6, v18

    #@50b
    .line 414
    move-object/from16 v0, p0

    #@50d
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@50f
    move-object/from16 v18, v0

    #@511
    move-object/from16 v0, p0

    #@513
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@515
    move/from16 v19, v0

    #@517
    add-int/lit8 v20, v19, 0x1

    #@519
    move/from16 v0, v20

    #@51b
    move-object/from16 v1, p0

    #@51d
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@51f
    aget-byte v18, v18, v19

    #@521
    move/from16 v0, v18

    #@523
    int-to-char v0, v0

    #@524
    move/from16 v18, v0

    #@526
    const/16 v19, 0xa

    #@528
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@52b
    move-result v18

    #@52c
    mul-int/lit8 v8, v18, 0xa

    #@52e
    .line 415
    .local v8, "min":I
    move-object/from16 v0, p0

    #@530
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@532
    move-object/from16 v18, v0

    #@534
    move-object/from16 v0, p0

    #@536
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@538
    move/from16 v19, v0

    #@53a
    add-int/lit8 v20, v19, 0x1

    #@53c
    move/from16 v0, v20

    #@53e
    move-object/from16 v1, p0

    #@540
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@542
    aget-byte v18, v18, v19

    #@544
    move/from16 v0, v18

    #@546
    int-to-char v0, v0

    #@547
    move/from16 v18, v0

    #@549
    const/16 v19, 0xa

    #@54b
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@54e
    move-result v18

    #@54f
    add-int v8, v8, v18

    #@551
    .line 417
    const/16 v18, 0x18

    #@553
    move/from16 v0, v18

    #@555
    if-ge v6, v0, :cond_9

    #@557
    const/16 v18, 0x3c

    #@559
    move/from16 v0, v18

    #@55b
    if-lt v8, v0, :cond_a

    #@55d
    .line 418
    :cond_9
    new-instance v18, Ljava/io/IOException;

    #@55f
    new-instance v19, Ljava/lang/StringBuilder;

    #@561
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@564
    const-string/jumbo v20, "Parse "

    #@567
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56a
    move-result-object v19

    #@56b
    move-object/from16 v0, v19

    #@56d
    move-object/from16 v1, v16

    #@56f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@572
    move-result-object v19

    #@573
    const-string/jumbo v20, " time, +hhmm"

    #@576
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@579
    move-result-object v19

    #@57a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57d
    move-result-object v19

    #@57e
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@581
    throw v18

    #@582
    .line 420
    :cond_a
    mul-int/lit8 v18, v6, 0x3c

    #@584
    add-int v18, v18, v8

    #@586
    mul-int/lit8 v18, v18, 0x3c

    #@588
    move/from16 v0, v18

    #@58a
    mul-int/lit16 v0, v0, 0x3e8

    #@58c
    move/from16 v18, v0

    #@58e
    move/from16 v0, v18

    #@590
    int-to-long v0, v0

    #@591
    move-wide/from16 v18, v0

    #@593
    sub-long v14, v14, v18

    #@595
    .line 441
    .end local v6    # "hr":I
    .end local v8    # "min":I
    :goto_4
    :sswitch_1
    new-instance v18, Ljava/util/Date;

    #@597
    move-object/from16 v0, v18

    #@599
    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    #@59c
    return-object v18

    #@59d
    .line 424
    :sswitch_2
    move-object/from16 v0, p0

    #@59f
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@5a1
    move-object/from16 v18, v0

    #@5a3
    move-object/from16 v0, p0

    #@5a5
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@5a7
    move/from16 v19, v0

    #@5a9
    add-int/lit8 v20, v19, 0x1

    #@5ab
    move/from16 v0, v20

    #@5ad
    move-object/from16 v1, p0

    #@5af
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@5b1
    aget-byte v18, v18, v19

    #@5b3
    move/from16 v0, v18

    #@5b5
    int-to-char v0, v0

    #@5b6
    move/from16 v18, v0

    #@5b8
    const/16 v19, 0xa

    #@5ba
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@5bd
    move-result v18

    #@5be
    mul-int/lit8 v6, v18, 0xa

    #@5c0
    .line 425
    .restart local v6    # "hr":I
    move-object/from16 v0, p0

    #@5c2
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@5c4
    move-object/from16 v18, v0

    #@5c6
    move-object/from16 v0, p0

    #@5c8
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@5ca
    move/from16 v19, v0

    #@5cc
    add-int/lit8 v20, v19, 0x1

    #@5ce
    move/from16 v0, v20

    #@5d0
    move-object/from16 v1, p0

    #@5d2
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@5d4
    aget-byte v18, v18, v19

    #@5d6
    move/from16 v0, v18

    #@5d8
    int-to-char v0, v0

    #@5d9
    move/from16 v18, v0

    #@5db
    const/16 v19, 0xa

    #@5dd
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@5e0
    move-result v18

    #@5e1
    add-int v6, v6, v18

    #@5e3
    .line 426
    move-object/from16 v0, p0

    #@5e5
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@5e7
    move-object/from16 v18, v0

    #@5e9
    move-object/from16 v0, p0

    #@5eb
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@5ed
    move/from16 v19, v0

    #@5ef
    add-int/lit8 v20, v19, 0x1

    #@5f1
    move/from16 v0, v20

    #@5f3
    move-object/from16 v1, p0

    #@5f5
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@5f7
    aget-byte v18, v18, v19

    #@5f9
    move/from16 v0, v18

    #@5fb
    int-to-char v0, v0

    #@5fc
    move/from16 v18, v0

    #@5fe
    const/16 v19, 0xa

    #@600
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@603
    move-result v18

    #@604
    mul-int/lit8 v8, v18, 0xa

    #@606
    .line 427
    .restart local v8    # "min":I
    move-object/from16 v0, p0

    #@608
    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@60a
    move-object/from16 v18, v0

    #@60c
    move-object/from16 v0, p0

    #@60e
    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    #@610
    move/from16 v19, v0

    #@612
    add-int/lit8 v20, v19, 0x1

    #@614
    move/from16 v0, v20

    #@616
    move-object/from16 v1, p0

    #@618
    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    #@61a
    aget-byte v18, v18, v19

    #@61c
    move/from16 v0, v18

    #@61e
    int-to-char v0, v0

    #@61f
    move/from16 v18, v0

    #@621
    const/16 v19, 0xa

    #@623
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    #@626
    move-result v18

    #@627
    add-int v8, v8, v18

    #@629
    .line 429
    const/16 v18, 0x18

    #@62b
    move/from16 v0, v18

    #@62d
    if-ge v6, v0, :cond_b

    #@62f
    const/16 v18, 0x3c

    #@631
    move/from16 v0, v18

    #@633
    if-lt v8, v0, :cond_c

    #@635
    .line 430
    :cond_b
    new-instance v18, Ljava/io/IOException;

    #@637
    new-instance v19, Ljava/lang/StringBuilder;

    #@639
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@63c
    const-string/jumbo v20, "Parse "

    #@63f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@642
    move-result-object v19

    #@643
    move-object/from16 v0, v19

    #@645
    move-object/from16 v1, v16

    #@647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64a
    move-result-object v19

    #@64b
    const-string/jumbo v20, " time, -hhmm"

    #@64e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@651
    move-result-object v19

    #@652
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@655
    move-result-object v19

    #@656
    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@659
    throw v18

    #@65a
    .line 432
    :cond_c
    mul-int/lit8 v18, v6, 0x3c

    #@65c
    add-int v18, v18, v8

    #@65e
    mul-int/lit8 v18, v18, 0x3c

    #@660
    move/from16 v0, v18

    #@662
    mul-int/lit16 v0, v0, 0x3e8

    #@664
    move/from16 v18, v0

    #@666
    move/from16 v0, v18

    #@668
    int-to-long v0, v0

    #@669
    move-wide/from16 v18, v0

    #@66b
    add-long v14, v14, v18

    #@66d
    .line 433
    goto/16 :goto_4

    #@66f
    .line 365
    nop

    #@670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@67a
    .line 410
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2d -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method dup()Lsun/security/util/DerInputBuffer;
    .locals 4

    #@0
    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lsun/security/util/DerInputBuffer;

    #@6
    .line 57
    .local v1, "retval":Lsun/security/util/DerInputBuffer;
    const v2, 0x7fffffff

    #@9
    invoke-virtual {v1, v2}, Lsun/security/util/DerInputBuffer;->mark(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 58
    return-object v1

    #@d
    .line 59
    .end local v1    # "retval":Lsun/security/util/DerInputBuffer;
    :catch_0
    move-exception v0

    #@e
    .line 60
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 96
    instance-of v0, p1, Lsun/security/util/DerInputBuffer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 97
    check-cast p1, Lsun/security/util/DerInputBuffer;

    #@6
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 99
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method equals(Lsun/security/util/DerInputBuffer;)Z
    .locals 7
    .param p1, "other"    # Lsun/security/util/DerInputBuffer;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 103
    if-ne p0, p1, :cond_0

    #@4
    .line 104
    return v6

    #@5
    .line 106
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@8
    move-result v1

    #@9
    .line 107
    .local v1, "max":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->available()I

    #@c
    move-result v2

    #@d
    if-eq v2, v1, :cond_1

    #@f
    .line 108
    return v5

    #@10
    .line 109
    :cond_1
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@13
    .line 110
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@15
    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@17
    add-int/2addr v3, v0

    #@18
    aget-byte v2, v2, v3

    #@1a
    iget-object v3, p1, Lsun/security/util/DerInputBuffer;->buf:[B

    #@1c
    iget v4, p1, Lsun/security/util/DerInputBuffer;->pos:I

    #@1e
    add-int/2addr v4, v0

    #@1f
    aget-byte v3, v3, v4

    #@21
    if-eq v2, v3, :cond_2

    #@23
    .line 111
    return v5

    #@24
    .line 109
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 114
    :cond_3
    return v6
.end method

.method getBigInteger(IZ)Ljava/math/BigInteger;
    .locals 4
    .param p1, "len"    # I
    .param p2, "makePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 148
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@4
    move-result v1

    #@5
    if-le p1, v1, :cond_0

    #@7
    .line 149
    new-instance v1, Ljava/io/IOException;

    #@9
    const-string/jumbo v2, "short read of integer"

    #@c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 151
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 152
    new-instance v1, Ljava/io/IOException;

    #@14
    const-string/jumbo v2, "Invalid encoding: zero length Int value"

    #@17
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 155
    :cond_1
    new-array v0, p1, [B

    #@1d
    .line 157
    .local v0, "bytes":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@1f
    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@21
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 158
    int-to-long v2, p1

    #@25
    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    #@28
    .line 160
    if-eqz p2, :cond_2

    #@2a
    .line 161
    new-instance v1, Ljava/math/BigInteger;

    #@2c
    const/4 v2, 0x1

    #@2d
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@30
    return-object v1

    #@31
    .line 163
    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    #@33
    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@36
    return-object v1
.end method

.method getBitString()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getBitString(I)[B
    .locals 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 193
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@4
    move-result v2

    #@5
    if-le p1, v2, :cond_0

    #@7
    .line 194
    new-instance v2, Ljava/io/IOException;

    #@9
    const-string/jumbo v3, "short read of bit string"

    #@c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 196
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 197
    new-instance v2, Ljava/io/IOException;

    #@14
    const-string/jumbo v3, "Invalid encoding: zero length bit string"

    #@17
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2

    #@1b
    .line 200
    :cond_1
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@1d
    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@1f
    aget-byte v0, v2, v3

    #@21
    .line 201
    .local v0, "numOfPadBits":I
    if-ltz v0, :cond_2

    #@23
    const/4 v2, 0x7

    #@24
    if-le v0, v2, :cond_3

    #@26
    .line 202
    :cond_2
    new-instance v2, Ljava/io/IOException;

    #@28
    const-string/jumbo v3, "Invalid number of padding bits"

    #@2b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 205
    :cond_3
    add-int/lit8 v2, p1, -0x1

    #@31
    new-array v1, v2, [B

    #@33
    .line 206
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@35
    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@37
    add-int/lit8 v3, v3, 0x1

    #@39
    add-int/lit8 v4, p1, -0x1

    #@3b
    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3e
    .line 207
    if-eqz v0, :cond_4

    #@40
    .line 209
    add-int/lit8 v2, p1, -0x2

    #@42
    aget-byte v3, v1, v2

    #@44
    const/16 v4, 0xff

    #@46
    shl-int/2addr v4, v0

    #@47
    and-int/2addr v3, v4

    #@48
    int-to-byte v3, v3

    #@49
    aput-byte v3, v1, v2

    #@4b
    .line 211
    :cond_4
    int-to-long v2, p1

    #@4c
    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    #@4f
    .line 212
    return-object v1
.end method

.method public getGeneralizedTime(I)Ljava/util/Date;
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@3
    move-result v0

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 271
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "short read of DER Generalized Time"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 273
    :cond_0
    const/16 v0, 0xd

    #@11
    if-lt p1, v0, :cond_1

    #@13
    const/16 v0, 0x17

    #@15
    if-le p1, v0, :cond_2

    #@17
    .line 274
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@19
    const-string/jumbo v1, "DER Generalized Time length error"

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 276
    :cond_2
    const/4 v0, 0x1

    #@21
    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public getInteger(I)I
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    #@4
    move-result-object v0

    #@5
    .line 179
    .local v0, "result":Ljava/math/BigInteger;
    const-wide/32 v2, -0x80000000

    #@8
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@f
    move-result v1

    #@10
    if-gez v1, :cond_0

    #@12
    .line 180
    new-instance v1, Ljava/io/IOException;

    #@14
    const-string/jumbo v2, "Integer below minimum valid value"

    #@17
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 182
    :cond_0
    const-wide/32 v2, 0x7fffffff

    #@1e
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@25
    move-result v1

    #@26
    if-lez v1, :cond_1

    #@28
    .line 183
    new-instance v1, Ljava/io/IOException;

    #@2a
    const-string/jumbo v2, "Integer exceeds maximum valid value"

    #@2d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 185
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@34
    move-result v1

    #@35
    return v1
.end method

.method getPos()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@2
    return v0
.end method

.method getSlice(II)[B
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 79
    new-array v0, p2, [B

    #@2
    .line 80
    .local v0, "result":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@8
    .line 81
    return-object v0
.end method

.method public getUTCTime(I)Ljava/util/Date;
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@3
    move-result v0

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 256
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "short read of DER UTC Time"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 258
    :cond_0
    const/16 v0, 0xb

    #@11
    if-lt p1, v0, :cond_1

    #@13
    const/16 v0, 0x11

    #@15
    if-le p1, v0, :cond_2

    #@17
    .line 259
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@19
    const-string/jumbo v1, "DER UTC Time length error"

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 261
    :cond_2
    const/4 v0, 0x0

    #@21
    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 227
    iget v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@3
    iget v6, p0, Lsun/security/util/DerInputBuffer;->count:I

    #@5
    if-lt v5, v6, :cond_0

    #@7
    .line 228
    const/4 v5, 0x0

    #@8
    return-object v5

    #@9
    .line 233
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@c
    move-result v2

    #@d
    .line 234
    .local v2, "len":I
    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@f
    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@11
    aget-byte v5, v5, v6

    #@13
    and-int/lit16 v4, v5, 0xff

    #@15
    .line 235
    .local v4, "unusedBits":I
    const/4 v5, 0x7

    #@16
    if-le v4, v5, :cond_1

    #@18
    .line 236
    new-instance v5, Ljava/io/IOException;

    #@1a
    new-instance v6, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v7, "Invalid value for unused bits: "

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31
    throw v5

    #@32
    .line 238
    :cond_1
    add-int/lit8 v5, v2, -0x1

    #@34
    new-array v1, v5, [B

    #@36
    .line 240
    .local v1, "bits":[B
    array-length v5, v1

    #@37
    if-nez v5, :cond_2

    #@39
    const/4 v3, 0x0

    #@3a
    .line 242
    .local v3, "length":I
    :goto_0
    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@3c
    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@3e
    add-int/lit8 v6, v6, 0x1

    #@40
    add-int/lit8 v7, v2, -0x1

    #@42
    invoke-static {v5, v6, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@45
    .line 244
    new-instance v0, Lsun/security/util/BitArray;

    #@47
    invoke-direct {v0, v3, v1}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@4a
    .line 245
    .local v0, "bitArray":Lsun/security/util/BitArray;
    iget v5, p0, Lsun/security/util/DerInputBuffer;->count:I

    #@4c
    iput v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@4e
    .line 246
    return-object v0

    #@4f
    .line 240
    .end local v0    # "bitArray":Lsun/security/util/BitArray;
    .end local v3    # "length":I
    :cond_2
    array-length v5, v1

    #@50
    mul-int/lit8 v5, v5, 0x8

    #@52
    sub-int v3, v5, v4

    #@54
    .restart local v3    # "length":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 123
    const/4 v3, 0x0

    #@1
    .line 125
    .local v3, "retval":I
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@4
    move-result v1

    #@5
    .line 126
    .local v1, "len":I
    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@7
    .line 128
    .local v2, "p":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 129
    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@c
    add-int v5, v2, v0

    #@e
    aget-byte v4, v4, v5

    #@10
    mul-int/2addr v4, v0

    #@11
    add-int/2addr v3, v4

    #@12
    .line 128
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 130
    :cond_0
    return v3
.end method

.method peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@2
    iget v1, p0, Lsun/security/util/DerInputBuffer;->count:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 86
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "out of data"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 88
    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@11
    iget v1, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@13
    aget-byte v0, v0, v1

    #@15
    return v0
.end method

.method toByteArray()[B
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 65
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@4
    move-result v0

    #@5
    .line 66
    .local v0, "len":I
    if-gtz v0, :cond_0

    #@7
    .line 67
    const/4 v2, 0x0

    #@8
    return-object v2

    #@9
    .line 68
    :cond_0
    new-array v1, v0, [B

    #@b
    .line 70
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    #@d
    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@f
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@12
    .line 71
    return-object v1
.end method

.method truncate(I)V
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    #@3
    move-result v0

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 135
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "insufficient data"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 136
    :cond_0
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    #@11
    add-int/2addr v0, p1

    #@12
    iput v0, p0, Lsun/security/util/DerInputBuffer;->count:I

    #@14
    .line 133
    return-void
.end method
