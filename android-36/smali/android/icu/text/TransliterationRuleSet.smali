.class Landroid/icu/text/TransliterationRuleSet;
.super Ljava/lang/Object;
.source "TransliterationRuleSet.java"


# instance fields
.field private greylist-max-o index:[I

.field private greylist-max-o maxContextLength:I

.field private greylist-max-o ruleVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/TransliterationRule;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o rules:[Landroid/icu/text/TransliterationRule;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    .line 63
    return-void
.end method


# virtual methods
.method public greylist-max-o addRule(Landroid/icu/text/TransliterationRule;)V
    .registers 5
    .param p1, "rule"    # Landroid/icu/text/TransliterationRule;

    .line 79
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p1}, Landroid/icu/text/TransliterationRule;->getAnteContextLength()I

    move-result v0

    move v1, v0

    .local v1, "len":I
    iget v2, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    if-le v0, v2, :cond_10

    .line 82
    iput v1, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    .line 85
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    .line 86
    return-void
.end method

.method greylist-max-o addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 247
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 248
    .local v0, "currentFilter":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 249
    .local v1, "revisiting":Landroid/icu/text/UnicodeSet;
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 250
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_28

    .line 251
    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/TransliterationRule;

    .line 252
    .local v4, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-virtual {v4, v0, p2, p3, v5}, Landroid/icu/text/TransliterationRule;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 250
    .end local v4    # "r":Landroid/icu/text/TransliterationRule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 255
    .end local v3    # "i":I
    :cond_28
    return-void
.end method

.method public greylist-max-o freeze()V
    .registers 13

    .line 110
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 111
    .local v0, "n":I
    const/16 v1, 0x101

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliterationRule;>;"
    new-array v2, v0, [I

    .line 117
    .local v2, "indexValue":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_16
    if-ge v3, v0, :cond_29

    .line 118
    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/TransliterationRule;

    .line 119
    .local v4, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v4}, Landroid/icu/text/TransliterationRule;->getIndexValue()I

    move-result v5

    aput v5, v2, v3

    .line 117
    .end local v4    # "r":Landroid/icu/text/TransliterationRule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 121
    .end local v3    # "j":I
    :cond_29
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2a
    const/16 v4, 0x100

    if-ge v3, v4, :cond_64

    .line 122
    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v4, v3

    .line 123
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_37
    if-ge v4, v0, :cond_61

    .line 124
    aget v5, v2, v4

    if-ltz v5, :cond_4d

    .line 125
    aget v5, v2, v4

    if-ne v5, v3, :cond_5e

    .line 126
    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/TransliterationRule;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 133
    :cond_4d
    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/TransliterationRule;

    .line 134
    .local v5, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v5, v3}, Landroid/icu/text/TransliterationRule;->matchesIndexValue(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 135
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v5    # "r":Landroid/icu/text/TransliterationRule;
    :cond_5e
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 121
    .end local v4    # "j":I
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 140
    .end local v3    # "x":I
    :cond_64
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v3, v4

    .line 144
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/icu/text/TransliterationRule;

    iput-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    .line 145
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    const/4 v3, 0x0

    .line 156
    .local v3, "errors":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_7b
    if-ge v5, v4, :cond_da

    .line 157
    iget-object v6, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v6, v6, v5

    .local v6, "j":I
    :goto_81
    iget-object v7, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_d7

    .line 158
    iget-object v7, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v7, v7, v6

    .line 159
    .local v7, "r1":Landroid/icu/text/TransliterationRule;
    add-int/lit8 v8, v6, 0x1

    .local v8, "k":I
    :goto_91
    iget-object v9, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_d4

    .line 160
    iget-object v9, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v9, v9, v8

    .line 161
    .local v9, "r2":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v7, v9}, Landroid/icu/text/TransliterationRule;->masks(Landroid/icu/text/TransliterationRule;)Z

    move-result v10

    if-eqz v10, :cond_d1

    .line 162
    if-nez v3, :cond_ac

    .line 163
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v10

    goto :goto_b1

    .line 165
    :cond_ac
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_b1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rule "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " masks "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .end local v9    # "r2":Landroid/icu/text/TransliterationRule;
    :cond_d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 157
    .end local v7    # "r1":Landroid/icu/text/TransliterationRule;
    .end local v8    # "k":I
    :cond_d4
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 156
    .end local v6    # "j":I
    :cond_d7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 173
    .end local v5    # "x":I
    :cond_da
    if-nez v3, :cond_dd

    .line 176
    return-void

    .line 174
    :cond_dd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public greylist-max-o getMaximumContextLength()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    return v0
.end method

.method greylist-max-o toRules(Z)Ljava/lang/String;
    .registers 7
    .param p1, "escapeUnprintable"    # Z

    .line 232
    iget-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v1, "ruleSource":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_27

    .line 235
    if-eqz v2, :cond_15

    .line 236
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_15
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TransliterationRule;

    .line 239
    .local v3, "r":Landroid/icu/text/TransliterationRule;
    invoke-virtual {v3, p1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .end local v3    # "r":Landroid/icu/text/TransliterationRule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 241
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public greylist-max-o transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z
    .registers 8
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 194
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 195
    .local v0, "indexByte":I
    iget-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v1, v1, v0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_26

    .line 196
    iget-object v2, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/TransliterationRule;->matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I

    move-result v2

    .line 197
    .local v2, "m":I
    packed-switch v2, :pswitch_data_36

    .line 195
    .end local v2    # "m":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 204
    .restart local v2    # "m":I
    :pswitch_23
    return v3

    .line 211
    :pswitch_24
    const/4 v3, 0x0

    return v3

    .line 219
    .end local v1    # "i":I
    .end local v2    # "m":I
    :cond_26
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 224
    return v3

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method
