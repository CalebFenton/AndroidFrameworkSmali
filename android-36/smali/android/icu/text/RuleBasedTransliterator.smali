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
.field private final greylist-max-o data:Landroid/icu/text/RuleBasedTransliterator$Data;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V
    .registers 5
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/icu/text/RuleBasedTransliterator$Data;
    .param p3, "filter"    # Landroid/icu/text/UnicodeFilter;

    .line 68
    invoke-direct {p0, p1, p3}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 69
    iput-object p2, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 70
    iget-object v0, p2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/TransliterationRuleSet;->getMaximumContextLength()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedTransliterator;->setMaximumContextLength(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public greylist-max-o addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 226
    return-void
.end method

.method protected greylist-max-o handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "loopCount":I
    :try_start_4
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x4

    .line 109
    .local v2, "loopLimit":I
    if-gez v2, :cond_10

    .line 110
    const v2, 0x7fffffff

    .line 113
    :cond_10
    :goto_10
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v3, v4, :cond_25

    if-gt v1, v2, :cond_25

    iget-object v3, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v3, v3, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    .line 115
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 118
    .end local v1    # "loopCount":I
    .end local v2    # "loopLimit":I
    :cond_25
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public greylist-max-o safeClone()Landroid/icu/text/Transliterator;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    .line 236
    .local v0, "filter":Landroid/icu/text/UnicodeFilter;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_13

    .line 237
    new-instance v1, Landroid/icu/text/UnicodeSet;

    move-object v2, v0

    check-cast v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v0, v1

    .line 239
    :cond_13
    new-instance v1, Landroid/icu/text/RuleBasedTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedTransliterator;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v1, v2, v3, v0}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    return-object v1
.end method

.method public whitelist test-api toRules(Z)Ljava/lang/String;
    .registers 3
    .param p1, "escapeUnprintable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/TransliterationRuleSet;->toRules(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
