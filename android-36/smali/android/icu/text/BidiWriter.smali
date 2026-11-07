.class final Landroid/icu/text/BidiWriter;
.super Ljava/lang/Object;
.source "BidiWriter.java"


# static fields
.field static final blacklist LRM_CHAR:C = '\u200e'

.field static final blacklist MASK_R_AL:I = 0x2002

.field static final blacklist RLM_CHAR:C = '\u200f'


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist IsCombining(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 28
    const/4 v0, 0x1

    shl-int v1, v0, p0

    and-int/lit16 v1, v1, 0x1c0

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist doWriteForward(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I

    .line 45
    and-int/lit8 v0, p1, 0xa

    sparse-switch v0, :sswitch_data_7e

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 82
    .local v0, "dest":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    goto :goto_5c

    .line 65
    .end local v0    # "dest":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .local v0, "dest":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 71
    .restart local v1    # "i":I
    :goto_1a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 72
    .local v1, "c":C
    invoke-static {v1}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_34

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 75
    :cond_34
    move v1, v2

    goto :goto_1a

    .line 51
    .end local v0    # "dest":Ljava/lang/StringBuilder;
    .end local v1    # "c":C
    .end local v2    # "i":I
    :sswitch_36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v0, "dest":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    :cond_40
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 59
    .local v2, "c":I
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 60
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_40

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 48
    .end local v0    # "dest":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "c":I
    :sswitch_5b
    return-object p0

    .line 85
    .restart local v0    # "dest":Ljava/lang/StringBuffer;
    .restart local v1    # "i":I
    :cond_5c
    :goto_5c
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 86
    .restart local v2    # "c":I
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 87
    invoke-static {v2}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v3

    if-nez v3, :cond_72

    .line 88
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 90
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_5c

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_5b
        0x2 -> :sswitch_36
        0x8 -> :sswitch_10
    .end sparse-switch
.end method

.method private static blacklist doWriteForward([CIII)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "options"    # I

    .line 99
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->doWriteForward(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist doWriteReverse([CIII)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "options"    # I

    .line 236
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;
    .registers 14
    .param p0, "bidi"    # Landroid/icu/text/Bidi;
    .param p1, "options"    # I

    .line 243
    iget-object v0, p0, Landroid/icu/text/Bidi;->text:[C

    .line 244
    .local v0, "text":[C
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v1

    .line 250
    .local v1, "runCount":I
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    .line 251
    or-int/lit8 p1, p1, 0x4

    .line 252
    and-int/lit8 p1, p1, -0x9

    .line 258
    :cond_10
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1a

    .line 259
    or-int/lit8 p1, p1, 0x8

    .line 260
    and-int/lit8 p1, p1, -0x5

    .line 266
    :cond_1a
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_30

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_30

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_30

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    .line 270
    and-int/lit8 p1, p1, -0x5

    .line 272
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3b

    .line 273
    iget v3, p0, Landroid/icu/text/Bidi;->length:I

    mul-int/lit8 v3, v3, 0x2

    goto :goto_3d

    :cond_3b
    iget v3, p0, Landroid/icu/text/Bidi;->length:I

    :goto_3d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    .local v2, "dest":Ljava/lang/StringBuilder;
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x2002

    if-nez v3, :cond_13f

    .line 285
    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_73

    .line 287
    const/4 v3, 0x0

    .local v3, "run":I
    :goto_4b
    if-ge v3, v1, :cond_1ce

    .line 288
    invoke-virtual {p0, v3}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v4

    .line 289
    .local v4, "bidiRun":Landroid/icu/text/BidiRun;
    invoke-virtual {v4}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 290
    iget v5, v4, Landroid/icu/text/BidiRun;->start:I

    iget v6, v4, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v7, p1, -0x3

    invoke-static {v0, v5, v6, v7}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 294
    :cond_65
    iget v5, v4, Landroid/icu/text/BidiRun;->start:I

    iget v6, v4, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v5, v6, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .end local v4    # "bidiRun":Landroid/icu/text/BidiRun;
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 300
    .end local v3    # "run":I
    :cond_73
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 304
    .local v3, "dirProps":[B
    const/4 v5, 0x0

    .local v5, "run":I
    :goto_76
    if-ge v5, v1, :cond_13c

    .line 305
    invoke-virtual {p0, v5}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v6

    .line 306
    .local v6, "bidiRun":Landroid/icu/text/BidiRun;
    const/4 v7, 0x0

    .line 308
    .local v7, "markFlag":I
    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v8, v8, v5

    iget v7, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 309
    if-gez v7, :cond_86

    .line 310
    const/4 v7, 0x0

    .line 312
    :cond_86
    invoke-virtual {v6}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 313
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v8

    if-eqz v8, :cond_9a

    iget v8, v6, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v3, v8

    if-eqz v8, :cond_9a

    .line 315
    or-int/lit8 v7, v7, 0x1

    .line 317
    :cond_9a
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_a1

    .line 318
    const/16 v8, 0x200e

    .local v8, "uc":C
    goto :goto_a9

    .line 319
    .end local v8    # "uc":C
    :cond_a1
    and-int/lit8 v8, v7, 0x4

    if-eqz v8, :cond_a8

    .line 320
    const/16 v8, 0x200f

    .restart local v8    # "uc":C
    goto :goto_a9

    .line 322
    .end local v8    # "uc":C
    :cond_a8
    const/4 v8, 0x0

    .line 324
    .restart local v8    # "uc":C
    :goto_a9
    if-eqz v8, :cond_ae

    .line 325
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_ae
    iget v9, v6, Landroid/icu/text/BidiRun;->start:I

    iget v10, v6, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v11, p1, -0x3

    invoke-static {v0, v9, v10, v11}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v9

    if-eqz v9, :cond_cb

    iget v9, v6, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v3, v9

    if-eqz v9, :cond_cb

    .line 333
    or-int/lit8 v7, v7, 0x2

    .line 335
    :cond_cb
    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_d2

    .line 336
    const/16 v8, 0x200e

    goto :goto_da

    .line 337
    :cond_d2
    and-int/lit8 v9, v7, 0x8

    if-eqz v9, :cond_d9

    .line 338
    const/16 v8, 0x200f

    goto :goto_da

    .line 340
    :cond_d9
    const/4 v8, 0x0

    .line 342
    :goto_da
    if-eqz v8, :cond_138

    .line 343
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_138

    .line 346
    .end local v8    # "uc":C
    :cond_e0
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v8

    if-eqz v8, :cond_f2

    iget v8, v6, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    .line 347
    invoke-virtual {p0, v4, v8}, Landroid/icu/text/Bidi;->testDirPropFlagAt(II)Z

    move-result v8

    if-nez v8, :cond_f2

    .line 349
    or-int/lit8 v7, v7, 0x4

    .line 351
    :cond_f2
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_f9

    .line 352
    const/16 v8, 0x200e

    .restart local v8    # "uc":C
    goto :goto_101

    .line 353
    .end local v8    # "uc":C
    :cond_f9
    and-int/lit8 v8, v7, 0x4

    if-eqz v8, :cond_100

    .line 354
    const/16 v8, 0x200f

    .restart local v8    # "uc":C
    goto :goto_101

    .line 356
    .end local v8    # "uc":C
    :cond_100
    const/4 v8, 0x0

    .line 358
    .restart local v8    # "uc":C
    :goto_101
    if-eqz v8, :cond_106

    .line 359
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_106
    iget v9, v6, Landroid/icu/text/BidiRun;->start:I

    iget v10, v6, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v9, v10, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v9

    if-eqz v9, :cond_124

    iget v9, v6, Landroid/icu/text/BidiRun;->start:I

    aget-byte v9, v3, v9

    .line 365
    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    and-int/2addr v9, v4

    if-nez v9, :cond_124

    .line 366
    or-int/lit8 v7, v7, 0x8

    .line 368
    :cond_124
    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_12b

    .line 369
    const/16 v8, 0x200e

    goto :goto_133

    .line 370
    :cond_12b
    and-int/lit8 v9, v7, 0x8

    if-eqz v9, :cond_132

    .line 371
    const/16 v8, 0x200f

    goto :goto_133

    .line 373
    :cond_132
    const/4 v8, 0x0

    .line 375
    :goto_133
    if-eqz v8, :cond_138

    .line 376
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .end local v6    # "bidiRun":Landroid/icu/text/BidiRun;
    :cond_138
    :goto_138
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_76

    .line 380
    .end local v3    # "dirProps":[B
    .end local v7    # "markFlag":I
    .end local v8    # "uc":C
    :cond_13c
    move v3, v5

    goto/16 :goto_1ce

    .line 383
    .end local v5    # "run":I
    :cond_13f
    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_16c

    .line 385
    move v3, v1

    .local v3, "run":I
    :goto_144
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1ce

    .line 386
    invoke-virtual {p0, v3}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v4

    .line 387
    .restart local v4    # "bidiRun":Landroid/icu/text/BidiRun;
    invoke-virtual {v4}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 388
    iget v5, v4, Landroid/icu/text/BidiRun;->start:I

    iget v6, v4, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v7, p1, -0x3

    invoke-static {v0, v5, v6, v7}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16b

    .line 392
    :cond_160
    iget v5, v4, Landroid/icu/text/BidiRun;->start:I

    iget v6, v4, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v5, v6, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .end local v4    # "bidiRun":Landroid/icu/text/BidiRun;
    :goto_16b
    goto :goto_144

    .line 399
    .end local v3    # "run":I
    :cond_16c
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 401
    .local v3, "dirProps":[B
    move v5, v1

    .restart local v5    # "run":I
    :goto_16f
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1cd

    .line 403
    invoke-virtual {p0, v5}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v6

    .line 404
    .restart local v6    # "bidiRun":Landroid/icu/text/BidiRun;
    invoke-virtual {v6}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v7

    if-eqz v7, :cond_1a1

    .line 405
    iget v7, v6, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v3, v7

    const/16 v8, 0x200e

    if-eqz v7, :cond_18a

    .line 406
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_18a
    iget v7, v6, Landroid/icu/text/BidiRun;->start:I

    iget v9, v6, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v0, v7, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v7, v6, Landroid/icu/text/BidiRun;->start:I

    aget-byte v7, v3, v7

    if-eqz v7, :cond_1cc

    .line 413
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1cc

    .line 416
    :cond_1a1
    iget v7, v6, Landroid/icu/text/BidiRun;->start:I

    aget-byte v7, v3, v7

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    and-int/2addr v7, v4

    const/16 v8, 0x200f

    if-nez v7, :cond_1b1

    .line 417
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    :cond_1b1
    iget v7, v6, Landroid/icu/text/BidiRun;->start:I

    iget v9, v6, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v7, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget v7, v6, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v3, v7

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    and-int/2addr v7, v4

    if-nez v7, :cond_1cc

    .line 424
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    .end local v6    # "bidiRun":Landroid/icu/text/BidiRun;
    :cond_1cc
    :goto_1cc
    goto :goto_16f

    .line 401
    :cond_1cd
    move v3, v5

    .line 431
    .end local v5    # "run":I
    .local v3, "run":I
    :cond_1ce
    :goto_1ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static blacklist writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 124
    .local v0, "dest":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p1, 0xb

    packed-switch v1, :pswitch_data_a6

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "srcLength":I
    goto :goto_53

    .line 164
    .end local v1    # "srcLength":I
    :pswitch_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 171
    .restart local v1    # "srcLength":I
    :cond_17
    move v2, v1

    .line 176
    .local v2, "i":I
    :cond_18
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 177
    .local v3, "c":I
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 178
    if-lez v1, :cond_2f

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 181
    :cond_2f
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    .end local v2    # "i":I
    .end local v3    # "c":I
    if-gtz v1, :cond_17

    .line 183
    goto :goto_a0

    .line 139
    .end local v1    # "srcLength":I
    :pswitch_39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 145
    .restart local v1    # "srcLength":I
    :cond_3d
    move v2, v1

    .line 148
    .restart local v2    # "i":I
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 152
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .end local v2    # "i":I
    if-gtz v1, :cond_3d

    .line 154
    goto :goto_a0

    .line 199
    :cond_53
    :goto_53
    move v2, v1

    .line 202
    .restart local v2    # "i":I
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 203
    .restart local v3    # "c":I
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 204
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_7b

    .line 206
    :goto_63
    if-lez v1, :cond_7b

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 207
    add-int/lit8 v4, v1, -0x1

    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 208
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_63

    .line 212
    :cond_7b
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_86

    .line 213
    invoke-static {v3}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 215
    goto :goto_9e

    .line 219
    :cond_86
    move v4, v1

    .line 220
    .local v4, "j":I
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_97

    .line 222
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v3

    .line 223
    invoke-static {v0, v3}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 224
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 226
    :cond_97
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    .end local v2    # "i":I
    .end local v3    # "c":I
    .end local v4    # "j":I
    :goto_9e
    if-gtz v1, :cond_53

    .line 231
    .end local v1    # "srcLength":I
    :goto_a0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_39
        :pswitch_13
    .end packed-switch
.end method
