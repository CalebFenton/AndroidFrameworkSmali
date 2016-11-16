.class Landroid/icu/text/UppercaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UppercaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Upper"


# instance fields
.field private csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private locCache:[I

.field private locale:Landroid/icu/util/ULocale;

.field private result:Ljava/lang/StringBuilder;

.field sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# direct methods
.method static synthetic -get0(Landroid/icu/text/UppercaseTransliterator;)Landroid/icu/util/ULocale;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 48
    const-string/jumbo v0, "Any-Upper"

    #@5
    invoke-direct {p0, v0, v2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@8
    .line 112
    iput-object v2, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@a
    .line 49
    iput-object p1, p0, Landroid/icu/text/UppercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    #@c
    .line 50
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@e
    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@10
    .line 51
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    #@12
    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    #@15
    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@17
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@1e
    .line 53
    const/4 v0, 0x1

    #@1f
    new-array v0, v0, [I

    #@21
    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->locCache:[I

    #@23
    .line 54
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->locCache:[I

    #@25
    aput v1, v0, v1

    #@27
    .line 47
    return-void
.end method

.method static register()V
    .locals 2

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "Any-Upper"

    #@3
    new-instance v1, Landroid/icu/text/UppercaseTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/UppercaseTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 29
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 119
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 121
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    #@7
    new-instance v1, Landroid/icu/text/UppercaseTransliterator$2;

    #@9
    invoke-direct {v1, p0}, Landroid/icu/text/UppercaseTransliterator$2;-><init>(Landroid/icu/text/UppercaseTransliterator;)V

    #@c
    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    #@f
    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 128
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@14
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@17
    .line 118
    return-void

    #@18
    .line 119
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 7
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 63
    return-void

    #@7
    .line 66
    :cond_0
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@9
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    if-lt v0, v2, :cond_1

    #@d
    monitor-exit p0

    #@e
    .line 67
    return-void

    #@f
    .line 70
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@11
    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    #@14
    .line 71
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1a
    .line 77
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@1c
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@1e
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    #@21
    .line 78
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@23
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@25
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    #@28
    .line 79
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@2a
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@2c
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@2e
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    #@31
    .line 80
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@33
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    #@36
    move-result v1

    #@37
    .local v1, "c":I
    if-ltz v1, :cond_5

    #@39
    .line 81
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@3b
    iget-object v2, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@3d
    iget-object v3, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@3f
    iget-object v4, p0, Landroid/icu/text/UppercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    #@41
    iget-object v5, p0, Landroid/icu/text/UppercaseTransliterator;->locCache:[I

    #@43
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@46
    move-result v1

    #@47
    .line 83
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@49
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_3

    #@4f
    if-eqz p3, :cond_3

    #@51
    .line 86
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@53
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    #@56
    move-result v0

    #@57
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 87
    return-void

    #@5b
    .line 91
    :cond_3
    if-ltz v1, :cond_2

    #@5d
    .line 94
    const/16 v0, 0x1f

    #@5f
    if-gt v1, v0, :cond_4

    #@61
    .line 96
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@63
    iget-object v2, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    #@6c
    move-result v6

    #@6d
    .line 97
    .local v6, "delta":I
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@6f
    const/4 v2, 0x0

    #@70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@73
    .line 103
    :goto_1
    if-eqz v6, :cond_2

    #@75
    .line 104
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@77
    add-int/2addr v0, v6

    #@78
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@7a
    .line 105
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@7c
    add-int/2addr v0, v6

    #@7d
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7f
    goto :goto_0

    #@80
    .end local v1    # "c":I
    .end local v6    # "delta":I
    :catchall_0
    move-exception v0

    #@81
    monitor-exit p0

    #@82
    throw v0

    #@83
    .line 100
    .restart local v1    # "c":I
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@85
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    #@8c
    move-result v6

    #@8d
    .restart local v6    # "delta":I
    goto :goto_1

    #@8e
    .line 108
    .end local v6    # "delta":I
    :cond_5
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@90
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@92
    monitor-exit p0

    #@93
    .line 61
    return-void
.end method
