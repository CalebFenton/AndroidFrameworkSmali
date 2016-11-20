.class Landroid/icu/text/TitlecaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "TitlecaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Title"


# instance fields
.field private csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private locCache:[I

.field private locale:Landroid/icu/util/ULocale;

.field private result:Ljava/lang/StringBuilder;

.field sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# direct methods
.method static synthetic -get0(Landroid/icu/text/TitlecaseTransliterator;)Landroid/icu/util/ULocale;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

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
    const-string/jumbo v0, "Any-Title"

    #@5
    invoke-direct {p0, v0, v2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@8
    .line 154
    iput-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@a
    .line 49
    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    #@c
    .line 51
    const/4 v0, 0x2

    #@d
    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->setMaximumContextLength(I)V

    #@10
    .line 52
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@12
    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@14
    .line 53
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    #@16
    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    #@19
    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@1b
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@22
    .line 55
    const/4 v0, 0x1

    #@23
    new-array v0, v0, [I

    #@25
    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->locCache:[I

    #@27
    .line 56
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->locCache:[I

    #@29
    aput v1, v0, v1

    #@2b
    .line 47
    return-void
.end method

.method static register()V
    .locals 3

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "Any-Title"

    #@3
    new-instance v1, Landroid/icu/text/TitlecaseTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/TitlecaseTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 34
    const-string/jumbo v0, "Title"

    #@e
    const-string/jumbo v1, "Lower"

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v0, v1, v2}, Landroid/icu/text/TitlecaseTransliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@15
    .line 27
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
    .line 161
    monitor-enter p0

    #@1
    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 163
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    #@7
    new-instance v1, Landroid/icu/text/TitlecaseTransliterator$2;

    #@9
    invoke-direct {v1, p0}, Landroid/icu/text/TitlecaseTransliterator$2;-><init>(Landroid/icu/text/TitlecaseTransliterator;)V

    #@c
    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    #@f
    iput-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 170
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@14
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@17
    .line 160
    return-void

    #@18
    .line 161
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 10
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 71
    :try_start_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@3
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-lt v0, v2, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 72
    return-void

    #@9
    .line 80
    :cond_0
    const/4 v7, 0x1

    #@a
    .line 87
    .local v7, "doTitle":Z
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@c
    add-int/lit8 v8, v0, -0x1

    #@e
    .local v8, "start":I
    :goto_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@10
    if-lt v8, v0, :cond_1

    #@12
    .line 88
    invoke-interface {p1, v8}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@15
    move-result v1

    #@16
    .line 89
    .local v1, "c":I
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@18
    invoke-virtual {v0, v1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    #@1b
    move-result v9

    #@1c
    .line 90
    .local v9, "type":I
    if-lez v9, :cond_3

    #@1e
    .line 91
    const/4 v7, 0x0

    #@1f
    .line 103
    .end local v1    # "c":I
    .end local v9    # "type":I
    :cond_1
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@21
    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    #@24
    .line 104
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@26
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@28
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    #@2b
    .line 105
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@2d
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@2f
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    #@32
    .line 106
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@34
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@36
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@38
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    #@3b
    .line 108
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@3d
    const/4 v2, 0x0

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@41
    .line 114
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@43
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    #@46
    move-result v1

    #@47
    .restart local v1    # "c":I
    if-ltz v1, :cond_8

    #@49
    .line 115
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@4b
    invoke-virtual {v0, v1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    #@4e
    move-result v9

    #@4f
    .line 116
    .restart local v9    # "type":I
    if-ltz v9, :cond_2

    #@51
    .line 117
    if-eqz v7, :cond_4

    #@53
    .line 118
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@55
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@57
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@59
    iget-object v4, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    #@5b
    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->locCache:[I

    #@5d
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@60
    move-result v1

    #@61
    .line 122
    :goto_2
    if-nez v9, :cond_5

    #@63
    const/4 v7, 0x1

    #@64
    .line 124
    :goto_3
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@66
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_6

    #@6c
    if-eqz p3, :cond_6

    #@6e
    .line 127
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@70
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    #@73
    move-result v0

    #@74
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    monitor-exit p0

    #@77
    .line 128
    return-void

    #@78
    .line 93
    :cond_3
    if-eqz v9, :cond_1

    #@7a
    .line 87
    :try_start_2
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@7d
    move-result v0

    #@7e
    sub-int/2addr v8, v0

    #@7f
    goto :goto_0

    #@80
    .line 120
    :cond_4
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@82
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@84
    iget-object v3, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@86
    iget-object v4, p0, Landroid/icu/text/TitlecaseTransliterator;->locale:Landroid/icu/util/ULocale;

    #@88
    iget-object v5, p0, Landroid/icu/text/TitlecaseTransliterator;->locCache:[I

    #@8a
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@8d
    move-result v1

    #@8e
    goto :goto_2

    #@8f
    .line 122
    :cond_5
    const/4 v7, 0x0

    #@90
    goto :goto_3

    #@91
    .line 132
    :cond_6
    if-ltz v1, :cond_2

    #@93
    .line 135
    const/16 v0, 0x1f

    #@95
    if-gt v1, v0, :cond_7

    #@97
    .line 137
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@99
    iget-object v2, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    #@a2
    move-result v6

    #@a3
    .line 138
    .local v6, "delta":I
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->result:Ljava/lang/StringBuilder;

    #@a5
    const/4 v2, 0x0

    #@a6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a9
    .line 144
    :goto_4
    if-eqz v6, :cond_2

    #@ab
    .line 145
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@ad
    add-int/2addr v0, v6

    #@ae
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@b0
    .line 146
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@b2
    add-int/2addr v0, v6

    #@b3
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b5
    goto :goto_1

    #@b6
    .end local v1    # "c":I
    .end local v6    # "delta":I
    .end local v7    # "doTitle":Z
    .end local v8    # "start":I
    .end local v9    # "type":I
    :catchall_0
    move-exception v0

    #@b7
    monitor-exit p0

    #@b8
    throw v0

    #@b9
    .line 141
    .restart local v1    # "c":I
    .restart local v7    # "doTitle":Z
    .restart local v8    # "start":I
    .restart local v9    # "type":I
    :cond_7
    :try_start_3
    iget-object v0, p0, Landroid/icu/text/TitlecaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@bb
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    #@c2
    move-result v6

    #@c3
    .restart local v6    # "delta":I
    goto :goto_4

    #@c4
    .line 150
    .end local v6    # "delta":I
    .end local v9    # "type":I
    :cond_8
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@c6
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c8
    monitor-exit p0

    #@c9
    .line 63
    return-void
.end method
