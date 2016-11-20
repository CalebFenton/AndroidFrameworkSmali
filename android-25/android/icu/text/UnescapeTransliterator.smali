.class Landroid/icu/text/UnescapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnescapeTransliterator.java"


# static fields
.field private static final END:C = '\uffff'


# instance fields
.field private spec:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "spec"    # [C

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@4
    .line 133
    iput-object p2, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@6
    .line 131
    return-void
.end method

.method static register()V
    .locals 2

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "Hex-Any/Unicode"

    #@3
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 62
    const-string/jumbo v0, "Hex-Any/Java"

    #@e
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$2;

    #@10
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$2;-><init>()V

    #@13
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@16
    .line 72
    const-string/jumbo v0, "Hex-Any/C"

    #@19
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$3;

    #@1b
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$3;-><init>()V

    #@1e
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@21
    .line 83
    const-string/jumbo v0, "Hex-Any/XML"

    #@24
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$4;

    #@26
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$4;-><init>()V

    #@29
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@2c
    .line 93
    const-string/jumbo v0, "Hex-Any/XML10"

    #@2f
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$5;

    #@31
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$5;-><init>()V

    #@34
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@37
    .line 103
    const-string/jumbo v0, "Hex-Any/Perl"

    #@3a
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$6;

    #@3c
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$6;-><init>()V

    #@3f
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@42
    .line 113
    const-string/jumbo v0, "Hex-Any"

    #@45
    new-instance v1, Landroid/icu/text/UnescapeTransliterator$7;

    #@47
    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$7;-><init>()V

    #@4a
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@4d
    .line 50
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 11
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 262
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@4
    move-result-object v5

    #@5
    .line 263
    .local v5, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v3, Landroid/icu/text/UnicodeSet;

    #@7
    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@a
    .line 264
    .local v3, "items":Landroid/icu/text/UnicodeSet;
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 265
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@12
    aget-char v7, v7, v2

    #@14
    const v8, 0xffff

    #@17
    if-eq v7, v8, :cond_2

    #@19
    .line 267
    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@1b
    aget-char v7, v7, v2

    #@1d
    add-int/2addr v7, v2

    #@1e
    iget-object v8, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@20
    add-int/lit8 v9, v2, 0x1

    #@22
    aget-char v8, v8, v9

    #@24
    add-int/2addr v7, v8

    #@25
    add-int/lit8 v1, v7, 0x5

    #@27
    .line 268
    .local v1, "end":I
    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@29
    add-int/lit8 v8, v2, 0x2

    #@2b
    aget-char v6, v7, v8

    #@2d
    .line 269
    .local v6, "radix":I
    const/4 v4, 0x0

    #@2e
    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_0

    #@30
    .line 270
    invoke-static {v0, v4, v6, v10}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    #@33
    .line 269
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_1

    #@36
    .line 273
    :cond_0
    add-int/lit8 v4, v2, 0x5

    #@38
    :goto_2
    if-ge v4, v1, :cond_1

    #@3a
    .line 274
    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@3c
    aget-char v7, v7, v4

    #@3e
    invoke-virtual {v3, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@41
    .line 273
    add-int/lit8 v4, v4, 0x1

    #@43
    goto :goto_2

    #@44
    .line 277
    :cond_1
    move v2, v1

    #@45
    goto :goto_0

    #@46
    .line 279
    .end local v1    # "end":I
    .end local v4    # "j":I
    .end local v6    # "radix":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v3, v7}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@4d
    .line 280
    invoke-virtual {v3, v5}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@50
    .line 282
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->size()I

    #@53
    move-result v7

    #@54
    if-lez v7, :cond_3

    #@56
    .line 283
    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@59
    .line 284
    const v7, 0x10ffff

    #@5c
    invoke-virtual {p3, v10, v7}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    #@5f
    .line 258
    :cond_3
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 25
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    .line 141
    move-object/from16 v0, p2

    #@2
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    #@4
    move/from16 v19, v0

    #@6
    .line 142
    .local v19, "start":I
    move-object/from16 v0, p2

    #@8
    iget v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@a
    .line 146
    .local v11, "limit":I
    :cond_0
    :goto_0
    move/from16 v0, v19

    #@c
    if-ge v0, v11, :cond_1

    #@e
    .line 150
    const/4 v9, 0x0

    #@f
    .local v9, "ipat":I
    :goto_1
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@13
    move-object/from16 v23, v0

    #@15
    aget-char v23, v23, v9

    #@17
    const v24, 0xffff

    #@1a
    move/from16 v0, v23

    #@1c
    move/from16 v1, v24

    #@1e
    if-eq v0, v1, :cond_6

    #@20
    .line 153
    move-object/from16 v0, p0

    #@22
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@24
    move-object/from16 v23, v0

    #@26
    add-int/lit8 v10, v9, 0x1

    #@28
    .end local v9    # "ipat":I
    .local v10, "ipat":I
    aget-char v15, v23, v9

    #@2a
    .line 154
    .local v15, "prefixLen":I
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@2e
    move-object/from16 v23, v0

    #@30
    add-int/lit8 v9, v10, 0x1

    #@32
    .end local v10    # "ipat":I
    .restart local v9    # "ipat":I
    aget-char v21, v23, v10

    #@34
    .line 155
    .local v21, "suffixLen":I
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@38
    move-object/from16 v23, v0

    #@3a
    add-int/lit8 v10, v9, 0x1

    #@3c
    .end local v9    # "ipat":I
    .restart local v10    # "ipat":I
    aget-char v16, v23, v9

    #@3e
    .line 156
    .local v16, "radix":I
    move-object/from16 v0, p0

    #@40
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@42
    move-object/from16 v23, v0

    #@44
    add-int/lit8 v9, v10, 0x1

    #@46
    .end local v10    # "ipat":I
    .restart local v9    # "ipat":I
    aget-char v14, v23, v10

    #@48
    .line 157
    .local v14, "minDigits":I
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@4c
    move-object/from16 v23, v0

    #@4e
    add-int/lit8 v10, v9, 0x1

    #@50
    .end local v9    # "ipat":I
    .restart local v10    # "ipat":I
    aget-char v13, v23, v9

    #@52
    .line 161
    .local v13, "maxDigits":I
    move/from16 v17, v19

    #@54
    .line 162
    .local v17, "s":I
    const/4 v12, 0x1

    #@55
    .line 164
    .local v12, "match":Z
    const/4 v8, 0x0

    #@56
    .local v8, "i":I
    move/from16 v18, v17

    #@58
    .end local v17    # "s":I
    .local v18, "s":I
    :goto_2
    if-ge v8, v15, :cond_f

    #@5a
    .line 165
    move/from16 v0, v18

    #@5c
    if-lt v0, v11, :cond_7

    #@5e
    .line 166
    if-lez v8, :cond_7

    #@60
    .line 171
    if-eqz p3, :cond_2

    #@62
    .line 249
    .end local v8    # "i":I
    .end local v10    # "ipat":I
    .end local v12    # "match":Z
    .end local v13    # "maxDigits":I
    .end local v14    # "minDigits":I
    .end local v15    # "prefixLen":I
    .end local v16    # "radix":I
    .end local v18    # "s":I
    .end local v21    # "suffixLen":I
    :cond_1
    move-object/from16 v0, p2

    #@64
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@66
    move/from16 v23, v0

    #@68
    move-object/from16 v0, p2

    #@6a
    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@6c
    move/from16 v24, v0

    #@6e
    sub-int v24, v11, v24

    #@70
    add-int v23, v23, v24

    #@72
    move/from16 v0, v23

    #@74
    move-object/from16 v1, p2

    #@76
    iput v0, v1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@78
    .line 250
    move-object/from16 v0, p2

    #@7a
    iput v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    #@7c
    .line 251
    move/from16 v0, v19

    #@7e
    move-object/from16 v1, p2

    #@80
    iput v0, v1, Landroid/icu/text/Transliterator$Position;->start:I

    #@82
    .line 140
    return-void

    #@83
    .line 174
    .restart local v8    # "i":I
    .restart local v10    # "ipat":I
    .restart local v12    # "match":Z
    .restart local v13    # "maxDigits":I
    .restart local v14    # "minDigits":I
    .restart local v15    # "prefixLen":I
    .restart local v16    # "radix":I
    .restart local v18    # "s":I
    .restart local v21    # "suffixLen":I
    :cond_2
    const/4 v12, 0x0

    #@84
    move/from16 v17, v18

    #@86
    .line 185
    .end local v18    # "s":I
    .restart local v17    # "s":I
    :goto_3
    if-eqz v12, :cond_d

    #@88
    .line 186
    const/16 v22, 0x0

    #@8a
    .line 187
    .local v22, "u":I
    const/4 v7, 0x0

    #@8b
    .line 189
    .local v7, "digitCount":I
    :cond_3
    move/from16 v0, v17

    #@8d
    if-lt v0, v11, :cond_9

    #@8f
    .line 191
    move/from16 v0, v17

    #@91
    move/from16 v1, v19

    #@93
    if-le v0, v1, :cond_4

    #@95
    if-nez p3, :cond_1

    #@97
    .line 208
    :cond_4
    :goto_4
    if-lt v7, v14, :cond_a

    #@99
    const/4 v12, 0x1

    #@9a
    .line 210
    .local v12, "match":Z
    :goto_5
    if-eqz v12, :cond_d

    #@9c
    .line 211
    const/4 v8, 0x0

    #@9d
    move/from16 v18, v17

    #@9f
    .end local v17    # "s":I
    .restart local v18    # "s":I
    :goto_6
    move/from16 v0, v21

    #@a1
    if-ge v8, v0, :cond_e

    #@a3
    .line 212
    move/from16 v0, v18

    #@a5
    if-lt v0, v11, :cond_b

    #@a7
    .line 214
    move/from16 v0, v18

    #@a9
    move/from16 v1, v19

    #@ab
    if-le v0, v1, :cond_5

    #@ad
    if-nez p3, :cond_1

    #@af
    .line 217
    :cond_5
    const/4 v12, 0x0

    #@b0
    .local v12, "match":Z
    move/from16 v17, v18

    #@b2
    .line 227
    .end local v12    # "match":Z
    .end local v18    # "s":I
    .restart local v17    # "s":I
    :goto_7
    if-eqz v12, :cond_d

    #@b4
    .line 229
    invoke-static/range {v22 .. v22}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@b7
    move-result-object v20

    #@b8
    .line 230
    .local v20, "str":Ljava/lang/String;
    move-object/from16 v0, p1

    #@ba
    move/from16 v1, v19

    #@bc
    move/from16 v2, v17

    #@be
    move-object/from16 v3, v20

    #@c0
    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@c3
    .line 231
    sub-int v23, v17, v19

    #@c5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@c8
    move-result v24

    #@c9
    sub-int v23, v23, v24

    #@cb
    sub-int v11, v11, v23

    #@cd
    move v9, v10

    #@ce
    .line 244
    .end local v7    # "digitCount":I
    .end local v8    # "i":I
    .end local v10    # "ipat":I
    .end local v13    # "maxDigits":I
    .end local v14    # "minDigits":I
    .end local v15    # "prefixLen":I
    .end local v16    # "radix":I
    .end local v17    # "s":I
    .end local v20    # "str":Ljava/lang/String;
    .end local v21    # "suffixLen":I
    .end local v22    # "u":I
    .restart local v9    # "ipat":I
    :cond_6
    move/from16 v0, v19

    #@d0
    if-ge v0, v11, :cond_0

    #@d2
    .line 245
    move-object/from16 v0, p1

    #@d4
    move/from16 v1, v19

    #@d6
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@d9
    move-result v23

    #@da
    invoke-static/range {v23 .. v23}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@dd
    move-result v23

    #@de
    add-int v19, v19, v23

    #@e0
    goto/16 :goto_0

    #@e2
    .line 178
    .end local v9    # "ipat":I
    .restart local v8    # "i":I
    .restart local v10    # "ipat":I
    .restart local v12    # "match":Z
    .restart local v13    # "maxDigits":I
    .restart local v14    # "minDigits":I
    .restart local v15    # "prefixLen":I
    .restart local v16    # "radix":I
    .restart local v18    # "s":I
    .restart local v21    # "suffixLen":I
    :cond_7
    add-int/lit8 v17, v18, 0x1

    #@e4
    .end local v18    # "s":I
    .restart local v17    # "s":I
    move-object/from16 v0, p1

    #@e6
    move/from16 v1, v18

    #@e8
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@eb
    move-result v4

    #@ec
    .line 179
    .local v4, "c":C
    move-object/from16 v0, p0

    #@ee
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@f0
    move-object/from16 v23, v0

    #@f2
    add-int v24, v10, v8

    #@f4
    aget-char v23, v23, v24

    #@f6
    move/from16 v0, v23

    #@f8
    if-eq v4, v0, :cond_8

    #@fa
    .line 180
    const/4 v12, 0x0

    #@fb
    .line 181
    goto :goto_3

    #@fc
    .line 164
    :cond_8
    add-int/lit8 v8, v8, 0x1

    #@fe
    move/from16 v18, v17

    #@100
    .end local v17    # "s":I
    .restart local v18    # "s":I
    goto/16 :goto_2

    #@102
    .line 196
    .end local v4    # "c":C
    .end local v18    # "s":I
    .restart local v7    # "digitCount":I
    .restart local v17    # "s":I
    .restart local v22    # "u":I
    :cond_9
    move-object/from16 v0, p1

    #@104
    move/from16 v1, v17

    #@106
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@109
    move-result v5

    #@10a
    .line 197
    .local v5, "ch":I
    move/from16 v0, v16

    #@10c
    invoke-static {v5, v0}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@10f
    move-result v6

    #@110
    .line 198
    .local v6, "digit":I
    if-ltz v6, :cond_4

    #@112
    .line 201
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@115
    move-result v23

    #@116
    add-int v17, v17, v23

    #@118
    .line 202
    mul-int v23, v22, v16

    #@11a
    add-int v22, v23, v6

    #@11c
    .line 203
    add-int/lit8 v7, v7, 0x1

    #@11e
    if-ne v7, v13, :cond_3

    #@120
    goto/16 :goto_4

    #@122
    .line 208
    .end local v5    # "ch":I
    .end local v6    # "digit":I
    :cond_a
    const/4 v12, 0x0

    #@123
    goto/16 :goto_5

    #@125
    .line 220
    .end local v17    # "s":I
    .local v12, "match":Z
    .restart local v18    # "s":I
    :cond_b
    add-int/lit8 v17, v18, 0x1

    #@127
    .end local v18    # "s":I
    .restart local v17    # "s":I
    move-object/from16 v0, p1

    #@129
    move/from16 v1, v18

    #@12b
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@12e
    move-result v4

    #@12f
    .line 221
    .restart local v4    # "c":C
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    #@133
    move-object/from16 v23, v0

    #@135
    add-int v24, v10, v15

    #@137
    add-int v24, v24, v8

    #@139
    aget-char v23, v23, v24

    #@13b
    move/from16 v0, v23

    #@13d
    if-eq v4, v0, :cond_c

    #@13f
    .line 222
    const/4 v12, 0x0

    #@140
    .line 223
    .local v12, "match":Z
    goto/16 :goto_7

    #@142
    .line 211
    .local v12, "match":Z
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@144
    move/from16 v18, v17

    #@146
    .end local v17    # "s":I
    .restart local v18    # "s":I
    goto/16 :goto_6

    #@148
    .line 241
    .end local v4    # "c":C
    .end local v7    # "digitCount":I
    .end local v12    # "match":Z
    .end local v18    # "s":I
    .end local v22    # "u":I
    .restart local v17    # "s":I
    :cond_d
    add-int v23, v15, v21

    #@14a
    add-int v9, v10, v23

    #@14c
    .end local v10    # "ipat":I
    .restart local v9    # "ipat":I
    goto/16 :goto_1

    #@14e
    .end local v9    # "ipat":I
    .end local v17    # "s":I
    .restart local v7    # "digitCount":I
    .restart local v10    # "ipat":I
    .restart local v12    # "match":Z
    .restart local v18    # "s":I
    .restart local v22    # "u":I
    :cond_e
    move/from16 v17, v18

    #@150
    .end local v18    # "s":I
    .restart local v17    # "s":I
    goto/16 :goto_7

    #@152
    .end local v7    # "digitCount":I
    .end local v17    # "s":I
    .end local v22    # "u":I
    .local v12, "match":Z
    .restart local v18    # "s":I
    :cond_f
    move/from16 v17, v18

    #@154
    .end local v18    # "s":I
    .restart local v17    # "s":I
    goto/16 :goto_3
.end method
