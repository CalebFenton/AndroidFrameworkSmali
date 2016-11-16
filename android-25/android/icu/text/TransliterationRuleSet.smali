.class Landroid/icu/text/TransliterationRuleSet;
.super Ljava/lang/Object;
.source "TransliterationRuleSet.java"


# instance fields
.field private index:[I

.field private maxContextLength:I

.field private ruleVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/TransliterationRule;",
            ">;"
        }
    .end annotation
.end field

.field private rules:[Landroid/icu/text/TransliterationRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@a
    .line 60
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    #@d
    .line 58
    return-void
.end method


# virtual methods
.method public addRule(Landroid/icu/text/TransliterationRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/icu/text/TransliterationRule;

    #@0
    .prologue
    .line 77
    iget-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 79
    invoke-virtual {p1}, Landroid/icu/text/TransliterationRule;->getAnteContextLength()I

    #@8
    move-result v0

    #@9
    .local v0, "len":I
    iget v1, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 80
    iput v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    #@f
    .line 83
    :cond_0
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    #@12
    .line 76
    return-void
.end method

.method addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 6
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 245
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v1, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@5
    .line 246
    .local v1, "currentFilter":Landroid/icu/text/UnicodeSet;
    new-instance v4, Landroid/icu/text/UnicodeSet;

    #@7
    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@a
    .line 247
    .local v4, "revisiting":Landroid/icu/text/UnicodeSet;
    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@c
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@f
    move-result v0

    #@10
    .line 248
    .local v0, "count":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@13
    .line 249
    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@15
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/icu/text/TransliterationRule;

    #@1b
    .line 250
    .local v3, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3, v1, p2, p3, v5}, Landroid/icu/text/TransliterationRule;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@22
    .line 251
    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@25
    .line 248
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 244
    .end local v3    # "r":Landroid/icu/text/TransliterationRule;
    :cond_0
    return-void
.end method

.method public freeze()V
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x100

    #@2
    .line 108
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@4
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    .line 109
    .local v4, "n":I
    const/16 v10, 0x101

    #@a
    new-array v10, v10, [I

    #@c
    iput-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@e
    .line 110
    new-instance v8, Ljava/util/ArrayList;

    #@10
    mul-int/lit8 v10, v4, 0x2

    #@12
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    .line 114
    .local v8, "v":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliterationRule;>;"
    new-array v1, v4, [I

    #@17
    .line 115
    .local v1, "indexValue":[I
    const/4 v2, 0x0

    #@18
    .local v2, "j":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@1a
    .line 116
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@1c
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Landroid/icu/text/TransliterationRule;

    #@22
    .line 117
    .local v5, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v5}, Landroid/icu/text/TransliterationRule;->getIndexValue()I

    #@25
    move-result v10

    #@26
    aput v10, v1, v2

    #@28
    .line 115
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 119
    .end local v5    # "r":Landroid/icu/text/TransliterationRule;
    :cond_0
    const/4 v9, 0x0

    #@2c
    .local v9, "x":I
    :goto_1
    if-ge v9, v12, :cond_4

    #@2e
    .line 120
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@30
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@33
    move-result v11

    #@34
    aput v11, v10, v9

    #@36
    .line 121
    const/4 v2, 0x0

    #@37
    :goto_2
    if-ge v2, v4, :cond_3

    #@39
    .line 122
    aget v10, v1, v2

    #@3b
    if-ltz v10, :cond_2

    #@3d
    .line 123
    aget v10, v1, v2

    #@3f
    if-ne v10, v9, :cond_1

    #@41
    .line 124
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@43
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v10

    #@47
    check-cast v10, Landroid/icu/text/TransliterationRule;

    #@49
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 121
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_2

    #@4f
    .line 131
    :cond_2
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@51
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v5

    #@55
    check-cast v5, Landroid/icu/text/TransliterationRule;

    #@57
    .line 132
    .restart local v5    # "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v5, v9}, Landroid/icu/text/TransliterationRule;->matchesIndexValue(I)Z

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_1

    #@5d
    .line 133
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@60
    goto :goto_3

    #@61
    .line 119
    .end local v5    # "r":Landroid/icu/text/TransliterationRule;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@63
    goto :goto_1

    #@64
    .line 138
    :cond_4
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@66
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@69
    move-result v11

    #@6a
    aput v11, v10, v12

    #@6c
    .line 142
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@6f
    move-result v10

    #@70
    new-array v10, v10, [Landroid/icu/text/TransliterationRule;

    #@72
    iput-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    #@74
    .line 143
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    #@76
    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@79
    .line 145
    const/4 v0, 0x0

    #@7a
    .line 154
    .local v0, "errors":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    #@7b
    .end local v0    # "errors":Ljava/lang/StringBuilder;
    :goto_4
    if-ge v9, v12, :cond_9

    #@7d
    .line 155
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@7f
    aget v2, v10, v9

    #@81
    :goto_5
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@83
    add-int/lit8 v11, v9, 0x1

    #@85
    aget v10, v10, v11

    #@87
    add-int/lit8 v10, v10, -0x1

    #@89
    if-ge v2, v10, :cond_8

    #@8b
    .line 156
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    #@8d
    aget-object v6, v10, v2

    #@8f
    .line 157
    .local v6, "r1":Landroid/icu/text/TransliterationRule;
    add-int/lit8 v3, v2, 0x1

    #@91
    .local v3, "k":I
    :goto_6
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@93
    add-int/lit8 v11, v9, 0x1

    #@95
    aget v10, v10, v11

    #@97
    if-ge v3, v10, :cond_7

    #@99
    .line 158
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    #@9b
    aget-object v7, v10, v3

    #@9d
    .line 159
    .local v7, "r2":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v6, v7}, Landroid/icu/text/TransliterationRule;->masks(Landroid/icu/text/TransliterationRule;)Z

    #@a0
    move-result v10

    #@a1
    if-eqz v10, :cond_5

    #@a3
    .line 160
    if-nez v0, :cond_6

    #@a5
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    .line 165
    :goto_7
    const-string/jumbo v10, "Rule "

    #@ad
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    const-string/jumbo v11, " masks "

    #@b8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v10

    #@bc
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    .line 157
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@c1
    goto :goto_6

    #@c2
    .line 163
    :cond_6
    const-string/jumbo v10, "\n"

    #@c5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    goto :goto_7

    #@c9
    .line 155
    .end local v7    # "r2":Landroid/icu/text/TransliterationRule;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@cb
    goto :goto_5

    #@cc
    .line 154
    .end local v3    # "k":I
    .end local v6    # "r1":Landroid/icu/text/TransliterationRule;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    #@ce
    goto :goto_4

    #@cf
    .line 171
    :cond_9
    if-eqz v0, :cond_a

    #@d1
    .line 172
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@d3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v11

    #@d7
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@da
    throw v10

    #@db
    .line 91
    :cond_a
    return-void
.end method

.method public getMaximumContextLength()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    #@2
    return v0
.end method

.method toRules(Z)Ljava/lang/String;
    .locals 5
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    .line 230
    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    .line 231
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 232
    .local v3, "ruleSource":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 233
    if-eqz v1, :cond_0

    #@10
    .line 234
    const/16 v4, 0xa

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 236
    :cond_0
    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    #@17
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/icu/text/TransliterationRule;

    #@1d
    .line 237
    .local v2, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v2, p1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 232
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 239
    .end local v2    # "r":Landroid/icu/text/TransliterationRule;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    return-object v4
.end method

.method public transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z
    .locals 6
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 192
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@3
    invoke-interface {p1, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@6
    move-result v3

    #@7
    and-int/lit16 v1, v3, 0xff

    #@9
    .line 193
    .local v1, "indexByte":I
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@b
    aget v0, v3, v1

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    #@f
    add-int/lit8 v4, v1, 0x1

    #@11
    aget v3, v3, v4

    #@13
    if-ge v0, v3, :cond_0

    #@15
    .line 194
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    #@17
    aget-object v3, v3, v0

    #@19
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/text/TransliterationRule;->matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I

    #@1c
    move-result v2

    #@1d
    .line 195
    .local v2, "m":I
    packed-switch v2, :pswitch_data_0

    #@20
    .line 193
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 202
    :pswitch_0
    return v5

    #@24
    .line 209
    :pswitch_1
    const/4 v3, 0x0

    #@25
    return v3

    #@26
    .line 217
    .end local v2    # "m":I
    :cond_0
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@28
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@2a
    invoke-interface {p1, v4}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@2d
    move-result v4

    #@2e
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@31
    move-result v4

    #@32
    add-int/2addr v3, v4

    #@33
    iput v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@35
    .line 222
    return v5

    #@36
    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
