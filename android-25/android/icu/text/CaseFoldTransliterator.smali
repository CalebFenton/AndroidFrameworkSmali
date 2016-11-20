.class Landroid/icu/text/CaseFoldTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CaseFoldTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-CaseFold"

.field static sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# instance fields
.field private csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@3
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "Any-CaseFold"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@7
    .line 49
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@9
    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@b
    .line 50
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    #@d
    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@12
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    #@19
    .line 47
    return-void
.end method

.method static register()V
    .locals 3

    #@0
    .prologue
    .line 30
    const-string/jumbo v0, "Any-CaseFold"

    #@3
    new-instance v1, Landroid/icu/text/CaseFoldTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/CaseFoldTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 36
    const-string/jumbo v0, "CaseFold"

    #@e
    const-string/jumbo v1, "Upper"

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@15
    .line 29
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 115
    const-class v1, Landroid/icu/text/UppercaseTransliterator;

    #@2
    monitor-enter v1

    #@3
    .line 116
    :try_start_0
    sget-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 117
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    #@9
    new-instance v2, Landroid/icu/text/CaseFoldTransliterator$2;

    #@b
    invoke-direct {v2, p0}, Landroid/icu/text/CaseFoldTransliterator$2;-><init>(Landroid/icu/text/CaseFoldTransliterator;)V

    #@e
    invoke-direct {v0, v2}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    #@11
    sput-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 124
    sget-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    #@16
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@19
    .line 114
    return-void

    #@1a
    .line 115
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 59
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 60
    return-void

    #@7
    .line 63
    :cond_0
    :try_start_1
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@9
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    if-lt v2, v3, :cond_1

    #@d
    monitor-exit p0

    #@e
    .line 64
    return-void

    #@f
    .line 67
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@11
    invoke-virtual {v2, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    #@14
    .line 68
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1a
    .line 74
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@1c
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@1e
    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    #@21
    .line 75
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@23
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@25
    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    #@28
    .line 76
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@2a
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    #@2c
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@2e
    invoke-virtual {v2, v3, v4}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    #@31
    .line 77
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@33
    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    #@36
    move-result v0

    #@37
    .local v0, "c":I
    if-ltz v0, :cond_5

    #@39
    .line 78
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    #@3b
    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-virtual {v2, v0, v3, v4}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@41
    move-result v0

    #@42
    .line 80
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@44
    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_3

    #@4a
    if-eqz p3, :cond_3

    #@4c
    .line 83
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@4e
    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    #@51
    move-result v2

    #@52
    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    monitor-exit p0

    #@55
    .line 84
    return-void

    #@56
    .line 88
    :cond_3
    if-ltz v0, :cond_2

    #@58
    .line 91
    const/16 v2, 0x1f

    #@5a
    if-gt v0, v2, :cond_4

    #@5c
    .line 93
    :try_start_3
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@5e
    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    #@67
    move-result v1

    #@68
    .line 94
    .local v1, "delta":I
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    #@6a
    const/4 v3, 0x0

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6e
    .line 100
    :goto_1
    if-eqz v1, :cond_2

    #@70
    .line 101
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@72
    add-int/2addr v2, v1

    #@73
    iput v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@75
    .line 102
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@77
    add-int/2addr v2, v1

    #@78
    iput v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7a
    goto :goto_0

    #@7b
    .end local v0    # "c":I
    .end local v1    # "delta":I
    :catchall_0
    move-exception v2

    #@7c
    monitor-exit p0

    #@7d
    throw v2

    #@7e
    .line 97
    .restart local v0    # "c":I
    :cond_4
    :try_start_4
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    #@80
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    #@87
    move-result v1

    #@88
    .restart local v1    # "delta":I
    goto :goto_1

    #@89
    .line 105
    .end local v1    # "delta":I
    :cond_5
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@8b
    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8d
    monitor-exit p0

    #@8e
    .line 58
    return-void
.end method
