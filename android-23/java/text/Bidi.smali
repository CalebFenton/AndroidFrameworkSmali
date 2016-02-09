.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Bidi$Run;
    }
.end annotation


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final UBIDI_LEVEL_OVERRIDE:I = 0x80

.field private static final UBiDiDirection_UBIDI_LTR:I = 0x0

.field private static final UBiDiDirection_UBIDI_MIXED:I = 0x2

.field private static final UBiDiDirection_UBIDI_RTL:I = 0x1


# instance fields
.field private baseLevel:I

.field private direction:I

.field private length:I

.field private offsetLevel:[B

.field private runs:[Ljava/text/Bidi$Run;

.field private unidirectional:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "pBidi"    # J

    #@0
    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 318
    invoke-direct {p0, p1, p2}, Ljava/text/Bidi;->readBidiInfo(J)V

    #@6
    .line 317
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 260
    if-nez p1, :cond_0

    #@4
    move-object v1, v3

    #@5
    .line 261
    :goto_0
    if-nez p1, :cond_1

    #@7
    move v5, v2

    #@8
    :goto_1
    move-object v0, p0

    #@9
    move v4, v2

    #@a
    move v6, p2

    #@b
    .line 260
    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    #@e
    .line 259
    return-void

    #@f
    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@12
    move-result-object v1

    #@13
    goto :goto_0

    #@14
    .line 261
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    goto :goto_1
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 18
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    if-nez p1, :cond_0

    #@5
    .line 114
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "paragraph is null"

    #@a
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 117
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@11
    move-result v8

    #@12
    .line 118
    .local v8, "begin":I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@15
    move-result v14

    #@16
    .line 119
    .local v14, "end":I
    sub-int v6, v14, v8

    #@18
    .line 120
    .local v6, "length":I
    add-int/lit8 v3, v6, 0x1

    #@1a
    new-array v2, v3, [C

    #@1c
    .line 122
    .local v2, "text":[C
    if-eqz v6, :cond_3

    #@1e
    .line 123
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    #@21
    move-result v3

    #@22
    const/4 v5, 0x0

    #@23
    aput-char v3, v2, v5

    #@25
    .line 129
    :goto_0
    const/4 v7, -0x2

    #@26
    .line 130
    .local v7, "flags":I
    sget-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    #@28
    move-object/from16 v0, p1

    #@2a
    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@2d
    move-result-object v9

    #@2e
    .line 131
    .local v9, "direction":Ljava/lang/Object;
    if-eqz v9, :cond_1

    #@30
    instance-of v3, v9, Ljava/lang/Boolean;

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 132
    sget-object v3, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    #@36
    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_4

    #@3c
    .line 133
    const/4 v7, 0x0

    #@3d
    .line 140
    :cond_1
    :goto_1
    const/4 v4, 0x0

    #@3e
    .line 141
    .local v4, "embeddings":[B
    const/16 v17, 0x1

    #@40
    .local v17, "textLimit":I
    const/4 v15, 0x1

    #@41
    .end local v4    # "embeddings":[B
    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_7

    #@43
    .line 144
    sget-object v3, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@4a
    move-result-object v13

    #@4b
    .line 145
    .local v13, "embedding":Ljava/lang/Object;
    if-eqz v13, :cond_5

    #@4d
    instance-of v3, v13, Ljava/lang/Integer;

    #@4f
    if-eqz v3, :cond_5

    #@51
    .line 146
    check-cast v13, Ljava/lang/Integer;

    #@53
    .end local v13    # "embedding":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@56
    move-result v12

    #@57
    .line 148
    .local v12, "embLevel":I
    if-nez v4, :cond_2

    #@59
    .line 149
    new-array v4, v6, [B

    #@5b
    .line 152
    :cond_2
    :goto_3
    move/from16 v0, v17

    #@5d
    if-ge v15, v0, :cond_6

    #@5f
    .line 153
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@62
    move-result v3

    #@63
    aput-char v3, v2, v15

    #@65
    .line 154
    add-int/lit8 v3, v15, -0x1

    #@67
    int-to-byte v5, v12

    #@68
    aput-byte v5, v4, v3

    #@6a
    .line 152
    add-int/lit8 v15, v15, 0x1

    #@6c
    goto :goto_3

    #@6d
    .line 125
    .end local v7    # "flags":I
    .end local v9    # "direction":Ljava/lang/Object;
    .end local v12    # "embLevel":I
    .end local v15    # "i":I
    .end local v17    # "textLimit":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    #@70
    goto :goto_0

    #@71
    .line 135
    .restart local v7    # "flags":I
    .restart local v9    # "direction":Ljava/lang/Object;
    :cond_4
    const/4 v7, 0x1

    #@72
    goto :goto_1

    #@73
    .line 157
    .restart local v13    # "embedding":Ljava/lang/Object;
    .restart local v15    # "i":I
    .restart local v17    # "textLimit":I
    :cond_5
    :goto_4
    move/from16 v0, v17

    #@75
    if-ge v15, v0, :cond_6

    #@77
    .line 158
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@7a
    move-result v3

    #@7b
    aput-char v3, v2, v15

    #@7d
    .line 157
    add-int/lit8 v15, v15, 0x1

    #@7f
    goto :goto_4

    #@80
    .line 142
    .end local v13    # "embedding":Ljava/lang/Object;
    :cond_6
    sget-object v3, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    #@82
    .line 141
    move-object/from16 v0, p1

    #@84
    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@87
    move-result v3

    #@88
    sub-int/2addr v3, v8

    #@89
    add-int/lit8 v17, v3, 0x1

    #@8b
    goto :goto_2

    #@8c
    .line 164
    :cond_7
    sget-object v3, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-interface {v0, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@93
    move-result-object v16

    #@94
    .line 165
    .local v16, "numericShaper":Ljava/lang/Object;
    if-eqz v16, :cond_8

    #@96
    move-object/from16 v0, v16

    #@98
    instance-of v3, v0, Ljava/awt/font/NumericShaper;

    #@9a
    if-eqz v3, :cond_8

    #@9c
    .line 166
    check-cast v16, Ljava/awt/font/NumericShaper;

    #@9e
    .end local v16    # "numericShaper":Ljava/lang/Object;
    const/4 v3, 0x0

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-virtual {v0, v2, v3, v6}, Ljava/awt/font/NumericShaper;->shape([CII)V

    #@a4
    .line 169
    :cond_8
    const-wide/16 v10, 0x0

    #@a6
    .line 171
    .local v10, "bidi":J
    const/4 v3, 0x0

    #@a7
    const/4 v5, 0x0

    #@a8
    :try_start_0
    invoke-static/range {v2 .. v7}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    #@ab
    move-result-wide v10

    #@ac
    .line 172
    move-object/from16 v0, p0

    #@ae
    invoke-direct {v0, v10, v11}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b1
    .line 174
    invoke-static {v10, v11}, Ljava/text/Bidi;->ubidi_close(J)V

    #@b4
    .line 112
    return-void

    #@b5
    .line 173
    :catchall_0
    move-exception v3

    #@b6
    .line 174
    invoke-static {v10, v11}, Ljava/text/Bidi;->ubidi_close(J)V

    #@b9
    .line 173
    throw v3
.end method

.method public constructor <init>([CI[BIII)V
    .locals 5
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 214
    if-eqz p1, :cond_0

    #@5
    array-length v2, p1

    #@6
    sub-int/2addr v2, p2

    #@7
    if-ge v2, p5, :cond_1

    #@9
    .line 215
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v2

    #@f
    .line 218
    :cond_1
    if-eqz p3, :cond_2

    #@11
    .line 219
    array-length v2, p3

    #@12
    sub-int/2addr v2, p4

    #@13
    if-ge v2, p5, :cond_2

    #@15
    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@17
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1a
    throw v2

    #@1b
    .line 224
    :cond_2
    if-gez p2, :cond_3

    #@1d
    .line 225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Negative textStart value "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 227
    :cond_3
    if-gez p4, :cond_4

    #@39
    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Negative embStart value "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 230
    :cond_4
    if-gez p5, :cond_5

    #@55
    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@57
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "Negative paragraph length "

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v2

    #@6f
    .line 234
    :cond_5
    const-wide/16 v0, 0x0

    #@71
    .line 236
    .local v0, "bidi":J
    :try_start_0
    invoke-static/range {p1 .. p6}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    #@74
    move-result-wide v0

    #@75
    .line 237
    invoke-direct {p0, v0, v1}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@78
    .line 239
    invoke-static {v0, v1}, Ljava/text/Bidi;->ubidi_close(J)V

    #@7b
    .line 212
    return-void

    #@7c
    .line 238
    :catchall_0
    move-exception v2

    #@7d
    .line 239
    invoke-static {v0, v1}, Ljava/text/Bidi;->ubidi_close(J)V

    #@80
    .line 238
    throw v2
.end method

.method private createEmptyLineBidi(J)Ljava/text/Bidi;
    .locals 3
    .param p1, "parent"    # J

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 414
    new-instance v0, Ljava/text/Bidi;

    #@3
    invoke-direct {v0, p1, p2}, Ljava/text/Bidi;-><init>(J)V

    #@6
    .line 415
    .local v0, "result":Ljava/text/Bidi;
    const/4 v1, 0x0

    #@7
    iput v1, v0, Ljava/text/Bidi;->length:I

    #@9
    .line 416
    iput-object v2, v0, Ljava/text/Bidi;->offsetLevel:[B

    #@b
    .line 417
    iput-object v2, v0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@d
    .line 418
    const/4 v1, 0x1

    #@e
    iput-boolean v1, v0, Ljava/text/Bidi;->unidirectional:Z

    #@10
    .line 419
    return-object v0
.end method

.method private static createUBiDi([CI[BIII)J
    .locals 14
    .param p0, "text"    # [C
    .param p1, "textStart"    # I
    .param p2, "embeddings"    # [B
    .param p3, "embStart"    # I
    .param p4, "paragraphLength"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 267
    const/4 v13, 0x0

    #@1
    .line 269
    .local v13, "realText":[C
    const/4 v9, 0x0

    #@2
    .line 271
    .local v9, "realEmbeddings":[B
    if-eqz p0, :cond_0

    #@4
    array-length v3, p0

    #@5
    sub-int/2addr v3, p1

    #@6
    move/from16 v0, p4

    #@8
    if-ge v3, v0, :cond_1

    #@a
    .line 272
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v3

    #@10
    .line 274
    :cond_1
    move/from16 v0, p4

    #@12
    new-array v13, v0, [C

    #@14
    .line 275
    .local v13, "realText":[C
    const/4 v3, 0x0

    #@15
    move/from16 v0, p4

    #@17
    invoke-static {p0, p1, v13, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1a
    .line 277
    if-eqz p2, :cond_5

    #@1c
    .line 278
    move-object/from16 v0, p2

    #@1e
    array-length v3, v0

    #@1f
    sub-int v3, v3, p3

    #@21
    move/from16 v0, p4

    #@23
    if-ge v3, v0, :cond_2

    #@25
    .line 279
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@27
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2a
    throw v3

    #@2b
    .line 281
    :cond_2
    if-lez p4, :cond_5

    #@2d
    .line 282
    new-instance v2, Ljava/text/Bidi;

    #@2f
    const/4 v5, 0x0

    #@30
    const/4 v6, 0x0

    #@31
    move-object v3, p0

    #@32
    move v4, p1

    #@33
    move/from16 v7, p4

    #@35
    move/from16 v8, p5

    #@37
    invoke-direct/range {v2 .. v8}, Ljava/text/Bidi;-><init>([CI[BIII)V

    #@3a
    .line 283
    .local v2, "temp":Ljava/text/Bidi;
    move/from16 v0, p4

    #@3c
    new-array v9, v0, [B

    #@3e
    .line 284
    .local v9, "realEmbeddings":[B
    iget-object v3, v2, Ljava/text/Bidi;->offsetLevel:[B

    #@40
    const/4 v6, 0x0

    #@41
    const/4 v7, 0x0

    #@42
    move/from16 v0, p4

    #@44
    invoke-static {v3, v6, v9, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@47
    .line 285
    const/4 v11, 0x0

    #@48
    .local v11, "i":I
    :goto_0
    move/from16 v0, p4

    #@4a
    if-ge v11, v0, :cond_5

    #@4c
    .line 286
    aget-byte v10, p2, v11

    #@4e
    .line 287
    .local v10, "e":B
    if-gez v10, :cond_3

    #@50
    .line 288
    rsub-int v3, v10, 0x80

    #@52
    int-to-byte v3, v3

    #@53
    aput-byte v3, v9, v11

    #@55
    .line 285
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@57
    goto :goto_0

    #@58
    .line 289
    :cond_3
    if-lez v10, :cond_4

    #@5a
    .line 290
    aput-byte v10, v9, v11

    #@5c
    goto :goto_1

    #@5d
    .line 292
    :cond_4
    aget-byte v3, v9, v11

    #@5f
    or-int/lit8 v3, v3, -0x80

    #@61
    int-to-byte v3, v3

    #@62
    aput-byte v3, v9, v11

    #@64
    goto :goto_1

    #@65
    .line 298
    .end local v2    # "temp":Ljava/text/Bidi;
    .end local v9    # "realEmbeddings":[B
    .end local v10    # "e":B
    .end local v11    # "i":I
    :cond_5
    const/4 v3, 0x1

    #@66
    move/from16 v0, p5

    #@68
    if-gt v0, v3, :cond_6

    #@6a
    const/4 v3, -0x2

    #@6b
    move/from16 v0, p5

    #@6d
    if-ge v0, v3, :cond_7

    #@6f
    .line 299
    :cond_6
    const/16 p5, 0x0

    #@71
    .line 302
    :cond_7
    const-wide/16 v4, 0x0

    #@73
    .line 303
    .local v4, "bidi":J
    const/4 v12, 0x1

    #@74
    .line 305
    .local v12, "needsDeletion":Z
    :try_start_0
    invoke-static {}, Ljava/text/Bidi;->ubidi_open()J

    #@77
    move-result-wide v4

    #@78
    move-object v6, v13

    #@79
    move/from16 v7, p4

    #@7b
    move/from16 v8, p5

    #@7d
    .line 306
    invoke-static/range {v4 .. v9}, Ljava/text/Bidi;->ubidi_setPara(J[CII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@80
    .line 307
    const/4 v12, 0x0

    #@81
    .line 309
    if-eqz v12, :cond_8

    #@83
    .line 310
    invoke-static {v4, v5}, Ljava/text/Bidi;->ubidi_close(J)V

    #@86
    .line 313
    :cond_8
    return-wide v4

    #@87
    .line 308
    :catchall_0
    move-exception v3

    #@88
    .line 309
    if-eqz v12, :cond_9

    #@8a
    .line 310
    invoke-static {v4, v5}, Ljava/text/Bidi;->ubidi_close(J)V

    #@8d
    .line 308
    :cond_9
    throw v3
.end method

.method private readBidiInfo(J)V
    .locals 5
    .param p1, "pBidi"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 323
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getLength(J)I

    #@6
    move-result v1

    #@7
    iput v1, p0, Ljava/text/Bidi;->length:I

    #@9
    .line 325
    iget v1, p0, Ljava/text/Bidi;->length:I

    #@b
    if-nez v1, :cond_1

    #@d
    move-object v1, v2

    #@e
    :goto_0
    iput-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    #@10
    .line 327
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getParaLevel(J)B

    #@13
    move-result v1

    #@14
    iput v1, p0, Ljava/text/Bidi;->baseLevel:I

    #@16
    .line 329
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_countRuns(J)I

    #@19
    move-result v0

    #@1a
    .line 330
    .local v0, "runCount":I
    if-nez v0, :cond_2

    #@1c
    .line 331
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    #@1e
    .line 332
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@20
    .line 345
    :cond_0
    :goto_1
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getDirection(J)I

    #@23
    move-result v1

    #@24
    iput v1, p0, Ljava/text/Bidi;->direction:I

    #@26
    .line 322
    return-void

    #@27
    .line 325
    .end local v0    # "runCount":I
    :cond_1
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getLevels(J)[B

    #@2a
    move-result-object v1

    #@2b
    goto :goto_0

    #@2c
    .line 333
    .restart local v0    # "runCount":I
    :cond_2
    if-gez v0, :cond_3

    #@2e
    .line 334
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@30
    goto :goto_1

    #@31
    .line 336
    :cond_3
    invoke-static {p1, p2}, Ljava/text/Bidi;->ubidi_getRuns(J)[Ljava/text/Bidi$Run;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@37
    .line 339
    if-ne v0, v4, :cond_0

    #@39
    iget-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@3b
    aget-object v1, v1, v3

    #@3d
    invoke-virtual {v1}, Ljava/text/Bidi$Run;->getLevel()I

    #@40
    move-result v1

    #@41
    iget v3, p0, Ljava/text/Bidi;->baseLevel:I

    #@43
    if-ne v1, v3, :cond_0

    #@45
    .line 340
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    #@47
    .line 341
    iput-object v2, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@49
    goto :goto_1
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 7
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 522
    if-ltz p4, :cond_0

    #@3
    if-gez p1, :cond_1

    #@5
    .line 525
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "Invalid ranges (levels="

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    array-length v6, p0

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    .line 526
    const-string/jumbo v6, ", levelStart="

    #@1b
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 526
    const-string/jumbo v6, ", objects="

    #@26
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    .line 526
    array-length v6, p2

    #@2b
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    .line 527
    const-string/jumbo v6, ", objectStart="

    #@32
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    .line 527
    const-string/jumbo v6, ", count="

    #@3d
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    .line 527
    const-string/jumbo v6, ")"

    #@48
    .line 525
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 522
    :cond_1
    if-ltz p3, :cond_0

    #@56
    .line 523
    array-length v4, p0

    #@57
    sub-int/2addr v4, p1

    #@58
    if-gt p4, v4, :cond_0

    #@5a
    .line 524
    array-length v4, p2

    #@5b
    sub-int/2addr v4, p3

    #@5c
    if-gt p4, v4, :cond_0

    #@5e
    .line 530
    new-array v2, p4, [B

    #@60
    .line 531
    .local v2, "realLevels":[B
    invoke-static {p0, p1, v2, v5, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@63
    .line 533
    invoke-static {v2, p4}, Ljava/text/Bidi;->ubidi_reorderVisual([BI)[I

    #@66
    move-result-object v1

    #@67
    .line 535
    .local v1, "indices":[I
    new-instance v3, Ljava/util/ArrayList;

    #@69
    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(I)V

    #@6c
    .line 536
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #@6d
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    #@6f
    .line 537
    aget v4, v1, v0

    #@71
    add-int/2addr v4, p3

    #@72
    aget-object v4, p2, v4

    #@74
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@77
    .line 536
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 540
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@7d
    move-result-object v4

    #@7e
    invoke-static {v4, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@81
    .line 521
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 7
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 561
    if-ltz p2, :cond_0

    #@3
    if-gez p1, :cond_1

    #@5
    .line 562
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v1

    #@b
    .line 561
    :cond_1
    if-gt p1, p2, :cond_0

    #@d
    array-length v1, p0

    #@e
    if-gt p2, v1, :cond_0

    #@10
    .line 565
    new-instance v0, Ljava/text/Bidi;

    #@12
    sub-int v5, p2, p1

    #@14
    const/4 v3, 0x0

    #@15
    move-object v1, p0

    #@16
    move v2, p1

    #@17
    move v6, v4

    #@18
    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    #@1b
    .line 566
    .local v0, "bidi":Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    :goto_0
    return v4

    #@22
    :cond_2
    const/4 v4, 0x1

    #@23
    goto :goto_0
.end method

.method private static native ubidi_close(J)V
.end method

.method private static native ubidi_countRuns(J)I
.end method

.method private static native ubidi_getDirection(J)I
.end method

.method private static native ubidi_getLength(J)I
.end method

.method private static native ubidi_getLevels(J)[B
.end method

.method private static native ubidi_getParaLevel(J)B
.end method

.method private static native ubidi_getRuns(J)[Ljava/text/Bidi$Run;
.end method

.method private static native ubidi_open()J
.end method

.method private static native ubidi_reorderVisual([BI)[I
.end method

.method private static native ubidi_setLine(JII)J
.end method

.method private static native ubidi_setPara(J[CII[B)V
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 366
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    #@3
    rem-int/lit8 v1, v1, 0x2

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    #@0
    .prologue
    .line 385
    if-ltz p1, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 386
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "Invalid ranges (start="

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    const-string/jumbo v4, ", "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 387
    const-string/jumbo v4, "limit="

    #@20
    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 387
    const-string/jumbo v4, ", length="

    #@2b
    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    .line 387
    iget v4, p0, Ljava/text/Bidi;->length:I

    #@31
    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 387
    const-string/jumbo v4, ")"

    #@38
    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 385
    :cond_1
    iget v1, p0, Ljava/text/Bidi;->length:I

    #@46
    if-gt p2, v1, :cond_0

    #@48
    if-gt p1, p2, :cond_0

    #@4a
    .line 390
    iget v1, p0, Ljava/text/Bidi;->length:I

    #@4c
    new-array v0, v1, [C

    #@4e
    .line 391
    .local v0, "text":[C
    const/16 v1, 0x61

    #@50
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@53
    .line 392
    iget v1, p0, Ljava/text/Bidi;->length:I

    #@55
    new-array v2, v1, [B

    #@57
    .line 393
    .local v2, "embeddings":[B
    const/4 v6, 0x0

    #@58
    .local v6, "i":I
    :goto_0
    array-length v1, v2

    #@59
    if-ge v6, v1, :cond_2

    #@5b
    .line 394
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    #@5d
    aget-byte v1, v1, v6

    #@5f
    neg-int v1, v1

    #@60
    int-to-byte v1, v1

    #@61
    aput-byte v1, v2, v6

    #@63
    .line 393
    add-int/lit8 v6, v6, 0x1

    #@65
    goto :goto_0

    #@66
    .line 397
    :cond_2
    invoke-virtual {p0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_3

    #@6c
    .line 398
    const/4 v5, 0x0

    #@6d
    .line 400
    .local v5, "dir":I
    :goto_1
    const-wide/16 v8, 0x0

    #@6f
    .line 402
    .local v8, "parent":J
    :try_start_0
    iget v4, p0, Ljava/text/Bidi;->length:I

    #@71
    const/4 v1, 0x0

    #@72
    const/4 v3, 0x0

    #@73
    invoke-static/range {v0 .. v5}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    #@76
    move-result-wide v8

    #@77
    .line 403
    if-ne p1, p2, :cond_4

    #@79
    .line 404
    invoke-direct {p0, v8, v9}, Ljava/text/Bidi;->createEmptyLineBidi(J)Ljava/text/Bidi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    move-result-object v1

    #@7d
    .line 408
    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    #@80
    .line 404
    return-object v1

    #@81
    .line 399
    .end local v5    # "dir":I
    .end local v8    # "parent":J
    :cond_3
    const/4 v5, 0x1

    #@82
    .restart local v5    # "dir":I
    goto :goto_1

    #@83
    .line 406
    .restart local v8    # "parent":J
    :cond_4
    :try_start_1
    new-instance v1, Ljava/text/Bidi;

    #@85
    invoke-static {v8, v9, p1, p2}, Ljava/text/Bidi;->ubidi_setLine(JII)J

    #@88
    move-result-wide v10

    #@89
    invoke-direct {v1, v10, v11}, Ljava/text/Bidi;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    .line 408
    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    #@8f
    .line 406
    return-object v1

    #@90
    .line 407
    :catchall_0
    move-exception v1

    #@91
    .line 408
    invoke-static {v8, v9}, Ljava/text/Bidi;->ubidi_close(J)V

    #@94
    .line 407
    throw v1
.end method

.method public getBaseLevel()I
    .locals 1

    #@0
    .prologue
    .line 426
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 433
    iget v0, p0, Ljava/text/Bidi;->length:I

    #@2
    return v0
.end method

.method public getLevelAt(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    #@2
    aget-byte v1, v1, p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    and-int/lit16 v1, v1, -0x81

    #@6
    return v1

    #@7
    .line 442
    :catch_0
    move-exception v0

    #@8
    .line 443
    .local v0, "e":Ljava/lang/RuntimeException;
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    #@a
    return v1
.end method

.method public getRunCount()I
    .locals 1

    #@0
    .prologue
    .line 451
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@8
    array-length v0, v0

    #@9
    goto :goto_0
.end method

.method public getRunLevel(I)I
    .locals 1
    .param p1, "run"    # I

    #@0
    .prologue
    .line 458
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getLevel()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getRunLimit(I)I
    .locals 1
    .param p1, "run"    # I

    #@0
    .prologue
    .line 465
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/text/Bidi;->length:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@9
    aget-object v0, v0, p1

    #@b
    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getLimit()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public getRunStart(I)I
    .locals 1
    .param p1, "run"    # I

    #@0
    .prologue
    .line 472
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@8
    aget-object v0, v0, p1

    #@a
    invoke-virtual {v0}, Ljava/text/Bidi$Run;->getStart()I

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method public isLeftToRight()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 480
    iget v1, p0, Ljava/text/Bidi;->direction:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isMixed()Z
    .locals 2

    #@0
    .prologue
    .line 487
    iget v0, p0, Ljava/text/Bidi;->direction:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isRightToLeft()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 495
    iget v1, p0, Ljava/text/Bidi;->direction:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/text/Bidi;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 572
    const-string/jumbo v1, "[direction: "

    #@14
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 572
    iget v1, p0, Ljava/text/Bidi;->direction:I

    #@1a
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 572
    const-string/jumbo v1, " baseLevel: "

    #@21
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 572
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    #@27
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 573
    const-string/jumbo v1, " length: "

    #@2e
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 573
    iget v1, p0, Ljava/text/Bidi;->length:I

    #@34
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 573
    const-string/jumbo v1, " runs: "

    #@3b
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 573
    iget-object v1, p0, Ljava/text/Bidi;->runs:[Ljava/text/Bidi$Run;

    #@41
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 573
    const-string/jumbo v1, "]"

    #@4c
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    return-object v0
.end method
