.class Landroid/icu/text/UnescapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnescapeTransliterator.java"


# static fields
.field private static final blacklist END:C = '\uffff'


# instance fields
.field private blacklist spec:[C


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;[C)V
    .registers 4
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "spec"    # [C

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 142
    iput-object p2, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    .line 143
    return-void
.end method

.method static blacklist register()V
    .registers 2

    .line 54
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$1;-><init>()V

    const-string v1, "Hex-Any/Unicode"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 65
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$2;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$2;-><init>()V

    const-string v1, "Hex-Any/Java"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 76
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$3;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$3;-><init>()V

    const-string v1, "Hex-Any/C"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 88
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$4;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$4;-><init>()V

    const-string v1, "Hex-Any/XML"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 99
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$5;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$5;-><init>()V

    const-string v1, "Hex-Any/XML10"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 110
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$6;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$6;-><init>()V

    const-string v1, "Hex-Any/Perl"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 121
    new-instance v0, Landroid/icu/text/UnescapeTransliterator$7;

    invoke-direct {v0}, Landroid/icu/text/UnescapeTransliterator$7;-><init>()V

    const-string v1, "Hex-Any"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 12
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 272
    invoke-virtual {p0, p1}, Landroid/icu/text/UnescapeTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 273
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 274
    .local v1, "items":Landroid/icu/text/UnicodeSet;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    iget-object v4, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v4, v4, v3

    const v5, 0xffff

    const/4 v6, 0x0

    if-eq v4, v5, :cond_46

    .line 277
    iget-object v4, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v4, v4, v3

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v7, v3, 0x1

    aget-char v5, v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    .line 278
    .local v4, "end":I
    iget-object v5, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v7, v3, 0x2

    aget-char v5, v5, v7

    .line 279
    .local v5, "radix":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2e
    if-ge v7, v5, :cond_36

    .line 280
    invoke-static {v2, v7, v5, v6}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 283
    .end local v7    # "j":I
    :cond_36
    add-int/lit8 v6, v3, 0x5

    .local v6, "j":I
    :goto_38
    if-ge v6, v4, :cond_44

    .line 284
    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v7, v7, v6

    invoke-virtual {v1, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 283
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 287
    .end local v6    # "j":I
    :cond_44
    move v3, v4

    .line 288
    .end local v4    # "end":I
    .end local v5    # "radix":I
    goto :goto_f

    .line 289
    .end local v3    # "i":I
    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 290
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 292
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v3

    if-lez v3, :cond_5f

    .line 293
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 294
    const v3, 0x10ffff

    invoke-virtual {p3, v6, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    .line 296
    :cond_5f
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 23
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 152
    .local v3, "start":I
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 156
    .local v4, "limit":I
    :cond_a
    :goto_a
    if-ge v3, v4, :cond_e1

    .line 160
    const/4 v5, 0x0

    .local v5, "ipat":I
    :goto_d
    iget-object v6, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v6, v6, v5

    const v7, 0xffff

    if-eq v6, v7, :cond_d4

    .line 163
    iget-object v6, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ipat":I
    .local v7, "ipat":I
    aget-char v5, v6, v5

    .line 164
    .local v5, "prefixLen":I
    iget-object v6, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ipat":I
    .local v8, "ipat":I
    aget-char v6, v6, v7

    .line 165
    .local v6, "suffixLen":I
    iget-object v7, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ipat":I
    .local v9, "ipat":I
    aget-char v7, v7, v8

    .line 166
    .local v7, "radix":I
    iget-object v8, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ipat":I
    .local v10, "ipat":I
    aget-char v8, v8, v9

    .line 167
    .local v8, "minDigits":I
    iget-object v9, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ipat":I
    .local v11, "ipat":I
    aget-char v9, v9, v10

    .line 171
    .local v9, "maxDigits":I
    move v10, v3

    .line 172
    .local v10, "s":I
    const/4 v12, 0x1

    .line 174
    .local v12, "match":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_37
    if-ge v13, v5, :cond_58

    .line 175
    if-lt v10, v4, :cond_43

    .line 176
    if-lez v13, :cond_43

    .line 181
    if-eqz p3, :cond_41

    .line 182
    goto/16 :goto_e1

    .line 184
    :cond_41
    const/4 v12, 0x0

    .line 185
    goto :goto_58

    .line 188
    :cond_43
    add-int/lit8 v14, v10, 0x1

    .end local v10    # "s":I
    .local v14, "s":I
    invoke-interface {v1, v10}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v10

    .line 189
    .local v10, "c":C
    iget-object v15, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int v16, v11, v13

    aget-char v15, v15, v16

    if-eq v10, v15, :cond_54

    .line 190
    const/4 v12, 0x0

    .line 191
    move v10, v14

    goto :goto_58

    .line 174
    .end local v10    # "c":C
    :cond_54
    add-int/lit8 v13, v13, 0x1

    move v10, v14

    goto :goto_37

    .line 195
    .end local v14    # "s":I
    .local v10, "s":I
    :cond_58
    :goto_58
    if-eqz v12, :cond_cd

    .line 196
    const/4 v14, 0x0

    .line 197
    .local v14, "u":I
    const/4 v15, 0x0

    .line 199
    .local v15, "digitCount":I
    :goto_5c
    if-lt v10, v4, :cond_67

    .line 201
    if-le v10, v3, :cond_64

    if-eqz p3, :cond_64

    .line 202
    goto/16 :goto_e1

    .line 201
    :cond_64
    move/from16 v16, v5

    goto :goto_83

    .line 206
    :cond_67
    move/from16 v16, v5

    .end local v5    # "prefixLen":I
    .local v16, "prefixLen":I
    invoke-interface {v1, v10}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v5

    .line 207
    .local v5, "ch":I
    invoke-static {v5, v7}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v17

    .line 208
    .local v17, "digit":I
    if-gez v17, :cond_74

    .line 209
    goto :goto_83

    .line 211
    :cond_74
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v18

    add-int v10, v10, v18

    .line 212
    mul-int v18, v14, v7

    add-int v14, v18, v17

    .line 213
    add-int/lit8 v15, v15, 0x1

    if-ne v15, v9, :cond_ca

    .line 214
    nop

    .line 218
    .end local v5    # "ch":I
    .end local v17    # "digit":I
    :goto_83
    if-lt v15, v8, :cond_87

    const/4 v5, 0x1

    goto :goto_88

    :cond_87
    const/4 v5, 0x0

    :goto_88
    move v12, v5

    .line 220
    if-eqz v12, :cond_cf

    .line 221
    const/4 v5, 0x0

    move v13, v5

    :goto_8d
    if-ge v13, v6, :cond_b5

    .line 222
    if-lt v10, v4, :cond_99

    .line 224
    if-le v10, v3, :cond_96

    if-eqz p3, :cond_96

    .line 225
    goto :goto_e1

    .line 227
    :cond_96
    const/4 v5, 0x0

    .line 228
    .end local v12    # "match":Z
    .local v5, "match":Z
    move v12, v5

    goto :goto_b5

    .line 230
    .end local v5    # "match":Z
    .restart local v12    # "match":Z
    :cond_99
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "s":I
    .local v5, "s":I
    invoke-interface {v1, v10}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v10

    .line 231
    .local v10, "c":C
    move/from16 v17, v5

    .end local v5    # "s":I
    .local v17, "s":I
    iget-object v5, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int v18, v11, v16

    add-int v18, v18, v13

    aget-char v5, v5, v18

    if-eq v10, v5, :cond_b0

    .line 232
    const/4 v5, 0x0

    .line 233
    .end local v12    # "match":Z
    .local v5, "match":Z
    move v12, v5

    move/from16 v10, v17

    goto :goto_b5

    .line 221
    .end local v5    # "match":Z
    .end local v10    # "c":C
    .restart local v12    # "match":Z
    :cond_b0
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v17

    goto :goto_8d

    .line 237
    .end local v17    # "s":I
    .local v10, "s":I
    :cond_b5
    :goto_b5
    if-eqz v12, :cond_cf

    .line 239
    invoke-static {v14}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "str":Ljava/lang/String;
    invoke-interface {v1, v3, v10, v5}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 241
    sub-int v17, v10, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v4, v4, v17

    .line 246
    move v5, v11

    goto :goto_d4

    .line 216
    .end local v5    # "str":Ljava/lang/String;
    :cond_ca
    move/from16 v5, v16

    goto :goto_5c

    .line 195
    .end local v14    # "u":I
    .end local v15    # "digitCount":I
    .end local v16    # "prefixLen":I
    .local v5, "prefixLen":I
    :cond_cd
    move/from16 v16, v5

    .line 251
    .end local v5    # "prefixLen":I
    .restart local v16    # "prefixLen":I
    :cond_cf
    add-int v5, v16, v6

    add-int/2addr v5, v11

    .line 252
    .end local v6    # "suffixLen":I
    .end local v7    # "radix":I
    .end local v8    # "minDigits":I
    .end local v9    # "maxDigits":I
    .end local v10    # "s":I
    .end local v11    # "ipat":I
    .end local v12    # "match":Z
    .end local v16    # "prefixLen":I
    .local v5, "ipat":I
    goto/16 :goto_d

    .line 254
    .end local v13    # "i":I
    :cond_d4
    :goto_d4
    if-ge v3, v4, :cond_a

    .line 255
    invoke-interface {v1, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v6

    invoke-static {v6}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto/16 :goto_a

    .line 259
    .end local v5    # "ipat":I
    :cond_e1
    :goto_e1
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v6, v4, v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 260
    iput v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 261
    iput v3, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 262
    return-void
.end method
