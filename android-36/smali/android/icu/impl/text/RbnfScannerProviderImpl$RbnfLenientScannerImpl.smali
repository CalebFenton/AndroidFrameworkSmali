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
.field private final blacklist collator:Landroid/icu/text/RuleBasedCollator;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/RuleBasedCollator;)V
    .registers 2
    .param p1, "rbc"    # Landroid/icu/text/RuleBasedCollator;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    .line 131
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method


# virtual methods
.method public blacklist allIgnorable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v0

    .line 136
    .local v0, "iter":Landroid/icu/text/CollationElementIterator;
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    .line 137
    .local v1, "o":I
    :goto_a
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 138
    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-nez v3, :cond_18

    .line 139
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    goto :goto_a

    .line 141
    :cond_18
    if-ne v1, v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    return v2
.end method

.method public blacklist findText(Ljava/lang/String;Ljava/lang/String;I)[I
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "startingAt"    # I

    .line 145
    move v0, p3

    .line 146
    .local v0, "p":I
    const/4 v1, 0x0

    .line 155
    .local v1, "keyLen":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    if-nez v1, :cond_1c

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 157
    if-eqz v1, :cond_19

    .line 158
    filled-new-array {v0, v1}, [I

    move-result-object v2

    return-object v2

    .line 160
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_1c
    const/4 v2, -0x1

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    return-object v2
.end method

.method public blacklist findText2(Ljava/lang/String;Ljava/lang/String;I)[I
    .registers 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "startingAt"    # I

    .line 174
    iget-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v0

    .line 175
    .local v0, "strIter":Landroid/icu/text/CollationElementIterator;
    iget-object v1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    .line 177
    .local v1, "keyIter":Landroid/icu/text/CollationElementIterator;
    const/4 v2, -0x1

    .line 179
    .local v2, "keyStart":I
    invoke-virtual {v0, p3}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 181
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    .line 182
    .local v3, "oStr":I
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v4

    .line 183
    .local v4, "oKey":I
    :goto_18
    const/4 v5, -0x1

    if-eq v4, v5, :cond_63

    .line 184
    :goto_1b
    if-eq v3, v5, :cond_28

    .line 185
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v6

    if-nez v6, :cond_28

    .line 186
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    goto :goto_1b

    .line 189
    :cond_28
    :goto_28
    if-eq v4, v5, :cond_35

    .line 190
    invoke-static {v4}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v6

    if-nez v6, :cond_35

    .line 191
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v4

    goto :goto_28

    .line 194
    :cond_35
    if-ne v3, v5, :cond_3d

    .line 195
    const/4 v6, 0x0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    return-object v5

    .line 198
    :cond_3d
    if-ne v4, v5, :cond_40

    .line 199
    goto :goto_63

    .line 202
    :cond_40
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v6

    .line 203
    invoke-static {v4}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v7

    if-ne v6, v7, :cond_57

    .line 204
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    .line 205
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    .line 206
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v4

    goto :goto_18

    .line 208
    :cond_57
    if-eq v2, v5, :cond_5e

    .line 209
    const/4 v2, -0x1

    .line 210
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->reset()V

    goto :goto_18

    .line 212
    :cond_5e
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    goto :goto_18

    .line 217
    :cond_63
    :goto_63
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v5

    sub-int/2addr v5, v2

    filled-new-array {v2, v5}, [I

    move-result-object v5

    return-object v5
.end method

.method public blacklist prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v0

    .line 232
    .local v0, "strIter":Landroid/icu/text/CollationElementIterator;
    iget-object v1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    .line 235
    .local v1, "prefixIter":Landroid/icu/text/CollationElementIterator;
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v2

    .line 236
    .local v2, "oStr":I
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    .line 238
    .local v3, "oPrefix":I
    :goto_14
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c

    .line 240
    :goto_17
    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    if-nez v5, :cond_24

    if-eq v2, v4, :cond_24

    .line 242
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v2

    goto :goto_17

    .line 246
    :cond_24
    :goto_24
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    if-nez v5, :cond_31

    if-eq v3, v4, :cond_31

    .line 248
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    goto :goto_24

    .line 253
    :cond_31
    if-ne v3, v4, :cond_34

    .line 254
    goto :goto_4c

    .line 259
    :cond_34
    const/4 v5, 0x0

    if-ne v2, v4, :cond_38

    .line 260
    return v5

    .line 266
    :cond_38
    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v4

    .line 267
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v6

    if-eq v4, v6, :cond_43

    .line 268
    return v5

    .line 275
    :cond_43
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v2

    .line 276
    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    goto :goto_14

    .line 279
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v5

    .line 280
    .local v5, "result":I
    if-eq v2, v4, :cond_54

    .line 281
    add-int/lit8 v5, v5, -0x1

    .line 283
    :cond_54
    return v5
.end method
