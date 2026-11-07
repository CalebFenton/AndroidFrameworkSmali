.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/RuleBasedCollator;)V
    .registers 2
    .param p1, "wrapper"    # Landroid/icu/text/RuleBasedCollator;

    .line 249
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Landroid/icu/text/Collator;)V

    .line 250
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    .line 287
    if-eqz p1, :cond_22

    .line 291
    :try_start_5
    new-instance v0, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v0, p1}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_e

    .line 301
    nop

    .line 303
    return-void

    .line 292
    :catch_e
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_17

    .line 294
    move-object v1, v0

    check-cast v1, Ljava/text/ParseException;

    throw v1

    .line 300
    :cond_17
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rules == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o collAsICU()Landroid/icu/text/RuleBasedCollator;
    .registers 2

    .line 445
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 420
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    monitor-enter p0

    .line 394
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 398
    :try_start_5
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_13

    monitor-exit p0

    return v0

    .line 395
    .end local p0    # "this":Ljava/text/RuleBasedCollator;
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 393
    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "target":Ljava/lang/String;
    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 430
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 432
    :cond_4
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 361
    if-eqz p1, :cond_10

    .line 364
    new-instance v0, Ljava/text/CollationElementIterator;

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    return-object v0

    .line 362
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .registers 4
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .line 378
    if-eqz p1, :cond_10

    .line 381
    new-instance v0, Ljava/text/CollationElementIterator;

    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Landroid/icu/text/CollationElementIterator;)V

    return-object v0

    .line 379
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    monitor-enter p0

    .line 409
    if-nez p1, :cond_6

    .line 410
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_6
    :try_start_6
    new-instance v0, Llibcore/icu/CollationKeyICU;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1, p1}, Landroid/icu/text/Collator;->getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Llibcore/icu/CollationKeyICU;-><init>(Ljava/lang/String;Landroid/icu/text/CollationKey;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 408
    .end local p0    # "this":Ljava/text/RuleBasedCollator;
    .end local p1    # "source":Ljava/lang/String;
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public whitelist test-api getRules()Ljava/lang/String;
    .registers 2

    .line 349
    invoke-direct {p0}, Ljava/text/RuleBasedCollator;->collAsICU()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 440
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->hashCode()I

    move-result v0

    return v0
.end method
