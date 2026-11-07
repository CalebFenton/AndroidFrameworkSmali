.class Landroid/icu/text/LowercaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "LowercaseTransliterator.java"


# static fields
.field static final blacklist _ID:Ljava/lang/String; = "Any-Lower"


# instance fields
.field private blacklist caseLocale:I

.field private final blacklist csp:Landroid/icu/impl/UCaseProps;

.field private blacklist iter:Landroid/icu/text/ReplaceableContextIterator;

.field private final blacklist locale:Landroid/icu/util/ULocale;

.field private blacklist result:Ljava/lang/StringBuilder;

.field blacklist sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlocale(Landroid/icu/text/LowercaseTransliterator;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/LowercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 55
    const-string v0, "Any-Lower"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 119
    iput-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 56
    iput-object p1, p0, Landroid/icu/text/LowercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    .line 57
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    .line 58
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    .line 60
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;)I

    move-result v0

    iput v0, p0, Landroid/icu/text/LowercaseTransliterator;->caseLocale:I

    .line 61
    return-void
.end method

.method static blacklist register()V
    .registers 3

    .line 33
    new-instance v0, Landroid/icu/text/LowercaseTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/LowercaseTransliterator$1;-><init>()V

    const-string v1, "Any-Lower"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 40
    const-string v0, "Upper"

    const/4 v1, 0x1

    const-string v2, "Lower"

    invoke-static {v2, v0, v1}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_11

    .line 128
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v1, Landroid/icu/text/LowercaseTransliterator$2;

    invoke-direct {v1, p0}, Landroid/icu/text/LowercaseTransliterator$2;-><init>(Landroid/icu/text/LowercaseTransliterator;)V

    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    iput-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 135
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 136
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 137
    return-void

    .line 135
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected declared-synchronized blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 10
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_90

    if-nez v0, :cond_7

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_7
    :try_start_7
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_90

    if-lt v0, v1, :cond_f

    .line 74
    monitor-exit p0

    return-void

    .line 77
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    .line 78
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 85
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 86
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 87
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result v0

    move v2, v0

    .local v2, "c":I
    if-ltz v0, :cond_8a

    .line 88
    iget-object v0, p0, Landroid/icu/text/LowercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v3, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v4, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/icu/text/LowercaseTransliterator;->caseLocale:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v0

    .line 90
    .end local v2    # "c":I
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz p3, :cond_5a

    .line 93
    iget-object v1, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v1}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result v1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_90

    .line 94
    monitor-exit p0

    return-void

    .line 98
    .end local p0    # "this":Landroid/icu/text/LowercaseTransliterator;
    :cond_5a
    if-gez v0, :cond_5d

    .line 100
    goto :goto_31

    .line 101
    :cond_5d
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_73

    .line 103
    :try_start_61
    iget-object v2, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "delta":I
    iget-object v3, p0, Landroid/icu/text/LowercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_7d

    .line 107
    .end local v2    # "delta":I
    :cond_73
    iget-object v2, p0, Landroid/icu/text/LowercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v2

    .line 110
    .restart local v2    # "delta":I
    :goto_7d
    if-eqz v2, :cond_31

    .line 111
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 112
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_31

    .line 115
    .end local v0    # "c":I
    .local v2, "c":I
    :cond_8a
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_8e
    .catchall {:try_start_61 .. :try_end_8e} :catchall_90

    .line 116
    monitor-exit p0

    return-void

    .line 68
    .end local v2    # "c":I
    .end local p1    # "text":Landroid/icu/text/Replaceable;
    .end local p2    # "offsets":Landroid/icu/text/Transliterator$Position;
    .end local p3    # "isIncremental":Z
    :catchall_90
    move-exception p1

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p1
.end method
