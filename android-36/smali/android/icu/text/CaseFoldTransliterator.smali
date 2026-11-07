.class Landroid/icu/text/CaseFoldTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CaseFoldTransliterator.java"


# static fields
.field static final blacklist _ID:Ljava/lang/String; = "Any-CaseFold"

.field static blacklist sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# instance fields
.field private final blacklist csp:Landroid/icu/impl/UCaseProps;

.field private blacklist iter:Landroid/icu/text/ReplaceableContextIterator;

.field private blacklist result:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 51
    const-string v0, "Any-CaseFold"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 52
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    .line 53
    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method static blacklist register()V
    .registers 3

    .line 32
    new-instance v0, Landroid/icu/text/CaseFoldTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/CaseFoldTransliterator$1;-><init>()V

    const-string v1, "Any-CaseFold"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 39
    const-string v0, "Upper"

    const/4 v1, 0x0

    const-string v2, "CaseFold"

    invoke-static {v2, v0, v1}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 7
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 119
    const-class v0, Landroid/icu/text/UppercaseTransliterator;

    monitor-enter v0

    .line 120
    :try_start_3
    sget-object v1, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v1, :cond_13

    .line 121
    new-instance v1, Landroid/icu/text/SourceTargetUtility;

    new-instance v2, Landroid/icu/text/CaseFoldTransliterator$2;

    invoke-direct {v2, p0}, Landroid/icu/text/CaseFoldTransliterator$2;-><init>(Landroid/icu/text/CaseFoldTransliterator;)V

    invoke-direct {v1, v2}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    sput-object v1, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    .line 128
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    .line 129
    sget-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 130
    return-void

    .line 128
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected declared-synchronized blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 8
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8c

    if-nez v0, :cond_7

    .line 64
    monitor-exit p0

    return-void

    .line 67
    :cond_7
    :try_start_7
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_8c

    if-lt v0, v1, :cond_f

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    .line 72
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    .line 79
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    .line 80
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    .line 81
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result v0

    move v2, v0

    .local v2, "c":I
    if-ltz v0, :cond_86

    .line 82
    iget-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v0

    .line 84
    .end local v2    # "c":I
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz p3, :cond_56

    .line 87
    iget-object v1, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v1}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result v1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_8c

    .line 88
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Landroid/icu/text/CaseFoldTransliterator;
    :cond_56
    if-gez v0, :cond_59

    .line 94
    goto :goto_31

    .line 95
    :cond_59
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_6f

    .line 97
    :try_start_5d
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, "delta":I
    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_79

    .line 101
    .end local v2    # "delta":I
    :cond_6f
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v2

    .line 104
    .restart local v2    # "delta":I
    :goto_79
    if-eqz v2, :cond_31

    .line 105
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 106
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v3, v2

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_31

    .line 109
    .end local v0    # "c":I
    .local v2, "c":I
    :cond_86
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_8a
    .catchall {:try_start_5d .. :try_end_8a} :catchall_8c

    .line 110
    monitor-exit p0

    return-void

    .line 62
    .end local v2    # "c":I
    .end local p1    # "text":Landroid/icu/text/Replaceable;
    .end local p2    # "offsets":Landroid/icu/text/Transliterator$Position;
    .end local p3    # "isIncremental":Z
    :catchall_8c
    move-exception p1

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p1
.end method
