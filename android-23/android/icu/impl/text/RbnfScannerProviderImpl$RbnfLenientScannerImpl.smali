.class Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
.super Ljava/lang/Object;
.source "RbnfScannerProviderImpl.java"

# interfaces
.implements Landroid/icu/text/RbnfLenientScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/text/RbnfScannerProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RbnfLenientScannerImpl"
.end annotation


# instance fields
.field private final collator:Landroid/icu/text/RuleBasedCollator;


# direct methods
.method private constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 0
    .param p1, "rbc"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    iput-object p1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    #@5
    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;)V
    .locals 0
    .param p1, "rbc"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    #@3
    return-void
.end method


# virtual methods
.method public allIgnorable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 130
    iget-object v3, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    #@4
    invoke-virtual {v3, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    #@7
    move-result-object v0

    #@8
    .line 132
    .local v0, "iter":Landroid/icu/text/CollationElementIterator;
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    #@b
    move-result v1

    #@c
    .line 133
    .local v1, "o":I
    :goto_0
    if-eq v1, v4, :cond_0

    #@e
    .line 134
    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_0

    #@14
    .line 135
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    #@17
    move-result v1

    #@18
    goto :goto_0

    #@19
    .line 137
    :cond_0
    if-ne v1, v4, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    :cond_1
    return v2
.end method

.method public findText(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "startingAt"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    move v1, p3

    #@2
    .line 142
    .local v1, "p":I
    const/4 v0, 0x0

    #@3
    .line 151
    .local v0, "keyLen":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    if-nez v0, :cond_1

    #@b
    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p0, v2, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 153
    if-eqz v0, :cond_0

    #@15
    .line 154
    const/4 v2, 0x2

    #@16
    new-array v2, v2, [I

    #@18
    aput v1, v2, v3

    #@1a
    const/4 v3, 0x1

    #@1b
    aput v0, v2, v3

    #@1d
    return-object v2

    #@1e
    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 161
    :cond_1
    const/4 v2, -0x1

    #@22
    filled-new-array {v2, v3}, [I

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method public findText2(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "startingAt"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 170
    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    #@4
    invoke-virtual {v5, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    #@7
    move-result-object v4

    #@8
    .line 171
    .local v4, "strIter":Landroid/icu/text/CollationElementIterator;
    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    #@a
    invoke-virtual {v5, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    #@d
    move-result-object v0

    #@e
    .line 173
    .local v0, "keyIter":Landroid/icu/text/CollationElementIterator;
    const/4 v1, -0x1

    #@f
    .line 175
    .local v1, "keyStart":I
    invoke-virtual {v4, p3}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    #@12
    .line 177
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@15
    move-result v3

    #@16
    .line 178
    .local v3, "oStr":I
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    #@19
    move-result v2

    #@1a
    .line 179
    .local v2, "oKey":I
    :goto_0
    if-eq v2, v7, :cond_3

    #@1c
    .line 180
    :goto_1
    if-eq v3, v7, :cond_0

    #@1e
    .line 181
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 182
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@27
    move-result v3

    #@28
    goto :goto_1

    #@29
    .line 184
    :cond_0
    :goto_2
    if-eq v2, v7, :cond_1

    #@2b
    .line 185
    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_1

    #@31
    .line 186
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    #@34
    move-result v2

    #@35
    goto :goto_2

    #@36
    .line 188
    :cond_1
    if-ne v3, v7, :cond_2

    #@38
    .line 189
    filled-new-array {v7, v8}, [I

    #@3b
    move-result-object v5

    #@3c
    return-object v5

    #@3d
    .line 192
    :cond_2
    if-ne v2, v7, :cond_4

    #@3f
    .line 211
    :cond_3
    if-ne v2, v7, :cond_7

    #@41
    .line 212
    const/4 v5, 0x2

    #@42
    new-array v5, v5, [I

    #@44
    aput v1, v5, v8

    #@46
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@49
    move-result v6

    #@4a
    sub-int/2addr v6, v1

    #@4b
    const/4 v7, 0x1

    #@4c
    aput v6, v5, v7

    #@4e
    return-object v5

    #@4f
    .line 196
    :cond_4
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@52
    move-result v5

    #@53
    .line 197
    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@56
    move-result v6

    #@57
    .line 196
    if-ne v5, v6, :cond_5

    #@59
    .line 198
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@5c
    move-result v1

    #@5d
    .line 199
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@60
    move-result v3

    #@61
    .line 200
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    #@64
    move-result v2

    #@65
    goto :goto_0

    #@66
    .line 202
    :cond_5
    if-eq v1, v7, :cond_6

    #@68
    .line 203
    const/4 v1, -0x1

    #@69
    .line 204
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    #@6c
    goto :goto_0

    #@6d
    .line 206
    :cond_6
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@70
    move-result v3

    #@71
    goto :goto_0

    #@72
    .line 215
    :cond_7
    filled-new-array {v7, v8}, [I

    #@75
    move-result-object v5

    #@76
    return-object v5
.end method

.method public prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 229
    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    #@4
    invoke-virtual {v5, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    #@7
    move-result-object v4

    #@8
    .line 230
    .local v4, "strIter":Landroid/icu/text/CollationElementIterator;
    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    #@a
    invoke-virtual {v5, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    #@d
    move-result-object v2

    #@e
    .line 233
    .local v2, "prefixIter":Landroid/icu/text/CollationElementIterator;
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@11
    move-result v1

    #@12
    .line 234
    .local v1, "oStr":I
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    #@15
    move-result v0

    #@16
    .line 236
    .local v0, "oPrefix":I
    :goto_0
    if-eq v0, v7, :cond_2

    #@18
    .line 238
    :goto_1
    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    if-eq v1, v7, :cond_0

    #@20
    .line 240
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@23
    move-result v1

    #@24
    goto :goto_1

    #@25
    .line 244
    :cond_0
    :goto_2
    invoke-static {v0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_1

    #@2b
    if-eq v0, v7, :cond_1

    #@2d
    .line 246
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    #@30
    move-result v0

    #@31
    goto :goto_2

    #@32
    .line 251
    :cond_1
    if-ne v0, v7, :cond_4

    #@34
    .line 277
    :cond_2
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@37
    move-result v3

    #@38
    .line 278
    .local v3, "result":I
    if-eq v1, v7, :cond_3

    #@3a
    .line 279
    add-int/lit8 v3, v3, -0x1

    #@3c
    .line 281
    :cond_3
    return v3

    #@3d
    .line 257
    .end local v3    # "result":I
    :cond_4
    if-ne v1, v7, :cond_5

    #@3f
    .line 258
    return v8

    #@40
    .line 264
    :cond_5
    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@43
    move-result v5

    #@44
    .line 265
    invoke-static {v0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@47
    move-result v6

    #@48
    .line 264
    if-eq v5, v6, :cond_6

    #@4a
    .line 266
    return v8

    #@4b
    .line 273
    :cond_6
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    #@4e
    move-result v1

    #@4f
    .line 274
    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    #@52
    move-result v0

    #@53
    goto :goto_0
.end method
