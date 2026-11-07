.class Landroid/icu/text/TransliterationRule;
.super Ljava/lang/Object;
.source "TransliterationRule.java"


# static fields
.field static final greylist-max-o ANCHOR_END:I = 0x2

.field static final greylist-max-o ANCHOR_START:I = 0x1


# instance fields
.field private greylist-max-o anteContext:Landroid/icu/text/StringMatcher;

.field private greylist-max-o anteContextLength:I

.field private final greylist-max-o data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field greylist-max-o flags:B

.field private greylist-max-o key:Landroid/icu/text/StringMatcher;

.field private greylist-max-o keyLength:I

.field private greylist-max-o output:Landroid/icu/text/UnicodeReplacer;

.field private greylist-max-o pattern:Ljava/lang/String;

.field private greylist-max-o postContext:Landroid/icu/text/StringMatcher;

.field greylist-max-o segments:[Landroid/icu/text/UnicodeMatcher;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V
    .registers 21
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "anteContextPos"    # I
    .param p3, "postContextPos"    # I
    .param p4, "output"    # Ljava/lang/String;
    .param p5, "cursorPos"    # I
    .param p6, "cursorOffset"    # I
    .param p7, "segs"    # [Landroid/icu/text/UnicodeMatcher;
    .param p8, "anchorStart"    # Z
    .param p9, "anchorEnd"    # Z
    .param p10, "theData"    # Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 161
    move v0, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    move-object/from16 v1, p10

    iput-object v1, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 165
    const/4 v2, 0x0

    if-gez p2, :cond_e

    .line 166
    iput v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    goto :goto_16

    .line 168
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p2, v3, :cond_d4

    .line 171
    iput p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    .line 173
    :goto_16
    if-gez p3, :cond_22

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    goto :goto_32

    .line 176
    :cond_22
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    if-lt p3, v3, :cond_ca

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt p3, v3, :cond_c7

    .line 180
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int v3, p3, v3

    iput v3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    .line 182
    :goto_32
    if-gez v0, :cond_39

    .line 183
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .end local p5    # "cursorPos":I
    .local v0, "cursorPos":I
    goto :goto_3f

    .line 184
    .end local v0    # "cursorPos":I
    .restart local p5    # "cursorPos":I
    :cond_39
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_bd

    .line 192
    .end local p5    # "cursorPos":I
    .restart local v0    # "cursorPos":I
    :goto_3f
    move-object/from16 v3, p7

    iput-object v3, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    .line 194
    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 195
    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    .line 196
    if-eqz p8, :cond_50

    .line 197
    iget-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    .line 199
    :cond_50
    if-eqz p9, :cond_59

    .line 200
    iget-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    .line 203
    :cond_59
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    .line 204
    iget v5, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    if-lez v5, :cond_71

    .line 205
    new-instance v5, Landroid/icu/text/StringMatcher;

    iget-object v6, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v7, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v5, v6, v2, v7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v5, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    .line 209
    :cond_71
    iput-object v4, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    .line 210
    iget v5, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-lez v5, :cond_8d

    .line 211
    new-instance v5, Landroid/icu/text/StringMatcher;

    iget-object v6, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v7, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v8, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v9, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v5, v6, v2, v7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v5, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    .line 215
    :cond_8d
    iget-object v5, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr v5, v6

    .line 216
    .local v5, "postContextLength":I
    iput-object v4, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    .line 217
    if-lez v5, :cond_b1

    .line 218
    new-instance v4, Landroid/icu/text/StringMatcher;

    iget-object v6, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v7, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v8, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v4, v6, v2, v7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v4, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    .line 222
    :cond_b1
    new-instance v2, Landroid/icu/text/StringReplacer;

    add-int v4, v0, p6

    iget-object v6, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v2, p4, v4, v6}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    .line 223
    return-void

    .line 185
    .end local v0    # "cursorPos":I
    .end local v5    # "postContextLength":I
    .restart local p5    # "cursorPos":I
    :cond_bd
    move-object/from16 v3, p7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid cursor position"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_c7
    move-object/from16 v3, p7

    goto :goto_cc

    .line 176
    :cond_ca
    move-object/from16 v3, p7

    .line 178
    :goto_cc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid post context"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_d4
    move-object/from16 v3, p7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid ante context"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static final greylist-max-o posAfter(Landroid/icu/text/Replaceable;I)I
    .registers 3
    .param p0, "str"    # Landroid/icu/text/Replaceable;
    .param p1, "pos"    # I

    .line 344
    if-ltz p1, :cond_12

    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 345
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v0, p1

    goto :goto_14

    .line 346
    :cond_12
    add-int/lit8 v0, p1, 0x1

    .line 344
    :goto_14
    return v0
