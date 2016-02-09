.class public final Landroid/icu/impl/IDNA2003;
.super Ljava/lang/Object;
.source "IDNA2003.java"


# static fields
.field private static ACE_PREFIX:[C = null

.field private static final CAPITAL_A:I = 0x41

.field private static final CAPITAL_Z:I = 0x5a

.field private static final FULL_STOP:I = 0x2e

.field private static final HYPHEN:I = 0x2d

.field private static final LOWER_CASE_DELTA:I = 0x20

.field private static final MAX_DOMAIN_NAME_LENGTH:I = 0xff

.field private static final MAX_LABEL_LENGTH:I = 0x3f

.field private static final namePrep:Landroid/icu/text/StringPrep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 21
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [C

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@8
    .line 33
    const/4 v0, 0x0

    #@9
    invoke-static {v0}, Landroid/icu/text/StringPrep;->getInstance(I)Landroid/icu/text/StringPrep;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    #@f
    .line 19
    return-void

    #@10
    .line 21
    :array_0
    .array-data 2
        0x78s
        0x6es
        0x2ds
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 432
    invoke-static {p0, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    .line 433
    .local v0, "s1Out":Ljava/lang/StringBuffer;
    invoke-static {p1, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v1

    #@8
    .line 434
    .local v1, "s2Out":Ljava/lang/StringBuffer;
    invoke-static {v0, v1}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method private static compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 7
    .param p0, "s1"    # Ljava/lang/StringBuffer;
    .param p1, "s2"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 67
    const/4 v2, 0x0

    #@2
    .line 69
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v4

    #@6
    if-ne v2, v4, :cond_0

    #@8
    .line 70
    return v6

    #@9
    .line 73
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 74
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@10
    move-result v1

    #@11
    .line 77
    .local v1, "c2":C
    if-eq v0, v1, :cond_1

    #@13
    .line 78
    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    #@16
    move-result v4

    #@17
    invoke-static {v1}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    #@1a
    move-result v5

    #@1b
    sub-int v3, v4, v5

    #@1d
    .line 79
    .local v3, "rc":I
    if-eqz v3, :cond_1

    #@1f
    .line 80
    return v3

    #@20
    .line 67
    .end local v3    # "rc":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0
.end method

.method public static convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v5

    #@4
    .line 265
    .local v5, "srcArr":[C
    new-instance v3, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 266
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@a
    .line 267
    .local v4, "sepIndex":I
    const/4 v2, 0x0

    #@b
    .line 269
    .local v2, "oldSepIndex":I
    :goto_0
    array-length v6, v5

    #@c
    invoke-static {v5, v4, v6}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    #@f
    move-result v4

    #@10
    .line 270
    new-instance v1, Ljava/lang/String;

    #@12
    sub-int v6, v4, v2

    #@14
    invoke-direct {v1, v5, v2, v6}, Ljava/lang/String;-><init>([CII)V

    #@17
    .line 272
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    array-length v6, v5

    #@1e
    if-eq v4, v6, :cond_1

    #@20
    .line 273
    :cond_0
    invoke-static {v1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@23
    move-result-object v0

    #@24
    .line 274
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@2b
    .line 276
    .end local v0    # "iter":Landroid/icu/text/UCharacterIterator;
    :cond_1
    array-length v6, v5

    #@2c
    if-ne v4, v6, :cond_2

    #@2e
    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    #@31
    move-result v6

    #@32
    const/16 v7, 0xff

    #@34
    if-le v6, v7, :cond_3

    #@36
    .line 286
    new-instance v6, Landroid/icu/text/StringPrepParseException;

    #@38
    const-string/jumbo v7, "The output exceed the max allowed length."

    #@3b
    const/16 v8, 0xb

    #@3d
    invoke-direct {v6, v7, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@40
    throw v6

    #@41
    .line 281
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@43
    .line 282
    move v2, v4

    #@44
    .line 283
    const/16 v6, 0x2e

    #@46
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@49
    goto :goto_0

    #@4a
    .line 288
    :cond_3
    return-object v3
.end method

.method public static convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@3
    move-result-object v5

    #@4
    .line 405
    .local v5, "srcArr":[C
    new-instance v3, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    .line 406
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@a
    .line 407
    .local v4, "sepIndex":I
    const/4 v2, 0x0

    #@b
    .line 409
    .local v2, "oldSepIndex":I
    :goto_0
    array-length v6, v5

    #@c
    invoke-static {v5, v4, v6}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    #@f
    move-result v4

    #@10
    .line 410
    new-instance v1, Ljava/lang/String;

    #@12
    sub-int v6, v4, v2

    #@14
    invoke-direct {v1, v5, v2, v6}, Ljava/lang/String;-><init>([CII)V

    #@17
    .line 411
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_0

    #@1d
    array-length v6, v5

    #@1e
    if-eq v4, v6, :cond_0

    #@20
    .line 412
    new-instance v6, Landroid/icu/text/StringPrepParseException;

    #@22
    const-string/jumbo v7, "Found zero length lable after NamePrep."

    #@25
    const/16 v8, 0xa

    #@27
    invoke-direct {v6, v7, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@2a
    throw v6

    #@2b
    .line 414
    :cond_0
    invoke-static {v1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@2e
    move-result-object v0

    #@2f
    .line 415
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@36
    .line 416
    array-length v6, v5

    #@37
    if-ne v4, v6, :cond_1

    #@39
    .line 425
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    #@3c
    move-result v6

    #@3d
    const/16 v7, 0xff

    #@3f
    if-le v6, v7, :cond_2

    #@41
    .line 426
    new-instance v6, Landroid/icu/text/StringPrepParseException;

    #@43
    const-string/jumbo v7, "The output exceed the max allowed length."

    #@46
    const/16 v8, 0xb

    #@48
    invoke-direct {v6, v7, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@4b
    throw v6

    #@4c
    .line 420
    :cond_1
    aget-char v6, v5, v4

    #@4e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@51
    .line 422
    add-int/lit8 v4, v4, 0x1

    #@53
    .line 423
    move v2, v4

    #@54
    goto :goto_0

    #@55
    .line 428
    :cond_2
    return-object v3
.end method

.method public static convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 22
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    const/4 v5, 0x0

    #@1
    .line 158
    .local v5, "caseFlags":[Z
    const/4 v14, 0x1

    #@2
    .line 160
    .local v14, "srcIsASCII":Z
    const/4 v15, 0x1

    #@3
    .line 163
    .local v15, "srcIsLDH":Z
    and-int/lit8 v17, p1, 0x2

    #@5
    if-eqz v17, :cond_1

    #@7
    const/16 v16, 0x1

    #@9
    .line 166
    .local v16, "useSTD3ASCIIRules":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@c
    move-result v6

    #@d
    .local v6, "ch":I
    const/16 v17, -0x1

    #@f
    move/from16 v0, v17

    #@11
    if-eq v6, v0, :cond_2

    #@13
    .line 167
    const/16 v17, 0x7f

    #@15
    move/from16 v0, v17

    #@17
    if-le v6, v0, :cond_0

    #@19
    .line 168
    const/4 v14, 0x0

    #@1a
    goto :goto_0

    #@1b
    .line 163
    .end local v6    # "ch":I
    .end local v16    # "useSTD3ASCIIRules":Z
    :cond_1
    const/16 v16, 0x0

    #@1d
    .restart local v16    # "useSTD3ASCIIRules":Z
    goto :goto_0

    #@1e
    .line 171
    .restart local v6    # "ch":I
    :cond_2
    const/4 v8, -0x1

    #@1f
    .line 172
    .local v8, "failPos":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    #@22
    .line 173
    const/4 v12, 0x0

    #@23
    .line 175
    .local v12, "processOut":Ljava/lang/StringBuffer;
    if-nez v14, :cond_3

    #@25
    .line 177
    sget-object v17, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    #@27
    move-object/from16 v0, v17

    #@29
    move-object/from16 v1, p0

    #@2b
    move/from16 v2, p1

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@30
    move-result-object v12

    #@31
    .line 181
    .local v12, "processOut":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    #@34
    move-result v11

    #@35
    .line 183
    .local v11, "poLen":I
    if-nez v11, :cond_4

    #@37
    .line 184
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@39
    const-string/jumbo v18, "Found zero length lable after NamePrep."

    #@3c
    const/16 v19, 0xa

    #@3e
    invoke-direct/range {v17 .. v19}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    #@41
    throw v17

    #@42
    .line 179
    .end local v11    # "poLen":I
    .local v12, "processOut":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v12, Ljava/lang/StringBuffer;

    #@44
    .end local v12    # "processOut":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@47
    move-result-object v17

    #@48
    move-object/from16 v0, v17

    #@4a
    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@4d
    .local v12, "processOut":Ljava/lang/StringBuffer;
    goto :goto_1

    #@4e
    .line 186
    .restart local v11    # "poLen":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@53
    .line 189
    .local v7, "dest":Ljava/lang/StringBuffer;
    const/4 v14, 0x1

    #@54
    .line 192
    const/4 v9, 0x0

    #@55
    .local v9, "j":I
    :goto_2
    if-ge v9, v11, :cond_7

    #@57
    .line 193
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5a
    move-result v6

    #@5b
    .line 194
    const/16 v17, 0x7f

    #@5d
    move/from16 v0, v17

    #@5f
    if-le v6, v0, :cond_6

    #@61
    .line 195
    const/4 v14, 0x0

    #@62
    .line 192
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@64
    goto :goto_2

    #@65
    .line 196
    :cond_6
    invoke-static {v6}, Landroid/icu/impl/IDNA2003;->isLDHChar(I)Z

    #@68
    move-result v17

    #@69
    if-nez v17, :cond_5

    #@6b
    .line 200
    const/4 v15, 0x0

    #@6c
    .line 201
    move v8, v9

    #@6d
    goto :goto_3

    #@6e
    .line 205
    :cond_7
    if-eqz v16, :cond_b

    #@70
    .line 207
    if-eqz v15, :cond_8

    #@72
    .line 208
    const/16 v17, 0x0

    #@74
    move/from16 v0, v17

    #@76
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@79
    move-result v17

    #@7a
    const/16 v18, 0x2d

    #@7c
    move/from16 v0, v17

    #@7e
    move/from16 v1, v18

    #@80
    if-ne v0, v1, :cond_a

    #@82
    .line 212
    :cond_8
    if-nez v15, :cond_c

    #@84
    .line 213
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@86
    const-string/jumbo v18, "The input does not conform to the STD 3 ASCII rules"

    #@89
    .line 215
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8c
    move-result-object v19

    #@8d
    .line 216
    if-lez v8, :cond_9

    #@8f
    add-int/lit8 v8, v8, -0x1

    #@91
    .line 214
    .end local v8    # "failPos":I
    :cond_9
    const/16 v20, 0x5

    #@93
    .line 213
    move-object/from16 v0, v17

    #@95
    move-object/from16 v1, v18

    #@97
    move/from16 v2, v20

    #@99
    move-object/from16 v3, v19

    #@9b
    invoke-direct {v0, v1, v2, v3, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@9e
    throw v17

    #@9f
    .line 209
    .restart local v8    # "failPos":I
    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    #@a2
    move-result v17

    #@a3
    add-int/lit8 v17, v17, -0x1

    #@a5
    move/from16 v0, v17

    #@a7
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@aa
    move-result v17

    #@ab
    const/16 v18, 0x2d

    #@ad
    move/from16 v0, v17

    #@af
    move/from16 v1, v18

    #@b1
    if-eq v0, v1, :cond_8

    #@b3
    .line 230
    :cond_b
    if-eqz v14, :cond_f

    #@b5
    .line 231
    move-object v7, v12

    #@b6
    .line 254
    .end local v5    # "caseFlags":[Z
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    #@b9
    move-result v17

    #@ba
    const/16 v18, 0x3f

    #@bc
    move/from16 v0, v17

    #@be
    move/from16 v1, v18

    #@c0
    if-le v0, v1, :cond_11

    #@c2
    .line 255
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@c4
    const-string/jumbo v18, "The labels in the input are too long. Length > 63."

    #@c7
    .line 256
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ca
    move-result-object v19

    #@cb
    const/16 v20, 0x8

    #@cd
    const/16 v21, 0x0

    #@cf
    .line 255
    move-object/from16 v0, v17

    #@d1
    move-object/from16 v1, v18

    #@d3
    move/from16 v2, v20

    #@d5
    move-object/from16 v3, v19

    #@d7
    move/from16 v4, v21

    #@d9
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@dc
    throw v17

    #@dd
    .line 217
    .restart local v5    # "caseFlags":[Z
    :cond_c
    const/16 v17, 0x0

    #@df
    move/from16 v0, v17

    #@e1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@e4
    move-result v17

    #@e5
    const/16 v18, 0x2d

    #@e7
    move/from16 v0, v17

    #@e9
    move/from16 v1, v18

    #@eb
    if-ne v0, v1, :cond_d

    #@ed
    .line 218
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@ef
    const-string/jumbo v18, "The input does not conform to the STD 3 ASCII rules"

    #@f2
    .line 219
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f5
    move-result-object v19

    #@f6
    const/16 v20, 0x5

    #@f8
    const/16 v21, 0x0

    #@fa
    .line 218
    move-object/from16 v0, v17

    #@fc
    move-object/from16 v1, v18

    #@fe
    move/from16 v2, v20

    #@100
    move-object/from16 v3, v19

    #@102
    move/from16 v4, v21

    #@104
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@107
    throw v17

    #@108
    .line 222
    :cond_d
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@10a
    const-string/jumbo v18, "The input does not conform to the STD 3 ASCII rules"

    #@10d
    .line 224
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@110
    move-result-object v19

    #@111
    .line 225
    if-lez v11, :cond_e

    #@113
    add-int/lit8 v11, v11, -0x1

    #@115
    .line 223
    .end local v11    # "poLen":I
    :cond_e
    const/16 v20, 0x5

    #@117
    .line 222
    move-object/from16 v0, v17

    #@119
    move-object/from16 v1, v18

    #@11b
    move/from16 v2, v20

    #@11d
    move-object/from16 v3, v19

    #@11f
    invoke-direct {v0, v1, v2, v3, v11}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@122
    throw v17

    #@123
    .line 234
    .restart local v11    # "poLen":I
    :cond_f
    invoke-static {v12}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    #@126
    move-result v17

    #@127
    if-nez v17, :cond_10

    #@129
    .line 237
    new-array v5, v11, [Z

    #@12b
    .line 239
    .local v5, "caseFlags":[Z
    invoke-static {v12, v5}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v13

    #@12f
    .line 242
    .local v13, "punyout":Ljava/lang/StringBuilder;
    invoke-static {v13}, Landroid/icu/impl/IDNA2003;->toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@132
    move-result-object v10

    #@133
    .line 245
    .local v10, "lowerOut":Ljava/lang/StringBuffer;
    sget-object v17, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@135
    sget-object v18, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@137
    move-object/from16 v0, v18

    #@139
    array-length v0, v0

    #@13a
    move/from16 v18, v0

    #@13c
    const/16 v19, 0x0

    #@13e
    move-object/from16 v0, v17

    #@140
    move/from16 v1, v19

    #@142
    move/from16 v2, v18

    #@144
    invoke-virtual {v7, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@147
    .line 247
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@14a
    goto/16 :goto_4

    #@14c
    .line 250
    .end local v10    # "lowerOut":Ljava/lang/StringBuffer;
    .end local v13    # "punyout":Ljava/lang/StringBuilder;
    .local v5, "caseFlags":[Z
    :cond_10
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    #@14e
    const-string/jumbo v18, "The input does not start with the ACE Prefix."

    #@151
    .line 251
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@154
    move-result-object v19

    #@155
    const/16 v20, 0x6

    #@157
    const/16 v21, 0x0

    #@159
    .line 250
    move-object/from16 v0, v17

    #@15b
    move-object/from16 v1, v18

    #@15d
    move/from16 v2, v20

    #@15f
    move-object/from16 v3, v19

    #@161
    move/from16 v4, v21

    #@163
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@166
    throw v17

    #@167
    .line 258
    .end local v5    # "caseFlags":[Z
    :cond_11
    return-object v7
.end method

.method public static convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 12
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    .line 297
    .local v0, "caseFlags":[Z
    const/4 v7, 0x1

    #@2
    .line 306
    .local v7, "srcIsASCII":Z
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@5
    move-result v6

    #@6
    .line 308
    .local v6, "saveIndex":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@9
    move-result v1

    #@a
    .local v1, "ch":I
    const/4 v10, -0x1

    #@b
    if-eq v1, v10, :cond_1

    #@d
    .line 309
    const/16 v10, 0x7f

    #@f
    if-le v1, v10, :cond_0

    #@11
    .line 310
    const/4 v7, 0x0

    #@12
    goto :goto_0

    #@13
    .line 317
    :cond_1
    if-nez v7, :cond_3

    #@15
    .line 320
    :try_start_0
    invoke-virtual {p0, v6}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@18
    .line 321
    sget-object v10, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    #@1a
    invoke-virtual {v10, p0, p1}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v5

    #@1e
    .line 338
    .local v5, "processOut":Ljava/lang/StringBuffer;
    :goto_1
    invoke-static {v5}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    #@21
    move-result v10

    #@22
    if-eqz v10, :cond_4

    #@24
    .line 339
    const/4 v2, 0x0

    #@25
    .line 342
    .local v2, "decodeOut":Ljava/lang/StringBuffer;
    sget-object v10, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@27
    array-length v10, v10

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@2b
    move-result v11

    #@2c
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    .line 346
    .local v8, "temp":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    #@32
    .end local v2    # "decodeOut":Ljava/lang/StringBuffer;
    invoke-static {v8, v0}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    #@35
    move-result-object v10

    #@36
    invoke-direct {v2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@39
    .line 352
    :goto_2
    if-eqz v2, :cond_2

    #@3b
    .line 353
    invoke-static {v2}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    #@3e
    move-result-object v10

    #@3f
    invoke-static {v10, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@42
    move-result-object v9

    #@43
    .line 356
    .local v9, "toASCIIOut":Ljava/lang/StringBuffer;
    invoke-static {v5, v9}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_2

    #@49
    .line 359
    const/4 v2, 0x0

    #@4a
    .line 364
    .end local v9    # "toASCIIOut":Ljava/lang/StringBuffer;
    :cond_2
    if-eqz v2, :cond_4

    #@4c
    .line 365
    return-object v2

    #@4d
    .line 322
    .end local v5    # "processOut":Ljava/lang/StringBuffer;
    .end local v8    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@4e
    .line 323
    .local v4, "ex":Landroid/icu/text/StringPrepParseException;
    new-instance v10, Ljava/lang/StringBuffer;

    #@50
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@53
    move-result-object v11

    #@54
    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@57
    return-object v10

    #@58
    .line 328
    .end local v4    # "ex":Landroid/icu/text/StringPrepParseException;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    #@5a
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@61
    .restart local v5    # "processOut":Ljava/lang/StringBuffer;
    goto :goto_1

    #@62
    .line 347
    .restart local v8    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@63
    .line 348
    .local v3, "e":Landroid/icu/text/StringPrepParseException;
    const/4 v2, 0x0

    #@64
    .restart local v2    # "decodeOut":Ljava/lang/StringBuffer;
    goto :goto_2

    #@65
    .line 398
    .end local v2    # "decodeOut":Ljava/lang/StringBuffer;
    .end local v3    # "e":Landroid/icu/text/StringPrepParseException;
    .end local v8    # "temp":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuffer;

    #@67
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@6a
    move-result-object v11

    #@6b
    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@6e
    return-object v10
.end method

.method private static getSeparatorIndex([CII)I
    .locals 1
    .param p0, "src"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 87
    :goto_0
    if-ge p1, p2, :cond_1

    #@2
    .line 88
    aget-char v0, p0, p1

    #@4
    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->isLabelSeparator(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 89
    return p1

    #@b
    .line 87
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 93
    :cond_1
    return p1
.end method

.method private static isLDHChar(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/16 v2, 0x7a

    #@2
    const/4 v1, 0x0

    #@3
    .line 118
    if-le p0, v2, :cond_0

    #@5
    .line 119
    return v1

    #@6
    .line 122
    :cond_0
    const/16 v0, 0x2d

    #@8
    if-eq p0, v0, :cond_1

    #@a
    .line 123
    const/16 v0, 0x30

    #@c
    if-gt v0, p0, :cond_2

    #@e
    const/16 v0, 0x39

    #@10
    if-gt p0, v0, :cond_2

    #@12
    .line 127
    :cond_1
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 124
    :cond_2
    const/16 v0, 0x41

    #@16
    if-gt v0, p0, :cond_3

    #@18
    const/16 v0, 0x5a

    #@1a
    if-le p0, v0, :cond_1

    #@1c
    .line 125
    :cond_3
    const/16 v0, 0x61

    #@1e
    if-gt v0, p0, :cond_4

    #@20
    if-le p0, v2, :cond_1

    #@22
    .line 129
    :cond_4
    return v1
.end method

.method private static isLabelSeparator(I)Z
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 141
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 148
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 146
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 141
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x3002 -> :sswitch_0
        0xff0e -> :sswitch_0
        0xff61 -> :sswitch_0
    .end sparse-switch
.end method

.method private static startsWithPrefix(Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p0, "src"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 36
    const/4 v1, 0x1

    #@1
    .line 38
    .local v1, "startsWithPrefix":Z
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@4
    move-result v2

    #@5
    sget-object v3, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@7
    array-length v3, v3

    #@8
    if-ge v2, v3, :cond_0

    #@a
    .line 39
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 41
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@f
    array-length v2, v2

    #@10
    if-ge v0, v2, :cond_2

    #@12
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@15
    move-result v2

    #@16
    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    #@19
    move-result v2

    #@1a
    sget-object v3, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    #@1c
    aget-char v3, v3, v0

    #@1e
    if-eq v2, v3, :cond_1

    #@20
    .line 43
    const/4 v1, 0x0

    #@21
    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 46
    :cond_2
    return v1
.end method

.method private static toASCIILower(C)C
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 50
    const/16 v0, 0x41

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x5a

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 51
    add-int/lit8 v0, p0, 0x20

    #@a
    int-to-char v0, v0

    #@b
    return v0

    #@c
    .line 53
    :cond_0
    return p0
.end method

.method private static toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 3
    .param p0, "src"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 58
    .local v0, "dest":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_0

    #@c
    .line 59
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    #@13
    move-result v2

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    .line 58
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 61
    :cond_0
    return-object v0
.end method
