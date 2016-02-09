.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final TOKEN_COMMENT:B = 0x1t

.field private static final TOKEN_DIGIT:B = 0x10t

.field private static final TOKEN_QUOTE:B = 0x2t

.field private static final TOKEN_WHITE:B = 0x4t

.field private static final TOKEN_WORD:B = 0x8t

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field public static final TT_NUMBER:I = -0x2

.field private static final TT_UNKNOWN:I = -0x4

.field public static final TT_WORD:I = -0x3


# instance fields
.field private forceLowercase:Z

.field private inReader:Ljava/io/Reader;

.field private inStream:Ljava/io/InputStream;

.field private isEOLSignificant:Z

.field private lastCr:Z

.field private lineNumber:I

.field public nval:D

.field private peekChar:I

.field private pushBackToken:Z

.field private slashSlashComments:Z

.field private slashStarComments:Z

.field public sval:Ljava/lang/String;

.field private tokenTypes:[B

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    const/4 v0, -0x4

    #@4
    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@6
    .line 86
    const/16 v0, 0x100

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@c
    .line 98
    const/4 v0, 0x1

    #@d
    iput v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@f
    .line 117
    const/4 v0, -0x2

    #@10
    iput v0, p0, Ljava/io/StreamTokenizer;->peekChar:I

    #@12
    .line 129
    const/16 v0, 0x41

    #@14
    const/16 v1, 0x5a

    #@16
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@19
    .line 130
    const/16 v0, 0x61

    #@1b
    const/16 v1, 0x7a

    #@1d
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@20
    .line 131
    const/16 v0, 0xa0

    #@22
    const/16 v1, 0xff

    #@24
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@27
    .line 136
    const/4 v0, 0x0

    #@28
    const/16 v1, 0x20

    #@2a
    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    #@2d
    .line 141
    const/16 v0, 0x2f

    #@2f
    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    #@32
    .line 142
    const/16 v0, 0x22

    #@34
    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    #@37
    .line 143
    const/16 v0, 0x27

    #@39
    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    #@3c
    .line 147
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    #@3f
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    #@3
    .line 169
    if-nez p1, :cond_0

    #@5
    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "is == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 172
    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    #@10
    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "r"    # Ljava/io/Reader;

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    #@3
    .line 196
    if-nez p1, :cond_0

    #@5
    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "r == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 199
    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    #@10
    .line 194
    return-void
.end method

.method private read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 556
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    #@6
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 558
    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    #@d
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@10
    move-result v0

    #@11
    return v0
.end method


# virtual methods
.method public commentChar(I)V
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 210
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 211
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@9
    const/4 v1, 0x1

    #@a
    aput-byte v1, v0, p1

    #@c
    .line 209
    :cond_0
    return-void
.end method

.method public eolIsSignificant(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 223
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    #@2
    .line 222
    return-void
.end method

.method public lineno()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@2
    return v0
.end method

.method public lowerCaseMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 244
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    #@2
    .line 243
    return-void
.end method

.method public nextToken()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    #@4
    move/from16 v17, v0

    #@6
    if-eqz v17, :cond_0

    #@8
    .line 258
    const/16 v17, 0x0

    #@a
    move/from16 v0, v17

    #@c
    move-object/from16 v1, p0

    #@e
    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->pushBackToken:Z

    #@10
    .line 259
    move-object/from16 v0, p0

    #@12
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@14
    move/from16 v17, v0

    #@16
    const/16 v18, -0x4

    #@18
    move/from16 v0, v17

    #@1a
    move/from16 v1, v18

    #@1c
    if-eq v0, v1, :cond_0

    #@1e
    .line 260
    move-object/from16 v0, p0

    #@20
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@22
    move/from16 v17, v0

    #@24
    return v17

    #@25
    .line 263
    :cond_0
    const/16 v17, 0x0

    #@27
    move-object/from16 v0, v17

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@2d
    .line 264
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@31
    move/from16 v17, v0

    #@33
    const/16 v18, -0x2

    #@35
    move/from16 v0, v17

    #@37
    move/from16 v1, v18

    #@39
    if-ne v0, v1, :cond_2

    #@3b
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@3e
    move-result v6

    #@3f
    .line 266
    .local v6, "currentChar":I
    :goto_0
    move-object/from16 v0, p0

    #@41
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->lastCr:Z

    #@43
    move/from16 v17, v0

    #@45
    if-eqz v17, :cond_1

    #@47
    const/16 v17, 0xa

    #@49
    move/from16 v0, v17

    #@4b
    if-ne v6, v0, :cond_1

    #@4d
    .line 267
    const/16 v17, 0x0

    #@4f
    move/from16 v0, v17

    #@51
    move-object/from16 v1, p0

    #@53
    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->lastCr:Z

    #@55
    .line 268
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@58
    move-result v6

    #@59
    .line 270
    :cond_1
    const/16 v17, -0x1

    #@5b
    move/from16 v0, v17

    #@5d
    if-ne v6, v0, :cond_3

    #@5f
    .line 271
    const/16 v17, -0x1

    #@61
    const/16 v18, -0x1

    #@63
    move/from16 v0, v18

    #@65
    move-object/from16 v1, p0

    #@67
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@69
    return v17

    #@6a
    .line 264
    .end local v6    # "currentChar":I
    :cond_2
    move-object/from16 v0, p0

    #@6c
    iget v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@6e
    .restart local v6    # "currentChar":I
    goto :goto_0

    #@6f
    .line 274
    :cond_3
    const/16 v17, 0xff

    #@71
    move/from16 v0, v17

    #@73
    if-le v6, v0, :cond_4

    #@75
    const/16 v7, 0x8

    #@77
    .line 276
    :goto_1
    and-int/lit8 v17, v7, 0x4

    #@79
    if-eqz v17, :cond_c

    #@7b
    .line 280
    const/16 v17, 0xd

    #@7d
    move/from16 v0, v17

    #@7f
    if-ne v6, v0, :cond_7

    #@81
    .line 281
    move-object/from16 v0, p0

    #@83
    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@85
    move/from16 v17, v0

    #@87
    add-int/lit8 v17, v17, 0x1

    #@89
    move/from16 v0, v17

    #@8b
    move-object/from16 v1, p0

    #@8d
    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    #@8f
    .line 282
    move-object/from16 v0, p0

    #@91
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    #@93
    move/from16 v17, v0

    #@95
    if-eqz v17, :cond_5

    #@97
    .line 283
    const/16 v17, 0x1

    #@99
    move/from16 v0, v17

    #@9b
    move-object/from16 v1, p0

    #@9d
    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->lastCr:Z

    #@9f
    .line 284
    const/16 v17, -0x2

    #@a1
    move/from16 v0, v17

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    #@a7
    .line 285
    const/16 v17, 0xa

    #@a9
    const/16 v18, 0xa

    #@ab
    move/from16 v0, v18

    #@ad
    move-object/from16 v1, p0

    #@af
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@b1
    return v17

    #@b2
    .line 275
    :cond_4
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@b6
    move-object/from16 v17, v0

    #@b8
    aget-byte v7, v17, v6

    #@ba
    .local v7, "currentType":B
    goto :goto_1

    #@bb
    .line 287
    .end local v7    # "currentType":B
    :cond_5
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@be
    move-result v6

    #@bf
    const/16 v17, 0xa

    #@c1
    move/from16 v0, v17

    #@c3
    if-ne v6, v0, :cond_6

    #@c5
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@c8
    move-result v6

    #@c9
    .line 301
    :cond_6
    :goto_2
    const/16 v17, -0x1

    #@cb
    move/from16 v0, v17

    #@cd
    if-ne v6, v0, :cond_a

    #@cf
    .line 302
    const/16 v17, -0x1

    #@d1
    const/16 v18, -0x1

    #@d3
    move/from16 v0, v18

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@d9
    return v17

    #@da
    .line 290
    :cond_7
    const/16 v17, 0xa

    #@dc
    move/from16 v0, v17

    #@de
    if-ne v6, v0, :cond_9

    #@e0
    .line 291
    move-object/from16 v0, p0

    #@e2
    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@e4
    move/from16 v17, v0

    #@e6
    add-int/lit8 v17, v17, 0x1

    #@e8
    move/from16 v0, v17

    #@ea
    move-object/from16 v1, p0

    #@ec
    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    #@ee
    .line 292
    move-object/from16 v0, p0

    #@f0
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    #@f2
    move/from16 v17, v0

    #@f4
    if-eqz v17, :cond_8

    #@f6
    .line 293
    const/16 v17, -0x2

    #@f8
    move/from16 v0, v17

    #@fa
    move-object/from16 v1, p0

    #@fc
    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    #@fe
    .line 294
    const/16 v17, 0xa

    #@100
    const/16 v18, 0xa

    #@102
    move/from16 v0, v18

    #@104
    move-object/from16 v1, p0

    #@106
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@108
    return v17

    #@109
    .line 296
    :cond_8
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@10c
    move-result v6

    #@10d
    goto :goto_2

    #@10e
    .line 299
    :cond_9
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@111
    move-result v6

    #@112
    goto :goto_2

    #@113
    .line 304
    :cond_a
    const/16 v17, 0xff

    #@115
    move/from16 v0, v17

    #@117
    if-le v6, v0, :cond_b

    #@119
    const/16 v7, 0x8

    #@11b
    .local v7, "currentType":B
    goto/16 :goto_1

    #@11d
    .line 305
    .end local v7    # "currentType":B
    :cond_b
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@121
    move-object/from16 v17, v0

    #@123
    aget-byte v7, v17, v6

    #@125
    .local v7, "currentType":B
    goto/16 :goto_1

    #@127
    .line 312
    .end local v7    # "currentType":B
    :cond_c
    and-int/lit8 v17, v7, 0x10

    #@129
    if-eqz v17, :cond_13

    #@12b
    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    #@12d
    const/16 v17, 0x14

    #@12f
    move/from16 v0, v17

    #@131
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@134
    .line 314
    .local v9, "digits":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    #@135
    .local v11, "haveDecimal":Z
    const/16 v17, 0x2d

    #@137
    move/from16 v0, v17

    #@139
    if-ne v6, v0, :cond_11

    #@13b
    const/4 v5, 0x1

    #@13c
    .line 316
    .local v5, "checkJustNegative":Z
    :cond_d
    :goto_3
    const/16 v17, 0x2e

    #@13e
    move/from16 v0, v17

    #@140
    if-ne v6, v0, :cond_e

    #@142
    .line 317
    const/4 v11, 0x1

    #@143
    .line 319
    :cond_e
    int-to-char v0, v6

    #@144
    move/from16 v17, v0

    #@146
    move/from16 v0, v17

    #@148
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14b
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@14e
    move-result v6

    #@14f
    .line 321
    const/16 v17, 0x30

    #@151
    move/from16 v0, v17

    #@153
    if-lt v6, v0, :cond_f

    #@155
    const/16 v17, 0x39

    #@157
    move/from16 v0, v17

    #@159
    if-le v6, v0, :cond_d

    #@15b
    .line 322
    :cond_f
    if-nez v11, :cond_10

    #@15d
    const/16 v17, 0x2e

    #@15f
    move/from16 v0, v17

    #@161
    if-eq v6, v0, :cond_d

    #@163
    .line 326
    :cond_10
    move-object/from16 v0, p0

    #@165
    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@167
    .line 327
    if-eqz v5, :cond_12

    #@169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    #@16c
    move-result v17

    #@16d
    const/16 v18, 0x1

    #@16f
    move/from16 v0, v17

    #@171
    move/from16 v1, v18

    #@173
    if-ne v0, v1, :cond_12

    #@175
    .line 329
    const/16 v17, 0x2d

    #@177
    move/from16 v0, v17

    #@179
    move-object/from16 v1, p0

    #@17b
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@17d
    const/16 v17, 0x2d

    #@17f
    return v17

    #@180
    .line 314
    .end local v5    # "checkJustNegative":Z
    :cond_11
    const/4 v5, 0x0

    #@181
    .restart local v5    # "checkJustNegative":Z
    goto :goto_3

    #@182
    .line 332
    :cond_12
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object v17

    #@186
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@189
    move-result-object v17

    #@18a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    #@18d
    move-result-wide v18

    #@18e
    move-wide/from16 v0, v18

    #@190
    move-object/from16 v2, p0

    #@192
    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@194
    .line 337
    :goto_4
    const/16 v17, -0x2

    #@196
    const/16 v18, -0x2

    #@198
    move/from16 v0, v18

    #@19a
    move-object/from16 v1, p0

    #@19c
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@19e
    return v17

    #@19f
    .line 333
    :catch_0
    move-exception v10

    #@1a0
    .line 335
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v18, 0x0

    #@1a2
    move-wide/from16 v0, v18

    #@1a4
    move-object/from16 v2, p0

    #@1a6
    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D

    #@1a8
    goto :goto_4

    #@1a9
    .line 340
    .end local v5    # "checkJustNegative":Z
    .end local v9    # "digits":Ljava/lang/StringBuilder;
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "haveDecimal":Z
    :cond_13
    and-int/lit8 v17, v7, 0x8

    #@1ab
    if-eqz v17, :cond_17

    #@1ad
    .line 341
    new-instance v16, Ljava/lang/StringBuilder;

    #@1af
    const/16 v17, 0x14

    #@1b1
    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b4
    .line 343
    .local v16, "word":Ljava/lang/StringBuilder;
    :cond_14
    int-to-char v0, v6

    #@1b5
    move/from16 v17, v0

    #@1b7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1ba
    .line 344
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@1bd
    move-result v6

    #@1be
    .line 345
    const/16 v17, -0x1

    #@1c0
    move/from16 v0, v17

    #@1c2
    if-eq v6, v0, :cond_15

    #@1c4
    .line 346
    const/16 v17, 0x100

    #@1c6
    move/from16 v0, v17

    #@1c8
    if-ge v6, v0, :cond_14

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iget-object v0, v0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@1ce
    move-object/from16 v17, v0

    #@1d0
    aget-byte v17, v17, v6

    #@1d2
    and-int/lit8 v17, v17, 0x18

    #@1d4
    if-nez v17, :cond_14

    #@1d6
    .line 350
    :cond_15
    move-object/from16 v0, p0

    #@1d8
    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@1da
    .line 351
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v17

    #@1de
    move-object/from16 v0, v17

    #@1e0
    move-object/from16 v1, p0

    #@1e2
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@1e4
    .line 352
    move-object/from16 v0, p0

    #@1e6
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    #@1e8
    move/from16 v17, v0

    #@1ea
    if-eqz v17, :cond_16

    #@1ec
    .line 353
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@1f0
    move-object/from16 v17, v0

    #@1f2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1f5
    move-result-object v18

    #@1f6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1f9
    move-result-object v17

    #@1fa
    move-object/from16 v0, v17

    #@1fc
    move-object/from16 v1, p0

    #@1fe
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@200
    .line 355
    :cond_16
    const/16 v17, -0x3

    #@202
    const/16 v18, -0x3

    #@204
    move/from16 v0, v18

    #@206
    move-object/from16 v1, p0

    #@208
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@20a
    return v17

    #@20b
    .line 358
    .end local v16    # "word":Ljava/lang/StringBuilder;
    :cond_17
    const/16 v17, 0x2

    #@20d
    move/from16 v0, v17

    #@20f
    if-ne v7, v0, :cond_22

    #@211
    .line 359
    move v12, v6

    #@212
    .line 360
    .local v12, "matchQuote":I
    new-instance v14, Ljava/lang/StringBuilder;

    #@214
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@217
    .line 361
    .local v14, "quoteString":Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@21a
    move-result v13

    #@21b
    .line 362
    .local v13, "peekOne":I
    :cond_18
    :goto_5
    if-ltz v13, :cond_20

    #@21d
    if-eq v13, v12, :cond_20

    #@21f
    const/16 v17, 0xd

    #@221
    move/from16 v0, v17

    #@223
    if-eq v13, v0, :cond_20

    #@225
    .line 363
    const/16 v17, 0xa

    #@227
    move/from16 v0, v17

    #@229
    if-eq v13, v0, :cond_20

    #@22b
    .line 364
    const/4 v15, 0x1

    #@22c
    .line 365
    .local v15, "readPeek":Z
    const/16 v17, 0x5c

    #@22e
    move/from16 v0, v17

    #@230
    if-ne v13, v0, :cond_1a

    #@232
    .line 366
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@235
    move-result v4

    #@236
    .line 368
    .local v4, "c1":I
    const/16 v17, 0x37

    #@238
    move/from16 v0, v17

    #@23a
    if-gt v4, v0, :cond_1f

    #@23c
    const/16 v17, 0x30

    #@23e
    move/from16 v0, v17

    #@240
    if-lt v4, v0, :cond_1f

    #@242
    .line 369
    add-int/lit8 v8, v4, -0x30

    #@244
    .line 370
    .local v8, "digitValue":I
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@247
    move-result v4

    #@248
    .line 371
    const/16 v17, 0x37

    #@24a
    move/from16 v0, v17

    #@24c
    if-gt v4, v0, :cond_19

    #@24e
    const/16 v17, 0x30

    #@250
    move/from16 v0, v17

    #@252
    if-ge v4, v0, :cond_1b

    #@254
    .line 372
    :cond_19
    const/4 v15, 0x0

    #@255
    .line 383
    :goto_6
    if-nez v15, :cond_1e

    #@257
    .line 385
    int-to-char v0, v8

    #@258
    move/from16 v17, v0

    #@25a
    move/from16 v0, v17

    #@25c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25f
    .line 386
    move v13, v4

    #@260
    .line 418
    .end local v4    # "c1":I
    .end local v8    # "digitValue":I
    :cond_1a
    :goto_7
    if-eqz v15, :cond_18

    #@262
    .line 419
    int-to-char v0, v13

    #@263
    move/from16 v17, v0

    #@265
    move/from16 v0, v17

    #@267
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26a
    .line 420
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@26d
    move-result v13

    #@26e
    goto :goto_5

    #@26f
    .line 374
    .restart local v4    # "c1":I
    .restart local v8    # "digitValue":I
    :cond_1b
    mul-int/lit8 v17, v8, 0x8

    #@271
    add-int/lit8 v18, v4, -0x30

    #@273
    add-int v8, v17, v18

    #@275
    .line 375
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@278
    move-result v4

    #@279
    .line 377
    const/16 v17, 0x1f

    #@27b
    move/from16 v0, v17

    #@27d
    if-gt v8, v0, :cond_1c

    #@27f
    const/16 v17, 0x37

    #@281
    move/from16 v0, v17

    #@283
    if-le v4, v0, :cond_1d

    #@285
    .line 378
    :cond_1c
    const/4 v15, 0x0

    #@286
    .line 377
    goto :goto_6

    #@287
    :cond_1d
    const/16 v17, 0x30

    #@289
    move/from16 v0, v17

    #@28b
    if-lt v4, v0, :cond_1c

    #@28d
    .line 380
    mul-int/lit8 v17, v8, 0x8

    #@28f
    add-int/lit8 v18, v4, -0x30

    #@291
    add-int v8, v17, v18

    #@293
    goto :goto_6

    #@294
    .line 388
    :cond_1e
    move v13, v8

    #@295
    goto :goto_7

    #@296
    .line 391
    .end local v8    # "digitValue":I
    :cond_1f
    sparse-switch v4, :sswitch_data_0

    #@299
    .line 414
    move v13, v4

    #@29a
    goto :goto_7

    #@29b
    .line 393
    :sswitch_0
    const/4 v13, 0x7

    #@29c
    .line 394
    goto :goto_7

    #@29d
    .line 396
    :sswitch_1
    const/16 v13, 0x8

    #@29f
    .line 397
    goto :goto_7

    #@2a0
    .line 399
    :sswitch_2
    const/16 v13, 0xc

    #@2a2
    .line 400
    goto :goto_7

    #@2a3
    .line 402
    :sswitch_3
    const/16 v13, 0xa

    #@2a5
    .line 403
    goto :goto_7

    #@2a6
    .line 405
    :sswitch_4
    const/16 v13, 0xd

    #@2a8
    .line 406
    goto :goto_7

    #@2a9
    .line 408
    :sswitch_5
    const/16 v13, 0x9

    #@2ab
    .line 409
    goto :goto_7

    #@2ac
    .line 411
    :sswitch_6
    const/16 v13, 0xb

    #@2ae
    .line 412
    goto :goto_7

    #@2af
    .line 423
    .end local v4    # "c1":I
    .end local v15    # "readPeek":Z
    :cond_20
    if-ne v13, v12, :cond_21

    #@2b1
    .line 424
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@2b4
    move-result v13

    #@2b5
    .line 426
    :cond_21
    move-object/from16 v0, p0

    #@2b7
    iput v13, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@2b9
    .line 427
    move-object/from16 v0, p0

    #@2bb
    iput v12, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@2bd
    .line 428
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c0
    move-result-object v17

    #@2c1
    move-object/from16 v0, v17

    #@2c3
    move-object/from16 v1, p0

    #@2c5
    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@2c7
    .line 429
    move-object/from16 v0, p0

    #@2c9
    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@2cb
    move/from16 v17, v0

    #@2cd
    return v17

    #@2ce
    .line 432
    .end local v12    # "matchQuote":I
    .end local v13    # "peekOne":I
    .end local v14    # "quoteString":Ljava/lang/StringBuilder;
    :cond_22
    const/16 v17, 0x2f

    #@2d0
    move/from16 v0, v17

    #@2d2
    if-ne v6, v0, :cond_2d

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    #@2d8
    move/from16 v17, v0

    #@2da
    if-nez v17, :cond_23

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    #@2e0
    move/from16 v17, v0

    #@2e2
    if-eqz v17, :cond_2d

    #@2e4
    .line 433
    :cond_23
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@2e7
    move-result v6

    #@2e8
    const/16 v17, 0x2a

    #@2ea
    move/from16 v0, v17

    #@2ec
    if-ne v6, v0, :cond_29

    #@2ee
    move-object/from16 v0, p0

    #@2f0
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    #@2f2
    move/from16 v17, v0

    #@2f4
    if-eqz v17, :cond_29

    #@2f6
    .line 434
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@2f9
    move-result v13

    #@2fa
    .line 436
    .restart local v13    # "peekOne":I
    :cond_24
    :goto_8
    move v6, v13

    #@2fb
    .line 437
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@2fe
    move-result v13

    #@2ff
    .line 438
    const/16 v17, -0x1

    #@301
    move/from16 v0, v17

    #@303
    if-ne v6, v0, :cond_25

    #@305
    .line 439
    const/16 v17, -0x1

    #@307
    move/from16 v0, v17

    #@309
    move-object/from16 v1, p0

    #@30b
    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    #@30d
    .line 440
    const/16 v17, -0x1

    #@30f
    const/16 v18, -0x1

    #@311
    move/from16 v0, v18

    #@313
    move-object/from16 v1, p0

    #@315
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@317
    return v17

    #@318
    .line 442
    :cond_25
    const/16 v17, 0xd

    #@31a
    move/from16 v0, v17

    #@31c
    if-ne v6, v0, :cond_27

    #@31e
    .line 443
    const/16 v17, 0xa

    #@320
    move/from16 v0, v17

    #@322
    if-ne v13, v0, :cond_26

    #@324
    .line 444
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@327
    move-result v13

    #@328
    .line 446
    :cond_26
    move-object/from16 v0, p0

    #@32a
    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@32c
    move/from16 v17, v0

    #@32e
    add-int/lit8 v17, v17, 0x1

    #@330
    move/from16 v0, v17

    #@332
    move-object/from16 v1, p0

    #@334
    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    #@336
    goto :goto_8

    #@337
    .line 447
    :cond_27
    const/16 v17, 0xa

    #@339
    move/from16 v0, v17

    #@33b
    if-ne v6, v0, :cond_28

    #@33d
    .line 448
    move-object/from16 v0, p0

    #@33f
    iget v0, v0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@341
    move/from16 v17, v0

    #@343
    add-int/lit8 v17, v17, 0x1

    #@345
    move/from16 v0, v17

    #@347
    move-object/from16 v1, p0

    #@349
    iput v0, v1, Ljava/io/StreamTokenizer;->lineNumber:I

    #@34b
    goto :goto_8

    #@34c
    .line 449
    :cond_28
    const/16 v17, 0x2a

    #@34e
    move/from16 v0, v17

    #@350
    if-ne v6, v0, :cond_24

    #@352
    const/16 v17, 0x2f

    #@354
    move/from16 v0, v17

    #@356
    if-ne v13, v0, :cond_24

    #@358
    .line 450
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@35b
    move-result v17

    #@35c
    move/from16 v0, v17

    #@35e
    move-object/from16 v1, p0

    #@360
    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    #@362
    .line 451
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@365
    move-result v17

    #@366
    return v17

    #@367
    .line 454
    .end local v13    # "peekOne":I
    :cond_29
    const/16 v17, 0x2f

    #@369
    move/from16 v0, v17

    #@36b
    if-ne v6, v0, :cond_2c

    #@36d
    move-object/from16 v0, p0

    #@36f
    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    #@371
    move/from16 v17, v0

    #@373
    if-eqz v17, :cond_2c

    #@375
    .line 456
    :cond_2a
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@378
    move-result v6

    #@379
    if-ltz v6, :cond_2b

    #@37b
    const/16 v17, 0xd

    #@37d
    move/from16 v0, v17

    #@37f
    if-eq v6, v0, :cond_2b

    #@381
    .line 457
    const/16 v17, 0xa

    #@383
    move/from16 v0, v17

    #@385
    if-ne v6, v0, :cond_2a

    #@387
    .line 460
    :cond_2b
    move-object/from16 v0, p0

    #@389
    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@38b
    .line 461
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@38e
    move-result v17

    #@38f
    return v17

    #@390
    .line 462
    :cond_2c
    const/16 v17, 0x1

    #@392
    move/from16 v0, v17

    #@394
    if-eq v7, v0, :cond_2d

    #@396
    .line 464
    move-object/from16 v0, p0

    #@398
    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@39a
    .line 465
    const/16 v17, 0x2f

    #@39c
    move/from16 v0, v17

    #@39e
    move-object/from16 v1, p0

    #@3a0
    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    #@3a2
    const/16 v17, 0x2f

    #@3a4
    return v17

    #@3a5
    .line 469
    :cond_2d
    const/16 v17, 0x1

    #@3a7
    move/from16 v0, v17

    #@3a9
    if-ne v7, v0, :cond_30

    #@3ab
    .line 471
    :cond_2e
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@3ae
    move-result v6

    #@3af
    if-ltz v6, :cond_2f

    #@3b1
    const/16 v17, 0xd

    #@3b3
    move/from16 v0, v17

    #@3b5
    if-eq v6, v0, :cond_2f

    #@3b7
    .line 472
    const/16 v17, 0xa

    #@3b9
    move/from16 v0, v17

    #@3bb
    if-ne v6, v0, :cond_2e

    #@3bd
    .line 475
    :cond_2f
    move-object/from16 v0, p0

    #@3bf
    iput v6, v0, Ljava/io/StreamTokenizer;->peekChar:I

    #@3c1
    .line 476
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@3c4
    move-result v17

    #@3c5
    return v17

    #@3c6
    .line 479
    :cond_30
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    #@3c9
    move-result v17

    #@3ca
    move/from16 v0, v17

    #@3cc
    move-object/from16 v1, p0

    #@3ce
    iput v0, v1, Ljava/io/StreamTokenizer;->peekChar:I

    #@3d0
    .line 480
    move-object/from16 v0, p0

    #@3d2
    iput v6, v0, Ljava/io/StreamTokenizer;->ttype:I

    #@3d4
    return v6

    #@3d5
    .line 391
    nop

    #@3d6
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 493
    if-ltz p1, :cond_0

    #@3
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@5
    array-length v0, v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 494
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@a
    aput-byte v1, v0, p1

    #@c
    .line 492
    :cond_0
    return-void
.end method

.method public ordinaryChars(II)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 510
    if-gez p1, :cond_0

    #@3
    .line 511
    const/4 p1, 0x0

    #@4
    .line 513
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@6
    array-length v1, v1

    #@7
    if-le p2, v1, :cond_1

    #@9
    .line 514
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@b
    array-length v1, v1

    #@c
    add-int/lit8 p2, v1, -0x1

    #@e
    .line 516
    :cond_1
    move v0, p1

    #@f
    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@11
    .line 517
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@13
    aput-byte v2, v1, v0

    #@15
    .line 516
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 509
    :cond_2
    return-void
.end method

.method public parseNumbers()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x2e

    #@2
    const/16 v3, 0x2d

    #@4
    .line 525
    const/16 v0, 0x30

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    #@8
    if-gt v0, v1, :cond_0

    #@a
    .line 526
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@c
    aget-byte v2, v1, v0

    #@e
    or-int/lit8 v2, v2, 0x10

    #@10
    int-to-byte v2, v2

    #@11
    aput-byte v2, v1, v0

    #@13
    .line 525
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 528
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@18
    aget-byte v2, v1, v4

    #@1a
    or-int/lit8 v2, v2, 0x10

    #@1c
    int-to-byte v2, v2

    #@1d
    aput-byte v2, v1, v4

    #@1f
    .line 529
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@21
    aget-byte v2, v1, v3

    #@23
    or-int/lit8 v2, v2, 0x10

    #@25
    int-to-byte v2, v2

    #@26
    aput-byte v2, v1, v3

    #@28
    .line 524
    return-void
.end method

.method public pushBack()V
    .locals 1

    #@0
    .prologue
    .line 537
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    #@3
    .line 536
    return-void
.end method

.method public quoteChar(I)V
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 548
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    .line 549
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@9
    const/4 v1, 0x2

    #@a
    aput-byte v1, v0, p1

    #@c
    .line 547
    :cond_0
    return-void
.end method

.method public resetSyntax()V
    .locals 3

    #@0
    .prologue
    .line 565
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 566
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@7
    const/4 v2, 0x0

    #@8
    aput-byte v2, v1, v0

    #@a
    .line 565
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 564
    :cond_0
    return-void
.end method

.method public slashSlashComments(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 579
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    #@2
    .line 578
    return-void
.end method

.method public slashStarComments(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 592
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    #@2
    .line 591
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 604
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Token["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 605
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@f
    sparse-switch v1, :sswitch_data_0

    #@12
    .line 620
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@14
    const/4 v2, -0x4

    #@15
    if-eq v1, v2, :cond_0

    #@17
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@19
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@1b
    aget-byte v1, v1, v2

    #@1d
    const/4 v2, 0x2

    #@1e
    if-ne v1, v2, :cond_1

    #@20
    .line 621
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 628
    :goto_0
    const-string/jumbo v1, "], line "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 629
    iget v1, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    return-object v1

    #@35
    .line 607
    :sswitch_0
    const-string/jumbo v1, "EOF"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_0

    #@3c
    .line 610
    :sswitch_1
    const-string/jumbo v1, "EOL"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0

    #@43
    .line 613
    :sswitch_2
    const-string/jumbo v1, "n="

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 614
    iget-wide v2, p0, Ljava/io/StreamTokenizer;->nval:D

    #@4b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4e
    goto :goto_0

    #@4f
    .line 617
    :sswitch_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    goto :goto_0

    #@55
    .line 623
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    .line 624
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    #@5a
    int-to-char v1, v1

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    .line 625
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    goto :goto_0

    #@62
    .line 605
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 643
    if-gez p1, :cond_0

    #@2
    .line 644
    const/4 p1, 0x0

    #@3
    .line 646
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@5
    array-length v1, v1

    #@6
    if-le p2, v1, :cond_1

    #@8
    .line 647
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@a
    array-length v1, v1

    #@b
    add-int/lit8 p2, v1, -0x1

    #@d
    .line 649
    :cond_1
    move v0, p1

    #@e
    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@10
    .line 650
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@12
    const/4 v2, 0x4

    #@13
    aput-byte v2, v1, v0

    #@15
    .line 649
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 642
    :cond_2
    return-void
.end method

.method public wordChars(II)V
    .locals 3
    .param p1, "low"    # I
    .param p2, "hi"    # I

    #@0
    .prologue
    .line 665
    if-gez p1, :cond_0

    #@2
    .line 666
    const/4 p1, 0x0

    #@3
    .line 668
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@5
    array-length v1, v1

    #@6
    if-le p2, v1, :cond_1

    #@8
    .line 669
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@a
    array-length v1, v1

    #@b
    add-int/lit8 p2, v1, -0x1

    #@d
    .line 671
    :cond_1
    move v0, p1

    #@e
    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@10
    .line 672
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    #@12
    aget-byte v2, v1, v0

    #@14
    or-int/lit8 v2, v2, 0x8

    #@16
    int-to-byte v2, v2

    #@17
    aput-byte v2, v1, v0

    #@19
    .line 671
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 664
    :cond_2
    return-void
.end method
