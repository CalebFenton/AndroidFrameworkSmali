.class final Landroid/icu/text/NormalizationTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NormalizationTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;
    }
.end annotation


# static fields
.field static final blacklist SOURCE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/text/Normalizer2;",
            "Landroid/icu/text/SourceTargetUtility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "n2"    # Landroid/icu/text/Normalizer2;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 78
    iput-object p2, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    .line 79
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V

    return-void
.end method

.method static blacklist register()V
    .registers 4

    .line 31
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$1;-><init>()V

    const-string v1, "Any-NFC"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 37
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$2;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$2;-><init>()V

    const-string v1, "Any-NFD"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 43
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$3;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$3;-><init>()V

    const-string v1, "Any-NFKC"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 49
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$4;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$4;-><init>()V

    const-string v1, "Any-NFKD"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 55
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$5;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$5;-><init>()V

    const-string v1, "Any-FCD"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 61
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$6;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$6;-><init>()V

    const-string v1, "Any-FCC"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 67
    const-string v0, "NFC"

    const-string v1, "NFD"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    const-string v0, "NFKC"

    const-string v3, "NFKD"

    invoke-static {v0, v3, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const-string v0, "FCC"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    const-string v0, "FCD"

    invoke-static {v0, v0, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 9
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 160
    sget-object v0, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 162
    :try_start_3
    sget-object v1, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/SourceTargetUtility;

    .line 163
    .local v1, "cache":Landroid/icu/text/SourceTargetUtility;
    if-nez v1, :cond_25

    .line 164
    new-instance v2, Landroid/icu/text/SourceTargetUtility;

    new-instance v3, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;

    iget-object v4, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-direct {v3, v4}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;-><init>(Landroid/icu/text/Normalizer2;)V

    iget-object v4, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-direct {v2, v3, v4}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    move-object v1, v2

    .line 165
    sget-object v2, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    .line 168
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 169
    return-void

    .line 167
    .end local v1    # "cache":Landroid/icu/text/SourceTargetUtility;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 12
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    .line 88
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 89
    .local v0, "start":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 90
    .local v1, "limit":I
    if-lt v0, v1, :cond_7

    .line 91
    return-void

    .line 104
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v2, "segment":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v3, "normalized":Ljava/lang/StringBuilder;
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v4

    .line 108
    .local v4, "c":I
    :cond_15
    move v5, v0

    .line 111
    .local v5, "prev":I
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    :cond_1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 115
    if-ge v0, v1, :cond_31

    iget-object v6, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v7

    move v4, v7

    invoke-virtual {v6, v7}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 116
    :cond_31
    if-ne v0, v1, :cond_3f

    if-eqz p3, :cond_3f

    iget-object v6, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v6, v4}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 120
    move v0, v5

    .line 121
    goto :goto_5c

    .line 123
    :cond_3f
    iget-object v6, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v6, v2, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {v2, v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v0, v6}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int v7, v0, v5

    sub-int/2addr v6, v7

    .line 130
    .local v6, "delta":I
    add-int/2addr v0, v6

    .line 131
    add-int/2addr v1, v6

    .line 133
    .end local v5    # "prev":I
    .end local v6    # "delta":I
    :cond_5a
    if-lt v0, v1, :cond_15

    .line 135
    :goto_5c
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 136
    iget v5, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    iput v5, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 137
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 138
    return-void
.end method
