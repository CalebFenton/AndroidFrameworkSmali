.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 0
    .param p1, "wrapper"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 253
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Landroid/icu/text/Collator;)V

    #@3
    .line 252
    return-void
.end method

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
    .line 289
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    #@3
    .line 290
    if-nez p1, :cond_0

    #@5
    .line 291
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "rules == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 294
    :cond_0
    :try_start_0
    new-instance v1, Landroid/icu/text/RuleBasedCollator;

    #@10
    invoke-direct {v1, p1}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    #@13
    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 289
    return-void

    #@16
    .line 295
    :catch_0
    move-exception v0

    #@17
    .line 296
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 297
    check-cast v0, Ljava/text/ParseException;

    #@1d
    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    #@1e
    .line 303
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

.method private collAsICU()Landroid/icu/text/RuleBasedCollator;
    .locals 1

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    #@2
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    #@4
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 377
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 355
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 356
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 358
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    #@10
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v0

    #@14
    monitor-exit p0

    #@15
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 388
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 389
    :cond_0
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    if-nez p1, :cond_0

    #@2
    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 329
    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    #@d
    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    #@18
    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 340
    if-nez p1, :cond_0

    #@2
    .line 341
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 343
    :cond_0
    new-instance v0, Ljava/text/CollationElementIterator;

    #@d
    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    #@18
    return-object v0
.end method

.method public declared-synchronized getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 367
    if-nez p1, :cond_0

    #@4
    monitor-exit p0

    #@5
    .line 368
    return-object v0

    #@6
    .line 370
    :cond_0
    :try_start_0
    new-instance v0, Llibcore/icu/CollationKeyICU;

    #@8
    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    #@a
    invoke-virtual {v1, p1}, Landroid/icu/text/Collator;->getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, p1, v1}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 317
    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Collator;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
