.class Landroid/icu/text/TitlecaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "TitlecaseTransliterator.java"


# static fields
.field static final blacklist _ID:Ljava/lang/String; = "Any-Title"


# instance fields
.field private blacklist caseLocale:I

.field private final blacklist csp:Landroid/icu/impl/UCaseProps;

.field private blacklist iter:Landroid/icu/text/ReplaceableContextIterator;

.field private final blacklist locale:Landroid/icu/util/ULocale;

.field private blacklist result:Ljava/lang/StringBuilder;

.field blacklist sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlocale(Landroid/icu/text/TitlecaseTransliterator;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 52
    const-string v0, "Any-Title"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 158
    iput-object v1, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 53
    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/text/TitlecaseTransliterator;->setMaximumContextLength(I)V

    .line 56
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    .line 57
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result v0

    iput v0, p0, Landroid/icu/text/TitlecaseTransliterator;->caseLocale:I

    .line 60
    return-void
.end method

.method static blacklist register()V
    .registers 3

    .line 31
    new-instance v0, Landroid/icu/text/TitlecaseTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/TitlecaseTransliterator$1;-><init>()V

    const-string v1, "Any-Title"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 38
    const-string v0, "Lower"

    const/4 v1, 0x0

    const-string v2, "Title"

    invoke-static {v2, v0, v1}, Landroid/icu/text/TitlecaseTransliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 165
    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_11

    .line 167
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v1, Landroid/icu/text/TitlecaseTransliterator$2;

    invoke-direct {v1, p0}, Landroid/icu/text/TitlecaseTransliterator$2;-><init>(Landroid/icu/text/TitlecaseTransliterator;)V

    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 174
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 175
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 176
    return-void

    .line 174
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected declared-synchronized blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 14
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    monitor-enter p0

    .line 75
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c7

    if-lt v0, v1, :cond_9

    .line 76
    monitor-exit p0

    return-void

    .line 84
    :cond_9
    const/4 v0, 0x1

    .line 91
    .local v0, "doTitle":Z
    :try_start_a
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "start":I
    :goto_e
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-lt v1, v3, :cond_29

    .line 92
    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v3

    .line 93
    .local v3, "c":I
    iget-object v4, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v4, v3}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v4

    .line 94
    .local v4, "type":I
    if-lez v4, :cond_20

    .line 95
    const/4 v0, 0x0

    .line 96
    goto :goto_29

    .line 97
    :cond_20
    if-nez v4, :cond_23

    .line 98
    goto :goto_29

    .line 91
    :cond_23
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_e

    .line 107
    .end local v3    # "c":I
    .end local v4    # "type":I
    .end local p0    # "this":Landroid/icu/text/TitlecaseTransliterator;
    :cond_29
    :goto_29
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v3, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    .line 108
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v3, v4}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 109
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v3, v4}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 110
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v5, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 112
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    :cond_4b
    :goto_4b
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v3}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result v3

    move v5, v3

    .local v5, "c":I
    if-ltz v3, :cond_c1

    .line 119
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v3, v5}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v3

    .line 120
    .local v3, "type":I
    if-ltz v3, :cond_4b

    .line 121
    if-eqz v0, :cond_6b

    .line 122
    iget-object v6, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v7, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v8, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/icu/text/TitlecaseTransliterator;->caseLocale:I

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v6

    .end local v5    # "c":I
    .local v6, "c":I
    goto :goto_77

    .line 124
    .end local v6    # "c":I
    .restart local v5    # "c":I
    :cond_6b
    iget-object v6, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v7, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v8, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/icu/text/TitlecaseTransliterator;->caseLocale:I

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v6

    .line 126
    .end local v5    # "c":I
    .restart local v6    # "c":I
    :goto_77
    if-nez v3, :cond_7b

    move v5, v2

    goto :goto_7c

    :cond_7b
    move v5, v4

    :goto_7c
    move v0, v5

    .line 128
    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v5}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v5

    if-eqz v5, :cond_91

    if-eqz p3, :cond_91

    .line 131
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result v2

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_8f
    .catchall {:try_start_a .. :try_end_8f} :catchall_c7

    .line 132
    monitor-exit p0

    return-void

    .line 136
    :cond_91
    if-gez v6, :cond_94

    .line 138
    goto :goto_4b

    .line 139
    :cond_94
    const/16 v5, 0x1f

    if-gt v6, v5, :cond_aa

    .line 141
    :try_start_98
    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v7, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, "delta":I
    iget-object v7, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_b4

    .line 145
    .end local v5    # "delta":I
    :cond_aa
    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {v6}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v5

    .line 148
    .restart local v5    # "delta":I
    :goto_b4
    if-eqz v5, :cond_4b

    .line 149
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v7, v5

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 150
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v7, v5

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_4b

    .line 154
    .end local v3    # "type":I
    .end local v6    # "c":I
    .local v5, "c":I
    :cond_c1
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_c5
    .catchall {:try_start_98 .. :try_end_c5} :catchall_c7

    .line 155
    monitor-exit p0

    return-void

    .line 74
    .end local v0    # "doTitle":Z
    .end local v1    # "start":I
    .end local v5    # "c":I
    .end local p1    # "text":Landroid/icu/text/Replaceable;
    .end local p2    # "offsets":Landroid/icu/text/Transliterator$Position;
    .end local p3    # "isIncremental":Z
    :catchall_c7
    move-exception p1

    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p1
.end method