.end method

.method static final greylist-max-o posBefore(Landroid/icu/text/Replaceable;I)I
    .registers 3
    .param p0, "str"    # Landroid/icu/text/Replaceable;
    .param p1, "pos"    # I

    .line 338
    if-lez p1, :cond_f

    .line 339
    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_11

    .line 340
    :cond_f
    add-int/lit8 v0, p1, -0x1

    .line 338
    :goto_11
    return v0
.end method


# virtual methods
.method greylist-max-o addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 13
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;
    .param p4, "revisiting"    # Landroid/icu/text/UnicodeSet;

    .line 561
    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v1, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr v0, v1

    .line 562
    .local v0, "limit":I
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 563
    .local v1, "tempSource":Landroid/icu/text/UnicodeSet;
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 567
    .local v2, "temp":Landroid/icu/text/UnicodeSet;
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_51

    .line 568
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 569
    .local v4, "ch":I
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 570
    iget-object v5, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v5, v4}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v5

    .line 571
    .local v5, "matcher":Landroid/icu/text/UnicodeMatcher;
    if-nez v5, :cond_31

    .line 572
    invoke-virtual {p1, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 573
    return-void

    .line 575
    :cond_2d
    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_50

    .line 578
    :cond_31
    :try_start_31
    move-object v6, v5

    check-cast v6, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v6}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 579
    return-void

    .line 581
    :cond_3b
    invoke-interface {v5, v1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    :try_end_3e
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_3e} :catch_3f

    .line 589
    goto :goto_50

    .line 582
    :catch_3f
    move-exception v6

    .line 583
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 584
    invoke-interface {v5, v2}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 585
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 586
    return-void

    .line 588
    :cond_4d
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 591
    .end local v4    # "ch":I
    .end local v5    # "matcher":Landroid/icu/text/UnicodeMatcher;
    .end local v6    # "e":Ljava/lang/ClassCastException;
    :goto_50
    goto :goto_11

    .line 593
    .end local v3    # "i":I
    :cond_51
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 594
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v3, p3}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 595
    return-void
.end method

.method public greylist-max-o getAnteContextLength()I
    .registers 4

    .line 231
    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-byte v1, p0, Landroid/icu/text/TransliterationRule;->flags:B

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    return v0
.end method

.method final greylist-max-o getIndexValue()I
    .registers 4

    .line 241
    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_c

    .line 244
    return v2

    .line 246
    :cond_c
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, "c":I
    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v1

    if-nez v1, :cond_1e

    and-int/lit16 v2, v0, 0xff

    :cond_1e
    return v2
.end method

