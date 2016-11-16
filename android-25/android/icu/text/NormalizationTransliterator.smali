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
.field static final SOURCE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/text/Normalizer2;",
            "Landroid/icu/text/SourceTargetUtility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    #@7
    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "n2"    # Landroid/icu/text/Normalizer2;

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@4
    .line 70
    iput-object p2, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@6
    .line 68
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "n2"    # Landroid/icu/text/Normalizer2;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V

    #@3
    return-void
.end method

.method static register()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 29
    const-string/jumbo v0, "Any-NFC"

    #@5
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$1;

    #@7
    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$1;-><init>()V

    #@a
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@d
    .line 34
    const-string/jumbo v0, "Any-NFD"

    #@10
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$2;

    #@12
    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$2;-><init>()V

    #@15
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@18
    .line 39
    const-string/jumbo v0, "Any-NFKC"

    #@1b
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$3;

    #@1d
    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$3;-><init>()V

    #@20
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@23
    .line 44
    const-string/jumbo v0, "Any-NFKD"

    #@26
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$4;

    #@28
    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$4;-><init>()V

    #@2b
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@2e
    .line 49
    const-string/jumbo v0, "Any-FCD"

    #@31
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$5;

    #@33
    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$5;-><init>()V

    #@36
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@39
    .line 54
    const-string/jumbo v0, "Any-FCC"

    #@3c
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$6;

    #@3e
    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$6;-><init>()V

    #@41
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@44
    .line 59
    const-string/jumbo v0, "NFC"

    #@47
    const-string/jumbo v1, "NFD"

    #@4a
    invoke-static {v0, v1, v3}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4d
    .line 60
    const-string/jumbo v0, "NFKC"

    #@50
    const-string/jumbo v1, "NFKD"

    #@53
    invoke-static {v0, v1, v3}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@56
    .line 61
    const-string/jumbo v0, "FCC"

    #@59
    const-string/jumbo v1, "NFD"

    #@5c
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5f
    .line 62
    const-string/jumbo v0, "FCD"

    #@62
    const-string/jumbo v1, "FCD"

    #@65
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@68
    .line 28
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 150
    sget-object v2, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    #@2
    monitor-enter v2

    #@3
    .line 152
    :try_start_0
    sget-object v1, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    #@5
    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/text/SourceTargetUtility;

    #@d
    .line 153
    .local v0, "cache":Landroid/icu/text/SourceTargetUtility;
    if-nez v0, :cond_0

    #@f
    .line 154
    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    #@11
    .end local v0    # "cache":Landroid/icu/text/SourceTargetUtility;
    new-instance v1, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;

    #@13
    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@15
    invoke-direct {v1, v3}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;-><init>(Landroid/icu/text/Normalizer2;)V

    #@18
    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@1a
    invoke-direct {v0, v1, v3}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    #@1d
    .line 155
    .restart local v0    # "cache":Landroid/icu/text/SourceTargetUtility;
    sget-object v1, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    #@1f
    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@21
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v2

    #@25
    .line 158
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@28
    .line 148
    return-void

    #@29
    .line 150
    .end local v0    # "cache":Landroid/icu/text/SourceTargetUtility;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offsets"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "isIncremental"    # Z

    #@0
    .prologue
    .line 79
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@2
    .line 80
    .local v6, "start":I
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4
    .line 81
    .local v2, "limit":I
    if-lt v6, v2, :cond_0

    #@6
    .line 82
    return-void

    #@7
    .line 95
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 96
    .local v5, "segment":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 97
    .local v3, "normalized":Ljava/lang/StringBuilder;
    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@14
    move-result v0

    #@15
    .line 99
    .local v0, "c":I
    :cond_1
    move v4, v6

    #@16
    .line 102
    .local v4, "prev":I
    const/4 v7, 0x0

    #@17
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1a
    .line 104
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@1d
    .line 105
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@20
    move-result v7

    #@21
    add-int/2addr v6, v7

    #@22
    .line 106
    if-ge v6, v2, :cond_3

    #@24
    iget-object v7, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@26
    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@29
    move-result v0

    #@2a
    invoke-virtual {v7, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_2

    #@30
    .line 107
    :cond_3
    if-ne v6, v2, :cond_4

    #@32
    if-eqz p3, :cond_4

    #@34
    iget-object v7, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@36
    invoke-virtual {v7, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_6

    #@3c
    .line 114
    :cond_4
    iget-object v7, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    #@3e
    invoke-virtual {v7, v5, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@41
    .line 115
    invoke-static {v5, v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@44
    move-result v7

    #@45
    if-nez v7, :cond_5

    #@47
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-interface {p1, v4, v6, v7}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@4e
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@51
    move-result v7

    #@52
    sub-int v8, v6, v4

    #@54
    sub-int v1, v7, v8

    #@56
    .line 121
    .local v1, "delta":I
    add-int/2addr v6, v1

    #@57
    .line 122
    add-int/2addr v2, v1

    #@58
    .line 124
    .end local v1    # "delta":I
    :cond_5
    if-lt v6, v2, :cond_1

    #@5a
    .line 126
    :goto_0
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@5c
    .line 127
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@5e
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@60
    sub-int v8, v2, v8

    #@62
    add-int/2addr v7, v8

    #@63
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@65
    .line 128
    iput v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@67
    .line 77
    return-void

    #@68
    .line 111
    :cond_6
    move v6, v4

    #@69
    .line 112
    goto :goto_0
.end method
