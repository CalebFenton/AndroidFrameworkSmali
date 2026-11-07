.class public Landroid/icu/impl/breakiter/MlBreakEngine;
.super Ljava/lang/Object;
.source "MlBreakEngine.java"


# static fields
.field private static final blacklist MAX_FEATURE:I = 0xd


# instance fields
.field private blacklist fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist fNegativeSum:I


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 7
    .param p1, "digitOrOpenPunctuationOrAlphabetSet"    # Landroid/icu/text/UnicodeSet;
    .param p2, "closePunctuationSet"    # Landroid/icu/text/UnicodeSet;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

    .line 57
    iput-object p2, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_20

    .line 60
    iget-object v2, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 62
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fNegativeSum:I

    .line 63
    invoke-direct {p0}, Landroid/icu/impl/breakiter/MlBreakEngine;->loadMLModel()V

    .line 64
    return-void
.end method

.method private blacklist evaluateBreakpoint(Ljava/lang/String;[IIILjava/util/ArrayList;)V
    .registers 15
    .param p1, "inputStr"    # Ljava/lang/String;
    .param p2, "indexList"    # [I
    .param p3, "startIdx"    # I
    .param p4, "numCodeUnits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p5, "boundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "start":I
    const/4 v1, 0x0

    .line 176
    .local v1, "end":I
    iget v2, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fNegativeSum:I

    .line 178
    .local v2, "score":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ge v3, v4, :cond_44

    .line 180
    add-int v0, p3, v3

    .line 181
    aget v4, p2, v0

    if-eq v4, v6, :cond_41

    .line 182
    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    if-eq v4, v6, :cond_1b

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    goto :goto_1c

    :cond_1b
    move v4, p4

    .line 183
    .end local v1    # "end":I
    .local v4, "end":I
    :goto_1c
    iget-object v1, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    sget-object v6, Landroid/icu/impl/breakiter/ModelIndex;->kUWStart:Landroid/icu/impl/breakiter/ModelIndex;

    invoke-virtual {v6}, Landroid/icu/impl/breakiter/ModelIndex;->getValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    aget v6, p2, v0

    .line 184
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 183
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    move v1, v4

    .line 178
    .end local v4    # "end":I
    .restart local v1    # "end":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 187
    .end local v3    # "i":I
    :cond_44
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_45
    const/4 v4, 0x3

    if-ge v3, v4, :cond_8a

    .line 189
    add-int v4, p3, v3

    add-int/lit8 v0, v4, 0x1

    .line 190
    aget v4, p2, v0

    if-eq v4, v6, :cond_87

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    if-eq v4, v6, :cond_87

    .line 191
    add-int/lit8 v4, v0, 0x2

    aget v4, p2, v4

    if-eq v4, v6, :cond_61

    add-int/lit8 v4, v0, 0x2

    aget v4, p2, v4

    goto :goto_62

    :cond_61
    move v4, p4

    .line 192
    .end local v1    # "end":I
    .restart local v4    # "end":I
    :goto_62
    iget-object v1, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    sget-object v7, Landroid/icu/impl/breakiter/ModelIndex;->kBWStart:Landroid/icu/impl/breakiter/ModelIndex;

    invoke-virtual {v7}, Landroid/icu/impl/breakiter/ModelIndex;->getValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    aget v7, p2, v0

    .line 193
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 192
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    move v1, v4

    .line 187
    .end local v4    # "end":I
    .restart local v1    # "end":I
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 196
    .end local v3    # "i":I
    :cond_8a
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8b
    const/4 v4, 0x4

    if-ge v3, v4, :cond_d4

    .line 198
    add-int v0, p3, v3

    .line 199
    aget v4, p2, v0

    if-eq v4, v6, :cond_d1

    add-int/lit8 v4, v0, 0x1

    aget v4, p2, v4

    if-eq v4, v6, :cond_d1

    add-int/lit8 v4, v0, 0x2

    aget v4, p2, v4

    if-eq v4, v6, :cond_d1

    .line 202
    add-int/lit8 v4, v0, 0x3

    aget v4, p2, v4

    if-eq v4, v6, :cond_ab

    add-int/lit8 v4, v0, 0x3

    aget v4, p2, v4

    goto :goto_ac

    :cond_ab
    move v4, p4

    .line 203
    .end local v1    # "end":I
    .restart local v4    # "end":I
    :goto_ac
    iget-object v1, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    sget-object v7, Landroid/icu/impl/breakiter/ModelIndex;->kTWStart:Landroid/icu/impl/breakiter/ModelIndex;

    invoke-virtual {v7}, Landroid/icu/impl/breakiter/ModelIndex;->getValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    aget v7, p2, v0

    .line 204
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 203
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    move v1, v4

    .line 196
    .end local v4    # "end":I
    .restart local v1    # "end":I
    :cond_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 207
    .end local v3    # "i":I
    :cond_d4
    if-lez v2, :cond_df

    .line 208
    add-int/lit8 v3, p3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_df
    return-void
.end method

.method private blacklist initIndexList(Ljava/text/CharacterIterator;[II)I
    .registers 8
    .param p1, "inString"    # Ljava/text/CharacterIterator;
    .param p2, "indexList"    # [I
    .param p3, "codePointLength"    # I

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "index":I
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 223
    const/4 v1, -0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 224
    if-lez p3, :cond_42

    .line 225
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, p2, v2

    .line 226
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    const/4 v1, 0x1

    if-le p3, v1, :cond_42

    .line 228
    const/4 v1, 0x3

    aput v0, p2, v1

    .line 229
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 230
    if-le p3, v2, :cond_42

    .line 231
    const/4 v2, 0x4

    aput v0, p2, v2

    .line 232
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 233
    if-le p3, v1, :cond_42

    .line 234
    const/4 v1, 0x5

    aput v0, p2, v1

    .line 235
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_42
    return v0
.end method

.method private blacklist initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 12
    .param p1, "rb"    # Landroid/icu/util/UResourceBundle;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/UResourceBundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 278
    .local v0, "idx":I
    invoke-virtual {p1, p2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 279
    .local v1, "keyBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {p1, p3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 280
    .local v2, "valueBundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v3

    .line 281
    .local v3, "value":[I
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v4

    .line 282
    .local v4, "iterator":Landroid/icu/util/UResourceBundleIterator;
    :goto_11
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 283
    iget v5, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fNegativeSum:I

    aget v6, v3, v0

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fNegativeSum:I

    .line 284
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "idx":I
    .local v6, "idx":I
    aget v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    goto :goto_11

    .line 286
    .end local v6    # "idx":I
    .restart local v0    # "idx":I
    :cond_2f
    return-void
.end method

.method private blacklist loadMLModel()V
    .registers 6

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "index":I
    const-string v1, "android/icu/impl/data/icudata/brkitr"

    const-string v2, "jaml"

    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 250
    .local v1, "rb":Landroid/icu/util/UResourceBundle;
    iget-object v2, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "UW1Keys"

    const-string v4, "UW1Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 251
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .local v2, "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "UW2Keys"

    const-string v4, "UW2Values"

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 252
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "UW3Keys"

    const-string v4, "UW3Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 253
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "UW4Keys"

    const-string v4, "UW4Values"

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 254
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "UW5Keys"

    const-string v4, "UW5Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 255
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "UW6Keys"

    const-string v4, "UW6Values"

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 256
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "BW1Keys"

    const-string v4, "BW1Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 257
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "BW2Keys"

    const-string v4, "BW2Values"

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 258
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "BW3Keys"

    const-string v4, "BW3Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 259
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "TW1Keys"

    const-string v4, "TW1Values"

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 260
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "TW2Keys"

    const-string v4, "TW2Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 261
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "TW3Keys"

    const-string v4, "TW3Values"

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 262
    iget-object v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fModel:Ljava/util/List;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "TW4Keys"

    const-string v4, "TW4Values"

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/impl/breakiter/MlBreakEngine;->initKeyValue(Landroid/icu/util/UResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 263
    iget v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fNegativeSum:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/breakiter/MlBreakEngine;->fNegativeSum:I

    .line 264
    return-void
.end method

.method private blacklist transform(Ljava/text/CharacterIterator;)Ljava/lang/String;
    .registers 5
    .param p1, "inString"    # Ljava/text/CharacterIterator;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 158
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    .local v1, "c":C
    :goto_d
    const v2, 0xffff

    if-eq v1, v2, :cond_1a

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    goto :goto_d

    .line 161
    .end local v1    # "c":C
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist divideUpRange(Ljava/text/CharacterIterator;IILjava/text/CharacterIterator;I[ILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;)I
    .registers 27
    .param p1, "inText"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "inString"    # Ljava/text/CharacterIterator;
    .param p5, "codePointLength"    # I
    .param p6, "charPositions"    # [I
    .param p7, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    const/4 v1, 0x0

    if-lt v7, v8, :cond_10

    .line 82
    return v1

    .line 84
    :cond_10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v5, "boundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0, v9}, Landroid/icu/impl/breakiter/MlBreakEngine;->transform(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "inputStr":Ljava/lang/String;
    add-int/lit8 v11, v10, 0x4

    .line 93
    .local v11, "indexSize":I
    move-object v3, v2

    .end local v2    # "inputStr":Ljava/lang/String;
    .local v3, "inputStr":Ljava/lang/String;
    new-array v2, v11, [I

    .line 94
    .local v2, "indexList":[I
    invoke-direct {v0, v9, v2, v10}, Landroid/icu/impl/breakiter/MlBreakEngine;->initIndexList(Ljava/text/CharacterIterator;[II)I

    move-result v4

    .line 97
    .local v4, "numCodeUnits":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_2a
    add-int/lit8 v12, v1, 0x1

    if-ge v12, v10, :cond_4f

    .line 100
    move-object/from16 v18, v3

    move v3, v1

    move-object/from16 v1, v18

    .local v1, "inputStr":Ljava/lang/String;
    .local v3, "idx":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/breakiter/MlBreakEngine;->evaluateBreakpoint(Ljava/lang/String;[IIILjava/util/ArrayList;)V

    .line 101
    add-int/lit8 v12, v3, 0x4

    if-ge v12, v10, :cond_47

    .line 102
    add-int/lit8 v12, v3, 0x6

    aput v4, v2, v12

    .line 103
    invoke-static {v9}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v4, v12

    .line 99
    :cond_47
    add-int/lit8 v3, v3, 0x1

    move/from16 v18, v3

    move-object v3, v1

    move/from16 v1, v18

    goto :goto_2a

    .local v1, "idx":I
    .local v3, "inputStr":Ljava/lang/String;
    :cond_4f
    move-object/from16 v18, v3

    move v3, v1

    move-object/from16 v1, v18

    .line 108
    .end local v3    # "inputStr":Ljava/lang/String;
    .local v1, "inputStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v10, :cond_6d

    .line 109
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_6d
    const/4 v3, 0x0

    .line 113
    .local v3, "correctedNumBreaks":I
    const/4 v12, -0x1

    .line 114
    .local v12, "previous":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 115
    .local v13, "numBreaks":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_74
    if-ge v14, v13, :cond_c1

    .line 116
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget v15, p6, v15

    add-int/2addr v15, v7

    .line 120
    .local v15, "pos":I
    invoke-interface {v6, v15}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 121
    if-le v15, v12, :cond_b3

    .line 122
    if-ne v15, v7, :cond_a7

    if-lez v15, :cond_a0

    move-object/from16 v16, v1

    .end local v1    # "inputStr":Ljava/lang/String;
    .local v16, "inputStr":Ljava/lang/String;
    iget-object v1, v0, Landroid/icu/impl/breakiter/MlBreakEngine;->fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

    .line 124
    move-object/from16 v17, v2

    .end local v2    # "indexList":[I
    .local v17, "indexList":[I
    invoke-static {v6}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    goto :goto_ab

    :cond_9d
    move-object/from16 v1, p7

    goto :goto_b9

    .line 122
    .end local v16    # "inputStr":Ljava/lang/String;
    .end local v17    # "indexList":[I
    .restart local v1    # "inputStr":Ljava/lang/String;
    .restart local v2    # "indexList":[I
    :cond_a0
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "inputStr":Ljava/lang/String;
    .end local v2    # "indexList":[I
    .restart local v16    # "inputStr":Ljava/lang/String;
    .restart local v17    # "indexList":[I
    move-object/from16 v1, p7

    goto :goto_b9

    .end local v16    # "inputStr":Ljava/lang/String;
    .end local v17    # "indexList":[I
    .restart local v1    # "inputStr":Ljava/lang/String;
    .restart local v2    # "indexList":[I
    :cond_a7
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 125
    .end local v1    # "inputStr":Ljava/lang/String;
    .end local v2    # "indexList":[I
    .restart local v16    # "inputStr":Ljava/lang/String;
    .restart local v17    # "indexList":[I
    :goto_ab
    move-object/from16 v1, p7

    invoke-virtual {v1, v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 121
    .end local v16    # "inputStr":Ljava/lang/String;
    .end local v17    # "indexList":[I
    .restart local v1    # "inputStr":Ljava/lang/String;
    .restart local v2    # "indexList":[I
    :cond_b3
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v1, p7

    .line 129
    .end local v1    # "inputStr":Ljava/lang/String;
    .end local v2    # "indexList":[I
    .restart local v16    # "inputStr":Ljava/lang/String;
    .restart local v17    # "indexList":[I
    :goto_b9
    move v12, v15

    .line 115
    .end local v15    # "pos":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_74

    .end local v16    # "inputStr":Ljava/lang/String;
    .end local v17    # "indexList":[I
    .restart local v1    # "inputStr":Ljava/lang/String;
    .restart local v2    # "indexList":[I
    :cond_c1
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v1, p7

    .line 132
    .end local v1    # "inputStr":Ljava/lang/String;
    .end local v2    # "indexList":[I
    .end local v14    # "i":I
    .restart local v16    # "inputStr":Ljava/lang/String;
    .restart local v17    # "indexList":[I
    invoke-virtual {v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ec

    invoke-virtual {v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    if-ne v2, v8, :cond_ec

    .line 138
    invoke-interface {v6, v8}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 139
    invoke-static {v6}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    .line 140
    .local v2, "current":I
    const v14, 0x7fffffff

    if-eq v2, v14, :cond_ec

    iget-object v14, v0, Landroid/icu/impl/breakiter/MlBreakEngine;->fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v14, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v14

    if-nez v14, :cond_ec

    .line 141
    invoke-virtual {v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    .line 142
    add-int/lit8 v3, v3, -0x1

    .line 146
    .end local v2    # "current":I
    :cond_ec
    invoke-virtual {v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f9

    .line 147
    invoke-virtual {v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    invoke-interface {v6, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 149
    :cond_f9
    return v3
.end method
