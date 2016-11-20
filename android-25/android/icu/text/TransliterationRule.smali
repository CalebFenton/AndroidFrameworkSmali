.class Landroid/icu/text/TransliterationRule;
.super Ljava/lang/Object;
.source "TransliterationRule.java"


# static fields
.field static final ANCHOR_END:I = 0x2

.field static final ANCHOR_START:I = 0x1


# instance fields
.field private anteContext:Landroid/icu/text/StringMatcher;

.field private anteContextLength:I

.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field flags:B

.field private key:Landroid/icu/text/StringMatcher;

.field private keyLength:I

.field private output:Landroid/icu/text/UnicodeReplacer;

.field private pattern:Ljava/lang/String;

.field private postContext:Landroid/icu/text/StringMatcher;

.field segments:[Landroid/icu/text/UnicodeMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 7
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

    #@0
    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    move-object/from16 v0, p10

    #@5
    iput-object v0, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@7
    .line 163
    if-gez p2, :cond_6

    #@9
    .line 164
    const/4 v2, 0x0

    #@a
    iput v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@c
    .line 171
    :goto_0
    if-gez p3, :cond_8

    #@e
    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@14
    sub-int/2addr v2, v3

    #@15
    iput v2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@17
    .line 180
    :goto_1
    if-gez p5, :cond_b

    #@19
    .line 181
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@1c
    move-result p5

    #@1d
    .line 190
    :cond_0
    iput-object p7, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    #@1f
    .line 192
    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@21
    .line 193
    const/4 v2, 0x0

    #@22
    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@24
    .line 194
    if-eqz p8, :cond_1

    #@26
    .line 195
    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@28
    or-int/lit8 v2, v2, 0x1

    #@2a
    int-to-byte v2, v2

    #@2b
    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@2d
    .line 197
    :cond_1
    if-eqz p9, :cond_2

    #@2f
    .line 198
    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@31
    or-int/lit8 v2, v2, 0x2

    #@33
    int-to-byte v2, v2

    #@34
    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@36
    .line 201
    :cond_2
    const/4 v2, 0x0

    #@37
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    #@39
    .line 202
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@3b
    if-lez v2, :cond_3

    #@3d
    .line 203
    new-instance v2, Landroid/icu/text/StringMatcher;

    #@3f
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@41
    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@43
    const/4 v5, 0x0

    #@44
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 204
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@4a
    const/4 v5, 0x0

    #@4b
    .line 203
    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@4e
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    #@50
    .line 207
    :cond_3
    const/4 v2, 0x0

    #@51
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@53
    .line 208
    iget v2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@55
    if-lez v2, :cond_4

    #@57
    .line 209
    new-instance v2, Landroid/icu/text/StringMatcher;

    #@59
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@5b
    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@5d
    iget v5, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@5f
    iget v6, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@61
    add-int/2addr v5, v6

    #@62
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    .line 210
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@68
    const/4 v5, 0x0

    #@69
    .line 209
    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@6c
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@6e
    .line 213
    :cond_4
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@73
    move-result v2

    #@74
    iget v3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@76
    sub-int/2addr v2, v3

    #@77
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@79
    sub-int v1, v2, v3

    #@7b
    .line 214
    .local v1, "postContextLength":I
    const/4 v2, 0x0

    #@7c
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@7e
    .line 215
    if-lez v1, :cond_5

    #@80
    .line 216
    new-instance v2, Landroid/icu/text/StringMatcher;

    #@82
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@84
    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@86
    iget v5, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@88
    add-int/2addr v4, v5

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    .line 217
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@8f
    const/4 v5, 0x0

    #@90
    .line 216
    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@93
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@95
    .line 220
    :cond_5
    new-instance v2, Landroid/icu/text/StringReplacer;

    #@97
    add-int v3, p5, p6

    #@99
    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@9b
    invoke-direct {v2, p4, v3, v4}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@9e
    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    #@a0
    .line 159
    return-void

    #@a1
    .line 166
    .end local v1    # "postContextLength":I
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a4
    move-result v2

    #@a5
    if-le p2, v2, :cond_7

    #@a7
    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a9
    const-string/jumbo v3, "Invalid ante context"

    #@ac
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@af
    throw v2

    #@b0
    .line 169
    :cond_7
    iput p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@b2
    goto/16 :goto_0

    #@b4
    .line 174
    :cond_8
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@b6
    if-lt p3, v2, :cond_9

    #@b8
    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@bb
    move-result v2

    #@bc
    if-le p3, v2, :cond_a

    #@be
    .line 176
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c0
    const-string/jumbo v3, "Invalid post context"

    #@c3
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v2

    #@c7
    .line 178
    :cond_a
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@c9
    sub-int v2, p3, v2

    #@cb
    iput v2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@cd
    goto/16 :goto_1

    #@cf
    .line 182
    :cond_b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@d2
    move-result v2

    #@d3
    if-le p5, v2, :cond_0

    #@d5
    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@d7
    const-string/jumbo v3, "Invalid cursor position"

    #@da
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v2
.end method

.method static final posAfter(Landroid/icu/text/Replaceable;I)I
    .locals 1
    .param p0, "str"    # Landroid/icu/text/Replaceable;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 342
    if-ltz p1, :cond_0

    #@2
    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 343
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@b
    move-result v0

    #@c
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@f
    move-result v0

    #@10
    add-int/2addr v0, p1

    #@11
    .line 342
    :goto_0
    return v0

    #@12
    .line 344
    :cond_0
    add-int/lit8 v0, p1, 0x1

    #@14
    goto :goto_0
.end method

.method static final posBefore(Landroid/icu/text/Replaceable;I)I
    .locals 1
    .param p0, "str"    # Landroid/icu/text/Replaceable;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 336
    if-lez p1, :cond_0

    #@2
    .line 337
    add-int/lit8 v0, p1, -0x1

    #@4
    invoke-interface {p0, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@b
    move-result v0

    #@c
    sub-int v0, p1, v0

    #@e
    .line 336
    :goto_0
    return v0

    #@f
    .line 338
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@11
    goto :goto_0
.end method


# virtual methods
.method addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 10
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;
    .param p4, "revisiting"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 558
    iget v8, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@2
    iget v9, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@4
    add-int v4, v8, v9

    #@6
    .line 559
    .local v4, "limit":I
    new-instance v7, Landroid/icu/text/UnicodeSet;

    #@8
    invoke-direct {v7}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@b
    .line 560
    .local v7, "tempSource":Landroid/icu/text/UnicodeSet;
    new-instance v6, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v6}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    .line 564
    .local v6, "temp":Landroid/icu/text/UnicodeSet;
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@12
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    #@14
    .line 565
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@16
    invoke-static {v8, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@19
    move-result v1

    #@1a
    .line 566
    .local v1, "ch":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1d
    move-result v8

    #@1e
    add-int/2addr v3, v8

    #@1f
    .line 567
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@21
    invoke-virtual {v8, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@24
    move-result-object v5

    #@25
    .line 568
    .local v5, "matcher":Landroid/icu/text/UnicodeMatcher;
    if-nez v5, :cond_1

    #@27
    .line 569
    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2a
    move-result v8

    #@2b
    if-nez v8, :cond_0

    #@2d
    .line 570
    return-void

    #@2e
    .line 572
    :cond_0
    invoke-virtual {v7, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@31
    goto :goto_0

    #@32
    .line 575
    :cond_1
    :try_start_0
    move-object v0, v5

    #@33
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@35
    move-object v8, v0

    #@36
    invoke-virtual {p1, v8}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    #@39
    move-result v8

    #@3a
    if-nez v8, :cond_2

    #@3c
    .line 576
    return-void

    #@3d
    .line 578
    :cond_2
    invoke-interface {v5, v7}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    goto :goto_0

    #@41
    .line 579
    :catch_0
    move-exception v2

    #@42
    .line 580
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@45
    .line 581
    invoke-interface {v5, v6}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    #@48
    .line 582
    invoke-virtual {p1, v6}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    #@4b
    move-result v8

    #@4c
    if-nez v8, :cond_3

    #@4e
    .line 583
    return-void

    #@4f
    .line 585
    :cond_3
    invoke-virtual {v7, v6}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@52
    goto :goto_0

    #@53
    .line 590
    .end local v1    # "ch":I
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "matcher":Landroid/icu/text/UnicodeMatcher;
    :cond_4
    invoke-virtual {p2, v7}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@56
    .line 591
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    #@58
    invoke-interface {v8, p3}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    #@5b
    .line 557
    return-void
.end method

.method public getAnteContextLength()I
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 229
    iget v1, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@3
    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    if-eqz v2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method final getIndexValue()I
    .locals 4

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 239
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@3
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    if-ne v2, v3, :cond_0

    #@b
    .line 242
    return v1

    #@c
    .line 244
    :cond_0
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@e
    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@10
    invoke-static {v2, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    .line 245
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@16
    invoke-virtual {v2, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@19
    move-result-object v2

    #@1a
    if-nez v2, :cond_1

    #@1c
    and-int/lit16 v1, v0, 0xff

    #@1e
    :cond_1
    return v1
.end method

.method public masks(Landroid/icu/text/TransliterationRule;)Z
    .locals 9
    .param p1, "r2"    # Landroid/icu/text/TransliterationRule;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 310
    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 311
    .local v2, "len":I
    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@a
    .line 312
    .local v0, "left":I
    iget v1, p1, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    #@c
    .line 313
    .local v1, "left2":I
    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@11
    move-result v7

    #@12
    sub-int v3, v7, v0

    #@14
    .line 314
    .local v3, "right":I
    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@16
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@19
    move-result v7

    #@1a
    sub-int v4, v7, v1

    #@1c
    .line 320
    .local v4, "right2":I
    if-ne v0, v1, :cond_3

    #@1e
    if-ne v3, v4, :cond_3

    #@20
    .line 321
    iget v7, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@22
    iget v8, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@24
    if-gt v7, v8, :cond_3

    #@26
    .line 322
    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@28
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@2a
    invoke-virtual {v7, v6, v8, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2d
    move-result v7

    #@2e
    .line 320
    if-eqz v7, :cond_3

    #@30
    .line 324
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@32
    iget-byte v8, p1, Landroid/icu/text/TransliterationRule;->flags:B

    #@34
    if-eq v7, v8, :cond_0

    #@36
    .line 325
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@38
    and-int/lit8 v7, v7, 0x1

    #@3a
    if-nez v7, :cond_1

    #@3c
    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@3e
    and-int/lit8 v7, v7, 0x2

    #@40
    if-nez v7, :cond_1

    #@42
    .line 324
    :cond_0
    :goto_0
    return v5

    #@43
    .line 326
    :cond_1
    iget-byte v7, p1, Landroid/icu/text/TransliterationRule;->flags:B

    #@45
    and-int/lit8 v7, v7, 0x1

    #@47
    if-eqz v7, :cond_2

    #@49
    iget-byte v7, p1, Landroid/icu/text/TransliterationRule;->flags:B

    #@4b
    and-int/lit8 v7, v7, 0x2

    #@4d
    if-nez v7, :cond_0

    #@4f
    :cond_2
    move v5, v6

    #@50
    goto :goto_0

    #@51
    .line 329
    :cond_3
    if-gt v0, v1, :cond_5

    #@53
    .line 330
    if-lt v3, v4, :cond_4

    #@55
    .line 331
    if-ne v3, v4, :cond_5

    #@57
    iget v5, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@59
    iget v7, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    #@5b
    if-gt v5, v7, :cond_5

    #@5d
    .line 332
    :cond_4
    iget-object v5, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@5f
    sub-int v7, v1, v0

    #@61
    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    #@63
    invoke-virtual {v5, v7, v8, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@66
    move-result v6

    #@67
    .line 329
    :cond_5
    return v6
.end method

.method public matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I
    .locals 12
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    .line 380
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 381
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    #@7
    array-length v10, v10

    #@8
    if-ge v1, v10, :cond_0

    #@a
    .line 382
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    #@c
    aget-object v10, v10, v1

    #@e
    check-cast v10, Landroid/icu/text/StringMatcher;

    #@10
    invoke-virtual {v10}, Landroid/icu/text/StringMatcher;->resetMatch()V

    #@13
    .line 381
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 387
    .end local v1    # "i":I
    :cond_0
    const/4 v10, 0x1

    #@17
    new-array v2, v10, [I

    #@19
    .line 402
    .local v2, "intRef":[I
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@1b
    invoke-static {p1, v10}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    #@1e
    move-result v0

    #@1f
    .line 407
    .local v0, "anteLimit":I
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@21
    invoke-static {p1, v10}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    #@24
    move-result v10

    #@25
    const/4 v11, 0x0

    #@26
    aput v10, v2, v11

    #@28
    .line 409
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    #@2a
    if-eqz v10, :cond_1

    #@2c
    .line 410
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    #@2e
    const/4 v11, 0x0

    #@2f
    invoke-virtual {v10, p1, v2, v0, v11}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@32
    move-result v5

    #@33
    .line 411
    .local v5, "match":I
    const/4 v10, 0x2

    #@34
    if-eq v5, v10, :cond_1

    #@36
    .line 412
    const/4 v10, 0x0

    #@37
    return v10

    #@38
    .line 416
    .end local v5    # "match":I
    :cond_1
    const/4 v10, 0x0

    #@39
    aget v9, v2, v10

    #@3b
    .line 418
    .local v9, "oText":I
    invoke-static {p1, v9}, Landroid/icu/text/TransliterationRule;->posAfter(Landroid/icu/text/Replaceable;I)I

    #@3e
    move-result v6

    #@3f
    .line 422
    .local v6, "minOText":I
    iget-byte v10, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@41
    and-int/lit8 v10, v10, 0x1

    #@43
    if-eqz v10, :cond_2

    #@45
    if-eq v9, v0, :cond_2

    #@47
    .line 423
    const/4 v10, 0x0

    #@48
    return v10

    #@49
    .line 428
    :cond_2
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@4b
    const/4 v11, 0x0

    #@4c
    aput v10, v2, v11

    #@4e
    .line 430
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@50
    if-eqz v10, :cond_3

    #@52
    .line 431
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@54
    iget v11, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@56
    invoke-virtual {v10, p1, v2, v11, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@59
    move-result v5

    #@5a
    .line 432
    .restart local v5    # "match":I
    const/4 v10, 0x2

    #@5b
    if-eq v5, v10, :cond_3

    #@5d
    .line 433
    return v5

    #@5e
    .line 437
    .end local v5    # "match":I
    :cond_3
    const/4 v10, 0x0

    #@5f
    aget v3, v2, v10

    #@61
    .line 439
    .local v3, "keyLimit":I
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@63
    if-eqz v10, :cond_5

    #@65
    .line 440
    if-eqz p3, :cond_4

    #@67
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@69
    if-ne v3, v10, :cond_4

    #@6b
    .line 445
    const/4 v10, 0x1

    #@6c
    return v10

    #@6d
    .line 448
    :cond_4
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@6f
    iget v11, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@71
    invoke-virtual {v10, p1, v2, v11, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@74
    move-result v5

    #@75
    .line 449
    .restart local v5    # "match":I
    const/4 v10, 0x2

    #@76
    if-eq v5, v10, :cond_5

    #@78
    .line 450
    return v5

    #@79
    .line 454
    .end local v5    # "match":I
    :cond_5
    const/4 v10, 0x0

    #@7a
    aget v9, v2, v10

    #@7c
    .line 458
    iget-byte v10, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@7e
    and-int/lit8 v10, v10, 0x2

    #@80
    if-eqz v10, :cond_7

    #@82
    .line 459
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@84
    if-eq v9, v10, :cond_6

    #@86
    .line 460
    const/4 v10, 0x0

    #@87
    return v10

    #@88
    .line 462
    :cond_6
    if-eqz p3, :cond_7

    #@8a
    .line 463
    const/4 v10, 0x1

    #@8b
    return v10

    #@8c
    .line 472
    :cond_7
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    #@8e
    iget v11, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@90
    invoke-interface {v10, p1, v11, v3, v2}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    #@93
    move-result v7

    #@94
    .line 473
    .local v7, "newLength":I
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@96
    sub-int v10, v3, v10

    #@98
    sub-int v4, v7, v10

    #@9a
    .line 474
    .local v4, "lenDelta":I
    const/4 v10, 0x0

    #@9b
    aget v8, v2, v10

    #@9d
    .line 476
    .local v8, "newStart":I
    add-int/2addr v9, v4

    #@9e
    .line 477
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@a0
    add-int/2addr v10, v4

    #@a1
    iput v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@a3
    .line 478
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@a5
    add-int/2addr v10, v4

    #@a6
    iput v10, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@a8
    .line 480
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@aa
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@ad
    move-result v10

    #@ae
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    #@b1
    move-result v10

    #@b2
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    #@b5
    move-result v10

    #@b6
    iput v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@b8
    .line 481
    const/4 v10, 0x2

    #@b9
    return v10
.end method

.method final matchesIndexValue(I)Z
    .locals 2
    .param p1, "v"    # I

    #@0
    .prologue
    .line 261
    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@6
    .line 262
    .local v0, "m":Landroid/icu/text/UnicodeMatcher;
    :goto_0
    if-eqz v0, :cond_1

    #@8
    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    #@b
    move-result v1

    #@c
    :goto_1
    return v1

    #@d
    .line 261
    .end local v0    # "m":Landroid/icu/text/UnicodeMatcher;
    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@f
    goto :goto_0

    #@10
    .line 262
    .restart local v0    # "m":Landroid/icu/text/UnicodeMatcher;
    :cond_1
    const/4 v1, 0x1

    #@11
    goto :goto_1
.end method

.method public toRule(Z)Ljava/lang/String;
    .locals 5
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 491
    new-instance v2, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 496
    .local v2, "rule":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@b
    .line 501
    .local v1, "quoteBuf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    #@d
    if-nez v3, :cond_0

    #@f
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@11
    if-eqz v3, :cond_5

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    .line 504
    .local v0, "emitBraces":Z
    :goto_0
    iget-byte v3, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@16
    and-int/lit8 v3, v3, 0x1

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 505
    const/16 v3, 0x5e

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1f
    .line 509
    :cond_1
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    #@21
    invoke-static {v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    #@24
    .line 511
    if-eqz v0, :cond_2

    #@26
    .line 512
    const/16 v3, 0x7b

    #@28
    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@2b
    .line 515
    :cond_2
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    #@2d
    invoke-static {v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    #@30
    .line 517
    if-eqz v0, :cond_3

    #@32
    .line 518
    const/16 v3, 0x7d

    #@34
    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@37
    .line 521
    :cond_3
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    #@39
    invoke-static {v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    #@3c
    .line 524
    iget-byte v3, p0, Landroid/icu/text/TransliterationRule;->flags:B

    #@3e
    and-int/lit8 v3, v3, 0x2

    #@40
    if-eqz v3, :cond_4

    #@42
    .line 525
    const/16 v3, 0x24

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@47
    .line 528
    :cond_4
    const-string/jumbo v3, " > "

    #@4a
    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    #@4d
    .line 532
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    #@4f
    invoke-interface {v3, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    #@56
    .line 535
    const/16 v3, 0x3b

    #@58
    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    #@5b
    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    return-object v3

    #@60
    .line 501
    .end local v0    # "emitBraces":Z
    :cond_5
    const/4 v0, 0x0

    #@61
    .restart local v0    # "emitBraces":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/16 v1, 0x7b

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x7d

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
