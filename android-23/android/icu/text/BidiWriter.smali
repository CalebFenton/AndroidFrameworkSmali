.class final Landroid/icu/text/BidiWriter;
.super Ljava/lang/Object;
.source "BidiWriter.java"


# static fields
.field static final LRM_CHAR:C = '\u200e'

.field static final MASK_R_AL:I = 0x2002

.field static final RLM_CHAR:C = '\u200f'


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static IsCombining(I)Z
    .locals 3
    .param p0, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 25
    shl-int v2, v0, p0

    #@4
    and-int/lit16 v2, v2, 0x1c0

    #@6
    if-eqz v2, :cond_0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    move v0, v1

    #@a
    goto :goto_0
.end method

.method private static doWriteForward(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I

    #@0
    .prologue
    .line 42
    and-int/lit8 v6, p1, 0xa

    #@2
    sparse-switch v6, :sswitch_data_0

    #@5
    .line 76
    new-instance v2, Ljava/lang/StringBuffer;

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v6

    #@b
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    #@e
    .line 79
    .local v2, "dest":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@f
    .line 82
    .local v4, "i":I
    :cond_0
    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@12
    move-result v1

    #@13
    .line 83
    .local v1, "c":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@16
    move-result v6

    #@17
    add-int/2addr v4, v6

    #@18
    .line 84
    invoke-static {v1}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@1b
    move-result v6

    #@1c
    if-nez v6, :cond_1

    #@1e
    .line 85
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    #@21
    move-result v6

    #@22
    invoke-static {v2, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@25
    .line 87
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@28
    move-result v6

    #@29
    if-lt v4, v6, :cond_0

    #@2b
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    return-object v6

    #@30
    .line 45
    .end local v1    # "c":I
    .end local v2    # "dest":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    :sswitch_0
    return-object p0

    #@31
    .line 48
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuffer;

    #@33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@36
    move-result v6

    #@37
    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    #@3a
    .line 51
    .restart local v2    # "dest":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@3b
    .line 55
    .restart local v4    # "i":I
    :cond_2
    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@3e
    move-result v1

    #@3f
    .line 56
    .restart local v1    # "c":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@42
    move-result v6

    #@43
    add-int/2addr v4, v6

    #@44
    .line 57
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    #@47
    move-result v6

    #@48
    invoke-static {v2, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@4b
    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4e
    move-result v6

    #@4f
    if-lt v4, v6, :cond_2

    #@51
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    return-object v6

    #@56
    .line 62
    .end local v1    # "c":I
    .end local v2    # "dest":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5b
    move-result v6

    #@5c
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@5f
    .line 65
    .local v3, "dest":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    #@60
    .line 68
    .restart local v4    # "i":I
    :goto_0
    add-int/lit8 v5, v4, 0x1

    #@62
    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@65
    move-result v0

    #@66
    .line 69
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@69
    move-result v6

    #@6a
    if-nez v6, :cond_3

    #@6c
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    .line 72
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@72
    move-result v6

    #@73
    if-ge v5, v6, :cond_4

    #@75
    move v4, v5

    #@76
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@77
    .line 73
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    return-object v6

    #@7c
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private static doWriteForward([CIII)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "options"    # I

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/String;

    #@2
    sub-int v1, p2, p1

    #@4
    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    #@7
    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->doWriteForward(Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static doWriteReverse([CIII)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "options"    # I

    #@0
    .prologue
    .line 233
    new-instance v0, Ljava/lang/String;

    #@2
    sub-int v1, p2, p1

    #@4
    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    #@7
    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;
    .locals 14
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "options"    # I

    #@0
    .prologue
    const/16 v13, 0x200f

    #@2
    const/16 v12, 0x200e

    #@4
    const/16 v11, 0x2002

    #@6
    .line 240
    iget-object v6, p0, Landroid/icu/text/Bidi;->text:[C

    #@8
    .line 241
    .local v6, "text":[C
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    #@b
    move-result v5

    #@c
    .line 247
    .local v5, "runCount":I
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@e
    and-int/lit8 v8, v8, 0x1

    #@10
    if-eqz v8, :cond_0

    #@12
    .line 248
    or-int/lit8 p1, p1, 0x4

    #@14
    .line 249
    and-int/lit8 p1, p1, -0x9

    #@16
    .line 255
    :cond_0
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@18
    and-int/lit8 v8, v8, 0x2

    #@1a
    if-eqz v8, :cond_1

    #@1c
    .line 256
    or-int/lit8 p1, p1, 0x8

    #@1e
    .line 257
    and-int/lit8 p1, p1, -0x5

    #@20
    .line 263
    :cond_1
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@22
    const/4 v9, 0x4

    #@23
    if-eq v8, v9, :cond_2

    #@25
    .line 264
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@27
    const/4 v9, 0x5

    #@28
    if-eq v8, v9, :cond_2

    #@2a
    .line 265
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@2c
    const/4 v9, 0x6

    #@2d
    if-eq v8, v9, :cond_2

    #@2f
    .line 266
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@31
    const/4 v9, 0x3

    #@32
    if-eq v8, v9, :cond_2

    #@34
    .line 267
    and-int/lit8 p1, p1, -0x5

    #@36
    .line 269
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    and-int/lit8 v8, p1, 0x4

    #@3a
    if-eqz v8, :cond_3

    #@3c
    .line 270
    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    #@3e
    mul-int/lit8 v8, v8, 0x2

    #@40
    .line 269
    :goto_0
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@43
    .line 280
    .local v1, "dest":Ljava/lang/StringBuilder;
    and-int/lit8 v8, p1, 0x10

    #@45
    if-nez v8, :cond_18

    #@47
    .line 282
    and-int/lit8 v8, p1, 0x4

    #@49
    if-nez v8, :cond_5

    #@4b
    .line 284
    const/4 v4, 0x0

    #@4c
    .local v4, "run":I
    :goto_1
    if-ge v4, v5, :cond_1f

    #@4e
    .line 285
    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    #@51
    move-result-object v0

    #@52
    .line 286
    .local v0, "bidiRun":Landroid/icu/text/BidiRun;
    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@55
    move-result v8

    #@56
    if-eqz v8, :cond_4

    #@58
    .line 287
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@5a
    .line 288
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@5c
    .line 289
    and-int/lit8 v10, p1, -0x3

    #@5e
    .line 287
    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 284
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@67
    goto :goto_1

    #@68
    .line 270
    .end local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    .end local v1    # "dest":Ljava/lang/StringBuilder;
    .end local v4    # "run":I
    :cond_3
    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    #@6a
    goto :goto_0

    #@6b
    .line 291
    .restart local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    .restart local v1    # "dest":Ljava/lang/StringBuilder;
    .restart local v4    # "run":I
    :cond_4
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@6d
    .line 292
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@6f
    .line 291
    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    goto :goto_2

    #@77
    .line 297
    .end local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    .end local v4    # "run":I
    :cond_5
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@79
    .line 301
    .local v2, "dirProps":[B
    const/4 v4, 0x0

    #@7a
    .restart local v4    # "run":I
    :goto_3
    if-ge v4, v5, :cond_1f

    #@7c
    .line 302
    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    #@7f
    move-result-object v0

    #@80
    .line 303
    .restart local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    const/4 v3, 0x0

    #@81
    .line 305
    .local v3, "markFlag":I
    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@83
    aget-object v8, v8, v4

    #@85
    iget v3, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    #@87
    .line 306
    if-gez v3, :cond_6

    #@89
    .line 307
    const/4 v3, 0x0

    #@8a
    .line 309
    :cond_6
    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@8d
    move-result v8

    #@8e
    if-eqz v8, :cond_f

    #@90
    .line 310
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    #@93
    move-result v8

    #@94
    if-eqz v8, :cond_7

    #@96
    .line 311
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@98
    aget-byte v8, v2, v8

    #@9a
    if-eqz v8, :cond_7

    #@9c
    .line 312
    or-int/lit8 v3, v3, 0x1

    #@9e
    .line 314
    :cond_7
    and-int/lit8 v8, v3, 0x1

    #@a0
    if-eqz v8, :cond_b

    #@a2
    .line 315
    const/16 v7, 0x200e

    #@a4
    .line 321
    .local v7, "uc":C
    :goto_4
    if-eqz v7, :cond_8

    #@a6
    .line 322
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a9
    .line 325
    :cond_8
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@ab
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@ad
    .line 326
    and-int/lit8 v10, p1, -0x3

    #@af
    .line 324
    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    #@b2
    move-result-object v8

    #@b3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 328
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    #@b9
    move-result v8

    #@ba
    if-eqz v8, :cond_9

    #@bc
    .line 329
    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    #@be
    add-int/lit8 v8, v8, -0x1

    #@c0
    aget-byte v8, v2, v8

    #@c2
    if-eqz v8, :cond_9

    #@c4
    .line 330
    or-int/lit8 v3, v3, 0x2

    #@c6
    .line 332
    :cond_9
    and-int/lit8 v8, v3, 0x2

    #@c8
    if-eqz v8, :cond_d

    #@ca
    .line 333
    const/16 v7, 0x200e

    #@cc
    .line 339
    :goto_5
    if-eqz v7, :cond_a

    #@ce
    .line 340
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d1
    .line 301
    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    #@d3
    goto :goto_3

    #@d4
    .line 316
    .end local v7    # "uc":C
    :cond_b
    and-int/lit8 v8, v3, 0x4

    #@d6
    if-eqz v8, :cond_c

    #@d8
    .line 317
    const/16 v7, 0x200f

    #@da
    .restart local v7    # "uc":C
    goto :goto_4

    #@db
    .line 319
    .end local v7    # "uc":C
    :cond_c
    const/4 v7, 0x0

    #@dc
    .restart local v7    # "uc":C
    goto :goto_4

    #@dd
    .line 334
    :cond_d
    and-int/lit8 v8, v3, 0x8

    #@df
    if-eqz v8, :cond_e

    #@e1
    .line 335
    const/16 v7, 0x200f

    #@e3
    goto :goto_5

    #@e4
    .line 337
    :cond_e
    const/4 v7, 0x0

    #@e5
    goto :goto_5

    #@e6
    .line 343
    .end local v7    # "uc":C
    :cond_f
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    #@e9
    move-result v8

    #@ea
    if-eqz v8, :cond_10

    #@ec
    .line 345
    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    #@ee
    add-int/lit8 v8, v8, -0x1

    #@f0
    .line 344
    invoke-virtual {p0, v11, v8}, Landroid/icu/text/Bidi;->testDirPropFlagAt(II)Z

    #@f3
    move-result v8

    #@f4
    if-eqz v8, :cond_13

    #@f6
    .line 348
    :cond_10
    :goto_7
    and-int/lit8 v8, v3, 0x1

    #@f8
    if-eqz v8, :cond_14

    #@fa
    .line 349
    const/16 v7, 0x200e

    #@fc
    .line 355
    .restart local v7    # "uc":C
    :goto_8
    if-eqz v7, :cond_11

    #@fe
    .line 356
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@101
    .line 358
    :cond_11
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@103
    .line 359
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@105
    .line 358
    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    #@108
    move-result-object v8

    #@109
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    .line 361
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    #@10f
    move-result v8

    #@110
    if-eqz v8, :cond_12

    #@112
    .line 362
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@114
    aget-byte v8, v2, v8

    #@116
    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@119
    move-result v8

    #@11a
    and-int/lit16 v8, v8, 0x2002

    #@11c
    if-nez v8, :cond_12

    #@11e
    .line 363
    or-int/lit8 v3, v3, 0x8

    #@120
    .line 365
    :cond_12
    and-int/lit8 v8, v3, 0x2

    #@122
    if-eqz v8, :cond_16

    #@124
    .line 366
    const/16 v7, 0x200e

    #@126
    .line 372
    :goto_9
    if-eqz v7, :cond_a

    #@128
    .line 373
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12b
    goto :goto_6

    #@12c
    .line 346
    .end local v7    # "uc":C
    :cond_13
    or-int/lit8 v3, v3, 0x4

    #@12e
    goto :goto_7

    #@12f
    .line 350
    :cond_14
    and-int/lit8 v8, v3, 0x4

    #@131
    if-eqz v8, :cond_15

    #@133
    .line 351
    const/16 v7, 0x200f

    #@135
    .restart local v7    # "uc":C
    goto :goto_8

    #@136
    .line 353
    .end local v7    # "uc":C
    :cond_15
    const/4 v7, 0x0

    #@137
    .restart local v7    # "uc":C
    goto :goto_8

    #@138
    .line 367
    :cond_16
    and-int/lit8 v8, v3, 0x8

    #@13a
    if-eqz v8, :cond_17

    #@13c
    .line 368
    const/16 v7, 0x200f

    #@13e
    goto :goto_9

    #@13f
    .line 370
    :cond_17
    const/4 v7, 0x0

    #@140
    goto :goto_9

    #@141
    .line 380
    .end local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    .end local v2    # "dirProps":[B
    .end local v3    # "markFlag":I
    .end local v4    # "run":I
    .end local v7    # "uc":C
    :cond_18
    and-int/lit8 v8, p1, 0x4

    #@143
    if-nez v8, :cond_1a

    #@145
    .line 382
    move v4, v5

    #@146
    .restart local v4    # "run":I
    :goto_a
    add-int/lit8 v4, v4, -0x1

    #@148
    if-ltz v4, :cond_1f

    #@14a
    .line 383
    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    #@14d
    move-result-object v0

    #@14e
    .line 384
    .restart local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@151
    move-result v8

    #@152
    if-eqz v8, :cond_19

    #@154
    .line 386
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@156
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@158
    .line 387
    and-int/lit8 v10, p1, -0x3

    #@15a
    .line 385
    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    #@15d
    move-result-object v8

    #@15e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    goto :goto_a

    #@162
    .line 389
    :cond_19
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@164
    .line 390
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@166
    .line 389
    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    #@169
    move-result-object v8

    #@16a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    goto :goto_a

    #@16e
    .line 396
    .end local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    .end local v4    # "run":I
    :cond_1a
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@170
    .line 398
    .restart local v2    # "dirProps":[B
    move v4, v5

    #@171
    .restart local v4    # "run":I
    :cond_1b
    :goto_b
    add-int/lit8 v4, v4, -0x1

    #@173
    if-ltz v4, :cond_1f

    #@175
    .line 400
    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    #@178
    move-result-object v0

    #@179
    .line 401
    .restart local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    #@17c
    move-result v8

    #@17d
    if-eqz v8, :cond_1d

    #@17f
    .line 402
    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    #@181
    add-int/lit8 v8, v8, -0x1

    #@183
    aget-byte v8, v2, v8

    #@185
    if-eqz v8, :cond_1c

    #@187
    .line 403
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18a
    .line 406
    :cond_1c
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@18c
    .line 407
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@18e
    and-int/lit8 v10, p1, -0x3

    #@190
    .line 406
    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    #@193
    move-result-object v8

    #@194
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    .line 409
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@199
    aget-byte v8, v2, v8

    #@19b
    if-eqz v8, :cond_1b

    #@19d
    .line 410
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a0
    goto :goto_b

    #@1a1
    .line 413
    :cond_1d
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@1a3
    aget-byte v8, v2, v8

    #@1a5
    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1a8
    move-result v8

    #@1a9
    and-int/lit16 v8, v8, 0x2002

    #@1ab
    if-nez v8, :cond_1e

    #@1ad
    .line 414
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b0
    .line 417
    :cond_1e
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    #@1b2
    .line 418
    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    #@1b4
    .line 417
    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    #@1b7
    move-result-object v8

    #@1b8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    .line 420
    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    #@1bd
    add-int/lit8 v8, v8, -0x1

    #@1bf
    aget-byte v8, v2, v8

    #@1c1
    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1c4
    move-result v8

    #@1c5
    and-int/lit16 v8, v8, 0x2002

    #@1c7
    if-nez v8, :cond_1b

    #@1c9
    .line 421
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1cc
    goto :goto_b

    #@1cd
    .line 428
    .end local v0    # "bidiRun":Landroid/icu/text/BidiRun;
    .end local v2    # "dirProps":[B
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v8

    #@1d1
    return-object v8
.end method

.method static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I

    #@0
    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    .line 121
    .local v1, "dest":Ljava/lang/StringBuffer;
    and-int/lit8 v5, p1, 0xb

    #@b
    packed-switch v5, :pswitch_data_0

    #@e
    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result v4

    #@12
    .line 196
    .local v4, "srcLength":I
    :goto_0
    move v2, v4

    #@13
    .line 199
    .local v2, "i":I
    add-int/lit8 v5, v4, -0x1

    #@15
    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    .line 200
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1c
    move-result v5

    #@1d
    sub-int/2addr v4, v5

    #@1e
    .line 201
    and-int/lit8 v5, p1, 0x1

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 203
    :goto_1
    if-lez v4, :cond_4

    #@24
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@27
    move-result v5

    #@28
    invoke-static {v5}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_4

    #@2e
    .line 204
    add-int/lit8 v5, v4, -0x1

    #@30
    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@33
    move-result v0

    #@34
    .line 205
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    goto :goto_1

    #@3a
    .line 136
    .end local v0    # "c":I
    .end local v2    # "i":I
    .end local v4    # "srcLength":I
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3d
    move-result v4

    #@3e
    .line 142
    .restart local v4    # "srcLength":I
    :cond_0
    move v2, v4

    #@3f
    .line 146
    .restart local v2    # "i":I
    add-int/lit8 v5, v4, -0x1

    #@41
    .line 145
    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@44
    move-result v5

    #@45
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@48
    move-result v5

    #@49
    sub-int/2addr v4, v5

    #@4a
    .line 149
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 150
    if-gtz v4, :cond_0

    #@53
    .line 228
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    return-object v5

    #@58
    .line 161
    .end local v2    # "i":I
    .end local v4    # "srcLength":I
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5b
    move-result v4

    #@5c
    .line 168
    .restart local v4    # "srcLength":I
    :goto_2
    move v2, v4

    #@5d
    .line 173
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v5, v4, -0x1

    #@5f
    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@62
    move-result v0

    #@63
    .line 174
    .restart local v0    # "c":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@66
    move-result v5

    #@67
    sub-int/2addr v4, v5

    #@68
    .line 175
    if-lez v4, :cond_3

    #@6a
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@6d
    move-result v5

    #@6e
    invoke-static {v5}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    #@71
    move-result v5

    #@72
    if-nez v5, :cond_2

    #@74
    .line 178
    :cond_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7b
    .line 179
    if-lez v4, :cond_1

    #@7d
    goto :goto_2

    #@7e
    .line 209
    :cond_4
    and-int/lit8 v5, p1, 0x8

    #@80
    if-eqz v5, :cond_5

    #@82
    .line 210
    invoke-static {v0}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@85
    move-result v5

    #@86
    .line 209
    if-eqz v5, :cond_5

    #@88
    .line 224
    :goto_3
    if-lez v4, :cond_1

    #@8a
    goto :goto_0

    #@8b
    .line 216
    :cond_5
    move v3, v4

    #@8c
    .line 217
    .local v3, "j":I
    and-int/lit8 v5, p1, 0x2

    #@8e
    if-eqz v5, :cond_6

    #@90
    .line 219
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    #@93
    move-result v0

    #@94
    .line 220
    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@97
    .line 221
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@9a
    move-result v5

    #@9b
    add-int/2addr v3, v5

    #@9c
    .line 223
    :cond_6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a3
    goto :goto_3

    #@a4
    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
