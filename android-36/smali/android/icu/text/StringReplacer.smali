.class Landroid/icu/text/StringReplacer;
.super Ljava/lang/Object;
.source "StringReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private blacklist cursorPos:I

.field private final blacklist data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field private blacklist hasCursor:Z

.field private blacklist isComplex:Z

.field private blacklist output:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .registers 5
    .param p1, "theOutput"    # Ljava/lang/String;
    .param p2, "theCursorPos"    # I
    .param p3, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    .line 74
    iput p2, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    .line 76
    iput-object p3, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 77
    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->isComplex:Z

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;)V
    .registers 4
    .param p1, "theOutput"    # Ljava/lang/String;
    .param p2, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    .line 93
    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    .line 94
    iput-object p2, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->isComplex:Z

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 328
    iget-object v1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 329
    .local v1, "ch":I
    iget-object v2, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v2, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    move-result-object v2

    .line 330
    .local v2, "r":Landroid/icu/text/UnicodeReplacer;
    if-nez v2, :cond_1b

    .line 331
    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_1e

    .line 333
    :cond_1b
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 327
    .end local v2    # "r":Landroid/icu/text/UnicodeReplacer;
    :goto_1e
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 336
    .end local v0    # "i":I
    .end local v1    # "ch":I
    :cond_24
    return-void
.end method

.method public blacklist replace(Landroid/icu/text/Replaceable;II[I)I
    .registers 23
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "cursor"    # [I

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 127
    .local v5, "newStart":I
    iget-boolean v6, v0, Landroid/icu/text/StringReplacer;->isComplex:Z

    const/4 v7, 0x0

    if-nez v6, :cond_1f

    .line 128
    iget-object v6, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 129
    iget-object v6, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 132
    .local v6, "outLen":I
    iget v5, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    goto/16 :goto_d8

    .line 143
    .end local v6    # "outLen":I
    :cond_1f
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v6, "buf":Ljava/lang/StringBuffer;
    iput-boolean v7, v0, Landroid/icu/text/StringReplacer;->isComplex:Z

    .line 156
    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v8

    .line 157
    .local v8, "tempStart":I
    move v9, v8

    .line 158
    .local v9, "destStart":I
    const/4 v10, 0x1

    if-lez v2, :cond_3f

    .line 159
    add-int/lit8 v11, v2, -0x1

    invoke-interface {v1, v11}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v11

    invoke-static {v11}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v11

    .line 160
    .local v11, "len":I
    sub-int v12, v2, v11

    invoke-interface {v1, v12, v2, v8}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 161
    add-int/2addr v9, v11

    .line 162
    .end local v11    # "len":I
    goto :goto_45

    .line 163
    :cond_3f
    const-string v11, "\uffff"

    invoke-interface {v1, v8, v8, v11}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 164
    add-int/2addr v9, v10

    .line 166
    :goto_45
    move v11, v9

    .line 167
    .local v11, "destLimit":I
    const/4 v12, 0x0

    .line 169
    .local v12, "tempExtra":I
    const/4 v13, 0x0

    .local v13, "oOutput":I
    :goto_48
    iget-object v14, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_a9

    .line 170
    iget v14, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    if-ne v13, v14, :cond_5b

    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/2addr v14, v11

    sub-int/2addr v14, v9

    move v5, v14

    .line 179
    :cond_5b
    iget-object v14, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-static {v14, v13}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v14

    .line 185
    .local v14, "c":I
    invoke-static {v14}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int/2addr v15, v13

    .line 186
    .local v15, "nextIndex":I
    iget-object v7, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v15, v7, :cond_7c

    .line 187
    invoke-interface {v1, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v7

    invoke-static {v7}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    .line 188
    .end local v12    # "tempExtra":I
    .local v7, "tempExtra":I
    add-int v12, v3, v7

    invoke-interface {v1, v3, v12, v11}, Landroid/icu/text/Replaceable;->copy(III)V

    move v12, v7

    .line 191
    .end local v7    # "tempExtra":I
    .restart local v12    # "tempExtra":I
    :cond_7c
    iget-object v7, v0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v7, v14}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    move-result-object v7

    .line 192
    .local v7, "r":Landroid/icu/text/UnicodeReplacer;
    if-nez v7, :cond_88

    .line 194
    invoke-static {v6, v14}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 196
    :cond_88
    iput-boolean v10, v0, Landroid/icu/text/StringReplacer;->isComplex:Z

    .line 199
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-lez v17, :cond_a0

    .line 200
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v11, v11, v10}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 201
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/2addr v11, v10

    .line 202
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 206
    :cond_a0
    invoke-interface {v7, v1, v11, v11, v4}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result v10

    .line 207
    .local v10, "len":I
    add-int/2addr v11, v10

    .line 209
    .end local v10    # "len":I
    :goto_a5
    move v13, v15

    .line 210
    .end local v7    # "r":Landroid/icu/text/UnicodeReplacer;
    .end local v14    # "c":I
    .end local v15    # "nextIndex":I
    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_48

    .line 212
    :cond_a9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_bb

    .line 213
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v11, v11, v7}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/2addr v11, v7

    .line 216
    :cond_bb
    iget v7, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    if-ne v13, v7, :cond_c1

    .line 218
    sub-int v5, v11, v9

    .line 221
    :cond_c1
    sub-int v7, v11, v9

    .line 224
    .local v7, "outLen":I
    invoke-interface {v1, v9, v11, v2}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 225
    add-int v10, v8, v7

    add-int v14, v11, v12

    add-int/2addr v14, v7

    const-string v15, ""

    invoke-interface {v1, v10, v14, v15}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 228
    add-int v10, v2, v7

    add-int v14, v3, v7

    invoke-interface {v1, v10, v14, v15}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    move v6, v7

    .line 231
    .end local v7    # "outLen":I
    .end local v8    # "tempStart":I
    .end local v9    # "destStart":I
    .end local v11    # "destLimit":I
    .end local v12    # "tempExtra":I
    .end local v13    # "oOutput":I
    .local v6, "outLen":I
    :goto_d8
    iget-boolean v7, v0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v7, :cond_128

    .line 236
    iget v7, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    if-gez v7, :cond_f8

    .line 237
    move/from16 v5, p2

    .line 238
    iget v7, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    .line 240
    .local v7, "n":I
    :goto_e4
    if-gez v7, :cond_f6

    if-lez v5, :cond_f6

    .line 241
    add-int/lit8 v8, v5, -0x1

    invoke-interface {v1, v8}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    sub-int/2addr v5, v8

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 244
    :cond_f6
    add-int/2addr v5, v7

    .line 245
    .end local v7    # "n":I
    goto :goto_124

    :cond_f8
    iget v7, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    iget-object v8, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_123

    .line 246
    add-int v5, v2, v6

    .line 247
    iget v7, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    iget-object v8, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    .line 249
    .restart local v7    # "n":I
    :goto_10d
    if-lez v7, :cond_121

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v8

    if-ge v5, v8, :cond_121

    .line 250
    invoke-interface {v1, v5}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 251
    add-int/lit8 v7, v7, -0x1

    goto :goto_10d

    .line 253
    :cond_121
    add-int/2addr v5, v7

    .line 254
    .end local v7    # "n":I
    goto :goto_124

    .line 257
    :cond_123
    add-int/2addr v5, v2

    .line 260
    :goto_124
    const/16 v16, 0x0

    aput v5, v4, v16

    .line 263
    :cond_128
    return v6
