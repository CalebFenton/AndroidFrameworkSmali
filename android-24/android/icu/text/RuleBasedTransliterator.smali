.class public Landroid/icu/text/RuleBasedTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedTransliterator$Data;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private data:Landroid/icu/text/RuleBasedTransliterator$Data;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/icu/text/RuleBasedTransliterator$Data;
    .param p3, "filter"    # Landroid/icu/text/UnicodeFilter;

    #@0
    .prologue
    .line 318
    invoke-direct {p0, p1, p3}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@3
    .line 319
    iput-object p2, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@5
    .line 320
    iget-object v0, p2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/TransliterationRuleSet;->getMaximumContextLength()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->setMaximumContextLength(I)V

    #@e
    .line 317
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2
    iget-object v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@7
    .line 472
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 355
    iget-object v3, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2
    monitor-enter v3

    #@3
    .line 356
    const/4 v0, 0x0

    #@4
    .line 357
    .local v0, "loopCount":I
    :try_start_0
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@6
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@8
    sub-int/2addr v2, v4

    #@9
    shl-int/lit8 v1, v2, 0x4

    #@b
    .line 358
    .local v1, "loopLimit":I
    if-gez v1, :cond_0

    #@d
    .line 359
    const v1, 0x7fffffff

    #@10
    .line 362
    :cond_0
    :goto_0
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@12
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@14
    if-ge v2, v4, :cond_1

    #@16
    .line 363
    if-gt v0, v1, :cond_1

    #@18
    .line 364
    iget-object v2, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@1a
    iget-object v2, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@1c
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v2

    #@20
    .line 362
    if-eqz v2, :cond_1

    #@22
    .line 365
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    :cond_1
    monitor-exit v3

    #@26
    .line 330
    return-void

    #@27
    .line 355
    .end local v1    # "loopLimit":I
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    #@3
    move-result-object v0

    #@4
    .line 484
    .local v0, "filter":Landroid/icu/text/UnicodeFilter;
    if-eqz v0, :cond_0

    #@6
    instance-of v2, v0, Landroid/icu/text/UnicodeSet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 485
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@c
    nop

    #@d
    nop

    #@e
    .end local v0    # "filter":Landroid/icu/text/UnicodeFilter;
    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@11
    .local v1, "filter":Landroid/icu/text/UnicodeFilter;
    move-object v0, v1

    #@12
    .line 487
    .end local v1    # "filter":Landroid/icu/text/UnicodeFilter;
    .restart local v0    # "filter":Landroid/icu/text/UnicodeFilter;
    :cond_0
    new-instance v2, Landroid/icu/text/RuleBasedTransliterator;

    #@14
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@1a
    invoke-direct {v2, v3, v4, v0}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    #@1d
    return-object v2
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 1
    .param p1, "escapeUnprintable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 447
    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2
    iget-object v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@4
    invoke-virtual {v0, p1}, Landroid/icu/text/TransliterationRuleSet;->toRules(Z)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