.method public greylist-max-o masks(Landroid/icu/text/TransliterationRule;)Z
    .registers 12
    .param p1, "r2"    # Landroid/icu/text/TransliterationRule;

    .line 312
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 313
    .local v0, "len":I
    iget v1, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    .line 314
    .local v1, "left":I
    iget v2, p1, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    .line 315
    .local v2, "left2":I
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 316
    .local v3, "right":I
    iget-object v4, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    .line 322
    .local v4, "right2":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_4d

    if-ne v3, v4, :cond_4d

    iget v7, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    iget v8, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-gt v7, v8, :cond_4d

    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 324
    invoke-virtual {v7, v6, v8, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 326
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    iget-byte v8, p1, Landroid/icu/text/TransliterationRule;->flags:B

    if-eq v7, v8, :cond_4c

    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v5

    if-nez v7, :cond_3f

    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4c

    :cond_3f
    iget-byte v7, p1, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v5

    if-eqz v7, :cond_4b

    iget-byte v7, p1, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4b

    goto :goto_4c

    :cond_4b
    move v5, v6

    :cond_4c
    :goto_4c
    return v5

    .line 331
    :cond_4d
    if-gt v1, v2, :cond_66

    if-lt v3, v4, :cond_59

    if-ne v3, v4, :cond_66

    iget v7, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    iget v8, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-gt v7, v8, :cond_66

    :cond_59
    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    sub-int v8, v2, v1

    iget-object v9, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    .line 334
    invoke-virtual {v7, v8, v9, v6, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_66

    goto :goto_67

    :cond_66
    move v5, v6

    .line 331
    :goto_67
    return v5
.end method

.method public greylist-max-o matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I
    .registers 14
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 382
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    if-eqz v0, :cond_16

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 384
    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    aget-object v1, v1, v0

    check-cast v1, Landroid/icu/text/StringMatcher;

    invoke-virtual {v1}, Landroid/icu/text/StringMatcher;->resetMatch()V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 389
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 404
    .local v1, "intRef":[I
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-static {p1, v2}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    move-result v2

    .line 409
    .local v2, "anteLimit":I
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-static {p1, v3}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 411
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    const/4 v5, 0x2

    if-eqz v3, :cond_36

    .line 412
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    invoke-virtual {v3, p1, v1, v2, v4}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v3

    .line 413
    .local v3, "match":I
    if-eq v3, v5, :cond_36

    .line 414
    return v4

    .line 418
    .end local v3    # "match":I
    :cond_36
    aget v3, v1, v4

    .line 420
    .local v3, "oText":I
    invoke-static {p1, v3}, Landroid/icu/text/TransliterationRule;->posAfter(Landroid/icu/text/Replaceable;I)I

    move-result v6

    .line 424
    .local v6, "minOText":I
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v7, v0

    if-eqz v7, :cond_44

    if-eq v3, v2, :cond_44

    .line 425
    return v4

    .line 430
    :cond_44
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->start:I

    aput v7, v1, v4

    .line 432
    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    if-eqz v7, :cond_57

    .line 433
    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v7, p1, v1, v8, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v7

    .line 434
    .local v7, "match":I
    if-eq v7, v5, :cond_57

    .line 435
    return v7

    .line 439
    .end local v7    # "match":I
    :cond_57
    aget v7, v1, v4

    .line 441
    .local v7, "keyLimit":I
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-eqz v8, :cond_6f

    .line 442
    if-eqz p3, :cond_64

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v7, v8, :cond_64

    .line 447
    return v0

    .line 450
    :cond_64
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    iget v9, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v8, p1, v1, v9, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v8

    .line 451
    .local v8, "match":I
    if-eq v8, v5, :cond_6f

    .line 452
    return v8

    .line 456
    .end local v8    # "match":I
    :cond_6f
    aget v3, v1, v4

    .line 460
    iget-byte v8, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v8, v5

    if-eqz v8, :cond_7e

    .line 461
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-eq v3, v8, :cond_7b

    .line 462
    return v4

    .line 464
    :cond_7b
    if-eqz p3, :cond_7e

    .line 465
    return v0

    .line 474
    :cond_7e
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {v0, p1, v8, v7, v1}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result v0

    .line 475
    .local v0, "newLength":I
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int v8, v7, v8

    sub-int v8, v0, v8

    .line 476
    .local v8, "lenDelta":I
    aget v4, v1, v4

    .line 478
    .local v4, "newStart":I
    add-int/2addr v3, v8

    .line 479
    iget v9, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v9, v8

    iput v9, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 480
    iget v9, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v9, v8

    iput v9, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 482
    iget v9, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 483
    return v5
.end method

.method final greylist-max-o matchesIndexValue(I)Z
    .registers 4
    .param p1, "v"    # I

    .line 263
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    .line 264
    .local v0, "m":Landroid/icu/text/UnicodeMatcher;
    :goto_9
    if-eqz v0, :cond_10

    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1
.end method

.method public greylist-max-o toRule(Z)Ljava/lang/String;
    .registers 7
    .param p1, "escapeUnprintable"    # Z

    .line 493
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .local v0, "rule":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 502
    .local v1, "quoteBuf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    const/4 v3, 0x1

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    const/4 v2, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    move v2, v3

    .line 506
    .local v2, "emitBraces":Z
    :goto_17
    iget-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/2addr v4, v3

    if-eqz v4, :cond_21

    .line 507
    const/16 v4, 0x5e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 511
    :cond_21
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    .line 513
    if-eqz v2, :cond_2d

    .line 514
    const/16 v4, 0x7b

    invoke-static {v0, v4, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 517
    :cond_2d
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    .line 519
    if-eqz v2, :cond_39

    .line 520
    const/16 v4, 0x7d

    invoke-static {v0, v4, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 523
    :cond_39
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    invoke-static {v0, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    .line 526
    iget-byte v4, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_49

    .line 527
    const/16 v4, 0x24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 530
    :cond_49
    const-string v4, " > "

    invoke-static {v0, v4, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 534
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v4, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 537
    const/16 v4, 0x3b

    invoke-static {v0, v4, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
