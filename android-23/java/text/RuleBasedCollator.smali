.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    #@3
    .line 101
    if-nez p1, :cond_0

    #@5
    .line 102
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "rules == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 105
    :cond_0
    :try_start_0
    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    #@10
    invoke-direct {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 100
    return-void

    #@16
    .line 106
    :catch_0
    move-exception v0

    #@17
    .line 107
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 108
    check-cast v0, Ljava/text/ParseException;

    #@1d
    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    #@1e
    .line 114
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/text/ParseException;

    #@20
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    const/4 v3, -0x1

    #@25
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@28
    throw v1
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .locals 0
    .param p1, "wrapper"    # Llibcore/icu/RuleBasedCollatorICU;

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    #@3
    .line 79
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 168
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/RuleBasedCollator;

    #@6
    .line 169
    .local v0, "clone":Ljava/text/RuleBasedCollator;
    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    if-nez p1, :cond_0

    #@2
    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 190
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "target == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 193
    :cond_1
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@18
    invoke-virtual {v0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 227
    instance-of v0, p1, Ljava/text/Collator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 228
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 230
    :cond_0
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    if-nez p1, :cond_0

    #@2
    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 145
    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    #@d
    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@f
    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    #@16
    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 128
    if-nez p1, :cond_0

    #@2
    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 131
    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    #@d
    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@f
    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    #@16
    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-virtual {v0, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method