.end method

.method public blacklist toReplacerPattern(Z)Ljava/lang/String;
    .registers 12
    .param p1, "escapeUnprintable"    # Z

    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v0, "rule":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    .local v1, "quoteBuf":Ljava/lang/StringBuffer;
    iget v2, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    .line 277
    .local v2, "cursor":I
    iget-boolean v3, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    const/16 v4, 0x40

    const/4 v5, 0x1

    if-eqz v3, :cond_1f

    if-gez v2, :cond_1f

    .line 278
    :goto_15
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "cursor":I
    .local v3, "cursor":I
    if-gez v2, :cond_1e

    .line 279
    invoke-static {v0, v4, v5, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v2, v3

    goto :goto_15

    .line 278
    :cond_1e
    move v2, v3

    .line 284
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    :cond_1f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    iget-object v6, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7c

    if-ge v3, v6, :cond_63

    .line 285
    iget-boolean v6, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v6, :cond_33

    if-ne v3, v2, :cond_33

    .line 286
    invoke-static {v0, v7, v5, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 288
    :cond_33
    iget-object v6, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 290
    .local v6, "c":C
    iget-object v7, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v7, v6}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    move-result-object v7

    .line 291
    .local v7, "r":Landroid/icu/text/UnicodeReplacer;
    if-nez v7, :cond_46

    .line 292
    const/4 v8, 0x0

    invoke-static {v0, v6, v8, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    goto :goto_60

    .line 294
    :cond_46
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 295
    .local v8, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v7, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v5, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 284
    .end local v6    # "c":C
    .end local v7    # "r":Landroid/icu/text/UnicodeReplacer;
    .end local v8    # "buf":Ljava/lang/StringBuffer;
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 305
    .end local v3    # "i":I
    :cond_63
    iget-boolean v3, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v3, :cond_83

    iget-object v3, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_83

    .line 306
    iget-object v3, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 307
    :goto_76
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "cursor":I
    .local v3, "cursor":I
    if-lez v2, :cond_7f

    .line 308
    invoke-static {v0, v4, v5, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v2, v3

    goto :goto_76

    .line 310
    :cond_7f
    invoke-static {v0, v7, v5, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v2, v3

    .line 313
    .end local v3    # "cursor":I
    .restart local v2    # "cursor":I
    :cond_83
    const/4 v3, -0x1

    invoke-static {v0, v3, v5, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
